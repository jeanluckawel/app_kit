<?php

namespace App\Exports;

use App\Models\Employee\Employee;

use Illuminate\Support\Facades\Auth;

use Maatwebsite\Excel\Concerns\FromCollection;
use Maatwebsite\Excel\Concerns\WithMapping;
use Maatwebsite\Excel\Concerns\WithHeadings;
use Maatwebsite\Excel\Concerns\WithEvents;
use Maatwebsite\Excel\Concerns\WithColumnFormatting;
use Maatwebsite\Excel\Concerns\WithCustomStartCell;

use Maatwebsite\Excel\Events\AfterSheet;

use PhpOffice\PhpSpreadsheet\Style\Alignment;
use PhpOffice\PhpSpreadsheet\Style\Fill;
use PhpOffice\PhpSpreadsheet\Style\Color;

use PhpOffice\PhpSpreadsheet\Worksheet\Drawing;
use PhpOffice\PhpSpreadsheet\Cell\Coordinate;

use PhpOffice\PhpSpreadsheet\Style\NumberFormat;

class EmployeesExport implements
    FromCollection,
    WithMapping,
    WithHeadings,
    WithEvents,
    WithColumnFormatting,
    WithCustomStartCell
{


    protected $filters;



    public function __construct(array $filters = [])
    {
        $this->filters = $filters;
    }

    public function startCell(): string
    {
        return 'A3';
    }






    /**
     * Récupération des employés
     */
    public function collection()
    {


        $query = Employee::with([

            'address',

            'company.jobTitleRelation',

            'company.DepartmentRelation',

            'company.sectionRelation',

            'salaries',

        ]);





        // Filtre Gender

        if (!empty($this->filters['gender'])) {


            $query->where(
                'gender',
                $this->filters['gender']
            );


        }






        // Filtre Contract

        if (!empty($this->filters['contract_type'])) {


            $query->whereHas('company', function($q){


                $q->where(
                    'contract_type',
                    $this->filters['contract_type']
                );


            });


        }








        // Filtre Status
        // 0 = Actif
        // 1 = Inactif

        if (
            isset($this->filters['status'])
            &&
            $this->filters['status'] !== ''
        ) {


            $query->where(
                'status',
                $this->filters['status']
            );


        }






        return $query->get();


    }









    /**
     * Header Excel
     */

    public function headings(): array
    {


        return [

            'Matricule',

            'Prénom',

            'Nom',

            'Postnom',

            'Sexe',

            'Date de naissance',

            'Numéro de carte',

            'Pays',

            'Situation matrimoniale',

            'Numéro',

            'Ville',

            'Province',

            'Téléphone',

            'Email',

            'Téléphone urgence',

            'Poste',

            'Département',

            'Section',

            'Type de contrat',

            'Date d\'embauche',

            'Date fin de contrat',

            'Lieu de travail',

            'Superviseur',

            'Type d\'employé',


            'Salaire de base',

            'Catégorie',

            'Échelon',

            'Devise',


            'Statut',

        ];


    }









    /**
     * Mapping données
     */

    public function map($employee): array
    {


        return [



            "'" . ($employee->employee_id ?? ''),


            $employee->first_name ?? '',


            $employee->last_name ?? '',


            $employee->middle_name ?? '',


            $employee->gender ?? '',


            $employee->date_of_birth ?? '',


            "'" . ($employee->number_card ?? ''),


            $employee->pays ?? '',


            $employee->marital_status ?? '',






            "'" . ($employee->address?->number ?? ''),


            $employee->address?->city ?? '',


            $employee->address?->province ?? '',


            "'" . ($employee->address?->phone ?? ''),


            $employee->address?->email ?? '',


            "'" . ($employee->address?->emergency_phone ?? ''),






            $employee->company?->jobTitleRelation?->name ?? '',


            $employee->company?->DepartmentRelation?->name ?? '',


            $employee->company?->sectionRelation?->name ?? '',





            $employee->company?->contract_type ?? '',


            $employee->company?->hire_date ?? '',


            $employee->company?->end_contract_date ?? '',


            $employee->company?->work_location ?? '',


            $employee->company?->supervisor ?? '',


            $employee->company?->employee_type ?? '',






            $employee->salaries?->base_salary ?? '',


            $employee->salaries?->category ?? '',


            $employee->salaries?->echelon ?? '',


            $employee->salaries?->currency ?? '',







            $employee->status == 0

                ? 'Inactif'

                : 'Actif',



        ];

    }










    /**
     * Colonnes texte
     */

    public function columnFormats(): array
    {


        return [


            'A'=>NumberFormat::FORMAT_TEXT,


            'G'=>NumberFormat::FORMAT_TEXT,


            'J'=>NumberFormat::FORMAT_TEXT,


            'M'=>NumberFormat::FORMAT_TEXT,


            'O'=>NumberFormat::FORMAT_TEXT,


        ];


    }









    /**
     * Mise en forme Excel
     */

    public function registerEvents(): array
    {
        return [

            AfterSheet::class => function(AfterSheet $event){

                $sheet = $event->sheet->getDelegate();


                $drawing = new Drawing();

                $drawing->setName('KIT SERVICES LOGO');

                $drawing->setDescription('KIT SERVICES');

                $drawing->setPath(
                    public_path('logo/img.png')
                );

                $drawing->setHeight(70);

                $drawing->setCoordinates('A1');

                $drawing->setWorksheet($sheet);



                $sheet->mergeCells('A1:AC1');


                $sheet->setCellValue(
                    'A1',
                    'KIT SERVICES - RAPPORT DES EMPLOYÉS'
                );


                // seulement gras
                $sheet->getStyle('A1')
                    ->getFont()
                    ->setBold(true);


                $sheet->getStyle('A1')
                    ->getAlignment()
                    ->setHorizontal(
                        Alignment::HORIZONTAL_CENTER
                    )
                    ->setVertical(
                        Alignment::VERTICAL_CENTER
                    );


                $sheet->getRowDimension(1)
                    ->setRowHeight(30);





                $sheet->mergeCells('A2:AC2');


                $user = Auth::user()?->name ?? 'SYSTÈME';


                $sheet->setCellValue(
                    'A2',
                    'Rapport exporté par : '.$user.
                    ' | Date : '.now()->format('d/m/Y H:i')
                );


                $sheet->getStyle('A2')
                    ->getFont()
                    ->setBold(true);



                $sheet->getStyle('A2')
                    ->getAlignment()
                    ->setHorizontal(
                        Alignment::HORIZONTAL_CENTER
                    );




                $sheet->getStyle('A3:AC3')
                    ->getFont()
                    ->setBold(true)
                    ->setColor(
                        new Color(Color::COLOR_WHITE)
                    );



                $sheet->getStyle('A3:AC3')
                    ->getFill()
                    ->setFillType(
                        Fill::FILL_SOLID
                    )
                    ->getStartColor()
                    ->setRGB('FF6600');



                $sheet->getStyle('A3:AC3')
                    ->getAlignment()
                    ->setHorizontal(
                        Alignment::HORIZONTAL_CENTER
                    )
                    ->setVertical(
                        Alignment::VERTICAL_CENTER
                    );



                $lastColumn =
                    $sheet->getHighestColumn();



                $lastColumnNumber =
                    Coordinate::columnIndexFromString($lastColumn);



                for($i = 1; $i <= $lastColumnNumber; $i++){


                    $column =
                        Coordinate::stringFromColumnIndex($i);



                    $sheet
                        ->getColumnDimension($column)
                        ->setAutoSize(true);


                }




                $sheet->getStyle(
                    'A3:'.$lastColumn.$sheet->getHighestRow()
                )
                    ->getAlignment()
                    ->setVertical(
                        Alignment::VERTICAL_CENTER
                    );



            }

        ];
    }
}
