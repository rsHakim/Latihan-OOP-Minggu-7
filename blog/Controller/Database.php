<?php

namespace Controller;

use PDO;

class Database extends PDO
{
	private $hostname = 'localhost';
	private $username = 'root';
	private $password = '';
	private $dbname = 'blog';
	
	public function __construct()
	{
		parent::__construct(
			'mysql:host='.$this->hostname.';dbname='.$this->dbname, $this->username, $this->password
		);
	}
}