<?php include('views/header.tpl');?>
<table  class="table table-striped" >
  <tr>
    <td width="100"> شناسه </td>
    <td width="">نام </td>
    <td width=""> دسته پدر</td>
    <td width=""><a href="index.php?id=cat/add">افزودن دسته</a>&nbsp;</td>
  </tr>
<?php foreach($rows as $row) { ?> 
  <tr>
    <td><?php echo $row['id']; ?> </td>
    <td><?php echo $row['name']; ?> </td>
    <td><?php echo $row['pid']; ?> </td>
    <td>
	<a href="index.php?id=cat/delete/<?php echo $row['id']; ?>">
	حذف</a> |
	<a href="index.php?id=cat/edit/<?php echo $row['id']; ?>">ویرایش</a>   </td>
  </tr>
<?php } ?>
</table>
<?php include('views/footer.tpl');?>
