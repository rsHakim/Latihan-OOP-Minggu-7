<?php

namespace Controller;

use Controller\Database as DB;

class News extends DB
{
	public function getPosts()
	{
		$sql = $this->prepare("SELECT * FROM posts");
		$sql->execute();
		return $sql->fetchAll();
	}

	public function getPostsDetail($id)
	{
		$sql = $this->prepare("SELECT * FROM posts WHERE id = $id");
		$sql->execute();
		return $sql->fetch();
	}

	public function getCategory()
	{
		$sql = $this->prepare("SELECT * FROM category_blog");
		$sql->execute();
		return $sql->fetchAll();
	}
}