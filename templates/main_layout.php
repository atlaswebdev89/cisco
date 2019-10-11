<!DOCTYPE html>
<html lang="ru">
<head>
    {% block header %}
    {% include 'header.php' %}
    {% endblock %}
</head>

<body class="light-page">     

<nav id="nav-fluid-logo-menu-btn" class="navbar navbar-fixed-top dark">
    <div class="container-fluid">
        
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false">
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <div class="navbar-brand">
                <img src="/images/wifi-icon2.png"  alt="Your logo" class="dark" >
                <span><a href = "/login" >{{session.name}} {{session.secondname}}</a></span>   
            </div>
        </div>
        
        <div id="navbar" role='navigation' class="navbar-collapse collapse" aria-expanded="false" style="height: 0px;">
            <button class="btn-info btn btn-sm navbar-btn navbar-right"  id="logout_button"><i class="icon-user icon-position-left"></i>
                <span style="">Выход</span>
            </button>
            
            <ul class="nav navbar-nav navbar-right" style="">
                <li><a href="/"><i class="icon-home7 icon-position-right"></i> <span>Home</span></a></li>
                {% block menu %}
                {% endblock %}
            </ul>
                
        </div>
        
    </div>
    <div class="nav-bg light"></div>
</nav>	
        <div id="wrap">
       {% block content %} 
        <div id="wrap">
			<header id="header-slogan-modal-2" class="pt-250 pb-250 light text-left">
                                <div class="container">
                                    <div class="row flex-md-vmiddle">
                                        <div class="col-md-12" id="button">
                                                <h2 class="dark text-left" style="" data-aos="zoom-in" data-aos-easing="none" data-aos-duration="500" data-aos-delay="0"><strong>Access Point</strong>&nbsp; CiscoWifi</h2>
                                                <p class="compressed-box-50 mb-100 dark" style="">Статистика установленных точек доступа CiscoWifi<br>Организации и фирмы пользующиеся услугой "Wifi в пользование"</p>
                                                        <div class="col-md-4" id = "redy">
                                                                <a href="/point/" class="btn-success btn btn-block btn-lg" style="" data-aos="fade-down" data-aos-easing="none" data-aos-duration="500" data-aos-delay="0" href="#"><i class="icon-wifi icon-position-left"></i><span style="">Point CiscoWifi</span></a>
                                                                <a class="btn-success btn btn-block btn-lg" style="" data-aos="fade-right" data-aos-easing="none" data-aos-duration="500" data-aos-delay="0" href="#"><i class="icon-apartment icon-position-left"></i><span style="">Business</span></a>
                                                                <a href="/console/" class="btn-success btn btn-block btn-lg" style="" data-aos="fade-up" data-aos-easing="none" data-aos-duration="500" data-aos-delay="0" href="#"><i class="icon-desktop icon-position-left"></i><span style="">Console Manager</span></a>
                                                        </div>
                                                        <div class ="col-md-8" id="net">
                                                            <img alt = "images-net" src = "/images/265-2656127_graph-image-network-effect.png">
                                                        </div>
                                        </div>
                                    </div>
                                </div>
                            <div class="bg parallax-bg skrollable-after" data-top-bottom="transform:translate3d(0px, 25%, 0px)" data-bottom-top="transform:translate3d(0px, -25%, 0px)"></div>
			</header>
       {% endblock %}
       
     {% block footer %}
        {% include 'footer.php' %}
     {% endblock %}


</div>
		
		<div class="modal-container"></div>
		
		{% block scripts %}
                    {% include 'footer-scripts.php' %}
            {% endblock %}
		
	</body>
</html>

