<?php

namespace App\Http\Controllers;

use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\File;

class AboutController extends Controller
{

    public function index()
    {

        return view('about.index', [

            'version' => '1.0.0',

            'commit' => $this->getCurrentCommit(),

            'user' => Auth::user()?->name ?? 'Système',

            'date' => now()->format('d/m/Y H:i'),

        ]);

    }



    /**
     * Récupérer le commit Git actuel
     */
    private function getCurrentCommit()
    {

        $headFile = base_path('.git/HEAD');


        if (!File::exists($headFile)) {

            return 'N/A';

        }



        $head = trim(File::get($headFile));



        // Exemple : ref: refs/heads/main
        if (str_starts_with($head, 'ref:')) {


            $ref = trim(
                str_replace('ref:', '', $head)
            );


            $commitFile = base_path('.git/'.$ref);



            if (File::exists($commitFile)) {


                return substr(
                    trim(File::get($commitFile)),
                    0,
                    8
                );


            }

        }



        return 'N/A';

    }

}
