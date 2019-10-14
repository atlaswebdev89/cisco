ymaps.ready(init);
function init () {
    var map = new ymaps.Map ('map', {
        center: [52.0947,23.6911],
        zoom: 14,
        controls: [
            'fullscreenControl',
            'zoomControl'
        ],
        behaviors:['drag']
    });


    var geoObjects=[];

    for (var i = 0; i < dataPoint.length; i++ ) {

         geoObjects[i] = new ymaps.Placemark([dataPoint[i].latitude,dataPoint[i].longitude],
            {
                iconContent: '1',
                hintContent: dataPoint[i].ssid,
                balloonContent:
                    [
                        '<div style="text-align: center">',
                        '<span>Организация - ' + dataPoint[i].name +'</span><br />',
                        '<span>Название сети - ' + dataPoint[i].ssid +'</span><br />',
                        '<span>IP адресс - ' + dataPoint[i].ip + '</span>',
                        '</div>'
                    ].join(''),
                clusterCaption: (dataPoint[i].name)
            },
            {

                iconColor: 'green',
                iconGlyph: 'home',
                iconGlyphColor: 'blue',
                preset: 'islands#glyphIcon',
                clusterCaption: (dataPoint[i].name),
                balloonContentBody: dataPoint[i].ip +'<br>'+ dataPoint[i].ssid
            });

    }

    var clusterer = new ymaps.Clusterer ({
        clusterDisableClickZoom: true
    });

    map.geoObjects.add(clusterer);
    clusterer.add(geoObjects);
}