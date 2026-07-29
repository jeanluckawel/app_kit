@extends('layoutsddd.app')

@section('title', 'Mettre à jour votre mot de passe')

@section('content')

    <div class="container-fluid px-3 px-md-5 mt-4">


        <div class="card border-0 shadow-sm">

            <div class="card-header text-white"
                 style="background:#FF6600;">

                <h5 class="mb-0">
                    <i class="bi bi-key-fill me-2"></i>
                    Mettre à jour votre mot de passe
                </h5>

            </div>


            <div class="card-body">


                <div class="alert alert-warning">

                    <i class="bi bi-exclamation-triangle-fill me-2"></i>

                    Pour votre sécurité, vous devez modifier votre mot de passe avant de continuer.

                </div>



                @if($errors->any())

                    <div class="alert alert-danger">

                        @foreach($errors->all() as $error)

                            <div>
                                {{ $error }}
                            </div>

                        @endforeach

                    </div>

                @endif



                @if(session('success'))

                    <div class="alert alert-success">

                        {{ session('success') }}

                    </div>

                @endif




                <form method="POST" action="{{ route('password.update') }}">

                    @csrf



                    <div class="row">


                        <div class="col-md-6 mb-3">

                            <label class="form-label fw-bold">

                                Nouveau mot de passe

                            </label>


                            <div class="input-group">


                                <input
                                    type="password"
                                    name="password"
                                    id="password"
                                    class="form-control"
                                    required
                                >


                                <span class="input-group-text">

                                <i class="bi bi-eye"
                                   id="togglePassword"
                                   style="cursor:pointer;">
                                </i>

                            </span>


                            </div>


                        </div>




                        <div class="col-md-6 mb-3">


                            <label class="form-label fw-bold">

                                Confirmer le mot de passe

                            </label>


                            <input
                                type="password"
                                name="password_confirmation"
                                class="form-control"
                                required
                            >


                        </div>


                    </div>



                    <button
                        type="submit"
                        class="btn text-white"
                        style="background:#FF6600;">

                        <i class="bi bi-check-circle me-1"></i>

                        Mettre à jour le mot de passe

                    </button>



                </form>


            </div>


        </div>


    </div>



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


@endsection
