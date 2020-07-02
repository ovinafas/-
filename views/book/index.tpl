<?php include('views/header.tpl');?>
<table  class="table table-striped" >
  <tr>
    <td width="100"> شناسه </td>
    <td width="">نام </td>
    <td width=""> دسته بندی</td>
    <td width=""> مولف</td>
    <td width=""> سال انتشار</td>
    <td width=""><a href="index.php?id=book/add">افزودن کتاب</a>&nbsp;</td>
  </tr>
<?php foreach($rows as $row) { ?> 
  <tr>
    <td><?php echo $row['id']; ?> </td>
    <td><?php echo $row['name']; ?> </td>
    <td><?php echo $row['cname']; ?> </td>
    <td><?php echo $row['author']; ?> </td>
     <td><?php echo $row['pyear']; ?> </td>
    <td>
	<a href="index.php?id=book/delete/<?php echo $row['id']; ?>">
	حذف</a> |
	<a href="index.php?id=book/edit/<?php echo $row['id']; ?>">ویرایش</a>
      |
      <a href="index.php?id=chap/index/<?php echo $row['id']; ?>">فصل ها</a>
    </td>
  </tr>
<?php } ?>
</table>
<?php include('views/footer.tpl');?>
