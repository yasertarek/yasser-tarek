<?php
// Declare name space for using this class
namespace App\Database\Config;

class Connection
{
    private string $db_hostname = 'localhost';
    private string $db_username = 'root';
    private string $db_password = '';
    private string $db_name = 'nti_ecommerce';
    private int $db_port = 3306;
    public \mysqli $con;

    public function __construct()
    {
        // Connect to database
        $this->con = new \mysqli($this->db_hostname, $this->db_username, $this->db_password, $this->db_name, $this->db_port);
        // Check connection
        if ($this->con->connect_errno) {
            echo "Failed to connect to MySQL: " . $this->con->connect_error;
            exit();
        }
    }
    public function __destruct()
    {
        // close DB connection after ending for security
        $this->con->close();
    }
}
