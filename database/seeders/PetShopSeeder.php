<?php

namespace Database\Seeders;

use App\Models\Banner;
use App\Models\Category;
use App\Models\GeneralSetting;
use App\Models\Product;
use App\Models\Productimage;
use App\Models\Subcategory;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\File;
use Illuminate\Support\Str;

class PetShopSeeder extends Seeder
{
    private const ASSET_DIR = 'uploads/petshop';
    private const PUBLIC_ASSET_DIR = 'public/uploads/petshop';

    public function run(): void
    {
        File::ensureDirectoryExists(public_path(self::ASSET_DIR . '/categories'));
        File::ensureDirectoryExists(public_path(self::ASSET_DIR . '/icons'));
        File::ensureDirectoryExists(public_path(self::ASSET_DIR . '/products'));
        File::ensureDirectoryExists(public_path(self::ASSET_DIR . '/banners'));

        DB::transaction(function () {
            $this->deactivateCurrentCatalog();
            $this->createPetCatalog();
            $this->createPetBanners();
            $this->updateSettings();
        });
    }

    private function deactivateCurrentCatalog(): void
    {
        foreach ([
            'reviews',
            'productimages',
            'productsizes',
            'productcolors',
            'product_variant_prices',
            'product_wholesale_prices',
            'campaign_product',
            'reseller_landing_products',
        ] as $table) {
            if (DB::getSchemaBuilder()->hasTable($table)) {
                DB::table($table)->delete();
            }
        }

        $productIds = Product::pluck('id');
        if ($productIds->isNotEmpty()) {
            foreach ([
                'reviews',
                'productimages',
                'productsizes',
                'productcolors',
                'product_variant_prices',
                'product_wholesale_prices',
                'campaign_product',
                'reseller_landing_products',
            ] as $table) {
                if (DB::getSchemaBuilder()->hasTable($table)) {
                    DB::table($table)->whereIn('product_id', $productIds)->delete();
                }
            }
        }

        Product::query()->delete();
        Subcategory::query()->delete();
        Category::query()->delete();
        Banner::query()->delete();
    }

    private function createPetCatalog(): void
    {
        $productIndex = 1;

        foreach ($this->categories() as $index => $categoryData) {
            $slug = Str::slug($categoryData['name']);
            $image = $this->categoryImage($categoryData['name'], $categoryData['type'], $categoryData['kind']);
            $icon = $this->categoryIcon($categoryData['name'], $categoryData['type'], $categoryData['kind']);

            $category = Category::create([
                'parent_id' => 0,
                'name' => $categoryData['name'],
                'slug' => $slug,
                'image' => $image,
                'icon' => $icon,
                'meta_title' => $categoryData['name'] . ' for ' . ucfirst($categoryData['type']) . 's',
                'meta_description' => $categoryData['name'] . ' products for ' . $categoryData['type'] . ' care, feeding, grooming, play, and daily essentials.',
                'meta_keyword' => $categoryData['type'],
                'front_view' => 1,
                'status' => 1,
            ]);

            foreach ($categoryData['subcategories'] as $subcategoryName) {
                $subcategory = Subcategory::create([
                    'subcategoryName' => $subcategoryName,
                    'slug' => Str::slug($categoryData['type'] . '-' . $subcategoryName),
                    'category_id' => $category->id,
                    'image' => $this->categoryImage($subcategoryName, $categoryData['type'], $this->kindFor($subcategoryName, $categoryData['kind'])),
                    'meta_title' => $subcategoryName . ' for ' . ucfirst($categoryData['type']) . 's',
                    'meta_description' => 'Shop ' . strtolower($subcategoryName) . ' for ' . $categoryData['type'] . 's.',
                    'status' => 1,
                ]);

                foreach ($this->productLines() as $lineIndex => $line) {
                    $productData = $this->productData($productIndex, $categoryData, $subcategoryName, $line);
                    $product = Product::create([
                        'product_type' => 'physical',
                        'name' => $productData['name'],
                        'slug' => Str::slug($productData['name']) . '-' . $productIndex,
                        'category_id' => $category->id,
                        'subcategory_id' => $subcategory->id,
                        'childcategory_id' => null,
                        'brand_id' => null,
                        'vendor_id' => null,
                        'product_code' => 'PETSHOP-' . str_pad((string) $productIndex, 4, '0', STR_PAD_LEFT),
                        'purchase_price' => max(1, $productData['price'] - 120),
                        'old_price' => $productData['oldPrice'],
                        'new_price' => $productData['price'],
                        'reseller_price' => null,
                        'is_wholesale' => 0,
                        'wholesale_price' => null,
                        'min_wholesale_quantity' => 1,
                        'advance_amount' => 0,
                        'ratting' => $productData['rating'],
                        'stock' => $productData['stock'],
                        'is_digital' => 0,
                        'free_delivery' => 0,
                        'pro_unit' => $productData['unit'],
                        'description' => $productData['description'],
                        'meta_title' => $productData['name'],
                        'meta_description' => $productData['description'],
                        'meta_keywords' => implode(', ', [
                            $categoryData['type'],
                            $categoryData['name'],
                            $subcategoryName,
                            $productData['kind'],
                            $productData['line'],
                        ]),
                        'topsale' => $productIndex <= 36 ? 1 : 0,
                        'flashsale' => $productIndex % 11 === 0 ? 1 : 0,
                        'feature_product' => $productIndex % 4 === 0 ? 1 : 0,
                        'status' => 1,
                        'approval_status' => 'approved',
                        'sold' => ($productIndex * 3) % 41,
                        'note' => $categoryData['type'],
                    ]);

                    Productimage::create([
                        'product_id' => $product->id,
                        'image' => $this->productImage($productData['name'], $categoryData['type'], $productData['kind'], $lineIndex),
                        'color_id' => null,
                        'size_id' => null,
                    ]);

                    DB::table('reviews')->insert([
                        'name' => 'Pet Shop Customer',
                        'email' => 'customer@example.com',
                        'ratting' => (string) round($productData['rating']),
                        'review' => 'Relevant and useful pet care product.',
                        'product_id' => $product->id,
                        'customer_id' => 0,
                        'status' => 'active',
                        'created_at' => now(),
                        'updated_at' => now(),
                    ]);

                    $productIndex++;
                }
            }
        }
    }

    private function createPetBanners(): void
    {
        $banners = [
            [1, 'pet-shop-ai-hero.png', 'Everything Your Pet Needs', 'Cat & Dog Food, Grooming, Toys & Accessories'],
            [1, 'pet-shop-ai-store.png', 'Pet Shop Essentials', 'Food, litter, care, toys, bowls, beds, and walking gear'],
            [1, 'pet-shop-ai-grooming.png', 'Grooming & Accessories', 'Shampoo, health care, collars, leashes, beds, and toys'],
            [5, 'pet-shop-small-food.svg', 'Healthy Food Picks', 'Dry food, wet food, treats, and prescription diets'],
            [6, 'pet-shop-footer-care.svg', 'Daily Pet Care Essentials', 'Bowls, beds, grooming, litter, and walking gear'],
            [9, 'pet-shop-hot-deal.svg', 'Pet Care Hot Deals', 'Save on food, toys, shampoo, and flea care'],
            [10, 'pet-shop-home-care.svg', 'Grooming & Health Care', 'Clean coat, healthy paws, happy pets'],
            [11, 'pet-shop-home-toys.svg', 'Toys & Accessories', 'Play, walk, sleep, and travel essentials'],
        ];

        foreach ($banners as [$categoryId, $filename, $title, $subtitle]) {
            $path = self::PUBLIC_ASSET_DIR . '/banners/' . $filename;
            if (!str_ends_with($filename, '.png')) {
                $this->writeSvg($path, $this->bannerSvg($title, $subtitle));
            }

            Banner::create([
                'category_id' => $categoryId,
                'image' => $path,
                'link' => url('/'),
                'status' => 1,
            ]);
        }
    }

    private function updateSettings(): void
    {
        $settings = GeneralSetting::where('status', 1)->latest('id')->first();
        if (!$settings) {
            return;
        }

        $settings->name = $settings->name ?: 'Pet Valu';
        $settings->footer_about_text = 'Food, grooming, toys, litter, health care, and daily essentials for cats and dogs.';
        $settings->og_baner = self::PUBLIC_ASSET_DIR . '/banners/pet-shop-ai-hero.png';
        $settings->save();
    }

    private function productData(int $index, array $categoryData, string $subcategoryName, array $line): array
    {
        $pet = $categoryData['type'];
        $kind = $this->kindFor($subcategoryName, $categoryData['kind']);
        $price = 220 + (($index * 73) % 1280) + $line['price_add'];
        $oldPrice = $index % 3 === 0 ? $price + 180 + $line['price_add'] : null;
        $prefix = ucfirst($pet);

        $name = match ($kind) {
            'food' => "{$line['label']} {$subcategoryName} {$prefix} Pack",
            'treat' => "{$line['label']} {$subcategoryName} {$prefix} Treats",
            'litter' => "{$line['label']} {$subcategoryName}",
            'shampoo' => "{$line['label']} {$subcategoryName}",
            'health' => "{$line['label']} {$subcategoryName}",
            'toy' => "{$line['label']} {$subcategoryName}",
            'accessory' => "{$line['label']} {$subcategoryName}",
            default => "{$line['label']} {$prefix} {$subcategoryName}",
        };

        return [
            'name' => $name,
            'category' => $categoryData['name'],
            'subcategory' => $subcategoryName,
            'petType' => $pet,
            'price' => $price,
            'oldPrice' => $oldPrice,
            'rating' => 4 + (($index % 10) / 10),
            'stock' => 8 + (($index * 5) % 45),
            'unit' => in_array($kind, ['food', 'litter', 'treat'], true) ? 'pack' : 'pcs',
            'kind' => $kind,
            'line' => $line['label'],
            'description' => "{$name} for {$pet}s. Category: {$categoryData['name']}. Subcategory: {$subcategoryName}. Relevant pet-shop product for safe daily care.",
        ];
    }

    private function productLines(): array
    {
        return [
            ['label' => 'Premium', 'price_add' => 0],
            ['label' => 'Daily Care', 'price_add' => 65],
            ['label' => 'Healthy Choice', 'price_add' => 120],
        ];
    }

    private function kindFor(string $name, string $fallback): string
    {
        $text = strtolower($name);

        return match (true) {
            str_contains($text, 'food') || str_contains($text, 'diet') || str_contains($text, 'stomach') || str_contains($text, 'grain') || str_contains($text, 'urinary') || str_contains($text, 'hairball') || str_contains($text, 'breed') => 'food',
            str_contains($text, 'treat') || str_contains($text, 'biscuit') || str_contains($text, 'jerky') || str_contains($text, 'chew') => 'treat',
            str_contains($text, 'litter') || str_contains($text, 'toilet') || str_contains($text, 'scoop') || preg_match('/\bmat\b/', $text) || str_contains($text, 'poop') || str_contains($text, 'waste') || str_contains($text, 'tray') => 'litter',
            str_contains($text, 'shampoo') || str_contains($text, 'conditioner') || str_contains($text, 'wipes') || str_contains($text, 'brush') || str_contains($text, 'clipper') || str_contains($text, 'perfume') || str_contains($text, 'coat spray') || str_contains($text, 'paw') || str_contains($text, 'groom') => 'shampoo',
            str_contains($text, 'flea') || str_contains($text, 'tick') || str_contains($text, 'deworm') || str_contains($text, 'ear') || str_contains($text, 'eye') || str_contains($text, 'dental') || str_contains($text, 'vitamin') || str_contains($text, 'care') || str_contains($text, 'support') || str_contains($text, 'joint') => 'health',
            str_contains($text, 'toy') || str_contains($text, 'ball') || str_contains($text, 'tunnel') || str_contains($text, 'laser') || str_contains($text, 'plush') || str_contains($text, 'rope') || str_contains($text, 'fetch') || str_contains($text, 'tree') || str_contains($text, 'post') => 'toy',
            str_contains($text, 'collar') || str_contains($text, 'harness') || str_contains($text, 'leash') || str_contains($text, 'bed') || str_contains($text, 'bowl') || str_contains($text, 'feeder') || str_contains($text, 'fountain') || str_contains($text, 'carrier') || str_contains($text, 'clothes') || str_contains($text, 'muzzle') || str_contains($text, 'raincoat') || str_contains($text, 'bottle') || str_contains($text, 'pad') => 'accessory',
            default => $fallback,
        };
    }

    private function categoryImage(string $name, string $pet, string $kind): string
    {
        $filename = Str::slug($pet . '-' . $name) . '.webp';
        $path = self::PUBLIC_ASSET_DIR . '/categories/' . $filename;
        $this->copySourceCategoryImage($path, $pet, $kind);
        return $path;
    }

    private function copySourceCategoryImage(string $publicPath, string $pet, string $kind): void
    {
        $source = $this->sourceProductImage($pet, $kind, 0);
        $absolute = public_path(str_replace('public/', '', $publicPath));
        File::ensureDirectoryExists(dirname($absolute));

        if ($source && File::exists($source)) {
            if ($this->writeSourceProductImage($source, $absolute, 420, 320)) {
                return;
            }
        }

        $this->writeDemoImage($publicPath, $pet . ' ' . $kind, $pet, $kind, 420, 320, true);
    }

    private function categoryIcon(string $name, string $pet, string $kind): string
    {
        $filename = Str::slug($pet . '-' . $name) . '-icon.svg';
        $path = self::PUBLIC_ASSET_DIR . '/icons/' . $filename;
        $this->writeSvg($path, $this->productSvg($name, $pet, $kind, 96, 96, true));
        return $path;
    }

    private function productImage(string $name, string $pet, string $kind, int $variant = 0): string
    {
        $filename = Str::slug($pet . '-' . $name) . '.webp';
        $path = self::PUBLIC_ASSET_DIR . '/products/' . $filename;
        $this->copySourceProductImage($path, $pet, $kind, $variant);
        return $path;
    }

    private function copySourceProductImage(string $publicPath, string $pet, string $kind, int $variant = 0): void
    {
        $source = $this->sourceProductImage($pet, $kind, $variant);
        $absolute = public_path(str_replace('public/', '', $publicPath));
        File::ensureDirectoryExists(dirname($absolute));

        if ($source && File::exists($source)) {
            if ($this->writeSourceProductImage($source, $absolute)) {
                return;
            }
        }

        $this->writeDemoImage($publicPath, $pet . ' ' . $kind, $pet, $kind, 520, 520, false, $variant);
    }

    private function writeSourceProductImage(string $source, string $absolute, int $width = 520, int $height = 520): bool
    {
        $sourceContent = @file_get_contents($source);
        if (!$sourceContent) {
            return false;
        }

        $sourceImage = @imagecreatefromstring($sourceContent);
        if (!$sourceImage) {
            return false;
        }

        $canvas = imagecreatetruecolor($width, $height);
        $white = imagecolorallocate($canvas, 255, 255, 255);
        imagefilledrectangle($canvas, 0, 0, $width, $height, $white);

        $sourceWidth = imagesx($sourceImage);
        $sourceHeight = imagesy($sourceImage);
        $scale = min(($width - 24) / $sourceWidth, ($height - 24) / $sourceHeight);
        $targetWidth = (int) round($sourceWidth * $scale);
        $targetHeight = (int) round($sourceHeight * $scale);
        $targetX = (int) round(($width - $targetWidth) / 2);
        $targetY = (int) round(($height - $targetHeight) / 2);

        imagecopyresampled(
            $canvas,
            $sourceImage,
            $targetX,
            $targetY,
            0,
            0,
            $targetWidth,
            $targetHeight,
            $sourceWidth,
            $sourceHeight
        );

        File::ensureDirectoryExists(dirname($absolute));
        $saved = imagewebp($canvas, $absolute, 90);
        imagedestroy($sourceImage);
        imagedestroy($canvas);

        return (bool) $saved;
    }

    private function sourceProductImage(string $pet, string $kind, int $variant = 0): ?string
    {
        $base = 'C:/Users/Hp/Downloads/';
        $whatsapp = $base . 'WhatsApp Unknown 2026-06-24 at 8.22.18 PM/';

        $images = [
            'cat' => [
                'food' => [
                    $whatsapp . 'WhatsApp Image 2026-06-24 at 8.05.19 PM.jpeg',
                    $whatsapp . 'WhatsApp Image 2026-06-24 at 8.05.23 PM.jpeg',
                    $base . 'Prama-8-85x85.png',
                    $base . 'Prama-77-85x85.png',
                ],
                'treat' => [
                    $base . 'Prama-8-85x85.png',
                    $base . 'Prama-77-85x85.png',
                    $whatsapp . 'WhatsApp Image 2026-06-24 at 8.05.19 PM.jpeg',
                ],
                'litter' => [
                    $whatsapp . 'WhatsApp Image 2026-06-24 at 8.05.24 PM.jpeg',
                    $whatsapp . 'WhatsApp Image 2026-06-24 at 8.05.20 PM.jpeg',
                ],
                'shampoo' => [
                    $whatsapp . 'WhatsApp Image 2026-06-24 at 8.05.20 PM.jpeg',
                    $whatsapp . 'WhatsApp Image 2026-06-24 at 8.05.24 PM.jpeg',
                    $whatsapp . 'WhatsApp Image 2026-06-24 at 8.05.23 PM (1).jpeg',
                ],
                'health' => [
                    $whatsapp . 'WhatsApp Image 2026-06-24 at 8.05.24 PM.jpeg',
                    $whatsapp . 'WhatsApp Image 2026-06-24 at 8.05.20 PM.jpeg',
                ],
                'toy' => [
                    $whatsapp . 'WhatsApp Image 2026-06-24 at 8.05.22 PM.jpeg',
                    $base . 'boll-300x300.png',
                    $base . 'Cat-Toy-Ball-Box-300x300.png',
                ],
                'accessory' => [
                    $whatsapp . 'WhatsApp Image 2026-06-24 at 8.05.20 PM (1).jpeg',
                    $base . 'buig-300x300.png',
                    $base . 'Cat-Toy-Ball-Box-300x300.png',
                ],
            ],
            'dog' => [
                'food' => [
                    $base . 'Drools-Adult-Dog-Food-Chicken-And-Egg-3kg-1.webp',
                    $base . 'Pedigree-Adult-Dog-Food-Beef-Vegetables-3kg-100x100.jpg.webp',
                ],
                'treat' => [
                    $base . 'Prama-8-85x85.png',
                    $base . 'Prama-77-85x85.png',
                    $base . 'Pedigree-Adult-Dog-Food-Beef-Vegetables-3kg-100x100.jpg.webp',
                ],
                'litter' => [
                    $whatsapp . 'WhatsApp Image 2026-06-24 at 8.05.24 PM.jpeg',
                    $whatsapp . 'WhatsApp Image 2026-06-24 at 8.05.20 PM.jpeg',
                ],
                'shampoo' => [
                    $whatsapp . 'WhatsApp Image 2026-06-24 at 8.05.20 PM.jpeg',
                    $whatsapp . 'WhatsApp Image 2026-06-24 at 8.05.24 PM.jpeg',
                ],
                'health' => [
                    $whatsapp . 'WhatsApp Image 2026-06-24 at 8.05.24 PM.jpeg',
                    $whatsapp . 'WhatsApp Image 2026-06-24 at 8.05.20 PM.jpeg',
                ],
                'toy' => [
                    $base . 'boll-300x300.png',
                    $whatsapp . 'WhatsApp Image 2026-06-24 at 8.05.22 PM.jpeg',
                ],
                'accessory' => [
                    $base . 'buig-300x300.png',
                    $whatsapp . 'WhatsApp Image 2026-06-24 at 8.05.20 PM (1).jpeg',
                ],
            ],
        ];

        $pool = $images[$pet][$kind] ?? $images[$pet]['accessory'] ?? [];
        return $pool ? $pool[$variant % count($pool)] : null;
    }

    private function writeDemoImage(string $publicPath, string $name, string $pet, string $kind, int $width, int $height, bool $compact = false, int $variant = 0): void
    {
        $absolute = public_path(str_replace('public/', '', $publicPath));
        File::ensureDirectoryExists(dirname($absolute));

        $img = imagecreatetruecolor($width, $height);
        imageantialias($img, true);

        $catPalette = ['bg' => '#fff1f2', 'soft' => '#ffe4e6', 'primary' => '#ef4444', 'accent' => '#f97316', 'ink' => '#111827'];
        $dogPalette = ['bg' => '#eff6ff', 'soft' => '#dbeafe', 'primary' => '#2563eb', 'accent' => '#22c55e', 'ink' => '#111827'];
        $palette = $pet === 'cat' ? $catPalette : $dogPalette;

        $bg = $this->gdColor($img, $palette['bg']);
        $soft = $this->gdColor($img, $palette['soft']);
        $primary = $this->gdColor($img, $palette['primary']);
        $accent = $this->gdColor($img, $palette['accent']);
        $ink = $this->gdColor($img, $palette['ink']);
        $white = $this->gdColor($img, '#ffffff');
        $muted = $this->gdColor($img, '#94a3b8');

        imagefilledrectangle($img, 0, 0, $width, $height, $bg);
        imagefilledellipse($img, (int) ($width * .18), (int) ($height * .16), (int) ($width * .24), (int) ($height * .24), $white);
        imagefilledellipse($img, (int) ($width * .9), (int) ($height * .9), (int) ($width * .44), (int) ($height * .44), $soft);

        $cx = (int) ($width / 2);
        $cy = $compact ? (int) ($height * .43) : (int) ($height * .39);
        $scale = $compact ? .72 : 1;

        $label = strtoupper($pet . ' ' . $kind);
        imagestring($img, 3, 18, 16, $label, $primary);

        match ($kind) {
            'food' => $this->drawBag($img, $cx, $cy, $scale, $primary, $accent, $white, $ink, 'FOOD', $variant),
            'treat' => $this->drawPouch($img, $cx, $cy, $scale, $primary, $accent, $white, $ink, 'TREAT', $variant),
            'litter' => $this->drawBag($img, $cx, $cy, $scale, $accent, $primary, $white, $ink, 'LITTER', $variant),
            'shampoo' => $this->drawBottle($img, $cx, $cy, $scale, $primary, $accent, $white, $ink, 'WASH', $variant),
            'health' => $this->drawBottle($img, $cx, $cy, $scale, $accent, $primary, $white, $ink, 'CARE', $variant, true),
            'toy' => $this->drawToys($img, $cx, $cy, $scale, $primary, $accent, $white, $ink, $variant),
            'accessory' => $this->drawCollar($img, $cx, $cy, $scale, $primary, $accent, $white, $ink, $variant),
            default => $this->drawBag($img, $cx, $cy, $scale, $primary, $accent, $white, $ink, 'PET', $variant),
        };

        if (!$compact) {
            $this->centerText($img, Str::limit($name, 34, ''), $width, $height - 72, 4, $ink);
            $this->centerText($img, 'Clean demo product image', $width, $height - 44, 2, $muted);
        } else {
            $this->centerText($img, Str::limit($name, 24, ''), $width, $height - 34, 3, $ink);
        }

        imagewebp($img, $absolute, 90);
        imagedestroy($img);
    }

    private function gdColor($img, string $hex): int
    {
        $hex = ltrim($hex, '#');
        return imagecolorallocate($img, hexdec(substr($hex, 0, 2)), hexdec(substr($hex, 2, 2)), hexdec(substr($hex, 4, 2)));
    }

    private function centerText($img, string $text, int $width, int $y, int $font, int $color): void
    {
        $text = trim($text);
        $x = max(8, (int) (($width - imagefontwidth($font) * strlen($text)) / 2));
        imagestring($img, $font, $x, $y, $text, $color);
    }

    private function drawBag($img, int $cx, int $cy, float $scale, int $primary, int $accent, int $white, int $ink, string $text, int $variant): void
    {
        $w = (int) (142 * $scale);
        $h = (int) (178 * $scale);
        $x1 = $cx - (int) ($w / 2);
        $y1 = $cy - (int) ($h / 2);
        imagefilledpolygon($img, [$x1 + 16, $y1, $x1 + $w - 16, $y1, $x1 + $w, $y1 + $h, $x1, $y1 + $h], 4, $white);
        imagerectangle($img, $x1 + 8, $y1 + 8, $x1 + $w - 8, $y1 + $h - 8, $ink);
        imagefilledrectangle($img, $x1 + 18, $y1 + 34, $x1 + $w - 18, $y1 + 78, $primary);
        imagefilledellipse($img, $cx, $y1 + 116, (int) (62 * $scale), (int) (42 * $scale), $accent);
        $this->centerText($img, $text, imagesx($img), $y1 + 50, 4, $white);
        imagefilledellipse($img, $cx - (int) (22 * $scale), $y1 + 116, (int) (10 * $scale), (int) (10 * $scale), $white);
        imagefilledellipse($img, $cx + (int) (22 * $scale), $y1 + 116, (int) (10 * $scale), (int) (10 * $scale), $white);
    }

    private function drawPouch($img, int $cx, int $cy, float $scale, int $primary, int $accent, int $white, int $ink, string $text, int $variant): void
    {
        $w = (int) (154 * $scale);
        $h = (int) (170 * $scale);
        $x1 = $cx - (int) ($w / 2);
        $y1 = $cy - (int) ($h / 2);
        imagefilledrectangle($img, $x1, $y1 + 18, $x1 + $w, $y1 + $h, $primary);
        imagefilledrectangle($img, $x1 + 18, $y1 + 72, $x1 + $w - 18, $y1 + 114, $white);
        imagefilledellipse($img, $cx, $y1 + 48, (int) (62 * $scale), (int) (42 * $scale), $accent);
        $this->centerText($img, $text, imagesx($img), $y1 + 86, 4, $ink);
    }

    private function drawBottle($img, int $cx, int $cy, float $scale, int $primary, int $accent, int $white, int $ink, string $text, int $variant, bool $health = false): void
    {
        $w = (int) (92 * $scale);
        $h = (int) (178 * $scale);
        $x1 = $cx - (int) ($w / 2);
        $y1 = $cy - (int) ($h / 2);
        imagefilledrectangle($img, $cx - (int) (22 * $scale), $y1 - (int) (28 * $scale), $cx + (int) (22 * $scale), $y1 + 4, $primary);
        imagefilledrectangle($img, $x1, $y1, $x1 + $w, $y1 + $h, $white);
        imagerectangle($img, $x1, $y1, $x1 + $w, $y1 + $h, $ink);
        imagefilledrectangle($img, $x1 + 12, $y1 + 58, $x1 + $w - 12, $y1 + 116, $accent);
        if ($health) {
            imagefilledrectangle($img, $cx - 8, $y1 + 70, $cx + 8, $y1 + 104, $white);
            imagefilledrectangle($img, $cx - 20, $y1 + 82, $cx + 20, $y1 + 94, $white);
        } else {
            $this->centerText($img, $text, imagesx($img), $y1 + 78, 3, $white);
        }
    }

    private function drawToys($img, int $cx, int $cy, float $scale, int $primary, int $accent, int $white, int $ink, int $variant): void
    {
        imagefilledellipse($img, $cx - (int) (46 * $scale), $cy, (int) (72 * $scale), (int) (72 * $scale), $primary);
        imagefilledellipse($img, $cx + (int) (42 * $scale), $cy + (int) (12 * $scale), (int) (82 * $scale), (int) (82 * $scale), $accent);
        imagearc($img, $cx - (int) (46 * $scale), $cy, (int) (46 * $scale), (int) (46 * $scale), 20, 320, $white);
        imagearc($img, $cx + (int) (42 * $scale), $cy + (int) (12 * $scale), (int) (54 * $scale), (int) (54 * $scale), 20, 320, $white);
        imageline($img, $cx - 18, $cy - (int) (72 * $scale), $cx + 72, $cy - (int) (110 * $scale), $ink);
    }

    private function drawCollar($img, int $cx, int $cy, float $scale, int $primary, int $accent, int $white, int $ink, int $variant): void
    {
        imagearc($img, $cx, $cy, (int) (176 * $scale), (int) (116 * $scale), 0, 360, $ink);
        imagearc($img, $cx, $cy, (int) (156 * $scale), (int) (96 * $scale), 0, 360, $primary);
        imagefilledrectangle($img, $cx - (int) (54 * $scale), $cy + (int) (36 * $scale), $cx + (int) (54 * $scale), $cy + (int) (58 * $scale), $primary);
        imagefilledellipse($img, $cx, $cy + (int) (64 * $scale), (int) (28 * $scale), (int) (28 * $scale), $accent);
        imagerectangle($img, $cx - (int) (20 * $scale), $cy + (int) (28 * $scale), $cx + (int) (20 * $scale), $cy + (int) (66 * $scale), $ink);
    }

    private function writeSvg(string $publicPath, string $svg): void
    {
        $absolute = public_path(str_replace('public/', '', $publicPath));
        File::ensureDirectoryExists(dirname($absolute));
        File::put($absolute, $svg);
    }

    private function productSvg(string $name, string $pet, string $kind, int $width, int $height, bool $icon = false, int $variant = 0): string
    {
        $palette = $pet === 'cat'
            ? ['#fef2f2', '#ef4444', '#111827', '#f97316']
            : ['#eff6ff', '#2563eb', '#111827', '#22c55e'];
        [$bg, $primary, $ink, $accent] = $palette;
        $label = e(Str::limit($name, $icon ? 12 : 28, ''));
        $petLabel = strtoupper($pet);
        $shape = $this->shapeSvg($kind, $primary, $accent, $ink, $icon, $variant);

        $shelfY = $icon ? 68 : (int) round($height * 0.62);
        $floorY = $icon ? 78 : (int) round($height * 0.68);

        return <<<SVG
<svg xmlns="http://www.w3.org/2000/svg" width="{$width}" height="{$height}" viewBox="0 0 {$width} {$height}" role="img" aria-label="{$label}">
  <rect width="{$width}" height="{$height}" rx="22" fill="{$bg}"/>
  <circle cx="78" cy="74" r="44" fill="#fff" opacity=".85"/>
  <circle cx="{$width}" cy="{$height}" r="170" fill="{$primary}" opacity=".08"/>
  <path d="M18 {$floorY} C{$this->floorCurve($width, $floorY)} {$width} {$floorY}" fill="none" stroke="#fff" stroke-width="18" opacity=".68"/>
  <path d="M38 {$shelfY} H{$this->shelfEnd($width)}" stroke="{$primary}" stroke-width="6" opacity=".18" stroke-linecap="round"/>
  <g transform="translate({$this->centerX($width, $icon)}, {$this->centerY($height, $icon)})">{$shape}</g>
  <text x="50%" y="78%" text-anchor="middle" font-family="Arial, sans-serif" font-size="{$this->fontSize($icon)}" font-weight="700" fill="{$ink}">{$label}</text>
  <text x="50%" y="88%" text-anchor="middle" font-family="Arial, sans-serif" font-size="{$this->fontSize($icon, true)}" font-weight="700" fill="{$primary}">{$petLabel} SHOP</text>
</svg>
SVG;
    }

    private function shapeSvg(string $kind, string $primary, string $accent, string $ink, bool $icon, int $variant = 0): string
    {
        $s = $icon ? 0.34 : 0.58;
        $scale = "scale({$s})";
        $tilt = ($variant - 1) * 4;
        $rotate = "rotate({$tilt})";

        return match ($kind) {
            'food' => "<g transform=\"{$scale} {$rotate}\"><path d=\"M-58 70 L-42-92 H42 L58 70 Z\" fill=\"#fff\" stroke=\"{$ink}\" stroke-width=\"5\"/><path d=\"M-38-62 H38 L32-18 H-32 Z\" fill=\"{$primary}\"/><circle cx=\"0\" cy=\"22\" r=\"26\" fill=\"{$accent}\"/><text x=\"0\" y=\"28\" text-anchor=\"middle\" font-family=\"Arial\" font-size=\"22\" font-weight=\"700\" fill=\"#fff\">FOOD</text></g>",
            'treat' => "<g transform=\"{$scale} {$rotate}\"><rect x=\"-70\" y=\"-45\" width=\"140\" height=\"90\" rx=\"18\" fill=\"#fff\" stroke=\"{$ink}\" stroke-width=\"5\"/><circle cx=\"-36\" cy=\"0\" r=\"18\" fill=\"{$accent}\"/><circle cx=\"8\" cy=\"0\" r=\"18\" fill=\"{$primary}\"/><circle cx=\"48\" cy=\"0\" r=\"18\" fill=\"{$accent}\"/><text x=\"0\" y=\"72\" text-anchor=\"middle\" font-family=\"Arial\" font-size=\"24\" font-weight=\"700\" fill=\"{$ink}\">TREATS</text></g>",
            'litter' => "<g transform=\"{$scale} {$rotate}\"><rect x=\"-72\" y=\"-40\" width=\"144\" height=\"96\" rx=\"18\" fill=\"#fff\" stroke=\"{$ink}\" stroke-width=\"5\"/><path d=\"M-48 10 C-20 32 20 32 48 10 L42 46 H-42 Z\" fill=\"{$primary}\" opacity=\".35\"/><rect x=\"-42\" y=\"-86\" width=\"84\" height=\"54\" rx=\"8\" fill=\"{$accent}\"/><text x=\"0\" y=\"-52\" text-anchor=\"middle\" font-family=\"Arial\" font-size=\"18\" font-weight=\"700\" fill=\"#fff\">LITTER</text></g>",
            'shampoo' => "<g transform=\"{$scale} {$rotate}\"><rect x=\"-42\" y=\"-76\" width=\"84\" height=\"146\" rx=\"18\" fill=\"#fff\" stroke=\"{$ink}\" stroke-width=\"5\"/><rect x=\"-24\" y=\"-102\" width=\"48\" height=\"28\" rx=\"8\" fill=\"{$primary}\"/><rect x=\"-30\" y=\"-22\" width=\"60\" height=\"44\" rx=\"8\" fill=\"{$accent}\"/><circle cx=\"22\" cy=\"42\" r=\"9\" fill=\"{$primary}\"/><circle cx=\"-18\" cy=\"48\" r=\"7\" fill=\"{$primary}\"/></g>",
            'health' => "<g transform=\"{$scale} {$rotate}\"><rect x=\"-70\" y=\"-48\" width=\"140\" height=\"96\" rx=\"18\" fill=\"#fff\" stroke=\"{$ink}\" stroke-width=\"5\"/><rect x=\"-16\" y=\"-34\" width=\"32\" height=\"68\" rx=\"5\" fill=\"{$primary}\"/><rect x=\"-34\" y=\"-16\" width=\"68\" height=\"32\" rx=\"5\" fill=\"{$primary}\"/><path d=\"M-62 76 H62\" stroke=\"{$accent}\" stroke-width=\"12\" stroke-linecap=\"round\"/></g>",
            'toy' => "<g transform=\"{$scale} {$rotate}\"><circle cx=\"-28\" cy=\"0\" r=\"42\" fill=\"{$primary}\"/><circle cx=\"28\" cy=\"0\" r=\"42\" fill=\"{$accent}\"/><path d=\"M-66-2 C-28-32 30 32 66 2\" fill=\"none\" stroke=\"#fff\" stroke-width=\"10\" stroke-linecap=\"round\"/><circle cx=\"0\" cy=\"0\" r=\"18\" fill=\"#fff\" opacity=\".9\"/></g>",
            'accessory' => "<g transform=\"{$scale} {$rotate}\"><path d=\"M-72 0 C-72-52-36-78 0-78 S72-52 72 0 36 78 0 78-72 52-72 0Z\" fill=\"none\" stroke=\"{$ink}\" stroke-width=\"12\"/><path d=\"M-42 28 H42\" stroke=\"{$primary}\" stroke-width=\"18\" stroke-linecap=\"round\"/><circle cx=\"0\" cy=\"28\" r=\"14\" fill=\"{$accent}\"/></g>",
            default => "<g transform=\"{$scale}\"><circle cx=\"0\" cy=\"0\" r=\"72\" fill=\"{$primary}\"/><text x=\"0\" y=\"10\" text-anchor=\"middle\" font-family=\"Arial\" font-size=\"32\" font-weight=\"700\" fill=\"#fff\">PET</text></g>",
        };
    }

    private function bannerSvg(string $title, string $subtitle): string
    {
        $title = e($title);
        $subtitle = e($subtitle);

        return <<<SVG
<svg xmlns="http://www.w3.org/2000/svg" width="1320" height="460" viewBox="0 0 1320 460" role="img" aria-label="{$title}">
  <defs>
    <linearGradient id="g" x1="0" x2="1" y1="0" y2="1">
      <stop stop-color="#0f172a"/>
      <stop offset=".52" stop-color="#b91c1c"/>
      <stop offset="1" stop-color="#f59e0b"/>
    </linearGradient>
  </defs>
  <rect width="1320" height="460" fill="url(#g)"/>
  <circle cx="1120" cy="110" r="180" fill="#fff" opacity=".1"/>
  <circle cx="1160" cy="292" r="116" fill="#fff" opacity=".14"/>
  <text x="90" y="160" font-family="Arial, sans-serif" font-size="56" font-weight="800" fill="#fff">{$title}</text>
  <text x="94" y="220" font-family="Arial, sans-serif" font-size="28" font-weight="600" fill="#fff" opacity=".92">{$subtitle}</text>
  <rect x="94" y="264" width="156" height="48" rx="24" fill="#fff"/>
  <text x="172" y="296" text-anchor="middle" font-family="Arial, sans-serif" font-size="18" font-weight="800" fill="#b91c1c">Shop Now</text>
  <g transform="translate(850 105)">
    <rect x="-8" y="118" width="300" height="126" rx="28" fill="#fff" opacity=".95"/>
    <path d="M54 118 C36 72 58 34 96 34 C132 34 148 64 154 94 C166 64 188 42 220 46 C258 52 276 90 264 126" fill="#fff" opacity=".95"/>
    <circle cx="100" cy="86" r="10" fill="#111827"/><circle cx="216" cy="92" r="10" fill="#111827"/>
    <path d="M145 132 C166 150 190 150 212 132" stroke="#111827" stroke-width="9" fill="none" stroke-linecap="round"/>
    <rect x="-112" y="160" width="96" height="112" rx="16" fill="#fff" opacity=".9"/>
    <rect x="-92" y="134" width="56" height="34" rx="10" fill="#fbbf24"/>
    <text x="-64" y="224" text-anchor="middle" font-family="Arial" font-size="18" font-weight="900" fill="#b91c1c">FOOD</text>
    <rect x="330" y="152" width="70" height="128" rx="18" fill="#fff" opacity=".9"/>
    <rect x="346" y="126" width="38" height="30" rx="8" fill="#fbbf24"/>
    <text x="365" y="224" text-anchor="middle" font-family="Arial" font-size="16" font-weight="900" fill="#b91c1c">CARE</text>
  </g>
</svg>
SVG;
    }

    private function centerX(int $width, bool $icon): int
    {
        return (int) round($width / 2);
    }

    private function centerY(int $height, bool $icon): int
    {
        return $icon ? (int) round($height * 0.38) : (int) round($height * 0.36);
    }

    private function fontSize(bool $icon, bool $small = false): int
    {
        if ($icon) {
            return $small ? 0 : 12;
        }

        return $small ? 18 : 26;
    }

    private function floorCurve(int $width, int $floorY): string
    {
        $x1 = (int) round($width * 0.32);
        $y1 = $floorY - 28;
        $x2 = (int) round($width * 0.66);
        $y2 = $floorY + 30;

        return "{$x1} {$y1}, {$x2} {$y2},";
    }

    private function shelfEnd(int $width): int
    {
        return max(58, $width - 38);
    }

    private function categories(): array
    {
        return [
            ['id' => 1, 'name' => 'Cat Food', 'type' => 'cat', 'kind' => 'food', 'subcategories' => ['Dry Cat Food', 'Wet Cat Food', 'Kitten Food', 'Adult Cat Food', 'Senior Cat Food', 'Persian Cat Food', 'Indoor Cat Food', 'Hairball Control Food', 'Urinary Care Food', 'Sensitive Stomach Food', 'Grain Free Cat Food', 'Weight Control Cat Food', 'Vet / Prescription Diet Cat Food']],
            ['id' => 2, 'name' => 'Cat Treats', 'type' => 'cat', 'kind' => 'treat', 'subcategories' => ['Creamy Treats', 'Crunchy Treats', 'Soft Treats', 'Dental Treats', 'Freeze Dried Treats', 'Catnip Treats', 'Training Treats']],
            ['id' => 3, 'name' => 'Cat Litter & Toilet', 'type' => 'cat', 'kind' => 'litter', 'subcategories' => ['Bentonite Cat Litter', 'Tofu Cat Litter', 'Silica Cat Litter', 'Clumping Litter', 'Non-Clumping Litter', 'Scented Litter', 'Unscented Litter', 'Litter Box', 'Covered Litter Box', 'Litter Scoop', 'Litter Mat', 'Litter Deodorizer', 'Litter Tray Liners', 'Poop Bag / Waste Bag']],
            ['id' => 4, 'name' => 'Cat Grooming & Shampoo', 'type' => 'cat', 'kind' => 'shampoo', 'subcategories' => ['Cat Shampoo', 'Anti-Flea Cat Shampoo', 'Anti-Tick Cat Shampoo', 'Medicated Cat Shampoo', 'Dry Shampoo for Cats', 'Cat Conditioner', 'Cat Fur / Coat Spray', 'Cat Perfume / Deodorizer', 'Cat Wipes', 'Cat Brush', 'Nail Clipper', 'Hair Remover']],
            ['id' => 5, 'name' => 'Cat Health & Care', 'type' => 'cat', 'kind' => 'health', 'subcategories' => ['Flea & Tick Treatment', 'Deworming Products', 'Ear Cleaner', 'Eye Cleaner', 'Dental Care', 'Vitamins', 'Skin & Coat Care', 'Digestive Care', 'Immune Support']],
            ['id' => 6, 'name' => 'Cat Toys', 'type' => 'cat', 'kind' => 'toy', 'subcategories' => ['Cat Ball', 'Cat Teaser / Wand Toy', 'Cat Tunnel', 'Catnip Toy', 'Scratching Toy', 'Interactive Toy', 'Laser Toy', 'Plush Toy', 'Scratching Post', 'Cat Tree']],
            ['id' => 7, 'name' => 'Cat Accessories', 'type' => 'cat', 'kind' => 'accessory', 'subcategories' => ['Cat Collar', 'Cat Harness', 'Cat Leash', 'Cat Carrier Bag', 'Cat Bed', 'Cat Bowl', 'Automatic Feeder', 'Water Fountain', 'Cat Clothes']],
            ['id' => 8, 'name' => 'Dog Food', 'type' => 'dog', 'kind' => 'food', 'subcategories' => ['Dry Dog Food', 'Wet Dog Food', 'Puppy Food', 'Adult Dog Food', 'Senior Dog Food', 'Small Breed Food', 'Medium Breed Food', 'Large Breed Food', 'Grain Free Dog Food', 'Sensitive Stomach Food', 'Weight Control Dog Food', 'Vet / Prescription Diet Dog Food']],
            ['id' => 9, 'name' => 'Dog Treats', 'type' => 'dog', 'kind' => 'treat', 'subcategories' => ['Training Treats', 'Dental Treats', 'Chew Treats', 'Soft Treats', 'Dog Biscuits', 'Jerky Treats', 'Freeze Dried Treats']],
            ['id' => 10, 'name' => 'Dog Grooming & Shampoo', 'type' => 'dog', 'kind' => 'shampoo', 'subcategories' => ['Dog Shampoo', 'Anti-Flea Dog Shampoo', 'Anti-Tick Dog Shampoo', 'Medicated Dog Shampoo', 'Puppy Shampoo', 'Dog Conditioner', 'Dog Wipes', 'Dog Perfume / Deodorizer', 'Paw Cleaner', 'Coat Spray', 'Dog Brush', 'Nail Clipper', 'Hair Remover']],
            ['id' => 11, 'name' => 'Dog Health & Care', 'type' => 'dog', 'kind' => 'health', 'subcategories' => ['Flea & Tick Treatment', 'Deworming Products', 'Ear Cleaner', 'Eye Cleaner', 'Dental Care', 'Vitamins', 'Skin & Coat Care', 'Joint Care', 'Digestive Care', 'Immune Support']],
            ['id' => 12, 'name' => 'Dog Toys', 'type' => 'dog', 'kind' => 'toy', 'subcategories' => ['Chew Toy', 'Rope Toy', 'Ball Toy', 'Squeaky Toy', 'Plush Toy', 'Interactive Toy', 'Training Toy', 'Fetch Toy']],
            ['id' => 13, 'name' => 'Dog Accessories', 'type' => 'dog', 'kind' => 'accessory', 'subcategories' => ['Dog Collar', 'Dog Harness', 'Dog Leash', 'Dog Muzzle', 'Dog Bed', 'Dog Bowl', 'Automatic Feeder', 'Water Bottle', 'Dog Carrier', 'Dog Clothes', 'Raincoat', 'Training Pad', 'Poop Bag']],
        ];
    }
}
