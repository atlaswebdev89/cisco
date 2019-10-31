var  placemarkList;
ymaps.ready(init);
function init () {
    var map = new ymaps.Map ('map', {
        center: [latitude,longitude],
        zoom: zoom,
        controls: [
            'fullscreenControl',
            'zoomControl'
        ],
        behaviors:['drag']
    });


    for (var i = 0; i < dataPoint.length; i++) {
        // Добавляем название города в выпадающий список
        $('select#cities').append('<option value="' + i + '">' + dataPoint[i].name + '</option>');
        // Создаём коллекцию меток для города
        var cityCollection = new ymaps.GeoObjectCollection();

        for (var c = 0; c < dataPoint[i].items.length; c++) {
            var shopInfo = dataPoint[i].items[c];

            var shopPlacemark = new ymaps.Placemark([shopInfo.latitude,shopInfo.longitude],
                {
                    hintContent: shopInfo.ssid,
                    balloonContent:
                        [
                            '<div style="text-align: left">',
                            '<span>Организация - ' + shopInfo.name +'</span><br />',
                            '<span>Название сети - ' + shopInfo.ssid +'</span><br />',
                            '<span>IP адресс - ' + shopInfo.ip + '</span><br />',
                            '<div style="text-align: center;">',
                            '<span ><a href ="/point/show/id/'+ shopInfo.id+'">Просмотр</a> <a href="/point/edit/id/'+ + shopInfo.id+'">Изменить</a> </span>',
                            '</div>',
                            '</div>'
                        ].join(''),
                    iconCaption: shopInfo.ssid,
                    clusterCaption: (shopInfo.name)
                },
                {
                    iconColor: shopInfo.placemark_color
                }
            );
            // Добавляем метку в коллекцию
            cityCollection.add(shopPlacemark);
        }
        // Добавляем коллекцию на карту
       map.geoObjects.add(cityCollection);
    }



    var searchControl = new ymaps.control.SearchControl({
        options: {
            provider: 'yandex#search'
        }
    });
    map.controls.add(searchControl);

    // масштабирование карты, чтобы влазили все объекты
    if(zoom < 19) {
        map.setBounds(map.geoObjects.getBounds(), {
            checkZoomRange: true
        }).then(function () {
            if (map.getZoom() > 15) map.setZoom(15); // Если значение zoom превышает 15, то устанавливаем 15.
        });
    }
}