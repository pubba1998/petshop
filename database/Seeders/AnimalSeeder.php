<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\animals; // Include this import. Without this, you can not access the Institution model
use Illuminate\Support\Facades\DB; // Include this import. Without this, you can not access the institutions database table
use Illuminate\Support\Facades\File; // Include this import. Without this, you can not access institution-data.json 


class AnimalSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $json_file = File::get('database/data/animals-data.json'); // Get institution-data.json 
        DB::table('animals')->delete(); // Delete all records from the institutions database table 
        $data = json_decode($json_file); // Convert the array of JSON objects in institution-data.json to a PHP variable
        foreach ($data as $obj) { // For each object (contains key/value pairs) in the PHP variable, create a new record in the institutions database table 
            animals::create(array( // Remember an Institution has three values - name, region and country. Make 
                                       // sure your JSON file matches the schema of your database table
                'animals_id' => $obj->animals_id,
                'animals_name' => $obj->animals_name,
               
            ));
        } 
        //
    }
}
