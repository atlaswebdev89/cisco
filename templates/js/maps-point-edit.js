ymaps.ready(init);
function init () {
    var map = new ymaps.Map ('map', {
        center: [latitude,longitude],
        zoom: 18,
        controls: [
            'fullscreenControl',
            'zoomControl'
        ],
        behaviors:['drag']
    });
    var myPlacemark = new ymaps.Placemark([latitude,longitude],
        {
            iconContent: '1',
            hintContent: ssid,
            balloonContent:
                [
                    '<div style="text-align: center">',
                    '<span>Организация - ' + businness +'</span><br />',
                    '<span>Название сети - ' + ssid +'</span><br />',
                    '<span>IP адресс - ' + ip + '</span>',
                    '</div>'
                ].join('')
        },
        {
            draggable: true,
            iconColor: 'green',
            iconGlyph: 'home',
            iconGlyphColor: 'blue',
            preset: 'islands#glyphIcon'
        });

    // Добавляем метку на карту
    map.geoObjects.add(myPlacemark);

    // При клике по кнопке запускаем верификацию введёных данных.
    $('#button-maps').bind('click', function (e) {
        geocode();
    });
    function geocode() {
        var request = $('#suggest').val();
        var myGeocoder = ymaps.geocode(request);
        myGeocoder.then(function (res)
        {
            var coordinates = res.geoObjects.get(0).geometry.getCoordinates();
            map.setCenter(coordinates, 18);
        });

    }
    //Отслеживаем событие щелчка по карте
    map.events.add('click', function (e)
    {
        var coords = e.get('coords');
        var xy = [coords[0].toPrecision(6), coords[1].toPrecision(6)];
        myPlacemark.geometry.setCoordinates(xy);
        $('#latitude').val(coords[0].toPrecision(6));
        $('#longitude').val(coords[1].toPrecision(6));

    });

    //Отслеживаем событие перемещения метки
    myPlacemark.events.add("dragend", function (e) {
        coords = this.geometry.getCoordinates();
        $('#latitude').val(coords[0].toPrecision(6));
        $('#longitude').val(coords[1].toPrecision(6));
    }, myPlacemark);

}