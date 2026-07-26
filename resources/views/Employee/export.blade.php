@extends('layoutsddd.app')

@section('title', 'Import Employees - KIT SERVICES')

@section('content')

    <div class="container-fluid p-5">

        <div class="card shadow-sm mb-4">


            {{-- HEADER --}}
            <div class="card-header d-flex align-items-center"
                 style="background:#FF6600;color:#fff;">


                {{-- TITRE --}}
                <h3 class="card-title mb-0">

                    <i class="bi bi-file-earmark-excel-fill me-2"></i>

                    Import Employees from Excel

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

                                Import

                            </li>


                        </ol>

                    </nav>


                </div>


            </div>





            {{-- BODY --}}
            <div class="card-body">


                <form action="{{ route('employee.import.store') }}"
                      method="POST"
                      enctype="multipart/form-data"
                      autocomplete="off">


                    @csrf



                    <div class="row g-3">


                        <div class="col-md-6">


                            <label for="file"
                                   class="form-label fw-bold">

                                Choose Excel File

                                <span class="text-danger">*</span>

                            </label>



                            <input
                                type="file"
                                name="file"
                                id="file"
                                class="form-control"
                                required>



                            @error('file')

                            <span class="text-danger small">

                                {{ $message }}

                            </span>

                            @enderror



                        </div>


                    </div>





                    <div class="mt-4 d-flex justify-content-end gap-2">


                        <a href="{{ route('employee.list') }}"
                           class="btn btn-secondary">


                            <i class="bi bi-arrow-left me-1"></i>

                            Cancel


                        </a>




                        <button type="submit"
                                class="btn btn-success">


                            <i class="bi bi-upload me-1"></i>

                            Import


                        </button>


                    </div>



                </form>


            </div>



        </div>


    </div>


@endsection
