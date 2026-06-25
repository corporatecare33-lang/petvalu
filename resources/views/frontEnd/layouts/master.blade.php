<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
        <meta name="csrf-token" content="{{ csrf_token() }}" />
        <title>@yield('title')</title>
		@if(!empty($seo->search_console_verification))
{!! $seo->search_console_verification ?? '' !!}
@endif
        <!-- App favicon -->
        <link rel="shortcut icon" href="{{imgUrl($generalsetting->favicon)}}" alt="Super Ecommerce Favicon" />
        <meta name="author" content="Super Ecommerce" />
        <link rel="canonical" href="" />
        @stack('seo') 
        @stack('css')
        <link rel="stylesheet" href="{{asset('frontEnd/css/bootstrap.min.css')}}" />
        <link rel="stylesheet" href="{{asset('frontEnd/css/animate.css')}}" />
        <link rel="stylesheet" href="{{asset('frontEnd/css/all.min.css')}}" />
        <link rel="stylesheet" href="{{asset('frontEnd/css/owl.carousel.min.css')}}" />
        <link rel="stylesheet" href="{{asset('frontEnd/css/owl.theme.default.min.css')}}" />
        <link rel="stylesheet" href="{{asset('frontEnd/css/mobile-menu.css')}}" />
        <link rel="stylesheet" href="{{asset('frontEnd/css/select2.min.css')}}" />
        <!-- toastr css -->
        <link rel="stylesheet" href="{{asset('backEnd')}}/assets/css/toastr.min.css" />

        <link rel="stylesheet" href="{{asset('frontEnd/css/wsit-menu.css')}}" />
<link rel="stylesheet" href="{{ url('/style.css') }}?v=12">
<link rel="stylesheet" href="{{ url('/responsive.css') }}?v=2">
        <link rel="stylesheet" href="{{asset('frontEnd/css/main.css')}}" />
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css">
        <style>
            input.search_keyword,
            input.msearch_keyword {
                text-align: left !important;
                direction: ltr !important;
                padding-left: 12px !important;
                padding-right: 10px !important;
            }
        </style>
        <meta name="facebook-domain-verification" content="38f1w8335btoklo88dyfl63ba3st2e" />
        <style>
            .float{
            	position:fixed;
            	color:white;
            	width:60px;
            	height:60px;
            	bottom:40px;
            	left:40px;
            	background-color:#25d366;
            	color:#FFF;
            	border-radius:50px;
            	text-align:center;
                font-size:30px;
            	box-shadow: 2px 2px 3px #999;
                z-index:100;
            }
            
            .my-float{
            	margin-top:16px;
            }
            /* Media query to hide the .float class on screens 768px and smaller */
            @media (max-width: 767px) {
                .float {
                    display: none;
                }
            }
        </style>
		<style>
/* ========== Footer V2 — 100% Responsive (colors from General Setting) ========== */
.footer-v2 {
    background-color: {{ optional($generalsetting)->footer_color ?? '#222222' }};
    color: #e8e8e8;
    font-family: 'Poppins', sans-serif;
    position: relative;
    overflow: hidden;
}

.footer-v2 p, .footer-v2 a, .footer-v2 h5, .footer-v2 h6, .footer-v2 li, .footer-v2 span {
    color: #e8e8e8 !important;
}

/* Top accent line — Primary Color from setting */
.footer-v2__wave {
    height: 4px;
    width: 100%;
    background: linear-gradient(90deg, transparent 0%, {{ optional($generalsetting)->primary_color ?? '#667eea' }} 20%, {{ optional($generalsetting)->primary_color ?? '#667eea' }} 80%, transparent 100%);
    opacity: 0.9;
}

/* Main content — padding responsive (mobile first) */
.footer-v2__main {
    padding: 2rem 1rem 2rem;
    box-sizing: border-box;
}
@media (min-width: 360px) {
    .footer-v2__main { padding-left: 1.25rem; padding-right: 1.25rem; }
}
@media (min-width: 576px) {
    .footer-v2__main { padding: 3rem 1.5rem 2.5rem; }
}
@media (min-width: 992px) {
    .footer-v2__main { padding: 4rem 2rem 3rem; }
}

/* Grid: 1 col mobile → 2 col → 3 col → 4 col desktop (100% responsive) */
.footer-v2__grid {
    display: grid;
    grid-template-columns: 1fr;
    gap: 2rem;
    max-width: 1200px;
    margin: 0 auto;
}
@media (min-width: 576px) {
    .footer-v2__grid { grid-template-columns: 1fr 1fr; gap: 2.5rem; }
}
@media (min-width: 768px) {
    .footer-v2__grid { grid-template-columns: 1.5fr 1fr 1fr; }
}
@media (min-width: 992px) {
    .footer-v2__grid { grid-template-columns: 2fr 1fr 1fr 1.2fr; gap: 3rem; }
}

/* Brand block */
.footer-v2__brand { }
.footer-v2__logo {
    display: inline-block;
    margin-bottom: 1rem;
}
.footer-v2__logo img {
    height: 48px;
    width: auto;
    filter: brightness(0) invert(1);
}
@media (min-width: 768px) {
    .footer-v2__logo img { height: 52px; }
}
.footer-v2__tagline {
    font-size: 0.9375rem;
    line-height: 1.65;
    opacity: 0.9;
    margin-bottom: 1.5rem;
    max-width: 100%;
}
@media (min-width: 400px) {
    .footer-v2__tagline { max-width: 320px; }
}
.footer-v2__apps {
    margin-top: 1.25rem;
}
.footer-v2__apps-title {
    font-size: 0.8125rem;
    font-weight: 600;
    margin-bottom: 0.75rem;
    opacity: 0.95;
}
.footer-v2__app-badges {
    display: flex;
    flex-wrap: wrap;
    gap: 0.5rem;
}
.footer-v2__app-badges a {
    display: block;
}
.footer-v2__app-badges img {
    height: 40px;
    width: auto;
    border-radius: 8px;
    border: 1px solid rgba(255,255,255,0.2);
    transition: transform 0.2s, box-shadow 0.2s;
}
.footer-v2__app-badges a:hover img {
    transform: translateY(-2px);
    box-shadow: 0 6px 16px rgba(0,0,0,0.2);
}

/* Link blocks */
.footer-v2__block { }
.footer-v2__title {
    font-size: 1rem;
    font-weight: 700;
    margin-bottom: 1rem;
    position: relative;
    padding-bottom: 0.5rem;
    display: inline-block;
}
.footer-v2__title::after {
    content: '';
    position: absolute;
    left: 0;
    bottom: 0;
    width: 28px;
    height: 2px;
    background-color: {{ optional($generalsetting)->primary_color ?? '#667eea' }};
    border-radius: 2px;
}
.footer-v2__links {
    list-style: none;
    padding: 0;
    margin: 0;
}
.footer-v2__links li {
    margin-bottom: 0.5rem;
}
.footer-v2__links a {
    text-decoration: none;
    font-size: 0.9375rem;
    opacity: 0.85;
    transition: opacity 0.2s, color 0.2s, padding-left 0.2s;
    display: inline-block;
}
.footer-v2__links a:hover {
    opacity: 1;
    color: {{ optional($generalsetting)->primary_color ?? '#667eea' }} !important;
    padding-left: 4px;
}

/* মোবাইলে Useful Link ও Link মেনু কনফ্লিক্ট রোধ — এক কলাম, স্পষ্ট আলাদা */
@media (max-width: 767px) {
    .footer-v2__grid {
        grid-template-columns: 1fr;
        gap: 0;
    }
    .footer-v2__block {
        width: 100%;
        min-width: 0;
        padding: 1rem 0;
        margin: 0;
        border-bottom: 1px solid rgba(255,255,255,0.2);
    }
    .footer-v2__block:last-of-type {
        border-bottom: none;
    }
    .footer-v2__title {
        display: block;
        margin-bottom: 0.75rem;
    }
    .footer-v2__links {
        display: block;
    }
    .footer-v2__links li {
        display: block;
        margin-bottom: 0.5rem;
    }
    .footer-v2__links a {
        display: block;
        padding: 0.35rem 0;
        line-height: 1.4;
        white-space: normal;
        word-break: break-word;
    }
}

/* Newsletter + Social block */
.footer-v2__newsletter { }
.footer-v2__newsletter .footer-v2__title { margin-bottom: 0.75rem; }
.footer-v2__newsletter-desc {
    font-size: 0.8125rem;
    opacity: 0.85;
    margin-bottom: 1rem;
}
.footer-v2__form {
    display: flex;
    flex-direction: column;
    gap: 0.5rem;
    margin-bottom: 1.5rem;
    width: 100%;
    max-width: 100%;
}
@media (min-width: 400px) {
    .footer-v2__form { flex-direction: row; }
}
.footer-v2__form input {
    flex: 1;
    min-width: 0;
    padding: 0.65rem 1rem;
    border: 1px solid rgba(255,255,255,0.25);
    border-radius: 10px;
    background: rgba(255,255,255,0.08);
    color: #fff !important;
    font-size: 0.9375rem;
}
.footer-v2__form input::placeholder { color: rgba(255,255,255,0.5); }
.footer-v2__form button {
    padding: 0.65rem 1.25rem;
    border-radius: 10px;
    border: none;
    background-color: {{ optional($generalsetting)->primary_color ?? '#667eea' }};
    color: #fff !important;
    font-weight: 600;
    font-size: 0.9375rem;
    white-space: nowrap;
    transition: transform 0.2s, opacity 0.2s;
}
.footer-v2__form button:hover {
    transform: scale(1.02);
    opacity: 0.95;
}
.footer-v2__social-title {
    font-size: 0.8125rem;
    font-weight: 600;
    margin-bottom: 0.75rem;
    opacity: 0.95;
}
.footer-v2__social-list {
    display: flex;
    flex-wrap: wrap;
    gap: 0.5rem;
    list-style: none;
    padding: 0;
    margin: 0;
}
.footer-v2__social-list a {
    display: inline-flex;
    align-items: center;
    justify-content: center;
    width: 40px;
    height: 40px;
    border-radius: 12px;
    background: rgba(255,255,255,0.1);
    border: 1px solid rgba(255,255,255,0.15);
    color: #fff !important;
    transition: background 0.2s, transform 0.2s;
}
.footer-v2__social-list a:hover {
    background-color: {{ optional($generalsetting)->primary_color ?? '#667eea' }};
    transform: translateY(-2px);
}
.footer-v2__social-list i { font-size: 1.1rem; }

/* Bottom bar — Copyright Color from setting */
.footer-v2__bottom {
    background-color: {{ optional($generalsetting)->copyright_color ?? '#000000' }};
    padding: 1.25rem 1rem;
    border-top: 1px solid rgba(255,255,255,0.08);
}
@media (min-width: 576px) {
    .footer-v2__bottom { padding: 1.25rem 1.5rem; }
}
.footer-v2__copy-wrap {
    max-width: 1200px;
    margin: 0 auto;
    display: flex;
    flex-direction: column;
    align-items: center;
    gap: 0.75rem;
    text-align: center;
    font-size: 0.875rem;
}
@media (min-width: 768px) {
    .footer-v2__copy-wrap {
        flex-direction: row;
        justify-content: center;
        flex-wrap: wrap;
        text-align: left;
    }
}
.footer-v2__copy-text { margin: 0; }
.footer-v2__copy-sep {
    display: none;
    margin: 0 0.75rem;
    opacity: 0.6;
}
@media (min-width: 768px) {
    .footer-v2__copy-sep { display: inline; }
}
.footer-v2__designer {
    display: inline-flex;
    align-items: center;
    gap: 0.55rem;
    color: #fff;
}
.footer-v2__designer-link {
    display: inline-flex;
    align-items: center;
    justify-content: center;
    min-height: 36px;
    padding: 0 16px;
    border-radius: 999px;
    background: #202020;
    border: 1px solid #3a3a3a;
    box-shadow: inset 0 1px 0 rgba(255,255,255,0.12), 0 6px 14px rgba(0,0,0,0.28);
    color: #fff !important;
    text-decoration: none;
    font-weight: 700;
    font-size: 14px;
    line-height: 1;
    letter-spacing: 0;
    transition: background 0.2s, border-color 0.2s, transform 0.2s;
}
.footer-v2__designer-link:hover {
    background: #2b2b2b;
    color: #fff !important;
    border-color: #555;
    transform: translateY(-1px);
}
.footer-v2__designer-link img {
    height: 18px;
    width: auto;
    display: block;
}

/* Mobile: space above fixed bottom nav + safe area */
@media (max-width: 768px) {
    .footer-v2__bottom { padding-bottom: 95px; }
    .footer-v2__main { padding-left: max(1rem, env(safe-area-inset-left)); padding-right: max(1rem, env(safe-area-inset-right)); }
}

/* Mobile Responsive Adjustments */
@media (max-width: 768px) {
    .copyright-wrapper {
        flex-direction: column; /* Stack on mobile */
        gap: 15px;
        text-align: center;
    }
    
    .designer-credit {
        justify-content: center;
    }
}
</style>
        <!-- ========== DataLayer Initialization (GTM-এর আগে) ========== -->
        @php
            $dl_page_type = Request::is('/') ? 'home'
                : (Request::is('product/*')  ? 'product_detail'
                : (Request::is('category/*') ? 'category'
                : (Request::is('cart')       ? 'cart'
                : (Request::is('checkout')   ? 'checkout'
                : (Request::is('customer/*') ? 'customer'
                : 'other')))));
        @endphp
        <script>
            window.dataLayer = window.dataLayer || [];
            dataLayer.push({
                event:     'site_page_data',
                page_type: {{ json_encode($dl_page_type) }},
                page_url:  {{ json_encode(url()->current()) }},
                currency:  'BDT',
                site_name: {{ json_encode(optional($generalsetting)->name ?? '') }}
            });
        </script>
        <!-- ========== Google Tag Manager ========== -->
        @foreach($gtm_code ?? [] as $gtm)
        @php
            $gtm_container_id = preg_match('/^GTM-/i', trim($gtm->code))
                ? trim($gtm->code)
                : 'GTM-' . trim($gtm->code);
        @endphp
        <script>(function(w,d,s,l,i){w[l]=w[l]||[];w[l].push({'gtm.start':
        new Date().getTime(),event:'gtm.js'});var f=d.getElementsByTagName(s)[0],
        j=d.createElement(s),dl=l!='dataLayer'?'&l='+l:'';j.async=true;j.src=
        'https://www.googletagmanager.com/gtm.js?id='+i+dl;f.parentNode.insertBefore(j,f);
        })(window,document,'script','dataLayer','{{ $gtm_container_id }}');</script>
        @endforeach
        <!-- ========== End Google Tag Manager ========== -->

        <!-- ========== Facebook Pixel (single init, multiple pixels support) ========== -->
        @if(isset($pixels) && $pixels->count() > 0)
        <script>
            !(function (f, b, e, v, n, t, s) {
                if (f.fbq) return;
                n = f.fbq = function () {
                    n.callMethod ? n.callMethod.apply(n, arguments) : n.queue.push(arguments);
                };
                if (!f._fbq) f._fbq = n;
                n.push = n; n.loaded = !0; n.version = "2.0"; n.queue = [];
                t = b.createElement(e); t.async = !0; t.src = v;
                s = b.getElementsByTagName(e)[0]; s.parentNode.insertBefore(t, s);
            })(window, document, "script", "https://connect.facebook.net/en_US/fbevents.js");
            @foreach($pixels as $pixel)
            fbq('init', '{{{ $pixel->code }}}');
            @endforeach
            fbq('track', 'PageView');
        </script>
        @foreach($pixels as $pixel)
        <noscript>
            <img height="1" width="1" style="display:none"
                src="https://www.facebook.com/tr?id={{{ $pixel->code }}}&ev=PageView&noscript=1" />
        </noscript>
        @endforeach
        @endif
        <!-- ========== End Facebook Pixel ========== -->

        <!-- ========== TikTok Pixel (single init, multiple pixels support) ========== -->
        @if(isset($tiktok_pixels) && $tiktok_pixels->count() > 0)
        <script>
        !function (w, d, t) {
            w.TiktokAnalyticsObject=t;
            var ttq=w[t]=w[t]||[];
            ttq.methods=["page","track","identify","instances","debug","on","off","once","ready","alias","group","enableCookie","disableCookie","holdConsent","revokeConsent","grantConsent"];
            ttq.setAndDefer=function(t,e){t[e]=function(){t.push([e].concat(Array.prototype.slice.call(arguments,0)))}};
            for(var i=0;i<ttq.methods.length;i++)ttq.setAndDefer(ttq,ttq.methods[i]);
            ttq.instance=function(t){for(var e=ttq._i[t]||[],n=0;n<ttq.methods.length;n++)ttq.setAndDefer(e,ttq.methods[n]);return e};
            ttq.load=function(e,n){var i="https://analytics.tiktok.com/i18n/pixel/events.js";
                ttq._i=ttq._i||{},ttq._i[e]=[],ttq._i[e]._u=i,ttq._t=ttq._t||{},ttq._t[e]=+new Date,ttq._o=ttq._o||{},ttq._o[e]=n||{};
                var o=d.createElement("script");o.type="text/javascript",o.async=!0,o.src=i+"?sdkid="+e+"&lib="+t;
                var a=d.getElementsByTagName("script")[0];a.parentNode.insertBefore(o,a)};
        }(window, document, 'ttq');
        @foreach($tiktok_pixels as $tiktokP)
        ttq.load('{{ $tiktokP->code }}');
        @endforeach
        ttq.page();
        </script>
        @endif
        <!-- ========== End TikTok Pixel ========== -->
    </head>
    <body class="gotop {{ Route::is('home') ? 'is-home' : 'is-inner-page' }}">
        @foreach($gtm_code ?? [] as $gtm)
        @php $gtm_noscript_id = preg_match('/^GTM-/i', trim($gtm->code)) ? trim($gtm->code) : 'GTM-'.trim($gtm->code); @endphp
        <!-- Google Tag Manager (noscript) -->
        <noscript><iframe src="https://www.googletagmanager.com/ns.html?id={{ $gtm_noscript_id }}"
        height="0" width="0" style="display:none;visibility:hidden"></iframe></noscript>
        <!-- End Google Tag Manager (noscript) -->
        @endforeach
        @php $subtotal = Cart::instance('shopping')->subtotal(); @endphp
        <div class="mobile-menu">
                <div class="mobile-menu-logo">
                    <div class="logo-image">
                        <img src="{{imgUrl($generalsetting->dark_logo)}}" alt="" />
                    </div>
                    <div class="mobile-menu-close">
                        <i class="fa fa-times"></i>
                    </div>
                </div>
                <ul class="first-nav">
                    @foreach($menucategories as $scategory)
                    <li class="parent-category">
                        <a href="{{url('category/'.$scategory->slug)}}" class="menu-category-name">
                            <img src="{{imgUrl($scategory->image)}}" alt="" class="side_cat_img" />
                            {{$scategory->name}}
                        </a>
                        @if($scategory->subcategories->count() > 0)
                        <span class="menu-category-toggle">
                            <i class="fa fa-chevron-down"></i>
                        </span>
                        @endif
                        <ul class="second-nav" style="display: none;">
                            @foreach($scategory->subcategories as $subcategory)
                            <li class="parent-subcategory">
                                <a href="{{url('subcategory/'.$subcategory->slug)}}" class="menu-subcategory-name">{{$subcategory->subcategoryName}}</a>
                                @if($subcategory->childcategories->count() > 0)
                                <span class="menu-subcategory-toggle"><i class="fa fa-chevron-down"></i></span>
                                @endif
                                <ul class="third-nav" style="display: none;">
                                    @foreach($subcategory->childcategories as $childcat)
                                    <li class="childcategory"><a href="{{url('products/'.$childcat->slug)}}" class="menu-childcategory-name">{{$childcat->childcategoryName}}</a></li>
                                    @endforeach
                                </ul>
                            </li>
                            @endforeach
                        </ul>
                    </li>
                    @endforeach
                </ul>
            </div>
        <header id="navbar_top">
		
		
		
		            
				
            <div class="mobile-header sticky">
                <div class="mobile-logo">
                    <div class="menu-bar">
                        <a class="toggle">
                            <i class="fa-solid fa-bars"></i>
                        </a>
                    </div>
                    <div class="menu-logo">
                        <a href="{{route('home')}}"><img src="{{imgUrl($generalsetting->dark_logo)}}" alt="" /></a>
                    </div>
<div class="menu-bag">
    <a href="{{ route('customer.checkout') }}" class="margin-shopping">
        <i class="fa-solid fa-cart-shopping"></i>
        <span class="mobilecart-qty">{{ Cart::instance('shopping')->count() }}</span>
    </a>
</div>

                </div>
            </div>

            <div class="mobile-search">
                <form action="{{route('search')}}" method="GET" class="site-search-form">
                    <input type="search" placeholder="Search Product ... " value="{{ request('keyword') }}" class="msearch_keyword msearch_click" name="keyword" autocomplete="off" />
                    <button type="submit" aria-label="Search"><i data-feather="search"></i></button>
                </form>
                <div class="search_result"></div>
            </div>

            <div class="main-header">
                <!-- header to end -->
                <div class="logo-area">
                    <div class="container">
                        <div class="row">
                            <div class="col-sm-12">
                                <div class="logo-header">
                                    <div class="main-logo">
                                        <a href="{{route('home')}}"><img src="{{imgUrl($generalsetting->dark_logo)}}" alt="" /></a>
                                    </div>
                                    <div class="main-search">
                                        <form action="{{route('search')}}" method="GET" class="site-search-form">
                                            <input type="search" placeholder="Search Product..." value="{{ request('keyword') }}" class="search_keyword search_click" name="keyword" autocomplete="off" />
                                            <button type="submit" aria-label="Search">
                                                <i data-feather="search"></i>
                                            </button>
                                        </form>
                                        <div class="search_result"></div>
                                    </div>
                                    <div class="header-list-items">
                                        <ul>
                                            <li class="track_btn">
                                                <a href="{{route('customer.order_track')}}"> <i class="fa fa-truck"></i>Track Order</a>
                                            </li>
                                           

                                            <li class="cart-dialog" id="cart-qty">
                                                <a href="{{route('customer.checkout')}}">
                                                    <p class="margin-shopping">
                                                        <i class="fa-solid fa-cart-shopping"></i>
                                                        <span>{{Cart::instance('shopping')->count()}}</span>
                                                    </p>
                                                </a>
                                                <div class="cshort-summary">
                                                    <ul>
                                                        @foreach(Cart::instance('shopping')->content() as $key=>$value)
                                                        <li>
                                                            <a href=""><img src="{{imgUrl($value->options->image)}}" alt="" /></a>
                                                        </li>
                                                        <li><a href="">{{Str::limit($value->name, 30)}}</a></li>
                                                        <li>Qty: {{$value->qty}}</li>
                                                        <li>
                                                            <p>৳{{$value->price}}</p>
                                                            <button class="remove-cart cart_remove" data-id="{{$value->rowId}}"><i data-feather="x"></i></button>
                                                        </li>
                                                        @endforeach
                                                    </ul>
                                                    <p><strong>সর্বমোট : ৳{{$subtotal}}</strong></p>
                                                    <a href="{{route('customer.checkout')}}" class="go_cart"> অর্ডার করুন </a>
                                                </div>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="menu-area">
                    <div class="container">
                        <div class="row">
                            <div class="col-sm-12">
                                <div class="catagory_menu">
                                    <ul class="heder__category">
                                        <div>
                                            <li class="all__category__list">
                                                <a href="#">ALL CATEGORIES <i class="fa-solid fa-list"></i>
                                                </a>
                                                <div class="sidebar-menu side__bar">
                                                    <ul class="hideshow">
                                                        @foreach ($menucategories as $key => $category)
                                                            <li>
                                                                <a href="{{ route('category', $category->slug) }}">
                                                                    <img src="{{ imgUrl($category->image) }}" alt="" />
                                                                    {{ $category->name }}
                                                                    <i class="fa-solid fa-chevron-right"></i>
                                                                </a>
                                                                <ul class="sidebar-submenu side__barsub">
                                                                    @foreach ($category->subcategories as $key => $subcategory)
                                                                        <li>
                                                                            <a href="{{ route('subcategory', $subcategory->slug) }}">
                                                                                {{ $subcategory->subcategoryName }} <i
                                                                                    class="fa-solid fa-chevron-right"></i> </a>
                                                                            <ul class="sidebar-childmenu side__barchild">
                                                                                @foreach ($subcategory->childcategories as $key => $childcat)
                                                                                    <li>
                                                                                        <a href="{{ route('products', $childcat->slug) }}">
                                                                                            {{ $childcat->childcategoryName }}
                                                                                        </a>
                                                                                    </li>
                                                                                @endforeach
                                                                            </ul>
                                                                        </li>
                                                                    @endforeach
                                                                </ul>
                                                            </li>
                                                        @endforeach
                                                    </ul>
                                                </div>
                                           </li> 
                                        </div>


                                        <div> <li><a href="{{route('home')}}">Home</a></li></div>
                                        @if(($generalsetting?->vendor_enabled ?? 1) == 1)
                                        <div><li><a href="{{route('sellers')}}">Sellers</a></li></div>
                                        @endif
										

                                        <div class="contact__menu"><li><a href="{{route('contact')}}">Contact</a></li></div>
                                       <div class="right__menu__top">
                                            @if(Auth::guard('customer')->user())
                                            <li class="for_order">
                                                <p>
                                                    <a href="{{route('customer.account')}}">
                                                        <i class="fa-regular fa-user"></i>
                                                        {{Str::limit(Auth::guard('customer')->user()->name,14)}}
                                                    </a>
                                                </p>
                                            </li>
                                            @elseif(($generalsetting?->vendor_enabled ?? 1) == 1 && Auth::guard('admin')->check() && Auth::guard('admin')->user()->hasRole('vendor'))
                                            <li class="for_order">
                                                <p>
                                                    <a href="{{route('vendor.dashboard')}}">
                                                        <i class="fa-solid fa-store"></i>
                                                   Vendor Panel
                                                    </a>
                                                </p>
                                            </li>
                                            @elseif(($generalsetting?->reseller_enabled ?? 1) == 1 && Auth::guard('admin')->check() && (Auth::guard('admin')->user()->hasRole('reseller') || (isset(Auth::guard('admin')->user()->role) && strtolower(Auth::guard('admin')->user()->role) === 'reseller')))
                                            <li class="for_order">
                                                <p>
                                                    <a href="{{route('reseller.dashboard')}}">
                                                        <i class="fa-solid fa-handshake"></i>
                                                Dashboard
                                                    </a>
                                                </p>
                                            </li>
                                            @else
                                            <li class="for_order">
                                                <p>
                                                    <a href="{{route('customer.login')}}">
                                                        <i class="fa-regular fa-user"></i>
                                                        Login / Sign Up
                                                    </a>
                                                </p>
                                            </li>
                                            @endif
                                       </div>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- main-header end -->
        </header>
        <div id="content">
            @yield('content')
        </div>
            <!-- content end -->

<footer class="footer-v2">
    <div class="footer-v2__wave"></div>

    <div class="footer-v2__main">
        <div class="footer-v2__grid">
            <!-- Brand -->
            <div class="footer-v2__brand">
                <a href="{{ url('/') }}" class="footer-v2__logo">
                    <img src="{{ imgUrl(optional($generalsetting)->white_logo ?? 'public/logo.png') }}" alt="{{ optional($generalsetting)->name ?? 'Logo' }}">
                </a>
                <p class="footer-v2__tagline">
                    {{ optional($generalsetting)->footer_about_text ?? 'আপনার ব্যবসার ডিজিটাল পার্টনার। আমরা বিশ্বাস করি গুণগত মান এবং গ্রাহক সন্তুষ্টিতে। প্রযুক্তির সাথে এগিয়ে চলুন আমাদের সাথে।' }}
                </p>
                <div class="footer-v2__apps">
                    <div class="footer-v2__apps-title">Download our app</div>
    <div class="footer-v2__app-badges">
        <a href="{{ optional($generalsetting)->google_play_link ?? '#' }}" target="_blank" rel="noopener">
            <img src="/uploads/play.svg" alt="Google Play">
        </a>
        <a href="{{ optional($generalsetting)->app_store_link ?? '#' }}" target="_blank" rel="noopener">
            <img src="/uploads/app.png" alt="App Store">
        </a>
    </div>
                </div>
            </div>

            <!-- Useful Link -->
            <div class="footer-v2__block">
                <h5 class="footer-v2__title">Useful Link</h5>
                <ul class="footer-v2__links">
                    <li><a href="{{ route('complaint') }}">Complaints</a></li>
                    @foreach($pages as $page)
                    <li><a href="{{ route('page', ['slug' => $page->slug]) }}">{{ $page->name }}</a></li>
                    @endforeach
                </ul>
            </div>

            <!-- Link -->
            <div class="footer-v2__block">
                <h5 class="footer-v2__title">Link</h5>
                <ul class="footer-v2__links">
                    @foreach($pagesright as $key => $value)
                    <li><a href="{{ route('page', ['slug' => $value->slug]) }}">{{ $value->name }}</a></li>
                    @endforeach
                </ul>
            </div>

            <!-- Newsletter + Social -->
            <div class="footer-v2__newsletter">
                <h5 class="footer-v2__title">Newsletter</h5>
                <p class="footer-v2__newsletter-desc">Subscribe for offers and updates.</p>
                <form action="{{ route('frontend.newsletter.subscribe') }}" method="POST" class="footer-v2__form">
                    @csrf
                    <input type="email" name="email" placeholder="Your email..." required>
                    <button type="submit"><i class="fas fa-paper-plane"></i> Subscribe</button>
                </form>
                <div class="footer-v2__social-title">Follow Us</div>
                <ul class="footer-v2__social-list">
                    @foreach($socialicons as $value)
                    <li>
                        <a href="{{ $value->link }}" target="_blank" rel="noopener" aria-label="Social"><i class="{{ $value->icon }}"></i></a>
                    </li>
                    @endforeach
                </ul>
            </div>
        </div>
    </div>

    <div class="footer-v2__bottom">
        <div class="footer-v2__copy-wrap">
            <span class="footer-v2__copy-text">&copy; {{ date('Y') }} All rights reserved</span>
            <span class="footer-v2__copy-sep">|</span>
            <span class="footer-v2__designer">
                Designed by
                <a href="https://digitalwebars.com/" target="_blank" rel="noopener" class="footer-v2__designer-link">
                    Digital Webars
                </a>
            </span>
        </div>
    </div>
</footer>

        {{-- Floating Cart - ক্লিক করলে সাইডবার কার্ট ওপেন হবে --}}
        <a href="javascript:void(0)" class="floating-cart-widget" id="floatingCartBtn" title="কার্ট দেখুন">
            <i class="fa-solid fa-cart-shopping"></i>
            <span class="floating-cart-badge mobilecart-qty">{{ Cart::instance('shopping')->count() }}</span>
        </a>

        {{-- Sidebar Cart Drawer - ডান দিক থেকে স্লাইড আউট --}}
        <div id="sidebarCartOverlay" class="sidebar-cart-overlay" onclick="closeSidebarCart()"></div>
        <div id="sidebarCartDrawer" class="sidebar-cart-drawer">
            <div id="sidebarCartContent">
                {{-- AJAX দিয়ে লোড হবে --}}
            </div>
        </div>

<div class="mobile_bottom_nav">
    <div class="nav_container">
        <a href="javascript:void(0)" class="nav_item toggle">
            <div class="icon_box">
                <i class="fa-solid fa-bars"></i>
            </div>
            <span class="nav_text">Category</span>
        </a>

        <a href="{{route('customer.order_track')}}" class="nav_item {{ Route::is('customer.order_track') ? 'active' : '' }}">
            <div class="icon_box">
                <i class="fa fa-truck"></i>
            </div>
            <span class="nav_text">Tracking</span>
        </a>

        <div class="nav_item home_wrapper">
            <a href="{{route('home')}}" class="home_fab {{ Route::is('home') ? 'active' : '' }}">
                <i class="fa-solid fa-house"></i>
            </a>
        </div>

        <a href="{{route('customer.checkout')}}" class="nav_item {{ Route::is('customer.checkout') ? 'active' : '' }}">
            <div class="icon_box">
                <i class="fa-solid fa-cart-shopping"></i>
                <span class="cart_badge mobilecart-qty">{{Cart::instance('shopping')->count()}}</span>
            </div>
            <span class="nav_text">Cart</span>
        </a>

        @if(Auth::guard('customer')->user())
            <a href="{{route('customer.account')}}" class="nav_item {{ Route::is('customer.account') ? 'active' : '' }}">
                <div class="icon_box">
                    <i class="fa-solid fa-user"></i>
                </div>
                <span class="nav_text">Account</span>
            </a>
        @elseif(($generalsetting?->vendor_enabled ?? 1) == 1 && Auth::guard('admin')->check() && Auth::guard('admin')->user()->hasRole('vendor'))
            <a href="{{route('vendor.dashboard')}}" class="nav_item">
                <div class="icon_box">
                    <i class="fa-solid fa-store"></i>
                </div>
                <span class="nav_text">Vendor</span>
            </a>
        @elseif(($generalsetting?->reseller_enabled ?? 1) == 1 && Auth::guard('admin')->check() && (Auth::guard('admin')->user()->hasRole('reseller') || (isset(Auth::guard('admin')->user()->role) && strtolower(Auth::guard('admin')->user()->role) === 'reseller')))
            <a href="{{route('reseller.dashboard')}}" class="nav_item">
                <div class="icon_box">
                    <i class="fa-solid fa-handshake"></i>
                </div>
                <span class="nav_text">Reseller</span>
            </a>
        @else
            <a href="{{route('customer.login')}}" class="nav_item {{ Route::is('customer.login') ? 'active' : '' }}">
                <div class="icon_box">
                    <i class="fa-solid fa-right-to-bracket"></i>
                </div>
                <span class="nav_text">Login</span>
            </a>
        @endif
    </div>
</div>
<style>
/* --- Mobile Bottom Navigation Styles --- */
.mobile_bottom_nav {
    position: fixed;
    bottom: 0;
    left: 0;
    width: 100%;
    background: #ffffff;
    box-shadow: 0 -5px 20px rgba(0, 0, 0, 0.1);
    z-index: 9999;
    padding: 10px 0;
    border-radius: 20px 20px 0 0; /* উপরের কোনা গুলো একটু গোল হবে */
    display: none; /* ডেস্কটপে হাইড থাকবে */
}

/* শুধুমাত্র মোবাইলে দেখানোর জন্য */
@media (max-width: 768px) {
    .mobile_bottom_nav {
        display: block;
    }
}

.nav_container {
    display: flex;
    justify-content: space-around;
    align-items: flex-end; /* আইটেমগুলো নিচে সমান থাকবে */
    position: relative;
    padding: 0 10px;
}

/* সাধারণ মেনু আইটেম */
.nav_item {
    text-decoration: none;
    display: flex;
    flex-direction: column;
    align-items: center;
    color: #6c757d; /* ডিফল্ট কালার */
    font-size: 12px;
    transition: all 0.3s ease;
    width: 20%;
}

.icon_box {
    position: relative;
    font-size: 20px;
    margin-bottom: 4px;
    transition: transform 0.2s;
}

.nav_text {
    font-weight: 500;
}

/* হোভার এবং একটিভ কালার */
.nav_item:hover, .nav_item.active {
    color: #FF6600; /* আপনার ব্র্যান্ড কালার এখানে দিন */
}

.nav_item.active .icon_box {
    transform: translateY(-3px); /* একটিভ হলে একটু উপরে উঠবে */
}

/* --- Center Floating Home Button --- */
.home_wrapper {
    position: relative;
    bottom: 25px; /* স্বাভাবিকের চেয়ে উপরে থাকবে */
}

.home_fab {
    width: 60px;
    height: 60px;
    background: {{$generalsetting->primary_color}}; /* ব্র্যান্ড কালার */
    border-radius: 50%;
    display: flex;
    justify-content: center;
    align-items: center;
    color: #fff;
    font-size: 24px;
    box-shadow: 0 8px 15px rgba(255, 102, 0, 0.4);
    border: 4px solid #fff; /* সাদা বর্ডার */
    transition: transform 0.3s ease;
}

.home_fab:hover {
    transform: scale(1.1); /* হোভারে বড় হবে */
    color: #fff;
}

/* --- Cart Badge Style --- */
.cart_badge {
    position: absolute;
    top: -8px;
    right: -10px;
    background: #ff0000;
    color: #fff;
    font-size: 10px;
    font-weight: bold;
    width: 18px;
    height: 18px;
    border-radius: 50%;
    display: flex;
    justify-content: center;
    align-items: center;
    border: 2px solid #fff;
}
</style>
        
<!-- ЁЯМР Floating Chat Widget -->
<div class="chat-widget">
  <!-- Main Toggle Button -->
  <div class="chat-toggle" id="chatToggle">
    <i class="fas fa-comment-dots"></i>
  </div>

  <!-- Chat Options -->
  <div class="chat-options" id="chatOptions">
          <a href="https://m.me/{{$generalsetting->facebook_page_username}}" target="_blank" class="chat-btn messenger" title="Messenger">
      <i class="fab fa-facebook-messenger"></i>
    </a>
          <a href="https://wa.me/{{ $contact->whatsapp }}" target="_blank" class="chat-btn whatsapp" title="WhatsApp">
      <i class="fab fa-whatsapp"></i>
    </a>
    <a href="tel:{{$contact->hotline}}" class="chat-btn hotline" title="Hotline">
      <i class="fas fa-phone"></i>
    </a>


  </div>
</div>

<!-- Font Awesome CDN -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">

<style>
/* Floating Container */
.chat-widget {
  position: fixed;
  bottom: 60px; /* ⬅ Chat icon এখন 55px উপরে */
  right: 25px;
  z-index: 9999;
  display: flex;
  flex-direction: column;
  align-items: flex-end;
}

/* Main Toggle Button */
.chat-toggle {
  background: linear-gradient(135deg, #25D366, #128C7E);
  color: #fff;
  width: 60px;
  height: 60px;
  border-radius: 50%;
  display: flex;
  align-items: center;
  justify-content: center;
  box-shadow: 0 5px 15px rgba(0, 0, 0, 0.2);
  cursor: pointer;
  transition: transform 0.3s ease;
  font-size: 26px;
}
.chat-toggle:hover {
  transform: scale(1.1);
}

/* Chat Options Hidden by Default */
.chat-options {
  display: none;
  flex-direction: column;
  gap: 10px;
  margin-bottom: 10px;
  align-items: flex-end;
}

/* Each Chat Button */
.chat-btn {
  width: 50px;
  height: 50px;
  border-radius: 50%;
  color: white;
  display: flex;
  align-items: center;
  justify-content: center;
  font-size: 22px;
  text-decoration: none;
  box-shadow: 0 4px 12px rgba(0, 0, 0, 0.15);
  transition: all 0.3s ease;
}
.chat-btn:hover {
  transform: translateY(-3px);
}

/* Button Colors */
.chat-btn.whatsapp { background: #25D366; }
.chat-btn.messenger { background: #0084FF; }
.chat-btn.instagram { background: #E1306C; }
.chat-btn.hotline { background: #FF3B30; }

/* Animation */
.chat-options.show {
  display: flex;
  animation: fadeInUp 0.3s ease;
}
@keyframes fadeInUp {
  from { opacity: 0; transform: translateY(20px); }
  to { opacity: 1; transform: translateY(0); }
}

/* Tooltip */
.chat-btn[title]:hover::after {
  content: attr(title);
  position: absolute;
  right: 65px;
  background: #222;
  color: #fff;
  padding: 5px 10px;
  font-size: 13px;
  border-radius: 6px;
  white-space: nowrap;
  opacity: 0.9;
}

</style>

{{-- Floating Cart + Sidebar Cart Styles --}}
<style>
.floating-cart-widget {
    position: fixed;
    top: 50%;
    right: 0;
    transform: translateY(-50%);
    width: 52px;
    height: 70px;
    background: {{ optional($generalsetting)->primary_color ?? '#007bff' }};
    color: #fff;
    display: flex;
    align-items: center;
    justify-content: center;
    border-radius: 12px 0 0 12px;
    box-shadow: -3px 0 15px rgba(0,123,255,0.4);
    z-index: 9998;
    text-decoration: none;
    transition: all 0.3s ease;
}
.floating-cart-widget:hover { color: #fff; width: 56px; }
.floating-cart-widget i { font-size: 24px; }
.floating-cart-badge {
    position: absolute;
    top: -6px;
    left: 50%;
    transform: translateX(-50%);
    min-width: 22px;
    height: 22px;
    background: #fff;
    color: {{ optional($generalsetting)->primary_color ?? '#007bff' }};
    font-size: 11px;
    font-weight: bold;
    border-radius: 50%;
    border: 2px solid {{ optional($generalsetting)->primary_color ?? '#007bff' }};
    display: flex;
    align-items: center;
    justify-content: center;
    padding: 0 4px;
}
@media (max-width: 768px) {
    .floating-cart-widget { top: 35%; width: 48px; height: 60px; z-index: 9999; }
    .floating-cart-widget i { font-size: 20px; }
    .floating-cart-badge { min-width: 20px; height: 20px; font-size: 10px; }
}
.sidebar-cart-overlay {
    position: fixed;
    inset: 0;
    background: rgba(0,0,0,0.4);
    z-index: 10010;
    opacity: 0;
    visibility: hidden;
    transition: opacity 0.3s, visibility 0.3s;
}
.sidebar-cart-overlay.active { opacity: 1; visibility: visible; }
.sidebar-cart-drawer {
    position: fixed;
    top: 0; right: 0;
    width: 380px;
    max-width: 95vw;
    height: 100%;
    height: 100dvh;
    background: #fff;
    z-index: 10011;
    transform: translateX(100%);
    transition: transform 0.35s ease;
    box-shadow: -5px 0 25px rgba(0,0,0,0.15);
    display: flex;
    flex-direction: column;
    overflow: hidden;
}
.sidebar-cart-drawer.active { transform: translateX(0); }
#sidebarCartContent { flex: 1; min-height: 0; display: flex; flex-direction: column; overflow: hidden; }
.sidebar-cart-header {
    background: {{ optional($generalsetting)->primary_color ?? '#007bff' }};
    color: #fff;
    padding: 16px 20px;
    display: flex;
    align-items: center;
    gap: 12px;
    flex-shrink: 0;
}
.sidebar-cart-close { background: transparent; border: none; color: #fff; font-size: 22px; cursor: pointer; padding: 4px; line-height: 1; }
.sidebar-cart-title { font-size: 20px; font-weight: 700; margin: 0; flex: 1; }
.sidebar-cart-body { flex: 0 1 auto; min-height: 0; overflow-y: auto; padding: 16px; background: #f8f9fa; }
.sidebar-cart-item { display: flex; gap: 12px; padding: 12px; background: #fff; border-radius: 8px; margin-bottom: 10px; box-shadow: 0 1px 3px rgba(0,0,0,0.06); }
.sidebar-cart-item-img { width: 70px; height: 85px; flex-shrink: 0; border-radius: 6px; overflow: hidden; }
.sidebar-cart-item-img img { width: 100%; height: 100%; object-fit: cover; }
.sidebar-cart-item-details { flex: 1; min-width: 0; position: relative; }
.sidebar-cart-item-title { font-weight: 600; color: #222; text-decoration: none; display: block; margin-bottom: 4px; font-size: 14px; line-height: 1.3; }
.sidebar-cart-item-title:hover { color: {{ optional($generalsetting)->primary_color ?? '#007bff' }}; }
.sidebar-cart-item-price { font-size: 13px; color: #444; margin: 0 0 4px 0; }
.sidebar-cart-item-savings { font-size: 12px; color: #28a745; font-weight: 500; margin: 0 0 8px 0; }
.sidebar-cart-item-remove { position: absolute; bottom: 0; right: 0; background: none; border: none; color: {{ optional($generalsetting)->primary_color ?? '#007bff' }}; cursor: pointer; padding: 4px; font-size: 14px; }
.sidebar-cart-qty { display: flex; align-items: center; margin: 8px 0 6px 0; width: fit-content; border: 1px solid #ddd; border-radius: 6px; overflow: hidden; }
.sidebar-qty-btn { width: 28px; height: 28px; border: none; background: #f0f0f0; color: #333; font-size: 18px; font-weight: bold; cursor: pointer; display: flex; align-items: center; justify-content: center; transition: background 0.2s; }
.sidebar-qty-btn:hover { background: {{ optional($generalsetting)->primary_color ?? '#007bff' }}; color: #fff; }
.sidebar-qty-num { min-width: 28px; height: 28px; display: flex; align-items: center; justify-content: center; font-weight: 600; font-size: 14px; background: #fff; }
.sidebar-cart-empty { text-align: center; padding: 40px 20px; color: #888; }
.sidebar-cart-empty i { font-size: 48px; margin-bottom: 12px; opacity: 0.5; }
.sidebar-cart-footer { padding: 16px 20px; border-top: 1px solid #eee; background: #fff; flex-shrink: 0; }
.sidebar-cart-total { display: flex; justify-content: space-between; align-items: baseline; margin-bottom: 12px; }
.sidebar-cart-total-label { font-size: 14px; color: #666; }
.sidebar-cart-total-amount { font-size: 20px; font-weight: 700; color: #222; }
.sidebar-cart-checkout-btn {
    display: block; width: 100%; padding: 14px 24px;
    background: {{ optional($generalsetting)->primary_color ?? '#007bff' }};
    color: #fff !important; text-align: center; font-weight: 600; font-size: 16px;
    border-radius: 6px; text-decoration: none; transition: opacity 0.2s;
}
.sidebar-cart-checkout-btn:hover { opacity: 0.9; color: #fff !important; }
@media (max-width: 768px) {
    .sidebar-cart-drawer { width: 100%; max-width: 100%; }
    .sidebar-cart-item-img { width: 60px; height: 72px; }
    .sidebar-qty-btn { width: 36px; height: 36px; }
    .sidebar-qty-num { min-width: 36px; height: 36px; }
}

/* Fly to cart animation */
.fly-to-cart-img {
    position: fixed;
    z-index: 99999;
    pointer-events: none;
    border-radius: 8px;
    box-shadow: 0 8px 30px rgba(0,0,0,0.35);
    object-fit: cover;
    border: 2px solid #fff;
}
@keyframes cartBump {
    0% { transform: scale(1); }
    40% { transform: scale(1.25); }
    70% { transform: scale(0.95); }
    100% { transform: scale(1); }
}
.cart-bump-animate {
    animation: cartBump 0.45s ease-out;
}
.floating-cart-widget, .menu-bag a, .mobile_bottom_nav .nav_item .icon_box {
    transform-origin: center center;
}
</style>

<script>
/* Chat Toggle Open/Close */
document.getElementById("chatToggle").addEventListener("click", function() {
  document.getElementById("chatOptions").classList.toggle("show");
});

/* Sidebar Cart - খোলা/বন্ধ ও রিফ্রেশ */
function openSidebarCart() {
    document.getElementById("sidebarCartOverlay").classList.add("active");
    document.getElementById("sidebarCartDrawer").classList.add("active");
    document.body.style.overflow = "hidden";
    sidebarCartRefresh();
}
function closeSidebarCart() {
    document.getElementById("sidebarCartOverlay").classList.remove("active");
    document.getElementById("sidebarCartDrawer").classList.remove("active");
    document.body.style.overflow = "";
}
function sidebarCartRefresh() {
    $.get("{{ route('cart.sidebar') }}", function(html) {
        $("#sidebarCartContent").html(html);
        if (typeof feather !== "undefined") feather.replace();
    });
}
document.getElementById("floatingCartBtn")?.addEventListener("click", function(e) {
    e.preventDefault();
    openSidebarCart();
});
document.getElementById("sidebarCartOverlay")?.addEventListener("click", closeSidebarCart);
</script>


        <!-- /. fixed sidebar -->

        <div id="custom-modal"></div>
        <div id="page-overlay"></div>
        <div id="loading"><div class="custom-loader"></div></div>

        <script src="{{asset('frontEnd/js/jquery-3.6.3.min.js')}}"></script>
        <script>
            $(function() {
                $("#loading").hide();
                $(window).on("load", function() { $("#loading").hide(); });
                setTimeout(function() { $("#loading").hide(); }, 3000);
            });
        </script>
        <script src="{{asset('frontEnd/js/bootstrap.min.js')}}"></script>
        <script src="{{asset('frontEnd/js/owl.carousel.min.js')}}"></script>
        <script src="{{asset('frontEnd/js/mobile-menu.js')}}"></script>
        <script src="{{asset('frontEnd/js/wsit-menu.js')}}"></script>
        <script src="{{asset('frontEnd/js/mobile-menu-init.js')}}"></script>
        <script src="{{asset('frontEnd/js/wow.min.js')}}"></script>
        <script>
            new WOW().init();
        </script>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/flatpickr/dist/flatpickr.min.css" />
        <script src="https://cdn.jsdelivr.net/npm/flatpickr"></script>

        <!-- feather icon -->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/feather-icons/4.29.0/feather.min.js"></script>
        <script>
            feather.replace();
        </script>
        <script src="{{asset('backEnd')}}/assets/js/toastr.min.js"></script>
        {!! Toastr::message() !!} @stack('script')
		
		
		<script>
    $(document).ready(function() {
        $(".main_slider").owlCarousel({
            items: 1,
            loop: true,
            dots: false,
            autoplay: true,
            nav: true,
            autoplayHoverPause: false,
            margin: 0,
            mouseDrag: true,
            smartSpeed: 8000,
            autoplayTimeout: 3000,
            animateOut: "fadeOutDown",
            animateIn: "slideInDown",

            navText: ["<i class='fa-solid fa-angle-left'></i>",
                "<i class='fa-solid fa-angle-right'></i>"
            ],
        });
    });
</script>
<script>
    $(document).ready(function() {
        $(".hotdeals-slider").owlCarousel({
            margin: 15,
            loop: true,
            dots: false,
            autoplay: true,
            autoplayTimeout: 6000,
            autoplayHoverPause: true,
            responsiveClass: true,
            responsive: {
                0: {
                    items: 3,
                    nav: true,
                },
                600: {
                    items: 3,
                    nav: false,
                },
                1000: {
                    items: 5,
                    nav: true,
                    loop: false,
                },
            },
        });
    });
</script>
<script>
    $(document).ready(function() {
        $(".category-slider").owlCarousel({
            margin: 15,
            loop: true,
            dots: false,
            autoplay: true,
            autoplayTimeout: 6000,
            autoplayHoverPause: true,
            responsiveClass: true,
            responsive: {
                0: {
                    items: 3,
                    nav: true,
                },
                600: {
                    items: 6,
                    nav: false,
                },
                1000: {
                    items: 9,
                    nav: true,
                    loop: false,
                },
            },
        });

        $(".product_slider").owlCarousel({
            margin: 15,
            items: 6,
            loop: true,
            dots: false,
            autoplay: true,
            autoplayTimeout: 6000,
            autoplayHoverPause: true,
            responsiveClass: true,
            responsive: {
                0: {
                    items: 2,
                    nav: false,
                },
                600: {
                    items: 5,
                    nav: false,
                },
                1000: {
                    items: 5,
                    nav: false,
                },
            },
        });
		$(".customer-review").owlCarousel({
            margin: 8,
            items: 6,
            loop: true,
            dots: false,
            autoplay: true,
            autoplayTimeout: 6000,
            autoplayHoverPause: true,
            responsiveClass: true,
            responsive: {
                0: {
                    items: 2,
                    nav: false,
                },
                600: {
                    items: 3,
                    nav: false,
                },
                1000: {
                    items: 5,
                    nav: false,
                },
            },
        });
    });
</script>
		
        <script>
            $(".quick_view").on("click", function () {
                var id = $(this).data("id");
                $("#loading").show();
                if (id) {
                    $.ajax({
                        type: "GET",
                        data: { id: id },
                        url: "{{route('quickview')}}",
                        success: function (data) {
                            if (data) {
                                $("#custom-modal").html(data);
                                $("#custom-modal").show();
                                $("#loading").hide();
                                $("#page-overlay").show();
                            }
                        },
                    });
                }
            });
        </script>
        <!-- quick view end -->
        <!-- cart js start -->
        <script>
            function runFlyToCart($sourceEl, onComplete) {
                var $flyImg;
                if ($sourceEl && $sourceEl.closest && $sourceEl.closest('.variant-modal-content').length)
                    $flyImg = $sourceEl.closest('.variant-modal-content').find('.variant-modal-img img').first();
                if (!$flyImg || !$flyImg.length)
                    $flyImg = $sourceEl.closest('.product_item, .wist_item, .search-item, .quick-product, .product-section, .main-details-page').find('.pro_img img, .quick-product-img img, .details_slider img, .block__pic, .dimage_item img').first();
                if (!$flyImg || !$flyImg.length) $flyImg = $('.details_slider img, .block__pic, #details_slider_main img').first();
                if (!$flyImg || !$flyImg.length) { if (typeof onComplete === 'function') onComplete(); return; }
                var rect = $flyImg[0].getBoundingClientRect();
                var $clone = $flyImg.clone().addClass('fly-to-cart-img').css({
                    position: 'fixed', width: 90, height: 110,
                    left: rect.left, top: rect.top, margin: 0, padding: 0, zIndex: 99999
                }).appendTo('body');
                var $target = $('#floatingCartBtn, .floating-cart-widget').first();
                if (!$target.length || !$target.is(':visible')) $target = $('.mobile_bottom_nav .cart_badge').closest('a').first();
                if (!$target.length) $target = $('.menu-bag a').first();
                var destRect = $target.length && $target.is(':visible') ? $target[0].getBoundingClientRect() : { left: $(window).width() - 60, top: $(window).height() / 2 - 40 };
                var endW = 36, endH = 44;
                var endLeft = destRect.left + ($target.length ? (destRect.width || 0) / 2 - endW / 2 : 0);
                var endTop = destRect.top + ($target.length ? (destRect.height || 0) / 2 - endH / 2 : 0);
                var midLeft = (rect.left + endLeft) / 2 - 20;
                var midTop = Math.min(rect.top, endTop) - 100;
                $clone.animate({ left: midLeft, top: midTop, width: 70, height: 85, opacity: 1 }, 300, 'swing', function() {
                    $(this).animate({ left: endLeft, top: endTop, width: endW, height: endH, opacity: 0.6 }, 350, 'swing', function() {
                        $clone.remove();
                        if ($target && $target.length) { $target.addClass('cart-bump-animate'); setTimeout(function() { $target.removeClass('cart-bump-animate'); }, 450); }
                        if (typeof onComplete === 'function') onComplete();
                    });
                });
            }
            $(document).on("click", ".addcartbutton", function (e) {
                var $btn = $(this);
                var id = $btn.data("id");
                var checkout = $btn.data("checkout");
                var qty = 1;
                if (id) {
                    e.preventDefault();
                    $.ajax({
                        cache: "false",
                        type: "GET",
                        url: "{{url('add-to-cart')}}/" + id + "/" + qty,
                        dataType: "json",
                        success: function (data) {
                            if (data) {
                                toastr.success('Success', 'Product add to cart successfully');
                                cart_count();
                                mobile_cart();
                                if (typeof sidebarCartRefresh === "function") sidebarCartRefresh();
                                runFlyToCart($btn, function() { if (typeof openSidebarCart === "function") openSidebarCart(); });
                            }
                        },
                    });
                }
                if(checkout){
                    window.location.href = '{{route('customer.checkout')}}'; 
                }
            });
            $(document).on("click", ".cart_store", function (e) {
                var $btn = $(this);
                var $form = $btn.closest('form');
                if (!$form.length) return;
                var id = $btn.data("id") || $form.find("input[name=id]").val();
                if (!id) return;
                e.preventDefault();
                $form.addClass('cart-ajax-submit');
                $.ajax({
                    type: "POST",
                    data: $form.serialize(),
                    url: $form.attr('action'),
                    headers: { 'X-Requested-With': 'XMLHttpRequest' },
                    dataType: "json",
                    success: function (data) {
                        if (data && data.success) {
                            toastr.success('Success', 'Product add to cart successfully');
                            cart_count();
                            mobile_cart();
                            if (typeof sidebarCartRefresh === "function") sidebarCartRefresh();
                            runFlyToCart($btn, function() { if (typeof openSidebarCart === "function") openSidebarCart(); });
                        } else {
                            toastr.error(data && data.message ? data.message : 'Failed');
                        }
                    },
                    error: function(xhr) {
                        try {
                            var d = xhr.responseJSON;
                            if (d && !d.success) {
                                toastr.error(d.message || 'Failed');
                                return;
                            }
                        } catch(e) {}
                        $form.submit();
                    },
                    complete: function() { $form.removeClass('cart-ajax-submit'); }
                });
            });

            $(document).on("click", ".cart_remove", function () {
                var id = $(this).data("id");
                if (id) {
                    $.ajax({
                        type: "GET",
                        data: { id: id },
                        url: "{{route('cart.remove')}}",
                        success: function (data) {
                            if (data) {
                                $(".cartlist").html(data);
                                cart_count();
                                mobile_cart();
                                cart_summary();
                                if (typeof sidebarCartRefresh === "function") sidebarCartRefresh();
                            }
                        },
                    });
                }
            });

            $(document).on("click", ".cart_increment", function () {
                var id = $(this).data("id");
                if (id) {
                    $.ajax({
                        type: "GET",
                        data: { id: id },
                        url: "{{route('cart.increment')}}",
                        success: function (data) {
                            if (data) {
                                $(".cartlist").html(data);
                                cart_count();
                                mobile_cart();
                                if (typeof sidebarCartRefresh === "function") sidebarCartRefresh();
                            }
                        },
                    });
                }
            });

            $(document).on("click", ".cart_decrement", function () {
                var id = $(this).data("id");
                if (id) {
                    $.ajax({
                        type: "GET",
                        data: { id: id },
                        url: "{{route('cart.decrement')}}",
                        success: function (data) {
                            if (data) {
                                $(".cartlist").html(data);
                                cart_count();
                                mobile_cart();
                                if (typeof sidebarCartRefresh === "function") sidebarCartRefresh();
                            }
                        },
                    });
                }
            });

            function cart_count() {
                $.ajax({
                    type: "GET",
                    url: "{{route('cart.count')}}",
                    success: function (data) {
                        if (data) {
                            $("#cart-qty").html(data);
                        } else {
                            $("#cart-qty").empty();
                        }
                    },
                });
            }
            function mobile_cart() {
                $.ajax({
                    type: "GET",
                    url: "{{route('mobile.cart.count')}}",
                    success: function (data) {
                        if (data) {
                            $(".mobilecart-qty").html(data);
                        } else {
                            $(".mobilecart-qty").empty();
                        }
                    },
                });
            }
            function cart_summary() {
                $.ajax({
                    type: "GET",
                    url: "{{route('shipping.charge')}}",
                    dataType: "html",
                    success: function (response) {
                        $(".cart-summary").html(response);
                    },
                });
            }
        </script>
        <!-- cart js end -->
        <script>
            var headerLiveSearchRequest = null;

            function runHeaderLiveSearch(input) {
                var $input = $(input);
                var keyword = ($input.val() || '').trim();
                var $box = $input.closest('.main-search, .mobile-search').find('.search_result').first();

                if (keyword.length < 2) {
                    $box.empty();
                    return;
                }

                if (headerLiveSearchRequest) {
                    headerLiveSearchRequest.abort();
                }

                headerLiveSearchRequest = $.ajax({
                    type: "GET",
                    data: { keyword: keyword },
                    url: "{{route('livesearch')}}",
                    success: function (products) {
                        if ($.trim(products)) {
                            $("#loading").hide();
                            $box.html(products);
                        } else {
                            $box.empty();
                        }
                    },
                });
            }

            $(document).on("keyup change input", ".search_click, .msearch_click", function () {
                runHeaderLiveSearch(this);
            });

            $(document).on("submit", ".site-search-form", function (e) {
                var $input = $(this).find('input[name="keyword"]');
                var keyword = ($input.val() || '').trim();

                if (!keyword) {
                    e.preventDefault();
                    $input.focus();
                    return;
                }

                $input.val(keyword);
                $(this).closest('.main-search, .mobile-search').find('.search_result').empty();
            });

            $(document).on('click', function (event) {
                if (!$(event.target).closest('.main-search, .mobile-search').length) {
                    $('.search_result').empty();
                }
            });
        </script>
        <!-- search js start -->
        <script></script>
        <script></script>
        <script>
            $(".district").on("change", function () {
                var id = $(this).val();
                $.ajax({
                    type: "GET",
                    data: { id: id },
                    url: "{{route('districts')}}",
                    success: function (res) {
                        if (res) {
                            $(".area").empty();
                            $(".area").append('<option value="">Select..</option>');
                            $.each(res, function (key, value) {
                                $(".area").append('<option value="' + key + '" >' + value + "</option>");
                            });
                        } else {
                            $(".area").empty();
                        }
                    },
                });
            });
        </script>
        <script>
            document.addEventListener('DOMContentLoaded', function () {
                const homeItems = document.querySelectorAll('.slider-section .home-sidebar-scroll > li');
                let activeSubmenu = null;
                let activeParent = null;
                let closeTimer = null;

                function findDirectSubmenu(item) {
                    return Array.prototype.find.call(item.children, function (child) {
                        return child.classList && child.classList.contains('sidebar-submenu');
                    });
                }

                function restoreSubmenu() {
                    if (!activeSubmenu || !activeParent) return;

                    activeSubmenu.classList.remove('home-floating-submenu');
                    activeSubmenu.removeAttribute('style');
                    activeParent.appendChild(activeSubmenu);
                    activeSubmenu = null;
                    activeParent = null;
                }

                function scheduleClose() {
                    clearTimeout(closeTimer);
                    closeTimer = setTimeout(restoreSubmenu, 120);
                }

                function cancelClose() {
                    clearTimeout(closeTimer);
                }

                homeItems.forEach(function (item) {
                    const submenu = findDirectSubmenu(item);
                    if (!submenu) return;

                    function openSubmenu() {
                        if (window.innerWidth <= 767) return;
                        cancelClose();
                        if (activeSubmenu && activeSubmenu !== submenu) {
                            restoreSubmenu();
                        }

                        const rect = item.getBoundingClientRect();
                        activeSubmenu = submenu;
                        activeParent = item;
                        document.body.appendChild(submenu);
                        submenu.classList.add('home-floating-submenu');
                        submenu.style.position = 'fixed';
                        submenu.style.left = rect.right + 'px';
                        submenu.style.top = rect.top + 'px';
                        submenu.style.visibility = 'visible';
                        submenu.style.opacity = '1';
                        submenu.style.display = 'block';
                        submenu.style.zIndex = '10001';
                    }

                    item.addEventListener('mouseenter', openSubmenu);
                    item.addEventListener('focusin', openSubmenu);
                    item.addEventListener('mouseleave', scheduleClose);
                    item.addEventListener('focusout', scheduleClose);
                    submenu.addEventListener('mouseenter', cancelClose);
                    submenu.addEventListener('mouseleave', scheduleClose);
                });

                window.addEventListener('scroll', restoreSubmenu, { passive: true });
                window.addEventListener('resize', restoreSubmenu);
            });
        </script>
        <script>
            $(".toggle").on("click", function () {
                $("#page-overlay").show();
                $(".mobile-menu").addClass("active");
            });

            $("#page-overlay").on("click", function () {
                $("#page-overlay").hide();
                $(".mobile-menu").removeClass("active");
                $(".feature-products").removeClass("active");
            });

            $(".mobile-menu-close").on("click", function () {
                $("#page-overlay").hide();
                $(".mobile-menu").removeClass("active");
            });

            $(".mobile-filter-toggle").on("click", function () {
                $("#page-overlay").show();
                $(".feature-products").addClass("active");
            });
        </script>
        <script>
            $(document).ready(function () {
                $(".parent-category").each(function () {
                    const menuCatToggle = $(this).find(".menu-category-toggle");
                    const secondNav = $(this).find(".second-nav");

                    menuCatToggle.on("click", function () {
                        menuCatToggle.toggleClass("active");
                        secondNav.slideToggle("fast");
                        $(this).closest(".parent-category").toggleClass("active");
                    });
                });
                $(".parent-subcategory").each(function () {
                    const menuSubcatToggle = $(this).find(".menu-subcategory-toggle");
                    const thirdNav = $(this).find(".third-nav");

                    menuSubcatToggle.on("click", function () {
                        menuSubcatToggle.toggleClass("active");
                        thirdNav.slideToggle("fast");
                        $(this).closest(".parent-subcategory").toggleClass("active");
                    });
                });
            });
        </script>

        <script>
            var menu = new MmenuLight(document.querySelector("#menu"), "all");

            var navigator = menu.navigation({
                selectedClass: "Selected",
                slidingSubmenus: true,
                // theme: 'dark',
                title: "ক্যাটাগরি",
            });

            var drawer = menu.offcanvas({
                // position: 'left'
            });

            //  Open the menu.
            document.querySelector('a[href="#menu"]').addEventListener("click", (evnt) => {
                evnt.preventDefault();
                drawer.open();
            });
        </script>

        <script>
            // document.addEventListener("DOMContentLoaded", function () {
            //     window.addEventListener("scroll", function () {
            //         if (window.scrollY > 200) {
            //             document.getElementById("navbar_top").classList.add("fixed-top");
            //         } else {
            //             document.getElementById("navbar_top").classList.remove("fixed-top");
            //             document.body.style.paddingTop = "0";
            //         }
            //     });
            // });
            /*=== Main Menu Fixed === */
            // document.addEventListener("DOMContentLoaded", function () {
            //     window.addEventListener("scroll", function () {
            //         if (window.scrollY > 0) {
            //             document.getElementById("m_navbar_top").classList.add("fixed-top");
            //             // add padding top to show content behind navbar
            //             navbar_height = document.querySelector(".navbar").offsetHeight;
            //             document.body.style.paddingTop = navbar_height + "px";
            //         } else {
            //             document.getElementById("m_navbar_top").classList.remove("fixed-top");
            //             // remove padding top from body
            //             document.body.style.paddingTop = "0";
            //         }
            //     });
            // });
            /*=== Main Menu Fixed === */

            $(window).scroll(function () {
                if ($(this).scrollTop() > 50) {
                    $(".scrolltop:hidden").stop(true, true).fadeIn();
                } else {
                    $(".scrolltop").stop(true, true).fadeOut();
                }
            });
            $(function () {
                $(".scroll").click(function () {
                    $("html,body").animate({ scrollTop: $(".gotop").offset().top }, "1000");
                    return false;
                });
            });
        </script>
        <script>
            $(".filter_btn").click(function(){
               $(".filter_sidebar").addClass('active');
               $("body").css("overflow-y", "hidden");
            })
            $(".filter_close").click(function(){
               $(".filter_sidebar").removeClass('active');
               $("body").css("overflow-y", "auto");
            })
        </script>
        
        
        @php
    $popup = App\Models\Popup::where('status', 1)->latest()->first();
@endphp

@if($popup)
@php
    $isSimpleImagePopup = empty(trim($popup->description ?? '')) && empty(trim($popup->btn_text ?? '')) && empty(trim($popup->offer_end_text ?? ''));
@endphp
<div class="modal fade" id="popShopModal" tabindex="-1" aria-hidden="true" style="z-index: 10000;">
    <div class="modal-dialog modal-dialog-centered {{ $isSimpleImagePopup ? 'modal-lg' : 'modal-lg' }}">
        <div class="modal-content ps-content {{ $isSimpleImagePopup ? 'popup-simple-image' : '' }}">
            <button type="button" class="ps-close" data-bs-dismiss="modal" aria-label="বন্ধ">&times;</button>
            
            @if($isSimpleImagePopup)
                {{-- শুধু ইমেজ পপআপ (FABRILIFE/bKash স্টাইল) --}}
                <a href="{{ !empty(trim($popup->link ?? '')) ? $popup->link : 'javascript:void(0)' }}" {{ !empty(trim($popup->link ?? '')) ? 'target="_blank"' : '' }} class="popup-simple-link">
                    <img src="{{ url($popup->image) }}" alt="{{ $popup->title }}" class="popup-simple-img">
                </a>
            @else
                {{-- পুরনো লেআউট (টেক্সট + ইমেজ) --}}
                <div class="ps-layout">
                    <div class="ps-text-section">
                        <h3 class="ps-brand">{{ $popup->title }}</h3>
                        <div class="ps-headline">
                            <p>{!! nl2br(e($popup->description)) !!}</p>
                        </div>
                        @if($popup->offer_end_text)
                        <p class="ps-deadline">{{ $popup->offer_end_text }}</p>
                        @endif
                        <a href="{{ $popup->link ?? '#' }}" class="ps-btn">
                            {{ $popup->btn_text ?? 'Shop the Sale' }}
                        </a>
                        <div class="ps-footer">
                            <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-box-seam" viewBox="0 0 16 16">
                              <path d="M8.186 1.113a.5.5 0 0 0-.372 0L1.846 3.5l2.404.961L10.404 2l-2.218-.887zm3.564 1.426L5.596 5 8 5.961 14.154 3.5l-2.404-.961zm3.25 1.7-6.5 2.6v7.922l6.5-2.6V4.24zM7.5 14.762V6.838L1 4.239v7.923l6.5 2.6zM7.443.184a1.5 1.5 0 0 1 1.114 0l7.129 2.852A.5.5 0 0 1 16 3.5v8.662a1 1 0 0 1-.629.928l-7.185 2.874a.5.5 0 0 1-.372 0L.63 13.09a1 1 0 0 1-.63-.928V3.5a.5.5 0 0 1 .314-.464L7.443.184z"/>
                            </svg>
                            <span>POWERED BY <strong>{{ $generalsetting->name ?? 'CommerceGurus' }}</strong></span>
                        </div>
                    </div>
                    <div class="ps-image-section">
                        <img src="{{ url($popup->image) }}" alt="Offer Image">
                    </div>
                </div>
            @endif
        </div>
    </div>
</div>

<style>
    /* Modal Container */
    .ps-content {
        border: none;
        border-radius: 0px; /* Sharp corners like the image */
        overflow: hidden;
        background-color: #fff;
        box-shadow: 0 15px 50px rgba(0,0,0,0.3);
        max-width: 850px; /* Width matching the reference */
        margin: 0 auto;
    }

    /* Flex Layout */
    .ps-layout {
        display: flex;
        flex-direction: row;
        min-height: 450px;
    }

    /* === Left Side Styling === */
    .ps-text-section {
        width: 50%;
        padding: 50px 40px;
        display: flex;
        flex-direction: column;
        justify-content: center;
        text-align: left;
        position: relative;
    }

    /* Brand: Serif, Reddish-Brown */
    .ps-brand {
        color: #b93a3a; /* Exact color from image */
        font-family: 'Georgia', 'Times New Roman', serif;
        font-weight: 700;
        font-size: 38px;
        margin-bottom: 15px;
        line-height: 1;
    }

    /* Headline: Bold, Sans-Serif */
    .ps-headline {
        color: #222;
        font-family: 'Helvetica Neue', Helvetica, Arial, sans-serif;
        font-size: 20px;
        font-weight: 700;
        line-height: 1.4;
        margin-bottom: 15px;
    }
    
    /* Description text style if multiple lines */
    .ps-headline span, .ps-headline p {
        font-weight: 400;
        font-size: 16px;
        color: #555;
        margin-top: 10px;
    }

    /* Deadline Text: Small, Gray */
    .ps-deadline {
        color: #888;
        font-size: 14px;
        margin-bottom: 30px;
    }

    /* Button: Dark, Rectangular */
    .ps-btn {
        background-color: #2c3e50; /* Dark Charcoal */
        color: #fff !important;
        text-decoration: none;
        padding: 15px 30px;
        text-align: center;
        font-weight: 600;
        font-size: 16px;
        border-radius: 2px; /* Slight radius but mostly sharp */
        display: block;
        width: 100%;
        transition: 0.3s;
    }
    .ps-btn:hover {
        background-color: #000;
    }

    /* Footer / Powered By */
    .ps-footer {
        margin-top: 40px;
        font-size: 10px;
        color: #aaa;
        display: flex;
        align-items: center;
        gap: 8px;
        text-transform: uppercase;
    }
    .ps-footer strong { color: #333; }

    /* === Right Side Styling === */
    .ps-image-section {
        width: 50%;
        position: relative;
        background: #f0f0f0;
    }
    .ps-image-section img {
        width: 100%;
        height: 100%;
        object-fit: cover; /* Ensures image covers full height */
        display: block;
    }

    /* === সিম্পল ইমেজ পপআপ (শুধু ইমেজ - FABRILIFE/bKash স্টাইল) === */
    .popup-simple-image {
        padding: 0;
        max-width: 95vw;
        border-radius: 12px;
        overflow: hidden;
    }
    .popup-simple-link {
        display: block;
        line-height: 0;
        text-decoration: none;
    }
    .popup-simple-link[href="javascript:void(0)"] {
        cursor: default;
    }
    .popup-simple-img {
        width: 100%;
        height: auto;
        max-height: 90vh;
        object-fit: contain;
        display: block;
        border-radius: 0 0 12px 12px;
    }

    /* Close Button */
    .ps-close {
        position: absolute;
        top: 15px;
        right: 15px;
        background: #fff;
        border: none;
        border-radius: 50%;
        width: 32px;
        height: 32px;
        font-size: 24px;
        line-height: 32px;
        color: #333;
        cursor: pointer;
        z-index: 1050;
        box-shadow: 0 2px 8px rgba(0,0,0,0.2);
        transition: 0.2s;
    }
    .ps-close:hover {
        color: #b93a3a;
        transform: scale(1.1);
    }

    /* Mobile Responsive */
    @media (max-width: 768px) {
        .ps-layout {
            flex-direction: column-reverse; /* Image Top, Text Bottom */
        }
        .ps-text-section { width: 100%; padding: 30px; }
        .ps-image-section { width: 100%; height: 250px; }
        .ps-brand { font-size: 30px; }
    }
</style>

<script>
    document.addEventListener("DOMContentLoaded", function() {
        // ৩ ঘন্টা পর পর দেখাবে
        const hoursToWait = 3;  
        // সাইটে ঢোকার ২ সেকেন্ড পর দেখাবে
        const delayInSeconds = 2; 

        const timeLimit = hoursToWait * 60 * 60 * 1000;
        const lastShown = localStorage.getItem('popupLastShown');
        const now = new Date().getTime();

        if (!lastShown || (now - lastShown > timeLimit)) {
            setTimeout(function() {
                // Try opening with jQuery (Standard for Laravel themes)
                if (typeof jQuery != 'undefined') {
                    $('#popShopModal').modal('show');
                } 
                // Try opening with Bootstrap 5
                else if (typeof bootstrap != 'undefined') {
                    var myModal = new bootstrap.Modal(document.getElementById('popShopModal'));
                    myModal.show();
                }

                localStorage.setItem('popupLastShown', now);
            }, delayInSeconds * 1000);
        }
    });
</script>
@endif

        
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/sweetalert2@11/dist/sweetalert2.min.css">
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>

@if(session('show_order_limit_modal'))
<script>
    document.addEventListener("DOMContentLoaded", function() {
        // ডাইনামিক হোয়াটসঅ্যাপ নাম্বার (ডাটাবেস থেকে)
        var whatsappNumber = "{{ $contact->whatsapp ?? $contact->hotline ?? '8801700000000' }}"; 
        
        Swal.fire({
            title: '', 
            html: `
                <div class="custom-modal-content">
                    <div class="modal-header-custom">
                        <div class="header-left">
                            <i class="fas fa-exclamation-triangle header-icon"></i>
                            <span>Duplicate Order Detective Alert</span>
                        </div>
                        <i class="fas fa-times close-icon" onclick="Swal.close()"></i>
                    </div>

                    <div class="modal-body-custom">
                        <p>
                            <img src="https://img.icons8.com/emoji/48/000000/warning-emoji.png" style="width: 20px; vertical-align: text-bottom;"> 
                            <b>সতর্কতা!</b> আপনি ইতিমধ্যে এই পণ্যটির জন্য অর্ডার দিয়েছেন। নির্দিষ্ট সময়ের মধ্যে একই পণ্যের পুনরায় অর্ডার দেওয়া অনুমোদিত নয়। 
                            👉 আপনি যদি সত্যিই আবার অর্ডার করতে চান, তাহলে নিচে দেওয়া WhatsApp নম্বরে যোগাযোগ করুন:
                        </p>
                    </div>

                    <div class="modal-footer-custom">
                        <a href="https://wa.me/${whatsappNumber}?text=আমি একই পণ্য পুনরায় অর্ডার করতে চাই, অনুগ্রহ করে সাহায্য করুন।" target="_blank" class="btn-whatsapp-custom">
                            <i class="fab fa-whatsapp"></i> CONTACT ON WHATSAPP
                        </a>
                        <button onclick="Swal.close()" class="btn-close-custom">Close</button>
                    </div>
                </div>
            `,
            showConfirmButton: false, // ডিফল্ট বাটন বন্ধ রাখা হয়েছে
            background: 'transparent', // ডিফল্ট ব্যাকগ্রাউন্ড রিমুভ
            customClass: {
                popup: 'swal-no-padding'
            },
            allowOutsideClick: false
        });
    });
</script>

<style>
    /* পপ-আপ কন্টেইনার রিসেট */
    .swal-no-padding {
        padding: 0 !important;
        background: none !important;
        box-shadow: none !important;
        overflow: visible !important;
    }

    /* মেইন বক্স ডিজাইন */
    .custom-modal-content {
        background: white;
        border-radius: 8px;
        overflow: hidden;
        font-family: 'Arial', sans-serif;
        box-shadow: 0 10px 25px rgba(0,0,0,0.5);
        max-width: 500px;
        margin: 0 auto;
    }

    /* লাল হেডার (ছবির মতো হুবহু) */
    .modal-header-custom {
        background-color: #b91c1c; /* গাঢ় লাল */
        padding: 15px 20px;
        display: flex;
        justify-content: space-between;
        align-items: center;
        color: white;
        font-size: 18px;
        font-weight: bold;
    }

    .header-left {
        display: flex;
        align-items: center;
        gap: 10px;
    }

    .header-icon {
        color: #facc15; /* হলুদ আইকন */
        font-size: 20px;
    }

    .close-icon {
        cursor: pointer;
        opacity: 0.8;
        font-size: 20px;
        transition: 0.2s;
    }
    .close-icon:hover {
        opacity: 1;
    }

    /* বডি টেক্সট */
    .modal-body-custom {
        padding: 30px 25px;
        text-align: left;
        font-size: 15px;
        line-height: 1.6;
        color: #4b5563;
    }

    /* ফুটার এবং বাটন */
    .modal-footer-custom {
        padding: 0 25px 30px 25px;
        display: flex;
        justify-content: center;
        gap: 15px;
    }

    /* হোয়াটসঅ্যাপ বাটন (সবুজ) */
    .btn-whatsapp-custom {
        background-color: #10b981;
        color: white !important;
        text-decoration: none;
        padding: 10px 20px;
        border-radius: 50px;
        font-weight: bold;
        font-size: 13px;
        display: flex;
        align-items: center;
        gap: 8px;
        box-shadow: 0 4px 6px rgba(0,0,0,0.1);
        transition: background 0.3s;
        border: none;
    }
    .btn-whatsapp-custom:hover {
        background-color: #059669;
    }

    /* ক্লোজ বাটন (লাল) */
    .btn-close-custom {
        background-color: #dc2626;
        color: white;
        padding: 10px 30px;
        border-radius: 50px;
        font-weight: bold;
        font-size: 14px;
        border: none;
        cursor: pointer;
        box-shadow: 0 4px 6px rgba(0,0,0,0.1);
        transition: background 0.3s;
    }
    .btn-close-custom:hover {
        background-color: #b91c1c;
    }

    /* রেস্পন্সিভ ডিজাইন */
    @media (max-width: 450px) {
        .modal-footer-custom {
            flex-direction: column;
        }
        .btn-whatsapp-custom, .btn-close-custom {
            width: 100%;
            justify-content: center;
        }
    }
</style>
@endif
    </body>
</html>
