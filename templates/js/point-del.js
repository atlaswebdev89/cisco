$(document).ready(function(){
    //Удаление по id ссылка в карточке точки wifi
    $('#point_del').click(function (event) {
        event.preventDefault();
        if(confirm("Действительно хотите удалить точку?")){
            var id = $(this).data("id-point");
            ajaxdatasend($(this), id);
        };
    })

    //Удаление в общем списке без редиректа
    $('.point_del').click(function (event) {
        event.preventDefault();
        if(confirm("Действительно хотите удалить точку?")){
            var id = $(this).data("id-point");
            ajaxPointDel($(this), id);
        };
    })

    function ajaxdatasend (button, id){
        $.ajax ({
            type: 'POST',
            url:'/point/delete',
            data: {id:id},
            timeout: 5000,
            //Указывая тип json использовать функцию JSON.parse не надо будет ошибка
            dataType: "json",
            beforeSend: function (data) {
                //Блокируем кнопку и элементы формы
                button.attr('disabled', 'disabled');
            },
            success:  function (data) {
                if (data) {
                    //Если ошибки нет делаем перенаправление
                    if (data.status == true) {
                        alert("Точка удалена");
                        window.location.href = data.url;
                        //Если доступ закрыт делаем перенаправление на страницу загрушку
                    } else if (data.status == 'denied') {
                        window.location.href = data.url;
                    } else if (data.status == false) {
                        alert("Ошибка удаления. Попробуйте позже");
                        button.removeAttr('disabled');
                    } else if (data.status == 'NotFoundPoint') {
                        alert("Точки нет в БД");
                        button.removeAttr('disabled');
                    }
                }
            }
        })
    }

    function ajaxPointDel (button, id){
        $.ajax ({
            type: 'POST',
            url:'/point/delete',
            data: {id:id},
            timeout: 5000,
            //Указывая тип json использовать функцию JSON.parse не надо будет ошибка
            dataType: "json",
            beforeSend: function (data) {
                //Блокируем кнопку и элементы формы
                button.attr('disabled', 'disabled');
            },
            success:  function (data) {
                if (data) {
                    //Если ошибки нет делаем перенаправление
                    if (data.status == true) {
                        button.closest('.parent-block').hide(600);
                        //Если доступ закрыт делаем перенаправление на страницу загрушку
                    } else if (data.status == 'denied') {
                        window.location.href = data.url;
                    } else if (data.status == false) {
                        alert("Ошибка удаления. Попробуйте позже");
                        button.removeAttr('disabled');
                    } else if (data.status == 'NotFoundPoint') {
                        alert("Точки нет в БД");
                        button.removeAttr('disabled');
                    }
                }
            }
        })
    }
})