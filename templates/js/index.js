"use strict";
window.addEventListener('load', function() {
	AOS.init({
		easing: 'ease-in-out-sine'
	});
});

document.addEventListener('DOMContentLoaded', function() {

	$('#logout_button').click(function (event) {
		event.preventDefault();
		if(confirm("Действительно хотите выйти?")){
			ajaxdatasend($(this));
		};
	})
	function ajaxdatasend (button){
		$.ajax ({
			type: 'POST',
			url:'/login',
			data: {logout:true},
			timeout: 5000,
			//Указывая тип json использовать функцию JSON.parse не надо будет ошибка
			dataType: "json",
			beforeSend: function (data) {
				//Блокируем кнопку и элементы формы
				button.attr('disabled', 'disabled');
			},
			success:  function (data) {
				if(data) {
					//Если аутентификация прошла перенаправляем на страницу входа
					if(data.status == true){
						window.location.href = data.url;
					}else if (data.status == false){
						alert("Ошибка удаления. Попробуйте позже");
						button.removeAttr('disabled');
					}else if (data.status == 'NotFoundPoint'){
						alert("Точки нет в БД");
						button.removeAttr('disabled');
					}
				}
			}
		})
	}
});
