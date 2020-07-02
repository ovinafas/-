<?php include('views/header.tpl');?>
<table class="table table-bordered" >
  <tr>
    <th width="150">شناسه کتاب</th>
    <td><?=$book['id']?></td>
    <th>نام کتاب</th>
    <td><?=$book['name']?></td>
  </tr>
</table>
<table  class="table table-striped" >
  <tr>
    <td width="100"> شناسه </td>
    <td width="">عنوان </td>
    <td width=""><a href="index.php?id=chap/add/<?=$book['id']?>">افزودن فصل</a>&nbsp;</td>
  </tr>
<?php foreach($rows as $row) { ?> 
  <tr>
    <td><?php echo $row['id']; ?> </td>
    <td><?php echo $row['name']; ?> </td>
    <td>
	<a href="index.php?id=chap/delete/<?php echo $row['id']; ?>">
	حذف</a> |
	<a href="index.php?id=chap/edit/<?php echo $row['id']; ?>">ویرایش</a>   </td>
  </tr>
<?php } ?>
</table>
<?php include('views/footer.tpl');?>
