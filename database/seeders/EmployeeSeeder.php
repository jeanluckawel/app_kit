<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Faker\Factory as Faker;

use App\Models\Employee\Address;
use App\Models\Employee\Children;
use App\Models\Employee\Company;
use App\Models\Employee\Dependant;
use App\Models\Employee\Emergency;
use App\Models\Employee\Employee;
use App\Models\Employee\Salary;

class EmployeeSeeder extends Seeder
{
    public function run(): void
    {
        $faker = Faker::create();

        for ($i = 1; $i <= 6; $i++) {

            $gender = $faker->randomElement(['M', 'F']);

            $employeeId = 'KAM_KIT' . str_pad($i, 3, '0', STR_PAD_LEFT);


            // EMPLOYEE
            $employee = Employee::create([

                'employee_id' => $employeeId,

                'first_name' => $faker->firstName,

                'last_name' => $faker->lastName,

                'middle_name' => $faker->firstName,

                'gender' => $gender,

                'date_of_birth' => $faker->dateTimeBetween(
                    '-45 years',
                    '-22 years'
                )->format('Y-m-d'),

                'number_card' => strtoupper(
                    $faker->bothify('CARD-####??')
                ),

                'pays' => $faker->randomElement(['RDC', 'FR']),

                'marital_status' => $faker->randomElement([
                    'Single',
                    'Married',
                    'Divorced'
                ]),


                'status' => $faker->randomElement([
                    '0',
                    '1'
                ]),
            ]);



            // ADDRESS
            Address::create([

                'employee_id' => $employee->employee_id,

                'number' => $faker->buildingNumber,

                'city' => $faker->randomElement([
                    'Kolwezi',
                    'Lubumbashi',
                    'Kinshasa'
                ]),

                'province' => 'Lualaba',

                'phone' => $faker->phoneNumber,

                'email' => $faker->unique()->safeEmail,

                'emergency_phone' => $faker->phoneNumber,
            ]);



            // COMPANY
            Company::create([

                'employee_id' => $employee->employee_id,

                'job_title' => $faker->numberBetween(1, 5),

                'department' => $faker->numberBetween(1, 5),

                'section' => $faker->numberBetween(1, 10),

                'contract_type' => $faker->randomElement([
                    'CDI',
                    'CDD',
                    'Consultant'
                ]),

                'hire_date' => $faker->dateTimeBetween(
                    '-10 years',
                    'now'
                )->format('Y-m-d'),

                'end_contract_date' => null,

                'work_location' => $faker->randomElement([
                    'Mine',
                    'Administration',
                    'Bureau Central'
                ]),

                'supervisor' => $faker->name,

                'employee_type' => $faker->randomElement([
                    'Full Time', 'Part Time'
                ]),
            ]);



            // CHILDREN
            $childrenNumber = $faker->numberBetween(0, 4);

            for ($c = 1; $c <= $childrenNumber; $c++) {

                Children::create([

                    'employee_id' => $employee->employee_id,

                    'full_name' => $faker->name,

                    'date_of_birth' => $faker->dateTimeBetween(
                        '-15 years',
                        '-1 year'
                    )->format('Y-m-d'),

                    'gender' => $faker->randomElement([
                        'M',
                        'F'
                    ]),
                ]);
            }



            // DEPENDANT
            Dependant::create([

                'employee_id' => $employee->employee_id,

                'full_name' => $faker->name,

                'relationship' => $faker->randomElement([
                    'Father','Mother','Spouse','Brother','Sister','Mr','Mrs','Dr'
                ]),

                'phone' => $faker->phoneNumber,

                'address' => $faker->address,
            ]);



            // EMERGENCY
            Emergency::create([

                'employee_id' => $employee->employee_id,

                'relationship' => $faker->randomElement([
                    'Father','Mother','Spouse','Brother','Sister','Mr','Mrs','Dr'
                ]),

                'full_name' => $faker->name,

                'phone' => $faker->phoneNumber,

                'address' => $faker->city,
            ]);



            // SALARY
            Salary::create([

                'employee_id' => $employee->employee_id,

                'base_salary' => $faker->numberBetween(
                    1000,
                    8000
                ),

                'category' => $faker->randomElement([
                    'A',
                    'B',
                    'C'
                ]),

                'echelon' => $faker->numberBetween(
                    1,
                    10
                ),

                'currency' => 'USD',
            ]);
        }
    }
}
