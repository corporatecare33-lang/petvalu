<?php

require __DIR__.'/vendor/autoload.php';

$app = require_once __DIR__.'/bootstrap/app.php';
$app->make('Illuminate\Contracts\Console\Kernel')->bootstrap();

echo '<h3>Testing imgUrl Function:</h3>';
$testPath = 'public/uploads/category/1773432503-1770953958-1767432776-pngtree-smart-android-tv-png-image_16548885.webp';
echo '<p><strong>Test Path:</strong> ' . $testPath . '</p>';
$cleanPath = \Illuminate\Support\Str::replaceFirst('public/', '', $testPath);
echo '<p><strong>Cleaned Path:</strong> ' . $cleanPath . '</p>';
$assetUrl = asset($cleanPath);
echo '<p><strong>asset() returns:</strong> ' . $assetUrl . '</p>';
$imgUrlResult = imgUrl($testPath);
echo '<p><strong>imgUrl() returns:</strong> ' . $imgUrlResult . '</p>';
echo '<p><strong>File exists in public/' . $cleanPath . ':</strong> ' . (file_exists(public_path($cleanPath)) ? 'YES' : 'NO') . '</p>';

echo '<h3>Testing asset helper with existing file:</h3>';
echo '<p><strong>Testing asset("uploads/category/1773432503-1770953958-1767432776-pngtree-smart-android-tv-png-image_16548885.webp"):</strong> ' . asset('uploads/category/1773432503-1770953958-1767432776-pngtree-smart-android-tv-png-image_16548885.webp') . '</p>';

echo '<h3>Direct img tag with correct URL:</h3>';
echo '<img src="' . asset('uploads/category/1773432503-1770953958-1767432776-pngtree-smart-android-tv-png-image_16548885.webp') . '" style="max-width:400px;">';
