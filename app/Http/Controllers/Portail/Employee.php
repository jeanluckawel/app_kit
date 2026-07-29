<?php

namespace App\Http\Controllers\Portail;

use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;

class Employee extends Controller
{
    public function index()
    {
        $employees = Auth::user()->employee;
        return view('portail.employee.profil', compact('employees'));
    }

    public function family()
    {
//        $employee = Employee::with([
//            'children',
//            'dependants'
//        ])->findOrFail($id);

        $employee = Auth::user();

        return view('portail.employee.family', compact('employee'));

    }

    public function payroll()
    {
        $employee = Auth::user();

        return view('portail.employee.payroll', compact('employee'));
    }
}
