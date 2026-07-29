<?php

namespace App\Http\Controllers\Employee\Auth;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;

class ChangePasswordController extends Controller
{
    //
    public function create()
    {
        return view('portail.auth.change-password');
    }


    public function store(Request $request)
    {
        $request->validate([
            'password' => [
                'required',
                'min:8',
                'confirmed'
            ]
        ]);

        $user = Auth::user();

        $user->update([
            'password' => Hash::make($request->password),
            'must_change_password' => false,
        ]);


        Auth::logout();

        $request->session()->invalidate();
        $request->session()->regenerateToken();


        return redirect()
            ->route('employee.login')
            ->with('success', 'Mot de passe modifié');
    }
}
