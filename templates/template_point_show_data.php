<header id="header-slogan-modal-2" class="pt-200 pb-250 light">
      <div class="container">
         <div class="row flex-md-vmiddle">
           <div class="col-md-12" id="button">
             <h2 class="dark text-center" style="" data-aos="zoom-in" data-aos-easing="none" data-aos-duration="500" data-aos-delay="0"><strong>Access Point</strong>&nbsp; CiscoWifi</h2>
             <p class="compressed-box-50 mb-100 dark text-center" style="">
                   Данные точки Сisco<br>
               </p>
             


                 {% if show_block_moderator %}
                     <div class="dark" style="text-align: right; margin-bottom: 10px;">
                         <a  class="btn btn-primary" href="{{edit}}">Изменить</a>
                         {% if show_block_admin %}
                                <button  class="btn btn-danger" id="point_del"  data-id-point = "{{id}}">Удалить</button>
                         {% endif %}
                     </div>
                 {% endif %}

                 <table class="table table-bordered table-inverse  table-responsive dark text-center">
                        <tbody>
                          {%for data in dataPoint%}
                                        <tr>
                                            <th scope="row">Ip адрес</th>
                                            <td>{{ data.ip }}</td>
                                        </tr>
                                        <tr>
                                          <th scope="row">Название сети (ssid)</th>
                                          <td>{{ data.ssid }}</td>
                                        </tr>
                                        <tr>
                                            <tr>
                                          <th scope="row">MAC адрес</th>
                                          <td>{{ data.mac }}</td>
                                        </tr>
                                         <tr>
                                          <th scope="row">Тип точки</th>
                                          <td>{{ data.type }}</td>
                                        </tr>
                                        <tr>
                                          <th scope="row">Модель точки</th>
                                          <td>{{ data.model }}</td>
                                        </tr>  
                                          <th scope="row">Организация</th>
                                          <td>{{ data.name }}</td>
                                        </tr>  
                                        
                                        <tr>
                                          <th scope="row">Входящая скорость (мб/с)</th>
                                          <td>{{ data.speed_download }}</td>
                                        </tr>
                                        <tr>
                                          <th scope="row">Исходящая скорость (мб/с)</th>
                                          <td>{{ data.speed_upload }}</td>
                                        </tr>
                                       
                                        <tr>
                                          <th scope="row">Дата установки</th>
                                          <td>{{ data.installation_date }}</td>
                                        </tr>
                                        
                                          
                                        <tr>
                                          <th scope="row">Адрес установки</th>
                                          <td>{{ data.address }} </td>
                                        </tr>
                                        <tr>
                                          <th scope="row">Место установки</th>
                                          <td>{{ data.set_place }}</td>
                                        </tr>
                                        <tr>
                                          <th scope="row">Примечание</th>
                                          <td>{{ data.notice }}</td>
                                        </tr>

                            {%endfor%}  
                        </tbody>
                 </table>

                     <div id="map" ></div>
             </div>  
           
                
           </div>
        </div>
       <div class="bg parallax-bg skrollable-after" data-top-bottom="transform:translate3d(0px, 25%, 0px)" data-bottom-top="transform:translate3d(0px, -25%, 0px)"></div>

    <script>
        var longitude = {{longitude}};
        var latitude = {{latitude}};
        var ip = '{{ip}}';
        var ssid = '{{ssid}}';
        var businness = '{{businness}}';
    </script>



</header>

