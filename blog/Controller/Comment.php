<?php

namespace Controller;

use \Controller\Database as DB;

class Comment extends DB
{
	
	public function insertComment($data)
	{
		$data = [
			'post_id' => $_POST['post_id'],
			'username' => $_POST['username'],
			'reply' => $_POST['reply']
		];

		$post_id = $data['post_id'];
		$username = $data['username'];
		$reply = $data['reply'];
		
		$sql = $this->prepare("INSERT INTO comments VALUES('', '$post_id', '$username', '$reply')");
		$sql->execute();
		header('location:index.php?detail_post='.$data['post_id']);
	}

	public function getComment($id)
	{
		$sql = $this->prepare("SELECT * FROM comments WHERE post_id = $id");
		$sql->execute();
		return $sql->fetchAll();
	}
}