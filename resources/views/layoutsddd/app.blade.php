<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8"/>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>@yield('title', 'KIT SERVICES SARL')</title>


        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=yes"/>


        <meta name="color-scheme" content="light dark"/>
        <meta name="theme-color" content="#007bff" media="(prefers-color-scheme: light)"/>
        <meta name="theme-color" content="#1a1a1a" media="(prefers-color-scheme: dark)"/>
        <meta name="supported-color-schemes" content="light dark"/>


        <link rel="icon" type="image/png" href="{{ asset('favicon/favicon-96x96.png') }}" sizes="96x96"/>
        <link rel="icon" type="image/svg+xml" href="{{ asset('favicon/favicon.svg') }}"/>
        <link rel="apple-touch-icon" sizes="180x180" href="{{ asset('favicon/apple-touch-icon.png') }}"/>
        <link rel="manifest" href="{{ asset('site.webmanifest') }}"/>


        <title>@yield('title', 'Kit Services SARL')</title>
        <meta name="author" content="Jean Luc Kawel"/>
        <meta name="description" content="@yield('description', 'Connect to Kit Services to manage employees, clients, invoices, and more.')"/>
        <meta name="keywords" content="Kit Services, employee management, client management, invoices, HR, business management"/>


        <meta property="og:type" content="website"/>
        <meta property="og:title" content="@yield('og:title', 'Kit Services')"/>
        <meta property="og:description" content="@yield('og:description', 'Connect to Kit Services to manage employees, clients, invoices, and more.')"/>
        <meta property="og:image" content="@yield('og:image', asset('logo/img.png'))"/>
        <meta property="og:url" content="{{ url()->current() }}"/>
        <meta property="og:site_name" content="Kit Services"/>


        <meta name="twitter:card" content="summary_large_image"/>
        <meta name="twitter:title" content="@yield('twitter:title', 'Kit Services | Login')"/>
        <meta name="twitter:description" content="@yield('twitter:description', 'Connect to Kit Services to manage employees, clients, invoices, and more.')"/>
        <meta name="twitter:image" content="@yield('twitter:image', asset('logo/img.png'))"/>
        <meta name="twitter:site" content="@KitServices"/>


        <link rel="icon" href="{{ asset('logo/img.png') }}" type="image/png"/>



    <link rel="preload" href="{{ asset('css/adminlte.css') }}" as="style"/>
    <link
        rel="stylesheet"
        href="https://cdn.jsdelivr.net/npm/@fontsource/source-sans-3@5.0.12/index.css"
        integrity="sha256-tXJfXfp6Ewt1ilPzLDtQnJV4hclT9XuaZUKyUvmyr+Q="
        crossorigin="anonymous"
        media="print"
        onload="this.media='all'"
    />
    <link
        rel="stylesheet"
        href="https://cdn.jsdelivr.net/npm/overlayscrollbars@2.11.0/styles/overlayscrollbars.min.css"
        crossorigin="anonymous"
    />
    <link
        rel="stylesheet"
        href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.13.1/font/bootstrap-icons.min.css"
        crossorigin="anonymous"
    />

    <link rel="stylesheet" href="{{ asset('css/adminlte.css') }}"/>
</head>


<body
        class="layout-fixed fixed-header fixed-footer sidebar-expand-lg sidebar-open bg-body-tertiary"
>

<div class="app-wrapper">
    <!--begin::Header-->
    <nav class="app-header navbar navbar-expand bg-body">
        <!--begin::Container-->
        <div class="container-fluid">
            <!--begin::Start Navbar Links-->
            <ul class="navbar-nav">
                <li class="nav-item">
                    <a class="nav-link" data-lte-toggle="sidebar" href="#" role="button">
                        <i class="bi bi-list"></i>
                    </a>
                </li>
                <li class="nav-item d-none d-md-block"><a href="#" class="nav-link"></a></li>
            </ul>
            <!--end::Start Navbar Links-->
            <!--begin::End Navbar Links-->
            <ul class="navbar-nav ms-auto">
                @include('partials.notifications')
                <!--end::Notifications Dropdown Menu-->
                <!--begin::Fullscreen Toggle-->
                <li class="nav-item">
                    <a class="nav-link" href="#" data-lte-toggle="fullscreen">
                        <i data-lte-icon="maximize" class="bi bi-arrows-fullscreen"></i>
                        <i data-lte-icon="minimize" class="bi bi-fullscreen-exit" style="display: none"></i>
                    </a>
                </li>
                <li class="nav-item">
                    <form>
                        <select class="form-select" style="border-radius:0;"
                                onchange="window.location.href='{{ url('lang') }}/' + this.value">
                            <option value="en" {{ app()->getLocale() === 'en' ? 'selected' : '' }}>
                                EN
                            </option>
                            <option value="fr" {{ app()->getLocale() === 'fr' ? 'selected' : '' }}>
                                FR
                            </option>
                        </select>
                    </form>
                </li>


                <!--end::Fullscreen Toggle-->
                <!--begin::User Menu Dropdown-->
                @auth


                    @php
                        $name = Auth::user()->name;

                        $initials = collect(explode(' ', $name))
                            ->filter()
                            ->map(fn ($word) => strtoupper(substr($word, 0, 1)))
                            ->take(2)
                            ->implode('');
                        $colors = ['#dc3545', '#0d6efd', '#198754', '#6f42c1', '#fd7e14'];
                        $bgColor = $colors[crc32($name) % count($colors)];
                    @endphp
                    <li class="nav-item dropdown user-menu">
                        <a href="#" class="nav-link dropdown-toggle d-flex align-items-center"
                           data-bs-toggle="dropdown">

                            <img
                                src="https://ui-avatars.com/api/?name={{ urlencode(Auth::user()->name) }}&background={{ ltrim($bgColor,'#') }}&color=fff&bold=true&size=128"
                                class="rounded-circle shadow-sm"
                                width="35"
                                height="35"
                                alt="{{ Auth::user()->name }}"
                            >

                            <span class="ms-2 d-none d-md-inline">
                                {{ Auth::user()->name }}
                            </span>
                        </a>

                        <ul class="dropdown-menu dropdown-menu-end shadow border-0" style="min-width: 280px;">

                            <li class="text-center py-4 bg-primary text-white rounded-top">

                                <img
                                    src="https://ui-avatars.com/api/?name={{ urlencode(Auth::user()->name) }}&background={{ ltrim($bgColor,'#') }}&color=fff&bold=true&size=180"
                                    class="rounded-circle shadow border border-3 border-white mb-3"
                                    width="80"
                                    height="80"
                                    alt="{{ Auth::user()->name }}"
                                >

                                <h6 class="mb-1 fw-bold">
                                    {{ Auth::user()->name }}
                                </h6>

                                <small class="opacity-75">
                                    {{ Auth::user()->email }}
                                </small>

                            </li>

                            <li>
                                <hr class="dropdown-divider">
                            </li>

                            <li>
                                <a href="{{ route('users.edit', auth()->user()->id) }}"
                                   class="dropdown-item py-2">
                                    <i class="bi bi-person-circle me-2"></i>
                                     Profil
                                </a>
                            </li>

                            <li>
                                <hr class="dropdown-divider">
                            </li>

                            <li class="px-3 pb-3">

                                <form method="POST" action="{{ route('logout') }}">
                                    @csrf

                                    <button type="submit"
                                            class="btn w-100 text-white"
                                            style="background-color: #ff7f00; border-color: #F7931E;">
                                        <i class="bi bi-box-arrow-right me-2"></i>
                                        Déconnexion
                                    </button>

                                </form>

                            </li>

                        </ul>
                    </li>


                @endauth
                <!--end::User Menu Dropdown-->
            </ul>
            <!--end::End Navbar Links-->
        </div>


        <!--end::Container-->
    </nav>
    <!--end::Header-->
    <!--begin::Sidebar-->
    <aside class="app-sidebar bg-body-secondary shadow" data-bs-theme="dark">
        <!--begin::Sidebar Brand-->
        <div class="sidebar-brand" style="background-color: #ffffff; padding: 0.5rem 1rem; border-bottom: 2px solid #ff7f00;">
            <!--begin::Brand Link-->
            <a href="{{ route('dashboard') }}" class="brand-link d-flex align-items-center text-dark text-decoration-none">
                <!--begin::Brand Image-->
                <img
                    src="{{ asset('logo/img.png') }}"
                    alt="Kit Service Sarl Logo"
                    class="brand-image me-2 shadow"
                    style="opacity:1; width:80px; height:auto;"
                />
                <!--end::Brand Image-->
                <!--begin::Brand Text-->
                <span class="brand-text fw-bold" style="color:#ff7f00;">Kit Services</span>
                <!--end::Brand Text-->
            </a>
            <!--end::Brand Link-->
        </div>

        <!--end::Sidebar Brand-->
        <!--begin::Sidebar Wrapper-->
        <div class="sidebar-wrapper">
            <nav class="mt-2">
                @include('partialsddd.seedbar')
            </nav>
        </div>
        <!--end::Sidebar Wrapper-->
    </aside>
    <!--end::Sidebar-->
    <!--begin::App Main-->
    <main class="app-main">
        @yield('content')
    </main>
    <!--end::App Main-->
    <!--begin::Footer-->
    @include('partialsddd.footer')
    <!--end::Footer-->
</div>
<!--end::App Wrapper-->
<!--begin::Script-->
<!--begin::Third Party Plugin(OverlayScrollbars)-->



<script
        src="https://cdn.jsdelivr.net/npm/overlayscrollbars@2.11.0/browser/overlayscrollbars.browser.es6.min.js"
        crossorigin="anonymous"
></script>
<!--end::Third Party Plugin(OverlayScrollbars)--><!--begin::Required Plugin(popperjs for Bootstrap 5)-->
<script
        src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js"
        crossorigin="anonymous"
></script>
<!--end::Required Plugin(popperjs for Bootstrap 5)--><!--begin::Required Plugin(Bootstrap 5)-->
<script
        src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.7/dist/js/bootstrap.min.js"
        crossorigin="anonymous"
></script>
<!--end::Required Plugin(Bootstrap 5)--><!--begin::Required Plugin(AdminLTE)-->
<script src="{{ asset('js/adminlte.js') }}"></script>
<!--end::Required Plugin(AdminLTE)--><!--begin::OverlayScrollbars Configure-->



<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>

<script>
    $(function () {

        @if(session('success'))
        Swal.fire({
            title: 'Success!',
            text: @json(session('success')),
            icon: 'success',
            iconColor: '#28a745',
            background: '#fff',
            color: '#333',
            confirmButtonColor: '#28a745',
            confirmButtonText: 'Ok',
            customClass: {
                popup: 'shadow-lg',
                title: 'fw-bold fs-5',
                content: 'fs-6'
            },
            timer: 3000,
            timerProgressBar: true,
        });
        @endif


        @if(session('error'))
        Swal.fire({
            title: 'Error!',
            text: @json(session('error')),
            icon: 'error',
            iconColor: '#FF3300',
            background: '#fff',
            color: '#333',
            confirmButtonColor: '#FF3300',
            confirmButtonText: 'Ok',
            customClass: {
                popup: 'shadow-lg',
                title: 'fw-bold fs-5',
                content: 'fs-6'
            },
        });
        @endif

        // === VALIDATION ERRORS ===
        @if($errors->any())
        let errors = @json($errors->all());
        Swal.fire({
            title: 'Validation Errors!',
            html: errors.map(e => "• " + e).join('<br>'),
            icon: 'error',
            iconColor: '#FF3300',
            background: '#fff',
            color: '#333',
            confirmButtonColor: '#FF3300',
            confirmButtonText: 'Ok',
            customClass: {
                popup: 'shadow-lg',
                title: 'fw-bold fs-5',
                content: 'fs-6'
            },
        });
        @endif
    });




    const SELECTOR_SIDEBAR_WRAPPER = '.sidebar-wrapper';
    const Default = {
        scrollbarTheme: 'os-theme-light',
        scrollbarAutoHide: 'leave',
        scrollbarClickScroll: true,
    };
    document.addEventListener('DOMContentLoaded', function () {
        const sidebarWrapper = document.querySelector(SELECTOR_SIDEBAR_WRAPPER);
        if (sidebarWrapper && OverlayScrollbarsGlobal?.OverlayScrollbars !== undefined) {
            OverlayScrollbarsGlobal.OverlayScrollbars(sidebarWrapper, {
                scrollbars: {
                    theme: Default.scrollbarTheme,
                    autoHide: Default.scrollbarAutoHide,
                    clickScroll: Default.scrollbarClickScroll,
                },
            });
        }
    });
</script>
<!--end::OverlayScrollbars Configure-->
<!--end::Script-->
</body>
<!--end::Body-->
</html>
