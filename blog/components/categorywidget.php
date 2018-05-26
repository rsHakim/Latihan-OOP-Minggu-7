<h5 class="card-header">Categories</h5>
<div class="card-body">
  <div class="row">
    <div class="col-lg-6">
      <ul class="list-unstyled mb-0">
        <?php foreach($category->getCategory() as $row_category) { ?>
        <li>
          <a href="#"><?php echo $row_category['category_name'] ?></a>
        </li>
        <?php } ?>
      </ul>
    </div>
    <!-- <div class="col-lg-6">
      <ul class="list-unstyled mb-0">
        <li>
          <a href="#">JavaScript</a>
        </li>
        <li>
          <a href="#">CSS</a>
        </li>
        <li>
          <a href="#">Tutorials</a>
        </li>
      </ul>
    </div> -->
  </div>
</div>