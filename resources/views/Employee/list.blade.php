@extends('layoutsddd.app')

@section('title','Historique des paies')

@section('content')

    <div class="container-fluid p-5">


        <div class="row justify-content-center">


            <div class="col-md-12">


                <div class="card shadow-sm mb-4">


                    {{-- HEADER --}}
                    <div class="card-header d-flex align-items-center"
                         style="background:#FF6600;color:#fff;">


                        <h3 class="card-title mb-0">

                            <i class="bi bi-wallet-fill me-2"></i>

                            Historique des paies

                        </h3>



                        <div class="card-tools ms-auto d-flex align-items-center gap-2">


                            <input
                                type="text"
                                id="searchPayroll"
                                class="form-control form-control-sm"
                                style="width:230px;"
                                placeholder="Rechercher une paie...">



                            <div style="height:25px;border-left:1px solid rgba(255,255,255,.5);"></div>



                            <nav aria-label="breadcrumb">

                                <ol class="breadcrumb mb-0">


                                    <li class="breadcrumb-item">

                                        <a href="#"
                                           class="text-white text-decoration-none">

                                            <i class="bi bi-house-door-fill me-1"></i>

                                            Tableau de bord

                                        </a>

                                    </li>



                                    <li class="breadcrumb-item active text-white">

                                        Paies

                                    </li>


                                </ol>

                            </nav>


                        </div>


                    </div>





                    {{-- BODY --}}
                    <div class="card-body">


                        <div class="table-responsive">


                            <table class="table table-bordered table-hover align-middle"
                                   id="payrollTable">


                                <thead class="table-light">


                                <tr>

                                    <th>
                                        #
                                    </th>


                                    <th>
                                        Employé
                                    </th>


                                    <th>
                                        Mois
                                    </th>


                                    <th>
                                        Salaire de base
                                    </th>


                                    <th>
                                        Prime
                                    </th>


                                    <th>
                                        Retenue
                                    </th>


                                    <th>
                                        Net à payer
                                    </th>


                                    <th class="text-center">
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

                                        <strong>
                                            Jean Luc Kawel A Mbumb
                                        </strong>

                                        <br>

                                        <small class="text-muted">
                                            EMP001
                                        </small>

                                    </td>



                                    <td>
                                        Janvier 2026
                                    </td>



                                    <td>
                                        500 000 FC
                                    </td>



                                    <td>
                                        50 000 FC
                                    </td>



                                    <td>
                                        0 FC
                                    </td>



                                    <td>

                                        <strong>
                                            550 000 FC
                                        </strong>

                                    </td>



                                    <td class="text-center">

                                        <div class="d-flex justify-content-center gap-1">


                                            <a href="#"
                                               class="btn btn-outline-primary btn-sm action-btn view-btn"
                                               title="Voir">

                                                <i class="bi bi-eye"></i>

                                            </a>



                                            <a href="#"
                                               class="btn btn-outline-success btn-sm action-btn download-btn"
                                               title="Télécharger">

                                                <i class="bi bi-download"></i>

                                            </a>


                                        </div>

                                    </td>


                                </tr>




                                <tr>


                                    <td>
                                        2
                                    </td>


                                    <td>

                                        <strong>
                                            Jean Luc Kawel A Mbumb
                                        </strong>

                                        <br>

                                        <small class="text-muted">
                                            EMP001
                                        </small>

                                    </td>



                                    <td>
                                        Décembre 2025
                                    </td>



                                    <td>
                                        500 000 FC
                                    </td>



                                    <td>
                                        0 FC
                                    </td>



                                    <td>
                                        20 000 FC
                                    </td>



                                    <td>

                                        <strong>
                                            480 000 FC
                                        </strong>

                                    </td>



                                    <td class="text-center">


                                        <div class="d-flex justify-content-center gap-1">


                                            <a href="#"
                                               class="btn btn-outline-primary btn-sm action-btn view-btn">

                                                <i class="bi bi-eye"></i>

                                            </a>



                                            <a href="#"
                                               class="btn btn-outline-success btn-sm action-btn download-btn">

                                                <i class="bi bi-download"></i>

                                            </a>


                                        </div>


                                    </td>


                                </tr>


                                </tbody>


                            </table>


                        </div>


                    </div>



                    {{-- FOOTER --}}
                    <div class="card-footer clearfix">

                        <div class="float-end">

                            Pagination

                        </div>

                    </div>



                </div>


            </div>


        </div>


    </div>




    <style>


        .action-btn i{

            transition:0.3s;

        }


        .view-btn:hover i{

            color:#0d6efd;

            transform:scale(1.2);

        }


        .download-btn:hover i{

            color:#198754;

            transform:scale(1.2);

        }


    </style>



    <script>

        document
            .getElementById('searchPayroll')
            .addEventListener('keyup',function(){


                let value=this.value.toLowerCase();



                document
                    .querySelectorAll('#payrollTable tbody tr')
                    .forEach(function(row){


                        let text=row.innerText.toLowerCase();


                        row.style.display =
                            text.includes(value)
                                ? ''
                                : 'none';


                    });


            });


    </script>


@endsection
