<?php include('views/header.tpl');?>
<table  class="table table-striped" >
  <tr>
    <td width="100"> شناسه </td>
    <td width="">نام </td>
    <td width="">نام کاربری </td>
    <td width="">سطح کاربری </td>
    <td width=""><a href="index.php?id=user/add/">افزودن کاربر</a>&nbsp;</td>
  </tr>
<?php foreach($rows as $row) { ?> 
  <tr>
    <td><?php echo $row['id']; ?> </td>
    <td><?php echo $row['name']; ?> </td>
    <td><?php echo $row['uname']; ?> </td>
    <td><?php echo $row['utype']; ?> </td>
    <td>
	<a href="index.php?id=user/delete/<?php echo $row['id']; ?>">
	حذف</a> |
	<a href="index.php?id=user/edit/<?php echo $row['id']; ?>">ویرایش</a>  |
     <a href="index.php?id=user/editp/<?php echo $row['id']; ?>">تغییر رمز</a>  </td>
  </tr>
<?php } ?>
</table>
<?php include('views/footer.tpl');?>
