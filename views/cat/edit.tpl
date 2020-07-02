<?php include('views/header.tpl');?>
<form action="index.php?id=cat/save" method="post">
  <table class="table table-bordered" >
    <tr>
      <td>شناسه</td>
      <td>
        <input type="text" name="id" readonly="readonly" value="<?=$row['id'] ?>"></td>
    </tr>
    <tr>
      <td>نام دسته</td>
      <td>
        <input type="text" name="name" value="<?=$row['name'] ?>"></td>
    </tr>
    <tr>
      <td>دسته پدر</td>
      <td>

        <select name="pid">
          <option value="0"> ---- </option>
          <?php foreach($cats as $id => $name ) :  ?>
          <option value="<?=$id ?>" <?php if($row['pid']==$id) echo "selected"; ?> > <?=$name ?> </option>
          <?php endforeach; ?>
        </select>


      </td>
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td><input type="submit" name="button" value="  ذخیره کردن       "></td>
    </tr>
  </table>
</form>
<?php include('views/footer.tpl');?>