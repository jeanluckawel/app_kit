@extends('layoutsddd.app')

@section('title', 'Profil Employé - KIT SERVICES')

@section('content')

    <div class="container-fluid px-2 px-md-4 mt-3 mt-md-5">


        <div class="card mb-4 border-0"
             style="border-radius:0;">

            <div class="card mb-4 border-0" style="border-radius:0;">

                <div class="card-body p-2"
                     style="background:#FF6600;color:white;">

                </div>

            </div>

            <div class="card-body p-2 p-md-4">


                <div class="overflow-auto">


                    <ul class="nav nav-tabs mb-4 flex-nowrap"
                        style="white-space:nowrap;">



                        <li class="nav-item">


                            <button class="nav-link active"
                                    data-bs-toggle="tab"
                                    data-bs-target="#profil"
                                    style="color:#FF6600;font-weight:500;border-radius:0;">


                                <i class="bi bi-person-fill me-1"></i>

                                Profil


                            </button>


                        </li>

                        <li class="nav-item">


                            <button class="nav-link"
                                    data-bs-toggle="tab"
                                    data-bs-target="#password"
                                    style="color:#FF6600;font-weight:500;border-radius:0;">


                                <i class="bi bi-key-fill me-1"></i>

                                Mot de passe


                            </button>


                        </li>

                    </ul>


                </div>


                <div class="tab-content">

                    <div class="tab-pane fade show active" id="profil">

                        <div class="row">


                            <div class="col-md-6">

                                <h5 class="p-2 text-white" style="background:#FF6600;">
                                    Informations personnelles
                                </h5>

                                <table class="table table-bordered table-hover align-middle">

                                    <tbody>

                                    <tr>
                                        <td><strong>Nom complet</strong></td>
                                        <td>Jean Luc Kawel A Mbumb</td>
                                    </tr>

                                    <tr>
                                        <td><strong>Sexe</strong></td>
                                        <td>Masculin</td>
                                    </tr>

                                    <tr>
                                        <td><strong>Date de naissance</strong></td>
                                        <td>15/03/1995</td>
                                    </tr>

                                    <tr>
                                        <td><strong>Numéro carte</strong></td>
                                        <td>NN338638245</td>
                                    </tr>

                                    <tr>
                                        <td><strong>Pays</strong></td>
                                        <td>République Démocratique du Congo</td>
                                    </tr>

                                    </tbody>

                                </table>

                            </div>


                            <div class="col-md-6">

                                <h5 class="p-2 text-white" style="background:#FF6600;">
                                    Informations complémentaires
                                </h5>

                                <table class="table table-bordered table-hover align-middle">

                                    <tbody>

                                    <tr>
                                        <td><strong>Situation familiale</strong></td>
                                        <td>Célibataire</td>
                                    </tr>

                                    <tr>
                                        <td><strong>Téléphone</strong></td>
                                        <td>+243 974 453 545</td>
                                    </tr>

                                    <tr>
                                        <td><strong>Email</strong></td>
                                        <td>agent@kitservices.com</td>
                                    </tr>

                                    <tr>
                                        <td><strong>Adresse</strong></td>
                                        <td>Kolwezi, Lualaba</td>
                                    </tr>

                                    </tbody>

                                </table>

                            </div>


                        </div>

                    </div>


                    <div class="tab-pane fade" id="password" role="tabpanel">

                        <div class="row g-3">

                            <div class="col-md-4">
                                <label class="form-label fw-bold">
                                    Ancien mot de passe <span class="text-danger">*</span>
                                </label>

                                <input type="password"
                                       name="old_password"
                                       class="form-control"
                                       required
                                       style="border-radius:0;">
                            </div>


                            <div class="col-md-4">
                                <label class="form-label fw-bold">
                                    Nouveau mot de passe <span class="text-danger">*</span>
                                </label>

                                <input type="password"
                                       name="new_password"
                                       class="form-control"
                                       required
                                       style="border-radius:0;">
                            </div>


                            <div class="col-md-4">
                                <label class="form-label fw-bold">
                                    Confirmation <span class="text-danger">*</span>
                                </label>

                                <input type="password"
                                       name="confirm_password"
                                       class="form-control"
                                       required
                                       style="border-radius:0;">
                            </div>


                            <div class="col-md-12 mt-3">

                                <button type="submit"
                                        class="btn"
                                        style="background:#FF6600;color:white;border-radius:0;">

                                    Modifier

                                </button>

                            </div>

                        </div>

                    </div>
                    </div>
                </div>

            </div>

    </div>


@endsection
