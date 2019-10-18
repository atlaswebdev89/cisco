<div class="col-md-12">
    <form class=" m-auto point-redactor" method="POST">
        <div class="form-group ">
            <div class ="input-group">
                <input type="password" class="form-control"  placeholder="Старый пароль" name="oldpass" id="oldpass"   required>
            </div>
        </div>

        <div class="form-group">
            <div class ="input-group">
                <input type="password" class="form-control"  placeholder="Новый пароль" name="newpass" id="newpass"   required>
            </div>
        </div>

        <div class="form-group">
            <div class ="input-group ">
                <input type="password" placeholder="Подтверждение пароля" class="form-control" id="newpassRep" name = "newpassRep"  required>
            </div>
        </div>
        <input disabled="disabled" type="button" name="changePass" value ="изменить" class="btn btn-block btn-success " id="button-edit-point">
        <div class="form-group response_order">
            <p style="text-align: center; display: none;"></p>
        </div>
    </form>
</div>