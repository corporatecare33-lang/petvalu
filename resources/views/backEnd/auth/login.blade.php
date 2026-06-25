<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="csrf-token" content="{{ csrf_token() }}">

    <link rel="shortcut icon" href="{{ asset($generalsetting->favicon) }}" alt="{{ $generalsetting->name }}">
    <title>Admin Login | {{ $generalsetting->name }}</title>

    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700">
    <link rel="stylesheet" href="{{ asset('public/backEnd/') }}/assets_login/css/vendors.css">

    <style>
        :root {
            --brand-primary: {{ $generalsetting->primary_color ?? '#0f8f7a' }};
            --brand-secondary: {{ $generalsetting->secodery_color ?? '#ff8a00' }};
            --ink: #172033;
            --muted: #6b7280;
            --line: #e5e7eb;
            --surface: #ffffff;
        }

        * {
            box-sizing: border-box;
        }

        body {
            margin: 0;
            min-height: 100vh;
            font-family: Poppins, Arial, sans-serif;
            color: var(--ink);
            background:
                radial-gradient(circle at 12% 16%, rgba(255, 138, 0, 0.16), transparent 28%),
                radial-gradient(circle at 88% 14%, rgba(15, 143, 122, 0.16), transparent 26%),
                linear-gradient(135deg, #f7faf8 0%, #eef5f1 100%);
        }

        .login-page {
            min-height: 100vh;
            display: flex;
            align-items: center;
            justify-content: center;
            padding: 28px 16px;
        }

        .login-shell {
            width: min(1080px, 100%);
            display: grid;
            grid-template-columns: 1.08fr 0.92fr;
            background: rgba(255, 255, 255, 0.92);
            border: 1px solid rgba(255, 255, 255, 0.82);
            border-radius: 22px;
            overflow: hidden;
            box-shadow: 0 24px 70px rgba(16, 24, 40, 0.14);
        }

        .login-visual {
            position: relative;
            min-height: 620px;
            background-image:
                linear-gradient(90deg, rgba(10, 31, 38, 0.22), rgba(10, 31, 38, 0.03)),
                url("{{ asset('uploads/petshop/banners/pet-shop-ai-store.png') }}");
            background-size: cover;
            background-position: center;
        }

        .login-visual::after {
            content: "";
            position: absolute;
            inset: 0;
            background: linear-gradient(180deg, rgba(7, 28, 31, 0.05), rgba(7, 28, 31, 0.58));
        }

        .visual-content {
            position: absolute;
            left: 34px;
            right: 34px;
            bottom: 34px;
            z-index: 1;
            color: #fff;
        }

        .visual-kicker {
            display: inline-flex;
            align-items: center;
            gap: 8px;
            padding: 8px 12px;
            border-radius: 999px;
            background: rgba(255, 255, 255, 0.18);
            backdrop-filter: blur(10px);
            font-size: 12px;
            font-weight: 600;
            margin-bottom: 14px;
        }

        .visual-title {
            max-width: 470px;
            margin: 0 0 12px;
            font-size: 38px;
            line-height: 1.12;
            font-weight: 700;
            letter-spacing: 0;
        }

        .visual-copy {
            max-width: 440px;
            margin: 0;
            color: rgba(255, 255, 255, 0.86);
            font-size: 15px;
            line-height: 1.7;
        }

        .login-panel {
            display: flex;
            align-items: center;
            justify-content: center;
            padding: 54px;
            background: var(--surface);
        }

        .login-card {
            width: 100%;
            max-width: 390px;
        }

        .brand-block {
            margin-bottom: 30px;
        }

        .brand-logo {
            display: inline-flex;
            align-items: center;
            min-height: 48px;
            margin-bottom: 18px;
        }

        .brand-logo img {
            max-height: 46px;
            max-width: 185px;
            object-fit: contain;
        }

        .login-title {
            margin: 0 0 8px;
            font-size: 28px;
            line-height: 1.2;
            font-weight: 700;
            color: var(--ink);
            letter-spacing: 0;
        }

        .login-subtitle {
            margin: 0;
            color: var(--muted);
            font-size: 14px;
            line-height: 1.6;
        }

        .alert {
            border-radius: 12px;
            border: 1px solid #fecaca;
            background: #fff1f2;
            color: #991b1b;
            padding: 12px 14px;
            font-size: 13px;
            margin-bottom: 18px;
        }

        .alert ul {
            margin: 6px 0 0;
            padding-left: 18px;
        }

        .field-group {
            margin-bottom: 18px;
        }

        .field-label {
            display: block;
            margin-bottom: 8px;
            color: #374151;
            font-size: 13px;
            font-weight: 600;
        }

        .input-wrap {
            position: relative;
        }

        .input-icon {
            position: absolute;
            left: 14px;
            top: 50%;
            transform: translateY(-50%);
            color: #9ca3af;
            font-size: 14px;
            pointer-events: none;
        }

        .form-control {
            width: 100%;
            height: 50px;
            border: 1px solid var(--line);
            border-radius: 12px;
            background: #f9fafb;
            color: var(--ink);
            font-size: 14px;
            padding: 0 14px 0 42px;
            outline: none;
            transition: border-color 0.2s, box-shadow 0.2s, background 0.2s;
        }

        .form-control:focus {
            border-color: var(--brand-primary);
            background: #fff;
            box-shadow: 0 0 0 4px rgba(15, 143, 122, 0.12);
        }

        .invalid-feedback {
            display: block;
            margin-top: 6px;
            color: #dc2626;
            font-size: 12px;
        }

        .form-row {
            display: flex;
            align-items: center;
            justify-content: space-between;
            gap: 12px;
            margin: 4px 0 22px;
            font-size: 13px;
        }

        .remember-label {
            display: inline-flex;
            align-items: center;
            gap: 8px;
            margin: 0;
            color: #4b5563;
            cursor: pointer;
            user-select: none;
        }

        .remember-label input {
            width: 16px;
            height: 16px;
            accent-color: var(--brand-primary);
        }

        .forgot-link,
        .forgot-link:hover {
            color: var(--brand-primary);
            text-decoration: none;
            font-weight: 600;
            white-space: nowrap;
        }

        .login-button {
            width: 100%;
            height: 52px;
            border: 0;
            border-radius: 12px;
            background: linear-gradient(135deg, var(--brand-primary), var(--brand-secondary));
            color: #fff;
            font-size: 15px;
            font-weight: 700;
            cursor: pointer;
            box-shadow: 0 12px 24px rgba(15, 143, 122, 0.23);
            transition: transform 0.2s, box-shadow 0.2s, opacity 0.2s;
        }

        .login-button:hover {
            transform: translateY(-1px);
            box-shadow: 0 16px 30px rgba(15, 143, 122, 0.28);
        }

        .demo-box {
            margin-top: 24px;
            padding: 16px;
            border: 1px dashed #d1d5db;
            border-radius: 14px;
            background: #fbfbfb;
        }

        .demo-title {
            margin: 0 0 10px;
            color: var(--muted);
            font-size: 12px;
            font-weight: 600;
        }

        .demo-row {
            display: grid;
            grid-template-columns: 1fr 108px 58px;
            gap: 8px;
        }

        .demo-row .form-control {
            height: 38px;
            padding: 0 10px;
            border-radius: 9px;
            font-size: 12px;
            background: #fff;
        }

        .demo-use {
            border: 1px solid var(--brand-primary);
            border-radius: 9px;
            background: #fff;
            color: var(--brand-primary);
            font-weight: 700;
            cursor: pointer;
        }

        @media (max-width: 900px) {
            .login-shell {
                grid-template-columns: 1fr;
                max-width: 520px;
            }

            .login-visual {
                min-height: 240px;
            }

            .visual-title {
                font-size: 28px;
            }

            .login-panel {
                padding: 34px 24px;
            }
        }

        @media (max-width: 480px) {
            .login-page {
                padding: 14px;
            }

            .login-shell {
                border-radius: 18px;
            }

            .login-visual {
                min-height: 190px;
            }

            .visual-content {
                left: 20px;
                right: 20px;
                bottom: 20px;
            }

            .visual-title {
                font-size: 24px;
            }

            .visual-copy {
                display: none;
            }

            .login-title {
                font-size: 24px;
            }

            .form-row,
            .demo-row {
                grid-template-columns: 1fr;
            }

            .form-row {
                align-items: flex-start;
                flex-direction: column;
            }
        }
    </style>
</head>
<body>
    <main class="login-page">
        <section class="login-shell">
            <div class="login-visual" aria-hidden="true">
                <div class="visual-content">
                    <div class="visual-kicker">Admin Portal</div>
                    <h1 class="visual-title">Manage your pet shop with confidence.</h1>
                    <p class="visual-copy">Sign in to handle orders, products, customers, vendors, and daily operations from one clean dashboard.</p>
                </div>
            </div>

            <div class="login-panel">
                <div class="login-card">
                    <div class="brand-block">
                        <div class="brand-logo">
                            <img src="{{ asset($generalsetting->dark_logo) }}" alt="{{ $generalsetting->name }}">
                        </div>
                        <h2 class="login-title">Welcome Back</h2>
                        <p class="login-subtitle">Login to continue to {{ $generalsetting->name }} admin dashboard.</p>
                    </div>

                    @if(session('error'))
                        <div class="alert" role="alert">
                            <strong>Error!</strong> {{ session('error') }}
                        </div>
                    @endif

                    @if($errors->any())
                        <div class="alert" role="alert">
                            <strong>Error!</strong>
                            <ul>
                                @foreach($errors->all() as $error)
                                    <li>{{ $error }}</li>
                                @endforeach
                            </ul>
                        </div>
                    @endif

                    <form method="POST" action="{{ route('login') }}">
                        @csrf

                        <div class="field-group">
                            <label class="field-label" for="email">Email address</label>
                            <div class="input-wrap">
                                <span class="input-icon">@</span>
                                <input id="email" type="email" class="form-control @error('email') is-invalid @enderror" name="email" value="{{ old('email') }}" required autofocus placeholder="admin@example.com">
                            </div>
                            @error('email')
                                <span class="invalid-feedback" role="alert"><strong>{{ $message }}</strong></span>
                            @enderror
                        </div>

                        <div class="field-group">
                            <label class="field-label" for="password">Password</label>
                            <div class="input-wrap">
                                <span class="input-icon">*</span>
                                <input id="password" type="password" class="form-control @error('password') is-invalid @enderror" name="password" required placeholder="Enter your password">
                            </div>
                            @error('password')
                                <span class="invalid-feedback" role="alert"><strong>{{ $message }}</strong></span>
                            @enderror
                        </div>

                        <div class="form-row">
                            <label class="remember-label" for="checkbox-signin">
                                <input type="checkbox" name="remember" id="checkbox-signin" value="1" {{ old('remember') ? 'checked' : '' }}>
                                <span>Remember me</span>
                            </label>
                            <a href="{{ route('admin.password.request') }}" class="forgot-link">Forgot password?</a>
                        </div>

                        <button type="submit" class="login-button">Login</button>
                    </form>

                    @if(isset($demoMode) && $demoMode)
                        <div class="demo-box">
                            <p class="demo-title">Demo account</p>
                            <div class="demo-row">
                                <input type="text" class="form-control" id="demo-email" value="info@creativedesign.com.bd" readonly>
                                <input type="text" class="form-control" id="demo-password" value="12345678" readonly>
                                <button type="button" class="demo-use" onclick="fillDemoCreds()">Use</button>
                            </div>
                        </div>
                    @endif
                </div>
            </div>
        </section>
    </main>

    <script src="{{ asset('public/backEnd/') }}/assets_login/js/vendors.js"></script>
    @if(isset($demoMode) && $demoMode)
        <script>
            function fillDemoCreds() {
                var email = document.getElementById('demo-email').value;
                var pass = document.getElementById('demo-password').value;
                document.getElementById('email').value = email;
                document.getElementById('password').value = pass;
                var btn = document.querySelector('button[onclick="fillDemoCreds()"]');
                if (btn) {
                    btn.textContent = 'Done';
                    setTimeout(function () { btn.textContent = 'Use'; }, 1200);
                }
            }
        </script>
    @endif
</body>
</html>
