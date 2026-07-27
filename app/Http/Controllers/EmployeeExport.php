<?php

namespace App\Http\Controllers;

use App\Exports\EmployeesExport;
use Illuminate\Http\Request;
use Maatwebsite\Excel\Facades\Excel;

class EmployeeExport extends Controller
{
    //
    public function show()
    {

        return view ('Employee.export');

    }

    public function export(Request $request)
    {
        $filters = [
            'gender' => $request->input('gender'),
            'contract_type' => $request->input('contract_type'),
            'status' => $request->input('status'),
        ];

        return Excel::download(
            new EmployeesExport($filters),
            'employees.xlsx'
        );
    }
}
