$(document).ready(function () {
    var flowers = ["Астра", "Нарцисс", "Роза", "Пион", "Примула",
        "Подснежник", "Мак", "Первоцвет", "Петуния", "Фиалка"];

    $('#search').autocomplete({
        source: flowers,
        autoFocus: true
    });
});