@extends('layoutsddd.app')

@section('title','Mes fiches de paie')

@section('content')

    <div class="container-fluid p-4">

        <div class="card shadow-sm border-0">


            <div class="card-header"
                 style="background:#FF6600;color:white;">

                <h5 class="mb-0">

                    <i class="bi bi-wallet2 me-2"></i>

                    Historique de mes paies

                </h5>

            </div>



            <div class="card-body">


                <div class="table-responsive">


                    <table class="table table-bordered table-hover align-middle">


                        <thead class="table-light">

                        <tr>

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

                                <a href="#"
                                   class="btn btn-outline-success btn-sm"
                                   title="Télécharger">

                                    <i class="bi bi-download"></i>

                                </a>

                            </td>

                        </tr>



                        <tr>

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

                                <a href="#"
                                   class="btn btn-outline-success btn-sm"
                                   title="Télécharger">

                                    <i class="bi bi-download"></i>

                                </a>

                            </td>

                        </tr>


                        </tbody>


                    </table>


                </div>


            </div>


        </div>


    </div>


@endsection
