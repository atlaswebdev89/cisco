<div>
    <p>{{session.name}}  {{session.secondname}} </p> 
    <p>Статус: {{session.role}}</p>
    <p>Время входа: {{session.timeLogin}} </p> 
    <p>IP адрес: {{session.ip}} </p> 
    <p>Номер телефона {{session.phone}}</p>
    <p>Отдел {{session.JobsDepartment}}</p>
    <a href ="{{profileUser}}"  class="btn btn-block btn-success">ProfileUser</a>
    <a href ="{{profileUserPass}}"  class="btn btn-block btn-success">Изменить пароль</a>
    <a href ="{{routerHome}}"  class="btn btn-block btn-success">Home</a>
    <button class="btn btn-block btn-danger"  id="logout_button">
        <span style="">Выход</span>
    </button>
</div>  
