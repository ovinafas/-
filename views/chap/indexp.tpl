<?php include('views/header.tpl');?>
<div class="row">
  <div class="col-sm-2">
    <img src="uploads/logo/<?php echo $book['logo']; ?>" class="img-responsive"  >
  </div>
  <div class="col-sm-10">
    <table class="table table-bordered" >
      <tr>
        <th width="150">شناسه کتاب</th>
        <td><?=$book['id']?></td>
        <th>نام کتاب</th>
        <td><?=$book['name']?></td>
      </tr>
      <tr>
        <th width="150">ناشر کتاب </th>
        <td><?=$book['pname']?></td>
        <th>سال انتشار</th>
        <td><?=$book['pyear']?></td>
      </tr>
      <tr>
        <th width="150">مولف کتاب </th>
        <td><?=$book['author']?></td>
        <td colspan="2">
          <?php if($book['pdf']!=''): ?>
          <a target="_blank" href="index.php?id=book/down/<?php echo $book['id']; ?>">
            دانلود کتاب </a>
          <?php endif; ?>
        </td>
      </tr>
      <tr>
        <th width="150"> چکیده </th>
        <td colspan="3"><?=$book['abstract']?></td>
      </tr>
    </table>
  </div>
</div>


<table  class="table table-striped" >
  <tr>
    <td width="100"> شناسه </td>
    <td width="">عنوان </td>
    <td width=""> &nbsp;&nbsp;</td>
  </tr>
<?php foreach($rows as $row) { ?> 
  <tr>
    <td><?php echo $row['id']; ?> </td>
    <td><?php echo $row['name']; ?> </td>
    <td>
	<a href="index.php?id=chap/show/<?php echo $row['id']; ?>">
	  نمایش </a>
      <?php /*  if($row['pdf']!=''):  */ ?>
      |
      <a target="_blank" href="index.php?id=chap/down/<?php echo $row['id']; ?>">
        دانلود </a>
      <?php  /* endif;   */ ?>

    </td>
  </tr>
<?php } ?>
</table>
<?php include('views/footer.tpl');?>
