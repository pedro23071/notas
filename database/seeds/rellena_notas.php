<?php

use Illuminate\Database\Seeder;

class rellena_notas extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        for($i=0; $i <= 40; $i++){
            DB::table('notes')->insert(array(
                'tittle'=>'Mi nota ' . $i,
                'description' => 'Descripcion de la nota ' . $i
            ));

            $this->command->info('Tabla de notas rellenada correctamente');
        }
    }
}
