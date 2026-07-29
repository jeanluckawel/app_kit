@extends('layoutsddd.app')

@section('title', 'Famille Employé - KIT SERVICES')

@section('content')

    <div class="container-fluid px-2 px-md-4 mt-3 mt-md-5">

        <div class="card mb-4 border-0"
             style="border-radius:0;">

            <div class="card-header d-flex align-items-center"
                 style="background-color:#FF6600;color:#fff;border-radius:0;">

                <h3 class="card-title mb-0 fs-5">
                    Famille de l'employé
                </h3>

            </div>


            <div class="card-body p-2 p-md-4">

                <div class="overflow-auto">

                    <ul class="nav nav-tabs mb-4 flex-nowrap"
                        style="white-space:nowrap;">


                        <li class="nav-item">

                            <button class="nav-link active"
                                    data-bs-toggle="tab"
                                    data-bs-target="#enfants"
                                    style="color:#FF6600;font-weight:500;border-radius:0;">

                                <i class="bi bi-people-fill me-1"></i>
                                Enfants

                            </button>

                        </li>

                        <li class="nav-item">

                            <button class="nav-link"
                                    data-bs-toggle="tab"
                                    data-bs-target="#dependants"
                                    style="color:#FF6600;font-weight:500;border-radius:0;">

                                <i class="bi bi-person-lines-fill me-1"></i>
                                Personnes à charge

                            </button>

                        </li>

                        <li class="nav-item">

                            <button class="nav-link"
                                    data-bs-toggle="tab"
                                    data-bs-target="#urgence"
                                    style="color:#FF6600;font-weight:500;border-radius:0;">

                                <i class="bi bi-telephone-fill me-1"></i>
                                Urgence

                            </button>

                        </li>


                    </ul>

                </div>

                <div class="tab-content">

                    <div class="tab-pane fade show active"
                         id="enfants">


                        <div class="table-responsive">


                            <table class="table table-bordered table-hover align-middle">


                                <thead style="background:#FF6600;color:white;">



                                <tr>

                                    <th width="15%">
                                        #
                                    </th>

                                    <th>
                                        Détail
                                    </th>

                                </tr>

                                </thead>

                                <tbody>
                                @forelse($employee->children as $child)

                                    <tr>
                                        <td>
                                            {{ $loop->iteration }}
                                        </td>

                                        <td>
                                            {{ $child->full_name }}
                                            -
                                            {{ \Carbon\Carbon::parse($child->date_of_birth)->age }} ans
                                            ({{ $child->gender == 'M' ? 'Masculin' : 'Féminin' }})
                                        </td>
                                    </tr>

                                @empty

                                    <tr>
                                        <td colspan="2">
                                            Aucun enfant enregistré
                                        </td>
                                    </tr>

                                @endforelse





                                </tbody>

                            </table>

                        </div>

                    </div>

                    <div class="tab-pane fade"
                         id="dependants">


                        <div class="table-responsive">

                            <table class="table table-bordered table-hover align-middle">

                                <thead style="background:#FF6600;color:white;">

                                <tr>
                                    <th width="15%">#</th>
                                    <th>Détail</th>
                                </tr>

                                </thead>


                                <tbody>

                                @forelse($employee->dependants as $dependant)

                                    <tr>

                                        <td>
                                            {{ $loop->iteration }}
                                        </td>

                                        <td>
                                            {{ $dependant->full_name }}
                                            -
                                            {{ $dependant->relationship }}
                                            -
                                            {{ $dependant->phone }}
                                        </td>

                                    </tr>

                                @empty

                                    <tr>
                                        <td colspan="2" class="text-center">
                                            Aucun dépendant enregistré
                                        </td>
                                    </tr>

                                @endforelse

                                </tbody>

                            </table>

                        </div>

                    </div>


                    <div class="tab-pane fade"
                         id="urgence">


                        <div class="table-responsive">


                            <table class="table table-bordered table-hover align-middle">


                                <thead style="background:#FF6600;color:white;">

                                <tr>

                                    <th width="15%">
                                        #
                                    </th>

                                    <th>
                                        Détail
                                    </th>

                                </tr>

                                </thead>


                                <tbody>


                                @if($employee->emergencies)

                                    <tr>

                                        <td>
                                            1
                                        </td>

                                        <td>
                                            {{ $employee->emergencies->full_name }}
                                            -
                                            {{ $employee->emergencies->relationship }}
                                            -
                                            {{ $employee->emergencies->phone }}
                                            -
                                            {{ $employee->emergencies->address }}
                                        </td>

                                    </tr>

                                @else

                                    <tr>
                                        <td colspan="2" class="text-center">
                                            Aucun contact d'urgence enregistré
                                        </td>
                                    </tr>

                                @endif


                                </tbody>


                            </table>


                        </div>


                    </div>

                </div>

            </div>

        </div>

    </div>

@endsection
