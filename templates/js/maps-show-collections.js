var geoobjects=[];
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
      
    var clusterer = new ymaps.Clusterer ({
        clusterDisableClickZoom: true,
        maxZoom: 13
    });
    
    map.geoObjects.add(clusterer);

    $('select#points').append('<option selected = "selected" value="all">Все точки</option>');
    
    for (var i = 0; i < dataPoint.length; i++) {
        var pointGroup=[];
        // Добавляем название города в выпадающий список
        
        $('select#points').append('<option value="' + i + '">' + dataPoint[i].name + '</option>');
        // Создаём коллекцию меток для города

        for (var c = 0; c < dataPoint[i].items.length; c++) {
            var PointInfo = dataPoint[i].items[c];

            var PointPlacemark = new ymaps.Placemark([PointInfo.latitude,PointInfo.longitude],
                {
                    hintContent: PointInfo.ssid,
                    balloonContent:
                        [
                            '<div style="text-align: left">',
                            '<span>Организация - ' + PointInfo.name +'</span><br />',
                            '<span>Название сети - ' + PointInfo.ssid +'</span><br />',
                            '<span>IP адресс - ' + PointInfo.ip + '</span><br />',
                            '<div style="text-align: center;">',
                            '<span ><a href ="/point/show/id/'+ PointInfo.id+'">Просмотр</a> <a href="/point/edit/id/'+ + PointInfo.id+'">Изменить</a> </span>',
                            '</div>',
                            '</div>'
                        ].join(''),
                    iconCaption: PointInfo.ssid,
                    clusterCaption: (PointInfo.name)
                },
                {
                    iconColor: PointInfo.placemark_color
                }
            );
             pointGroup[c]=PointPlacemark;             
        }       
        geoobjects[i] = pointGroup;
        clusterer.add(geoobjects[i]);
    }

// Переключение точек в зависимости от организаций
$(document).on('change', $('select#points'), function () {
    clusterer.removeAll();
    var PointGroupId = $('select#points').val();  
   
    if (PointGroupId=='all') {
       geoobjects.forEach(function(item) {
           clusterer.add(item);
       })
   }else {
           clusterer.add(geoobjects[PointGroupId]); 
   }
   // Масштабируем и выравниваем карту так, чтобы были видны метки для выбранной организации
    map.setBounds(map.geoObjects.getBounds(), {checkZoomRange:true}).then(function(){
        if(myMap.getZoom() > 15) myMap.setZoom(15); // Если значение zoom превышает 15, то устанавливаем 15.
    });
});
 
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