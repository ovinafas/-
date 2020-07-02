<?php include('views/header.tpl');?>
<div class="row">
<?php foreach($rows as $row) { ?>
    <div class="col-sm-4" style="margin-bottom: 20px">
       <div class="book">
         <img src="uploads/logo/<?php echo $row['logo']; ?>" width="200" height="200" >
         <br>
         <h3>
           <a  href="index.php?id=chap/indexp/<?php echo $row['id']; ?>">
           <?php echo $row['name']; ?> </a>

         </h3>
         دسته بندی  :
         <?php echo $row['cname']; ?> <br>
         مولف:
         <?php echo $row['author']; ?><br>
         سال انتشار :
         <?php echo $row['pyear']; ?> <br>


       </div>
      <a class="btn btn-info " href="index.php?id=chap/indexp/<?php echo $row['id']; ?>">
        خواندن کتاب
      </a>
      </div>

<?php } ?>
</div>
<?php include('views/footer.tpl');?>
