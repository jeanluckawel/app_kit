<?php

namespace App\Http\Controllers\Portail;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

class Employee extends Controller
{
    public function index()
    {
        $employees = Auth::user()->employee;
        return view('portail.employee.profil', compact('employees'));
    }
}
