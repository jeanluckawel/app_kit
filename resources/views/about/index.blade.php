@extends('layoutsddd.app')

@section('title','À propos - KIT SERVICES')


@section('content')


    <div class="container">


        <div class="text-center mt-5">


{{--            --}}{{-- LOGO --}}
{{--            <div class="mb-3">--}}

{{--                <img src="{{ asset('logo/img.png') }}"--}}
{{--                     alt="KIT SERVICES"--}}
{{--                     style="--}}
{{--                    width:120px;--}}
{{--                    height:120px;--}}
{{--                    object-fit:contain;--}}
{{--                 ">--}}

{{--            </div>--}}



{{--            <h3 class="fw-bold">--}}

{{--                KIT SERVICES--}}

{{--            </h3>--}}


{{--            <p class="text-muted">--}}

{{--                Application de gestion des employés--}}

{{--            </p>--}}





            {{-- TABLEAU INFORMATIONS --}}

            <br>
            <br>

            <br>
            <br>

            <div class="row justify-content-center mt-10">


                <div class="col-md-6">


                    <table class="table table-bordered shadow-sm">


                        <tbody>



                        <tr>

                            <th width="40%">
                                Version
                            </th>

                            <td>
                                {{ $version }}
                            </td>

                        </tr>



                        <tr>

                            <th>
                                Code
                            </th>

                            <td>
                                e675RWEDTSAGCVBNMBXSAGX
                            </td>

                        </tr>




                        <tr>

                            <th>
                                Commit actuel
                            </th>

                            <td>
                                {{ $commit }}
                            </td>

                        </tr>




                        <tr>

                            <th>
                                Utilisateur
                            </th>

                            <td>
                                {{ $user }}
                            </td>

                        </tr>




                        <tr>

                            <th>
                                Date
                            </th>

                            <td>
                                {{ $date }}
                            </td>

                        </tr>



                        </tbody>


                    </table>


                </div>


            </div>





            <div class="mt-4 text-muted small">

                © {{ date('Y') }} KIT SERVICES

            </div>



        </div>


    </div>


@endsection
