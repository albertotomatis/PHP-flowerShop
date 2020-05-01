<?php
declare(strict_types=1);
namespace App\Controller;

use Cake\ORM\TableRegistry;

class MyflowersController extends AppController
{
    public function show()
    {
        $flowers = TableRegistry::getTableLocator()->get('flowers');    
        
        $query = $flowers->find("all",[
            "contain" => ["opportunities"]
        ]);								 

        $this->set('fiori', $query);
    }
}