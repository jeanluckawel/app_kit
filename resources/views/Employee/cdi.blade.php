@extends('layoutsddd.app')

@section('title', 'CDI Contracts - KIT SERVICES')

@section('content')

    <div class="container-fluid p-5">

        <div class="card shadow-sm mb-4">


            {{-- HEADER --}}
            <div class="card-header d-flex align-items-center"
                 style="background:#FF6600;color:#fff;">


                {{-- TITRE --}}
                <h3 class="card-title mb-0">

                    <i class="bi bi-person-badge-fill me-2"></i>

                    CDI Contracts

                </h3>




                {{-- OUTILS --}}
                <div class="card-tools ms-auto d-flex align-items-center gap-2">


                    {{-- SEARCH --}}
                    <input
                        type="text"
                        id="searchEmployee"
                        class="form-control form-control-sm"
                        style="width:230px;"
                        placeholder="Search by Employee and full name">





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

                                        Home

                                    </a>

                                </li>

                            @endcan




                            @can('employee_list')

                                <li class="breadcrumb-item">

                                    <a href="{{ route('employee.list') }}"
                                       class="text-white text-decoration-none">

                                        Employees

                                    </a>

                                </li>

                            @endcan




                            <li class="breadcrumb-item active text-white">

                                CDI Contracts

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

                            <th>Employee</th>

                            <th>Department</th>

                            <th>Age</th>

                            <th>Salary</th>

                            <th>Hire Date</th>

                            <th>Contract</th>

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
                                                height="45"
                                                alt="Photo">


                                        @else


                                            <div class="rounded-circle d-flex justify-content-center align-items-center"
                                                 style="width:45px;height:45px;background:#FF6600;color:#fff;font-weight:bold;font-size:16px;">

                                                {{ $initials }}

                                            </div>


                                        @endif





                                        <div>


                                            <strong>

                                                {{ $employee->first_name }}

                                            </strong>


                                            <br>


                                            <small>

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

                                        {{ number_format($employee->salaries->base_salary ?? 0,2) }}

                                    </strong>


                                </td>





                                <td>

                                    {{ $employee->company?->hire_date ?? 'N/A' }}

                                </td>





                                <td>


                                <span class="badge"
                                      style="background:#dc3545;">

                                    {{ $employee->company?->contract_type }}

                                </span>


                                </td>





                                <td class="text-center">


                                    <div class="d-flex justify-content-center gap-1">



                                        @can('employee_view')

                                            <a href="{{ route('employee.view',$employee->id) }}"
                                               class="btn btn-outline-primary btn-sm action-btn">

                                                <i class="bi bi-eye"></i>

                                            </a>

                                        @endcan






                                        @can('employee_edit')

                                            <a href="{{ route('employee.edit',$employee->id) }}"
                                               class="btn btn-outline-warning btn-sm action-btn">

                                                <i class="bi bi-pencil-square"></i>

                                            </a>

                                        @endcan






                                        @can('employee_disable')

                                            <button
                                                class="btn btn-outline-danger btn-sm action-btn"
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

                                    No CDI Contracts found

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


                        let text=row.innerText.toLowerCase();



                        row.style.display =
                            text.includes(value)
                                ? ''
                                : 'none';



                    });



            });


    </script>



@endsection
