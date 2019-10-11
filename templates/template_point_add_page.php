<header id="header-slogan-modal-2" class="pt-200 pb-250 light">
      <div class="container">
         <div class="row flex-md-vmiddle">
           <div class="col-md-12" id="button">
             <h2 class="dark text-center" style="" data-aos="zoom-in" data-aos-easing="none" data-aos-duration="500" data-aos-delay="0"><strong>Access Point</strong>&nbsp; CiscoWifi</h2>
               <p class="compressed-box-50 mb-100 dark text-center" style="">
                   Добавить точку доступа<br>
               </p>
                 <div class="col-md-12">

                      <form class="compressed-box-50 m-auto" method="POST">

                          <div class="form-group">
                               <select id = "form-point-add" class="form-control" name = "busines" required>
                                            <option></option>
                                             {%for data in business%}
                                                 <option value="{{data.id}}">{{data.name}}</option>
                                             {%endfor%}
                               </select>
                            </div>

                          <div class="form-group">

                                   <div class ="input-group col-md-12">
                                       <input id = "ip" type="text" class="form-control" placeholder="ip адрес точки" name="ip"   required>
                                   </div>
                           </div>

                          <div class="form-group">
                               <select id = "ssid-add" class="form-control" name = "ssid" required>
                                            <option></option>
                                             {%for data in ssid%}
                                                 <option value="{{data.id}}">{{data.ssid}}</option>
                                             {%endfor%}
                               </select>
                            </div>

                          <div class="form-group">
                              <select class="form-control" title="Укажите тип точки" placeholder="тип точки" name = "type-point" required>
                                  <option selected="selected" value = '' disabled="disabled">Тип точки</option>
                                  <option value = "internal">Внутреняя</option>
                                  <option value = "external">Внешняя</option>
                              </select>
                           </div>

                          <div class="form-group">
                              <select class="my-select form-control"  name = "model-point" required>
                                  <option selected="selected" value = '' disabled="disabled">Модель точки</option>
                                          {%for data in models%}
                                              <option value="{{data.id}}">{{data.model}}</option>
                                          {%endfor%}
                                        </select>
                           </div>

                          <div class="form-group my-class-padding col-md-6">
                              <label for="speed_download">Входящая скорость</label>
                                        <select class="form-control" name="speed_download" id = "speed_download" required>
                                           <option selected="selected" value='' disabled="disabled" >Download (mbit/s)</option>
                                          {%for data in speed%}
                                              <option value="{{data.speed}}">{{data.speed}}</option>
                                          {%endfor%}
                                        </select>
                           </div>

                          <div class="form-group  my-class-padding col-md-6">
                              <label for="speed_upload">Исходящая скорость</label>
                               <select class="form-control" name="speed_upload" id ="speed_upload" required>
                                           <option selected="selected" value='' disabled="disabled" >Upload (mbit/s)</option>
                                          {%for data in speed%}
                                              <option value="{{data.speed}}">{{data.speed}}</option>
                                          {%endfor%}
                                        </select>
                           </div>

                          <div class="form-group ">
                                   <div class ="input-group col-md-12">
                                       <input type="text" class="form-control" placeholder="Mac-адрес" name="mac_address" id="mac_address" required>
                                   </div>
                           </div>

                           <div class="form-group">
                                   <div class ="input-group col-md-12">
                                       <label for="date">Дата установки точки</label>
                                       <input type="date" class="form-control" placeholder="Дата установки" name="date" id="date" value = "{{date}}" required>
                                   </div>
                           </div>
                            <div class="form-group">
                                   <div class ="input-group col-md-12">
                                       <label for="suggest">Адрес установки</label>
                                       <input type="text" class="form-control" name ="address" id="suggest" required>
                                   </div>
                                <button type="button" id="button-maps" disabled="disabled">Показать на карте</button>
                           </div>

                        <div class="form-group col-md-6 my-class-padding">
                            <div class ="input-group ">
                                <label for="latitude">Координаты, широта</label>
                                    <input disabled ="disabled" type="text" class="form-control" id="latitude" name = "latitude" required>
                              </div>
                        </div>
                        <div class="form-group col-md-6 my-class-padding">
                             <div class ="input-group ">
                                 <label for="longitude">Координаты, долгота</label>
                                    <input disabled ="disabled" type="text" class="form-control" id="longitude" name ="longitude" required>
                            </div>

                        </div>
                        <div class="form-group my-class-padding col-md-12">
                            <div id="map" ></div>
                        </div>

                           <div class="form-group">
                                   <div class ="input-group col-md-12">
                                       <input type="text" class="form-control" placeholder="Место установки" name="set_place" id="set_place" required>
                                   </div>
                           </div>

                          <div class="form-group">
                                   <div class ="input-group col-md-12">
                                       <textarea class="form-control" placeholder="Примечание" name="notice" id="notice" rows=2></textarea>
                                   </div>
                           </div>
                        <input type="button" name="add" value ="добавить" class="btn btn-block btn-success " id="button-add-point">
                         <div class="form-group response_order">
                               <p style="text-align: center; display: none;"></p>
                        </div>
                     </form>

                 </div>
           </div>
          </div>
        </div>
       <div class="bg parallax-bg skrollable-after" data-top-bottom="transform:translate3d(0px, 25%, 0px)" data-bottom-top="transform:translate3d(0px, -25%, 0px)"></div>
</header>


