<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Employee\Employee;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;

class EmployeeAccountController extends Controller
{
    //
    public function store(Request $request)
    {
        $request->validate([
            'employee_id' => 'required',
        ]);

        $employee = Employee::where(
            'employee_id',
            $request->employee_id
        )->first();


        if (!$employee) {

            return back()->with(
                'error',
                'Matricule incorrect'
            );

        }


        $exist = User::where(
            'employee_id',
            $employee->employee_id
        )->first();


        if ($exist) {

            return back()->with(
                'error',
                'Ce employé possède déjà un compte.'
            );

        }



        User::create([

            'name' => $employee->first_name.' '.$employee->last_name,

            'employee_id' => $employee->employee_id,

            'email' => $employee->employee_id.'@kitservices.com',

            'password' => Hash::make('password'),

            'must_change_password' => true,

            'role' => 'employee',

        ]);


        return back()->with(
            'success',
            'Compte employé créé avec succès.'
        );
    }
}
