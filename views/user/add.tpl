<?php include('views/header.tpl');?>
<form action="index.php?id=user/save" method="post" enctype="multipart/form-data" >
  <table class="table table-bordered" >
    <tr>
      <th width="150">شناسه</th>
      <td>
      <input type="text" name="id" readonly="readonly" value="0"></td>
    </tr>
    <tr>
      <th>سطح </th>
      <td>
        <input name="utype" value="1" type="radio"> کاربر عضو  <br>
        <input name="utype" value="2" type="radio"> کاربر  ویژه <br>
        <input name="utype" value="3" type="radio"> کاربر  مدیر
      </td>
    </tr>
    <tr>
      <th>نام </th>
      <td>
        <input class="inputt" type="text" name="name" ></td>
    </tr>
    <tr>
      <th>نام کاربری </th>
      <td>
        <input class="inputt" type="text" name="uname" ></td>
    </tr>
    <tr>
      <th>کلمه عبور </th>
      <td>
        <input class="inputt" type="password" name="upass" ></td>
    </tr>
    <tr>
      <th>تکرار کلمه عبور </th>
      <td>
        <input class="inputt" type="password" name="upass2" ></td>
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td>

        <input type="submit" name="button" value="  اضافه کردن کاربر       ">
        <input type="reset" name="button" value="  بازنویسی فرم   ">
      </td>
    </tr>
  </table>
</form>
<?php include('views/footer.tpl');?>