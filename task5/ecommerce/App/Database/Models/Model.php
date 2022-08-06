<?php
/* 
    Model is a class that confer to Classes that represent database table
    Each table has Create, Read, Update, Delete
*/

namespace App\Database\Models;
use App\Database\Config\Connection;

class Model extends Connection {
    // Determine The table name
    const TABLE = '';
    // Function Get All Data
    public function all (array $columns=['*'], array $filters=[], string $constrains = '') {
        // Generate query
        $query = "SELECT " . implode(',', $columns) . " FROM " . static::TABLE;
        // Check if there is given filters, then add to query
        if (!empty($filters)) {
            $query .= ' WHERE ';
            // loop through filters
            foreach ($filters as $filterIndex => $filter) {
                /*$filter -> Array[3]:
                    $filter[0] -> columnName string:any
                    $filter[1] -> Logical operator :[=, >, <, >=, <=, <>, BETWEEN, LIKE, IN]
                    $filter[2] -> Filter Value string|set|pattern|range_of_two_values:any
                */
                // Check if element is the first(index != 0) add 'AND'.
                if($filterIndex != 0) {
                    $query .= " AND ";
                }
                // Add Filters to query
                $query .= "{$filter[0]} {$filter[1]} {$filter[2]}";
            }
        }
        // Perform query
        $query .= " " . $constrains;
        return $this->con->query($query);
    }

}
