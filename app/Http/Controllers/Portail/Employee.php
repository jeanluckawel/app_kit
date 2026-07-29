<?php

namespace App\Http\Controllers\Portail;

use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;

class Employee extends Controller
{
    public function index()
    {
        $employees = Auth::user()->employee()->with('address')->first();

        return view('portail.employee.profil', compact('employees'));
    }

    public function family()
    {
        $employee = Auth::user()
            ->employee()
            ->with([
                'children',
                'dependants',
                'emergencies'
            ])
            ->first();

        return view('portail.employee.family', compact('employee'));

    }

    public function payroll()
    {
        $employee = Auth::user();

        return view('portail.employee.payroll', compact('employee'));
    }

    public function dashboard()
    {

        $employee = Auth::user()
            ->employee()
            ->with([
                'children',
                'company',
                'salaries',
                'address'
            ])
            ->first();


        return view('portail.employee.dashboard', [

            'employee' => $employee,

            'childrenCount' => $employee->children->count(),

            'salary' => $employee->salaries?->base_salary,

            'contract' => $employee->company?->contract_type,

        ]);

    }
}
