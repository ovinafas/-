<?php include('views/header.tpl');?>
<form action="index.php?id=user/save" method="post"  >
  <table class="table table-bordered" >
    <tr>
      <th width="150">شناسه</th>
      <td>
        <input type="text" name="id" readonly="readonly" value="<?=$row['id']?>"></td>
    </tr>
    <tr>
      <th>سطح </th>
      <td>
        <input name="utype" value="1" <?php if($row['utype']==1) echo "checked"; ?> type="radio"> کاربر عضو  <br>
        <input name="utype" value="2" <?php if($row['utype']==2) echo "checked"; ?> type="radio"> کاربر  ویژه <br>
        <input name="utype" value="3" <?php if($row['utype']==3) echo "checked"; ?> type="radio"> کاربر  مدیر
      </td>
    </tr>
    <tr>
      <th>نام </th>
      <td>
        <input class="inputt" type="text" name="name" value="<?=$row['name']?>" ></td>
    </tr>
    <tr>
      <th>نام کاربری </th>
      <td>
        <input class="inputt" type="text" name="uname" value="<?=$row['uname']?>" ></td>
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td>
        <input type="submit" name="button" value="  ثبت تغییرات  ">
        <input type="reset" name="button" value="  بازنویسی فرم   ">
      </td>
    </tr>
  </table>
</form>
<?php include('views/footer.tpl');?>