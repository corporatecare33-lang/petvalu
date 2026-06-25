@extends('frontEnd.layouts.master')

@section('title', 'All Categories')

@push('seo')
<meta name="app-url" content="{{ route('allcategories') }}" />
<meta name="robots" content="index, follow" />
<meta name="description" content="Browse all cat and dog pet shop categories." />
<meta name="keywords" content="cat food, dog food, pet accessories, pet grooming, pet toys" />
@endpush

@section('content')
<section class="all-category-page">
    <div class="container">
        <div class="all-category-hero">
            <div>
                <h1>CATEGORY</h1>
                <p>Find your favorite categories and products</p>
            </div>
            <form action="{{ route('allcategories') }}" method="GET" class="all-category-search">
                <input type="text" name="keyword" value="{{ $keyword }}" placeholder="Search Categories" />
                <button type="submit" aria-label="Search Categories">
                    <i class="fa fa-search"></i>
                </button>
            </form>
        </div>

        <div class="all-category-grid">
            @forelse ($categories as $category)
                <a href="{{ route('category', $category->slug) }}" class="all-category-card">
                    <span class="all-category-img">
                        <img src="{{ imgUrl($category->image) }}" alt="{{ $category->name }}" loading="lazy" />
                    </span>
                    <span>{{ Str::limit($category->name, 18) }}</span>
                </a>
            @empty
                <div class="all-category-empty">No category found.</div>
            @endforelse
        </div>
    </div>
</section>
@endsection
