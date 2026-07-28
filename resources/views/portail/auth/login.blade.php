<!doctype html>
<html lang="fr">

<head>
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>

    <title>Portail Employé - KIT SERVICES SARL</title>

    <link rel="icon" href="{{ asset('logo/img.png') }}" type="image/png"/>

    <link rel="stylesheet" href="{{ asset('css/adminlte.css') }}"/>

    <link
        rel="stylesheet"
        href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.13.1/font/bootstrap-icons.min.css"
    />

</head>


<body class="login-page bg-body-secondary">


<div class="login-box">

    <div class="card">

        <div class="card-body login-card-body">


            <div class="login-logo d-flex justify-content-center align-items-center mb-3">

                <img
                    src="{{ asset('logo/img.png') }}"
                    alt="Kit Services Logo"
                    class="me-2"
                    style="height:80px;"
                >

                <span class="fs-4 fw-bold">
                    Kit Services
                </span>

            </div>



            <p class="login-box-msg text-center">
                Portail Employé
            </p>




            @if(session('status'))

                <div class="alert alert-success">

                    {{ session('status') }}

                </div>

            @endif



            <form method="POST" action="{{ route('employee.login.store') }}">

                @csrf



                {{-- Matricule --}}

                <div class="input-group mb-3">


                    <input
                        type="text"
                        name="employee_id"
                        class="form-control"
                        placeholder="Matricule"
                        value="{{ old('employee_id') }}"
                        required
                        autofocus
                    >


                    <div class="input-group-text">

                        <span class="bi bi-person-badge text-primary"></span>

                    </div>


                </div>


                @error('employee_id')

                <span class="text-danger small">

                        {{ $message }}

                    </span>

                @enderror





                {{-- Password --}}

                <div class="input-group mb-3">


                    <input
                        type="password"
                        name="password"
                        id="password"
                        class="form-control"
                        placeholder="Mot de passe"
                        required
                    >


                    <div class="input-group-text">

                        <span class="bi bi-lock-fill"></span>


                        <i
                            class="bi bi-eye-slash ms-2"
                            id="togglePassword"
                            style="cursor:pointer;"
                        ></i>


                    </div>


                </div>



                @error('password')

                <span class="text-danger small">

                        {{ $message }}

                    </span>

                @enderror





                <div class="row mb-3">


                    <div class="col-8 d-flex align-items-center">


                        <div class="form-check">


                            <input
                                class="form-check-input"
                                type="checkbox"
                                name="remember"
                                id="remember"
                            >


                            <label
                                class="form-check-label"
                                for="remember"
                            >

                                Se souvenir de moi

                            </label>


                        </div>


                    </div>





                    <div class="col-4 d-grid">


                        <button
                            type="submit"
                            class="btn btn-primary"
                        >

                            Connexion

                        </button>


                    </div>


                </div>


            </form>




            <p class="mb-1 text-center">

                <a href="mailto:support@kitservices.com">

                    Besoin d'aide ?

                </a>

            </p>



        </div>

    </div>

</div>





<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.7/dist/js/bootstrap.bundle.min.js"></script>

<script src="{{ asset('js/adminlte.js') }}"></script>




<script>

    const togglePassword = document.querySelector('#togglePassword');

    const password = document.querySelector('#password');


    togglePassword.addEventListener('click', function () {


        const type = password.getAttribute('type') === 'password'
            ? 'text'
            : 'password';


        password.setAttribute('type', type);


        this.classList.toggle('bi-eye');

        this.classList.toggle('bi-eye-slash');


    });

</script>


</body>

</html>
