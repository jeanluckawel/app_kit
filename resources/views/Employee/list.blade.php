@extends('layoutsddd.app')

@section('title','Liste des employés')

@section('content')

    <div class="container-fluid p-5">

        <div class="row justify-content-center">

            <div class="col-md-12">

                <div class="card shadow-sm mb-4">

                    {{-- HEADER --}}
                    <div class="card-header d-flex align-items-center"
                         style="background:#FF6600;color:#fff;">


                        {{-- TITRE --}}
                        <h3 class="card-title mb-0">

                            <i class="bi bi-people-fill me-2"></i>

                            Liste des employés

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



                            {{-- AJOUT --}}
                            @can('employee_create')

                                <a href="{{ route('employee.create') }}"
                                   class="btn btn-light btn-sm fw-semibold"
                                   style="color:#FF6600;">

                                    <i class="bi bi-person-plus-fill me-1"></i>

                                    Ajouter

                                </a>

                            @endcan



                            {{-- SEPARATEUR --}}
                            <div style="height:25px;border-left:1px solid rgba(255,255,255,.5);"></div>



                            {{-- BREADCRUMB --}}
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



                                    <li class="breadcrumb-item active text-white"
                                        aria-current="page">

                                        Employés

                                    </li>


                                </ol>

                            </nav>


                        </div>


                    </div>

                    {{-- BODY --}}
                    <div class="card-body">


                        <div class="table-responsive">


                            <table class="table table-bordered table-hover align-middle"
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

                                            {{ $employees->firstItem()+$loop->index }}

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
                                                         style="width:45px;height:45px;background:#FF6600;color:white;font-weight:bold;">

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

                                            {{ $employee->age >= 1 ? $employee->age.' '.($employee->age > 1 ? 'ans' : 'an') : '-' }}

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


                                            @php

                                                $type = $employee->company?->contract_type;

                                                $endDate = $employee->company?->end_contract_date;

                                            @endphp



                                            @if(strtoupper($type)=='CDD')


                                                <span class="badge"
                                                      style="background:#FF6600;">


                                                {{ $type }}


                                                    @if($endDate)

                                                        ({{ \Carbon\Carbon::parse($endDate)->format('d/m/Y') }})

                                                    @endif


                                            </span>



                                            @elseif(strtoupper($type)=='CDI')


                                                <span class="badge bg-danger">

                                                {{ $type }}

                                            </span>



                                            @else

                                                -

                                            @endif


                                        </td>




                                        <td class="text-center">


                                            <div class="d-flex justify-content-center gap-1">


                                                @can('employee_view')

                                                    <a href="{{ route('employee.view',$employee->id) }}"
                                                       class="btn btn-outline-primary btn-sm action-btn view-btn">

                                                        <i class="bi bi-eye"></i>

                                                    </a>

                                                @endcan




                                                @can('employee_edit')

                                                    <a href="{{ route('employee.edit',$employee->id) }}"
                                                       class="btn btn-outline-warning btn-sm action-btn edit-btn">

                                                        <i class="bi bi-pencil-square"></i>

                                                    </a>

                                                @endcan




                                                @can('employee_disable')

                                                    <button
                                                        class="btn btn-outline-danger btn-sm action-btn delete-btn"
                                                        data-bs-toggle="modal"
                                                        data-bs-target="#disableEmployeeModal"
                                                        data-employee-id="{{ $employee->id }}">

                                                        <i class="bi bi-trash"></i>

                                                    </button>

                                                @endcan



                                            </div>


                                        </td>


                                    </tr>



                                @empty


                                    <tr>

                                        <td colspan="8"
                                            class="text-center">

                                            Aucun employé trouvé

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


        </div>


    </div>


    @include('Employee.Modal.disable')



    <style>


        /* Hover uniquement sur les icônes actions */

        .action-btn i{

            transition:0.3s;

        }



        .view-btn:hover i{

            color:#0d6efd;

            transform:scale(1.2);

        }



        .edit-btn:hover i{

            color:#ff9800;

            transform:scale(1.2);

        }



        .delete-btn:hover i{

            color:#dc3545;

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


                        let text=row.innerText.toLowerCase();



                        row.style.display =
                            text.includes(value)
                                ? ''
                                : 'none';



                    });


            });


    </script>


@endsection
