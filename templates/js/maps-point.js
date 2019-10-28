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
                ].join(''),
            iconCaption: ssid
        },
        {

            iconColor: 'green',
            iconGlyph: 'home',
            iconGlyphColor: 'blue',
            preset: 'islands#glyphIcon'
        });


    // Добавляем метку на карту
    map.geoObjects.add(myPlacemark);


}