@extends('layoutsddd.app')

@section('title','Contrats CDD - KIT SERVICES')

@section('content')

    <div class="container-fluid p-5">

        <div class="card shadow-sm mb-4">


            {{-- HEADER --}}
            <div class="card-header d-flex align-items-center"
                 style="background:#FF6600;color:#fff;">


                {{-- TITRE --}}
                <h3 class="card-title mb-0">

                    <i class="bi bi-file-earmark-text-fill me-2"></i>

                    Contrats CDD

                </h3>



                {{-- OUTILS --}}
                <div class="card-tools ms-auto d-flex align-items-center gap-2">


                    {{-- RECHERCHE --}}
                    <input
                        type="text"
                        id="searchEmployee"
                        class="form-control form-control-sm"
                        style="width:230px;"
                        placeholder="Rechercher un employé...">



                    {{-- BREADCRUMB --}}
                    <div style="height:25px;border-left:1px solid rgba(255,255,255,.5);"></div>


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

                                Contrats CDD

                            </li>


                        </ol>

                    </nav>


                </div>


            </div>




            {{-- BODY --}}
            <div class="card-body">


                <div class="table-responsive">


                    <table class="table table-bordered table-hover align-middle text-nowrap"
                           id="employeeTable">


                        <thead class="table-light">

                        <tr>

                            <th>#</th>

                            <th>Employé</th>

                            <th>Département</th>

                            <th>Âge</th>

                            <th>Salaire</th>

                            <th>Date d'embauche</th>

                            <th>Contrat</th>

                            <th class="text-center">
                                Actions
                            </th>

                        </tr>

                        </thead>



                        <tbody>


                        @forelse($employees as $employee)


                            <tr>


                                <td>

                                    {{ $loop->iteration }}

                                </td>



                                <td>


                                    <div class="d-flex align-items-center gap-2">


                                        @php

                                            $initials =
                                            strtoupper(
                                                substr($employee->first_name,0,1)
                                                .
                                                substr($employee->last_name,0,1)
                                            );

                                        @endphp



                                        @if($employee->photo)


                                            <img
                                                src="{{ asset('storage/'.$employee->photo) }}"
                                                class="rounded-circle"
                                                width="45"
                                                height="45">


                                        @else


                                            <div class="rounded-circle d-flex justify-content-center align-items-center"
                                                 style="width:45px;height:45px;background:#FF6600;color:#fff;font-weight:bold;">

                                                {{ $initials }}

                                            </div>


                                        @endif



                                        <div>


                                            <strong>

                                                {{ $employee->first_name }}
                                                {{ $employee->last_name }}

                                            </strong>


                                            <br>


                                            <small class="text-muted">

                                                {{ $employee->employee_id }}

                                            </small>


                                        </div>


                                    </div>


                                </td>




                                <td>

                                    {{ $employee->company?->departmentRelation?->name ?? 'N/A' }}

                                </td>




                                <td>

                                    {{ $employee->age }} ans

                                </td>




                                <td>

                                    <strong>

                                        {{ number_format($employee->salaries->base_salary ?? 0,2,',',' ') }}

                                    </strong>

                                </td>




                                <td>

                                    {{ $employee->company?->hire_date ?? 'N/A' }}

                                </td>




                                <td>


                                <span class="badge"
                                      style="background:#FF6600;">

                                    {{ $employee->company?->contract_type }}

                                </span>


                                </td>




                                <td class="text-center">


                                    <div class="d-flex justify-content-center gap-1">



                                        <a href="{{ route('employee.view',$employee->id) }}"
                                           class="btn btn-outline-primary btn-sm action-btn">

                                            <i class="bi bi-eye"></i>

                                        </a>




                                        <a href="{{ route('employee.edit',$employee->id) }}"
                                           class="btn btn-outline-warning btn-sm action-btn">

                                            <i class="bi bi-pencil-square"></i>

                                        </a>




                                        <a href="{{ route('employee.fin.contract',$employee->id) }}"
                                           class="btn btn-outline-danger btn-sm action-btn">

                                            <i class="bi bi-calendar-x"></i>

                                        </a>




                                        <a href="{{ route('employee.certificat',$employee->id) }}"
                                           class="btn btn-outline-success btn-sm action-btn">

                                            <i class="bi bi-file-earmark-check"></i>

                                        </a>




                                        <button
                                            class="btn btn-outline-danger btn-sm action-btn"
                                            data-bs-toggle="modal"
                                            data-bs-target="#disableEmployeeModal"
                                            data-employee-id="{{ $employee->id }}">


                                            <i class="bi bi-trash"></i>


                                        </button>



                                    </div>


                                </td>



                            </tr>



                        @empty


                            <tr>

                                <td colspan="8"
                                    class="text-center">

                                    Aucun contrat CDD trouvé

                                </td>

                            </tr>


                        @endforelse


                        </tbody>


                    </table>


                </div>


            </div>





            {{-- FOOTER --}}
            <div class="card-footer clearfix">


                <div class="float-end">

                    {{ $employees->links('pagination::bootstrap-5') }}

                </div>


            </div>



        </div>


    </div>



    @include('Employee.Modal.disable')



    <style>

        .action-btn i{

            transition:.3s;

        }


        .action-btn:hover i{

            transform:scale(1.2);

        }


    </style>



    <script>


        document
            .getElementById('searchEmployee')
            .addEventListener('keyup',function(){


                let value=this.value.toLowerCase();



                document
                    .querySelectorAll('#employeeTable tbody tr')
                    .forEach(function(row){


                        row.style.display =
                            row.innerText.toLowerCase().includes(value)
                                ? ''
                                : 'none';


                    });


            });


    </script>


@endsection
