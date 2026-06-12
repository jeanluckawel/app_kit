@extends('layoutsddd.app')

@section('title', 'Flour Voucher - KIT SERVICES')

@section('content')

    <div class="card mb-4 m-5 border-0" style="border-radius:0;">

        <!-- Header -->
        <div class="card-header d-flex align-items-center"
             style="background-color:#FF6600;color:white;border-radius:0;">
{{--            <h1 class="mb-0">Flour Voucher Management</h1>--}}

            <h3 class="card-title mb-0">Flour Voucher Management</h3>

            <nav class="ms-auto">
                <ol class="breadcrumb mb-0">
                    <li class="breadcrumb-item">
                        <a href="{{ route('dashboard') }}" class="text-white">
                            Home
                        </a>
                    </li>

                    <li class="breadcrumb-item active text-white">
                        Flour Voucher
                    </li>
                </ol>
            </nav>
        </div>

        <div class="card-body">

            <!-- Tabs -->
            <ul class="nav nav-tabs mb-4">

                <li class="nav-item">
                    <button class="nav-link active"
                            data-bs-toggle="tab"
                            data-bs-target="#generate"
                            style="color:#FF6600;border-radius:0;">
                        <i class="bi bi-plus-circle"></i>
                        Generate Vouchers
                    </button>
                </li>

                <li class="nav-item">
                    <button class="nav-link"
                            data-bs-toggle="tab"
                            data-bs-target="#all"
                            style="color:#FF6600;border-radius:0;">
                        <i class="bi bi-card-list"></i>
                        Monthly Vouchers
                    </button>
                </li>

                <li class="nav-item">
                    <button class="nav-link"
                            data-bs-toggle="tab"
                            data-bs-target="#redeemed"
                            style="color:#FF6600;border-radius:0;">
                        <i class="bi bi-check-circle"></i>
                        Redeemed Vouchers
                    </button>
                </li>

                <li class="nav-item">
                    <button class="nav-link"
                            data-bs-toggle="tab"
                            data-bs-target="#pending"
                            style="color:#FF6600;border-radius:0;">
                        <i class="bi bi-clock-history"></i>
                        Pending Vouchers
                    </button>
                </li>

            </ul>

            <div class="tab-content">

                <!-- GENERATE -->
                <div class="tab-pane fade show active" id="generate">

                    <form action="{{ route('flour-voucher.generate') }}"
                          method="POST">

                        @csrf

                        <div class="row g-3">

                            <div class="col-md-3">
                                <label class="form-label fw-bold">
                                    Month
                                </label>

                                <input type="month"
                                       name="month"
                                       class="form-control"
                                       required
                                       style="border-radius:0;">
                            </div>

                            <div class="col-md-3">
                                <label class="form-label fw-bold">
                                    Product
                                </label>

                                <select name="product"
                                        class="form-select"
                                        required
                                        style="border-radius:0;">

                                    <option value="">
                                        Select Product
                                    </option>

                                    <option value="Flour 25kg">
                                        Flour 25kg
                                    </option>

                                    <option value="Flour 50kg">
                                        Flour 50kg
                                    </option>

                                </select>
                            </div>

                            <div class="col-md-3">
                                <label class="form-label fw-bold">
                                    Pickup Point
                                </label>

                                <select name="pickup_point"
                                        class="form-select"
                                        required
                                        style="border-radius:0;">

                                    <option value="">
                                        Select Pickup Point
                                    </option>

                                    <option value="Kolwezi Depot">
                                        Kolwezi Depot
                                    </option>

                                    <option value="Likasi Depot">
                                        Likasi Depot
                                    </option>

                                </select>
                            </div>

                            <div class="col-md-3">
                                <label class="form-label fw-bold">
                                    Due Date
                                </label>

                                <input type="date"
                                       name="due_date"
                                       class="form-control"
                                       required
                                       style="border-radius:0;">
                            </div>

                        </div>

                        <div class="mt-4 text-end">
                            <button type="submit"
                                    class="btn btn-warning">
                                Generate All Employee Vouchers
                            </button>
                        </div>

                    </form>

                </div>

                <!-- ALL -->
                <div class="tab-pane fade" id="all">

                    <div class="table-responsive">

                        <table class="table table-bordered">

                            <thead class="table-light">
                            <tr>
                                <th>#</th>
                                <th>Employee ID</th>
                                <th>Product</th>
                                <th>Pickup Point</th>
                                <th>Month</th>
                                <th>Due Date</th>
                                <th>Status</th>
                                <th width="180">
                                    Action
                                </th>
                            </tr>
                            </thead>

                            <tbody>

                            @foreach($vouchers as $voucher)

                                <tr>

                                    <td>{{ $loop->iteration }}</td>

                                    <td>
                                        {{ $voucher->employee_id }}
                                    </td>

                                    <td>
                                        {{ $voucher->product }}
                                    </td>

                                    <td>
                                        {{ $voucher->pickup_point }}
                                    </td>

                                    <td>
                                        {{ $voucher->month }}
                                    </td>

                                    <td>
                                        {{ $voucher->due_date }}
                                    </td>

                                    <td>

                                        @if($voucher->redeemed)

                                            <span class="badge bg-success">
                                            Redeemed
                                        </span>

                                        @else

                                            <span class="badge bg-warning">
                                            Pending
                                        </span>

                                        @endif

                                    </td>

                                    <td>

                                        <a href=""
                                           class="btn btn-sm btn-primary">
                                            Print
                                        </a>

                                        <a href=""
                                           class="btn btn-sm btn-info">
                                            View
                                        </a>

                                    </td>

                                </tr>

                            @endforeach

                            </tbody>

                        </table>

                    </div>

                </div>

                <!-- REDEEMED -->
                <div class="tab-pane fade" id="redeemed">

                    <div class="table-responsive">

                        <table class="table table-bordered">

                            <thead class="table-success">
                            <tr>
                                <th>Employee ID</th>
                                <th>Product</th>
                                <th>Redeemed Date</th>
                            </tr>
                            </thead>

                            <tbody>

                            @foreach($redeemedVouchers as $voucher)

                                <tr>

                                    <td>{{ $voucher->employee_id }}</td>

                                    <td>{{ $voucher->product }}</td>

                                    <td>{{ $voucher->redeemed_at }}</td>

                                </tr>

                            @endforeach

                            </tbody>

                        </table>

                    </div>

                </div>

                <!-- PENDING -->
                <div class="tab-pane fade" id="pending">

                    <div class="table-responsive">

                        <table class="table table-bordered">

                            <thead class="table-warning">
                            <tr>
                                <th>Employee ID</th>
                                <th>Product</th>
                                <th>Due Date</th>
                            </tr>
                            </thead>

                            <tbody>

                            @foreach($pendingVouchers as $voucher)

                                <tr>

                                    <td>{{ $voucher->employee_id }}</td>

                                    <td>{{ $voucher->product }}</td>

                                    <td>{{ $voucher->due_date }}</td>

                                </tr>

                            @endforeach

                            </tbody>

                        </table>

                    </div>

                </div>

            </div>

        </div>

    </div>

@endsection
