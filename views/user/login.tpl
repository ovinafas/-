<?php include('views/header.tpl');?>
<form action="index.php?id=user/check" method="post" >
    <table class="table table-bordered" >

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
            <td>&nbsp;</td>
            <td>

                <input type="submit" name="button" value="  ورود به سیستم      ">
                <input type="reset" name="button" value="  بازنویسی فرم   ">
            </td>
        </tr>
    </table>
</form>
<?php include('views/footer.tpl');?>