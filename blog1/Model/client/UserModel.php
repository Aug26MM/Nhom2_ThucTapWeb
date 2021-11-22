<?php

class UserModel extends Database{
	protected $db;
	public function __construct()
	{
		$this->db = new Database();
		$this->db->connect();
	}

	public function signup($userName, $passWord, $fullName)
	{	
		$sql = "INSERT INTO users (username, password, full_name) VALUES ('$userName', '$passWord', '$fullName')";
		$this->db->conn->query($sql);
	}

	public function checkExists($userName) {
		$sql = "SELECT * FROM users WHERE usersname = '$userName'";
		$result = $this->db->conn->query($sql);
		
		return $result;
	}
	public function login($userName, $passWord)
	{
		$sql = "SELECT * FROM users WHERE username = '$userName' AND password = '$passWord'";
		$result = $this->db->conn->query($sql);	
		return $result;
	}
}
