<?php include('views/header.tpl');?>
<form action="index.php?id=user/savep" method="post"  >
  <table class="table table-bordered" >
    <tr>
      <th width="150">شناسه</th>
      <td>
        <input type="text" name="id" readonly="readonly" value="<?=$row['id']?>"></td>
    </tr>
    <tr>
      <th>نام </th>
      <td>  <?=$row['name']?></td>
    </tr>
    <tr>
      <th>نام کاربری </th>
      <td><?=$row['uname']?></td>
    </tr>
    <tr>
      <th width="150">کلمه عبور</th>
      <td>
        <input type="password" name="upass"  ></td>
    </tr>
    <tr>
      <th width="150">تکرار کلمه عبور</th>
      <td>
        <input type="password" name="upass2"  ></td>
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