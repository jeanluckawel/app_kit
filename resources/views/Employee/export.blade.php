@extends('layoutsddd.app')

@section('title','Export des employés - KIT SERVICES')

@section('content')

    <div class="container-fluid p-5">


        <div class="card shadow-sm mb-4">



            {{-- HEADER --}}
            <div class="card-header d-flex align-items-center"
                 style="background:#FF6600;color:#fff;">


                {{-- TITRE --}}
                <h3 class="card-title mb-0">


                    <i class="bi bi-file-earmark-excel-fill me-2"></i>


                    Exportation des employés



                </h3>





                {{-- BREADCRUMB --}}
                <div class="card-tools ms-auto">


                    <nav aria-label="breadcrumb">


                        <ol class="breadcrumb mb-0">


                            @can('dashboard')


                                <li class="breadcrumb-item">


                                    <a href="{{ route('dashboard') }}"
                                       class="text-white text-decoration-none">


                                        <i class="bi bi-house-door-fill me-1"></i>


                                        Tableau de bord


                                    </a>


                                </li>


                            @endcan





                            @can('employee_list')


                                <li class="breadcrumb-item">


                                    <a href="{{ route('employee.list') }}"
                                       class="text-white text-decoration-none">


                                        Employés


                                    </a>


                                </li>


                            @endcan





                            <li class="breadcrumb-item active text-white">


                                Exportation


                            </li>



                        </ol>


                    </nav>


                </div>



            </div>








            {{-- BODY --}}
            <div class="card-body">





                <form action="{{ route('employee.export') }}"
                      method="GET"
                      autocomplete="off">





                    <div class="row g-3">






                        {{-- Genre --}}

                        <div class="col-md-3">


                            <label class="form-label fw-bold">

                                Genre

                            </label>




                            <select name="gender"
                                    class="form-select"
                                    style="border-radius:0;">



                                <option value="">
                                    Tous
                                </option>




                                <option value="M"
                                    {{ request('gender') == 'M' ? 'selected' : '' }}>

                                    Masculin

                                </option>





                                <option value="F"
                                    {{ request('gender') == 'F' ? 'selected' : '' }}>

                                    Féminin

                                </option>



                            </select>



                        </div>







                        {{-- CONTRAT --}}

                        <div class="col-md-3">



                            <label class="form-label fw-bold">

                                Type de contrat

                            </label>





                            <select name="contract_type"
                                    class="form-select"
                                    style="border-radius:0;">



                                <option value="">
                                    Tous
                                </option>





                                <option value="CDD"
                                    {{ request('contract_type') == 'CDD' ? 'selected' : '' }}>

                                    CDD

                                </option>





                                <option value="CDI"
                                    {{ request('contract_type') == 'CDI' ? 'selected' : '' }}>

                                    CDI

                                </option>



                            </select>




                        </div>








                        {{-- STATUT --}}

                        <div class="col-md-3">



                            <label class="form-label fw-bold">

                                Statut

                            </label>





                            <select name="status"
                                    class="form-select"
                                    style="border-radius:0;">





                                <option value="">
                                    Tous
                                </option>





                                <option value="1"
                                    {{ request('status') === '1' ? 'selected' : '' }}>

                                    Actif

                                </option>





                                <option value="0"
                                    {{ request('status') === '0' ? 'selected' : '' }}>

                                    Inactif

                                </option>





                            </select>



                        </div>





                    </div>









                    {{-- BUTTONS --}}

                    <div class="mt-4 d-flex justify-content-end gap-2">





                        <a href="{{ route('employee.list') }}"
                           class="btn btn-secondary">



                            <i class="bi bi-arrow-left me-1"></i>



                            Annuler



                        </a>








                        <button type="submit"
                                class="btn"
                                style="background:#FF6600;color:white;">





                            <i class="bi bi-file-earmark-excel me-1"></i>




                            Exporter





                        </button>





                    </div>





                </form>





            </div>




        </div>



    </div>


@endsection
