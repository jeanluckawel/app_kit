@extends('layoutsddd.app')

@section('title', 'Dashboard - KIT SERVICES')

@section('content')

    <div class="app-content">

        <div class="container-fluid">


            <!-- HEADER -->
            <div class="app-content-header">

                <h3>
                    Tableau de bord
                </h3>

                <p>
                    Bienvenue {{ auth()->user()->name }}
                </p>

            </div>


            <div class="row g-3">

                <div class="col-md-3">

                    <a href="{{ route('employee.portail.payroll') }}"
                       class="text-decoration-none">


                        <div class="info-box shadow-sm">


                        <span class="info-box-icon text-bg-warning">

                            <i class="bi bi-person-circle"></i>

                        </span>


                            <div class="info-box-content">


                            <span class="info-box-text">
                                Profil
                            </span>


                                <span>
                                Mes informations
                            </span>


                            </div>


                        </div>


                    </a>


                </div>


                <div class="col-md-3">

                    <a href="{{ route('employee.portail.payroll') }}"
                       class="text-decoration-none">


                        <div class="info-box shadow-sm">


                        <span class="info-box-icon text-bg-success">

                            <i class="bi bi-wallet2"></i>

                        </span>


                            <div class="info-box-content">


                            <span class="info-box-text">
                                Paie
                            </span>


                                <span class="info-box-number">

                                {{ $salary ?? '0' }} USD

                            </span>


                            </div>


                        </div>


                    </a>


                </div>



                <div class="col-md-3">


                    <a href="{{ route('employee.portail.payroll') }}"
                       class="text-decoration-none">


                        <div class="info-box shadow-sm">


                        <span class="info-box-icon text-bg-primary">

                            <i class="bi bi-file-earmark-text"></i>

                        </span>


                            <div class="info-box-content">


                            <span class="info-box-text">
                                Contrat
                            </span>


                                <span class="info-box-number">

                                {{ $contract ?? 'Aucun' }}

                            </span>


                            </div>


                        </div>


                    </a>


                </div>



                <div class="col-md-3">


                    <a href="{{ route('employee.portail.family') }}"
                       class="text-decoration-none">


                        <div class="info-box shadow-sm">


                        <span class="info-box-icon text-bg-danger">

                            <i class="bi bi-people"></i>

                        </span>


                            <div class="info-box-content">


                            <span class="info-box-text">
                                Famille
                            </span>


                                <span class="info-box-number">

                                {{ $childrenCount ?? 0 }} enfants

                            </span>


                            </div>


                        </div>


                    </a>


                </div>


            </div>


            <div class="card mt-4 shadow-sm">


                <div class="card-header">

                    <h5 class="mb-0">
                        Mes services
                    </h5>

                </div>



                <div class="card-body p-0">


                    <div class="table-responsive">


                        <table class="table table-bordered table-hover mb-0">


                            <thead style="background:#FF6600;color:white;">


                            <tr>

                                <th width="10%">
                                    #
                                </th>


                                <th>
                                    Service
                                </th>


                                <th>
                                    Description
                                </th>


                                <th width="15%">
                                    Action
                                </th>


                            </tr>


                            </thead>



                            <tbody>



                            <tr>

                                <td>
                                    1
                                </td>


                                <td>
                                    Profil
                                </td>


                                <td>
                                    Consulter mes informations personnelles
                                </td>


                                <td>

                                    <a href="{{ route('employee.portail.payroll') }}"
                                       class="btn btn-sm btn-warning">

                                        <i class="bi bi-eye"></i>

                                    </a>

                                </td>


                            </tr>


                            <tr>

                                <td>
                                    2
                                </td>


                                <td>
                                    Paie
                                </td>


                                <td>
                                    Consulter mes fiches de paie
                                </td>


                                <td>

                                    <a href="{{ route('employee.portail.payroll') }}"
                                       class="btn btn-sm btn-success">

                                        <i class="bi bi-eye"></i>

                                    </a>

                                </td>


                            </tr>





                            <tr>

                                <td>
                                    3
                                </td>


                                <td>
                                    Contrat
                                </td>


                                <td>
                                    Consulter mes informations contractuelles
                                </td>


                                <td>

                                    <a href="{{ route('employee.portail.payroll') }}"
                                       class="btn btn-sm btn-primary">

                                        <i class="bi bi-eye"></i>

                                    </a>

                                </td>


                            </tr>





                            <tr>

                                <td>
                                    4
                                </td>


                                <td>
                                    Documents
                                </td>


                                <td>
                                    Télécharger mes documents
                                </td>


                                <td>

                                    <a href="{{ route('employee.portail.payroll') }}"
                                       class="btn btn-sm btn-info">

                                        <i class="bi bi-eye"></i>

                                    </a>

                                </td>


                            </tr>





                            <tr>

                                <td>
                                    5
                                </td>


                                <td>
                                    Famille
                                </td>


                                <td>
                                    Voir enfants et personnes liées
                                </td>


                                <td>

                                    <a href="{{ route('employee.portail.family') }}"
                                       class="btn btn-sm btn-danger">

                                        <i class="bi bi-eye"></i>

                                    </a>

                                </td>


                            </tr>




                            <tr>

                                <td>
                                    6
                                </td>


                                <td>
                                    Paramètres
                                </td>


                                <td>
                                    Modifier mes préférences
                                </td>


                                <td>

                                    <a href="{{ route('employee.portail.payroll') }}"
                                       class="btn btn-sm btn-secondary">

                                        <i class="bi bi-eye"></i>

                                    </a>

                                </td>


                            </tr>



                            </tbody>


                        </table>


                    </div>


                </div>


            </div>



        </div>

    </div>

@endsection
