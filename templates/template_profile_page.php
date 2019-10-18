<div class="col-md-12">
    <form class=" m-auto point-redactor" method="POST">
                <div class="form-group ">
                    <div class ="input-group">
                        <input type="text" class="form-control"  placeholder="Ваше имя" name="secondname" id="secondname"  value = "{{session.secondname}}" required>
                    </div>
                </div>

                <div class="form-group">
                    <div class ="input-group">
                        <input type="text" class="form-control"  placeholder="Фамилия" name="name" id="name"  value = "{{session.name}}" required>
                    </div>
                </div>

                <div class="form-group">
                    <div class ="input-group">
                        <input type="text" class="form-control bfh-phone" data-format="+375 (dd) ddd-dd-dd" value = "{{session.phone}}" required>
                    </div>
                </div>

                <div class="form-group">
                    <div class ="input-group ">
                        <input type="text" placeholder="Структурное подразделение" class="form-control" id="JobsDepartment" name = "JobsDepartment"  value = "{{session.JobsDepartment}}"required>
                    </div>
                </div>
                    <input type="button" name="add" value ="изменить" class="btn btn-block btn-success " id="button-edit-point">
                    <div class="form-group response_order">
                            <p style="text-align: center; display: none;"></p>
                    </div>
    </form>
</div>
