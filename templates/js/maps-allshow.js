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

    var geoObjects=[];

    for (var i = 0; i < dataPoint.length; i++ ) {

        if(dataPoint[i].name){
            var name = dataPoint[i].name;
        }else {
            var name = 'Нет данных';
        }

         geoObjects[i] = new ymaps.Placemark([dataPoint[i].latitude,dataPoint[i].longitude],
            {
                hintContent: dataPoint[i].ssid,
                balloonContent:
                    [
                        '<div style="text-align: left">',
                        '<span>Организация - ' + name +'</span><br />',
                        '<span>Название сети - ' + dataPoint[i].ssid +'</span><br />',
                        '<span>IP адресс - ' + dataPoint[i].ip + '</span><br />',
                            '<div style="text-align: center;">',
                                '<span ><a href ="/point/show/id/'+ dataPoint[i].id+'">Просмотр</a> <a href="/point/edit/id/'+ + dataPoint[i].id+'">Изменить</a> </span>',
                            '</div>',
                        '</div>'
                    ].join(''),
                iconCaption: dataPoint[i].ssid,            
                clusterCaption: (name)
            },
            {
                iconColor: dataPoint[i].placemark_color
            });

    }

    var clusterer = new ymaps.Clusterer ({
        clusterDisableClickZoom: true,
        maxZoom: 13
    });

    map.geoObjects.add(clusterer);
    clusterer.add(geoObjects);

    var searchControl = new ymaps.control.SearchControl({
        options: {
            provider: 'yandex#search'
        }
    });

   map.controls.add(searchControl);
}