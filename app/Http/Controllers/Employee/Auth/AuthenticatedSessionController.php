<?php

namespace App\Http\Controllers\Employee\Auth;

use App\Http\Controllers\Controller;
use App\Models\Employee\Employee;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;

class AuthenticatedSessionController extends Controller
{
    //
    public function create()
    {
        return view('portail.auth.login');
    }



    public function store(Request $request)
    {

        $request->validate([

            'employee_id' => [
                'required'
            ],

            'password' => [
                'required'
            ],

        ]);

        $employee = Employee::where(
            'employee_id',
            $request->employee_id
        )->first();


        if (!$employee) {

            return back()->withErrors([

                'employee_id' => 'Matricule ou mot de passe incorrect'

            ]);

        }


        $user = User::where(
            'employee_id',
            $employee->employee_id
        )->first();


        if (!$user) {


            $user = User::create([


                'name' => $employee->first_name.' '.$employee->last_name,


                'employee_id' => $employee->employee_id,


                'email' => $employee->employee_id.'@kitservices.com',


                'password' => Hash::make('password'),


                'must_change_password' => true,


                'role' => 'employee',


            ]);


        }


        $credentials = [


            'employee_id' => $request->employee_id,


            'password' => $request->password,


        ];


        if(Auth::attempt($credentials, $request->boolean('remember')))

        {


            $request->session()->regenerate();



            return redirect()
                ->route('employee.dashboard');


        }


        return back()->withErrors([


            'employee_id' => 'Matricule ou mot de passe incorrect'


        ]);

    }

    public function destroy()
    {

    }

}
