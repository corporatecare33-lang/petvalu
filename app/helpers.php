<?php

use App\Models\ResellerLandingPage;
use Illuminate\Support\Str;

if (!function_exists('landing_url')) {
    /**
     * Generate URL for reseller landing - uses custom domain when applicable.
     */
    function landing_url(string $slug, string $path = ''): string
    {
        $landing = ResellerLandingPage::where('slug', $slug)->first();
        $host = strtolower(request()->getHost());

        if ($landing && $landing->custom_domain && strtolower($landing->custom_domain) === $host) {
            return $path === '' ? url('/') : url($path);
        }

        $base = '/r/' . $slug;
        return $path === '' ? url($base) : url(rtrim($base . '/' . ltrim($path, '/'), '/'));
    }
}

if (!function_exists('imgUrl')) {
    /**
     * Generate the correct asset URL for stored images.
     * 
     * Database stores paths like "public/uploads/category/xxx.webp"
     * Since document root is public/, we need to strip "public/" prefix.
     */
    function imgUrl(?string $path): string
    {
        if (empty($path)) {
            return '';
        }
        
        // Remove any leading or trailing whitespace
        $path = trim($path);
        
        // Handle cases where path starts with /
        if (strpos($path, '/') === 0) {
            $path = substr($path, 1);
        }
        
        if (Str::startsWith($path, ['http://', 'https://', '//'])) {
            return $path;
        }

        $cleanPath = $path;
        $publicPrefixedPath = $path;

        if (strpos($cleanPath, 'public/') === 0) {
            $cleanPath = substr($cleanPath, 7);
        }

        if (file_exists(public_path($cleanPath))) {
            return asset($cleanPath);
        }

        if (file_exists(public_path($publicPrefixedPath))) {
            return asset($publicPrefixedPath);
        }
        
        return asset($cleanPath);
    }
}
