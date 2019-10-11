<?php

use Twig\Environment;
use Twig\Error\LoaderError;
use Twig\Error\RuntimeError;
use Twig\Extension\SandboxExtension;
use Twig\Markup;
use Twig\Sandbox\SecurityError;
use Twig\Sandbox\SecurityNotAllowedTagError;
use Twig\Sandbox\SecurityNotAllowedFilterError;
use Twig\Sandbox\SecurityNotAllowedFunctionError;
use Twig\Source;
use Twig\Template;

/* main_layout.php */
class __TwigTemplate_a322480781cfcd84be7a02a8eda1121b84865cd7fd55505280f327a51259571b extends \Twig\Template
{
    private $source;
    private $macros = [];

    public function __construct(Environment $env)
    {
        parent::__construct($env);

        $this->source = $this->getSourceContext();

        $this->parent = false;

        $this->blocks = [
            'menu' => [$this, 'block_menu'],
            'content' => [$this, 'block_content'],
        ];
    }

    protected function doDisplay(array $context, array $blocks = [])
    {
        $macros = $this->macros;
        // line 1
        echo "<!DOCTYPE html>
<html lang=\"ru\">
\t<head>
\t\t<meta charset=\"UTF-8\">
\t\t<title>";
        // line 5
        echo twig_escape_filter($this->env, ($context["title"] ?? null), "html", null, true);
        echo "</title>
\t\t<meta name=\"keywords\" content=\"\" />
\t\t<meta name=\"description\" content=\"\" />
\t\t<meta name=\"viewport\" content=\"width=device-width,initial-scale=1.0\">
\t\t<script src=\"http://ajax.googleapis.com/ajax/libs/webfont/1/webfont.js\"></script>
\t\t<script src=\"/js/fonts.js\"></script>
\t\t<link rel=\"stylesheet\" href=\"/css/bootstrap.css\" />
\t\t<link rel=\"stylesheet\" href=\"/css/icons.css\" />
\t\t<link rel=\"stylesheet\" href=\"/css/style.css\" />
\t\t<link rel=\"stylesheet\" href=\"/css/magnific-popup.css\" />
\t\t<link rel=\"stylesheet\" href=\"/css/aos.css\" />
\t\t<link rel=\"stylesheet\" href=\"/css/custom.css\" />
\t\t<link rel=\"stylesheet\" href=\"/css/index.css\" />
                
                <!--Фавикон-->
                <link rel=\"icon\" href=\"/images/favicon.ico\" type=\"image/x-icon\" />
\t\t<link rel=\"shortcut icon\" href=\"/images/favicon.ico\" type=\"image/x-icon\" />
\t</head>
    <body class=\"light-page\">

        
<nav id=\"nav-fluid-logo-menu-btn\" class=\"navbar navbar-fixed-top dark\">
    <div class=\"container-fluid\">
        
        <div class=\"navbar-header\">
            <button type=\"button\" class=\"navbar-toggle collapsed\" data-toggle=\"collapse\" data-target=\"#navbar\" aria-expanded=\"false\">
                <span class=\"icon-bar\"></span>
                <span class=\"icon-bar\"></span>
                <span class=\"icon-bar\"></span>
            </button>
            <div class=\"navbar-brand\">
                <img src=\"/images/wifi-icon2.png\"  alt=\"Your logo\" class=\"dark\" >
                <span><a href = \"/login\" >";
        // line 37
        echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, ($context["session"] ?? null), "name", [], "any", false, false, false, 37), "html", null, true);
        echo " ";
        echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, ($context["session"] ?? null), "secondname", [], "any", false, false, false, 37), "html", null, true);
        echo "</a></span>   
            </div>
        </div>
        
        <div id=\"navbar\" role='navigation' class=\"navbar-collapse collapse\" aria-expanded=\"false\" style=\"height: 0px;\">
            <a class=\"btn-info btn btn-sm navbar-btn navbar-right\" href=\"#\"><i class=\"icon-user icon-position-left\"></i>
                <span style=\"\">Выход</span>
            </a>
                ";
        // line 45
        $this->displayBlock('menu', $context, $blocks);
        // line 47
        echo "        </div>
        
    </div>
    <div class=\"nav-bg light\"></div>
</nav>\t
        <div id=\"wrap\">
       ";
        // line 53
        $this->displayBlock('content', $context, $blocks);
        // line 75
        echo "
<footer id=\"footer-center-social-logo\" class=\"dark pt-50 pb-50 text-center\">
    \t\t\t<div class=\"container\">
        \t\t\t<div class=\"row\">
            \t\t\t<div class=\"col-md-12\">
                \t\t\t<ul class=\"social-list\">
                    \t\t\t<li>
                        \t\t\t<a href=\"#\"><i class=\"icon-twitter icon-size-m\"></i></a>
                    \t\t\t</li>
                    \t\t\t<li>
                        \t\t\t<a href=\"#\"><i class=\"icon-facebook icon-size-m\"></i></a>
                    \t\t\t</li>
                    \t\t\t<li>
                        \t\t\t<a href=\"#\"><i class=\"icon-linkedin icon-size-m\"></i></a>
                    \t\t\t</li>
                    \t\t\t<li class=\"\">
                        \t\t\t<a href=\"#\"><i class=\"icon-github-alt icon-size-m\"></i></a>
                    \t\t\t</li>
                    \t\t\t<li class=\"\">
                        \t\t\t<a href=\"#\"><i class=\"icon-pinterest-p icon-size-m\"></i></a>
                    \t\t\t</li>
                    \t\t\t<li>
                        \t\t\t<a href=\"#\"><i class=\"icon-google-plus icon-size-m\"></i></a>
                    \t\t\t</li>
                    \t\t\t<li>
                        \t\t\t<a href=\"#\"><i class=\"icon-dribbble icon-size-m\"></i></a>
                    \t\t\t</li>
                    \t\t\t<li>
                        \t\t\t<a href=\"#\"><i class=\"icon-behance icon-size-m\"></i></a>
                    \t\t\t</li>
                    \t\t\t<li>
                        \t\t\t<a href=\"#\"><i class=\"icon-instagram icon-size-m\"></i></a>
                    \t\t\t</li>
                    \t\t\t<li>
                        \t\t\t<a href=\"#\"><i class=\"icon-youtube icon-size-m\"></i></a>
                    \t\t\t</li>
                \t\t\t</ul>
                \t\t\t<p class=\"mt-20\">© Multifour.com. Все права защищены.</p>
                \t\t\t<div>
                    
                \t\t\t</div>
            \t\t\t</div>
        \t\t\t</div>
    \t\t\t</div>
    \t\t\t<div class=\"bg\"></div>
\t</footer>
</div>
\t\t
\t\t<div class=\"modal-container\"></div>
\t\t
\t\t
\t\t<script src=\"/js/jquery-2.1.4.min.js\"></script>
\t\t<script src=\"/js/bootstrap.min.js\"></script>
\t\t<script src=\"/js/jquery.magnific-popup.min.js\"></script>
\t\t<script src=\"/js/skrollr.js\"></script>
\t\t<script src=\"/js/aos.js\"></script>
\t\t<script src=\"https://maps.googleapis.com/maps/api/js?key=AIzaSyCByts0vn5uAYat3aXEeK0yWL7txqfSMX8\"></script>
\t\t<script src=\"https://cdn.jsdelivr.net/jquery.goodshare.js/3.2.8/goodshare.min.js\"></script>
\t\t<script src=\"/js/custom.js\"></script>
\t\t<script src=\"/js/index.js\"></script>
\t</body>
</html>

";
    }

    // line 45
    public function block_menu($context, array $blocks = [])
    {
        $macros = $this->macros;
        // line 46
        echo "                ";
    }

    // line 53
    public function block_content($context, array $blocks = [])
    {
        $macros = $this->macros;
        echo " 
        <div id=\"wrap\">
\t\t\t<header id=\"header-slogan-modal-2\" class=\"pt-250 pb-250 light text-left\">
                                <div class=\"container\">
                                    <div class=\"row flex-md-vmiddle\">
                                        <div class=\"col-md-12\" id=\"button\">
                                                <h2 class=\"dark text-left\" style=\"\" data-aos=\"zoom-in\" data-aos-easing=\"none\" data-aos-duration=\"500\" data-aos-delay=\"0\"><strong>Access Point</strong>&nbsp; CiscoWifi</h2>
                                                <p class=\"compressed-box-50 mb-100 dark\" style=\"\">Статистика установленных точек доступа CiscoWifi<br>Организации и фирмы пользующиеся услугой \"Wifi в пользование\"</p>
                                                        <div class=\"col-md-4\" id = \"redy\">
                                                                <a href=\"/point/\" class=\"btn-success btn btn-block btn-lg\" style=\"\" data-aos=\"fade-down\" data-aos-easing=\"none\" data-aos-duration=\"500\" data-aos-delay=\"0\" href=\"#\"><i class=\"icon-wifi icon-position-left\"></i><span style=\"\">Point CiscoWifi</span></a>
                                                                <a class=\"btn-success btn btn-block btn-lg\" style=\"\" data-aos=\"fade-right\" data-aos-easing=\"none\" data-aos-duration=\"500\" data-aos-delay=\"0\" href=\"#\"><i class=\"icon-apartment icon-position-left\"></i><span style=\"\">Business</span></a>
                                                                <a class=\"btn-success btn btn-block btn-lg\" style=\"\" data-aos=\"fade-up\" data-aos-easing=\"none\" data-aos-duration=\"500\" data-aos-delay=\"0\" href=\"#\"><i class=\"icon-desktop icon-position-left\"></i><span style=\"\">Console Manager</span></a>
                                                        </div>
                                                        <div class =\"col-md-8\" id=\"net\">
                                                            <img alt = \"images-net\" src = \"/images/265-2656127_graph-image-network-effect.png\">
                                                        </div>
                                        </div>
                                    </div>
                                </div>
                            <div class=\"bg parallax-bg skrollable-after\" data-top-bottom=\"transform:translate3d(0px, 25%, 0px)\" data-bottom-top=\"transform:translate3d(0px, -25%, 0px)\"></div>
\t\t\t</header>
       ";
    }

    public function getTemplateName()
    {
        return "main_layout.php";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  180 => 53,  176 => 46,  172 => 45,  105 => 75,  103 => 53,  95 => 47,  93 => 45,  80 => 37,  45 => 5,  39 => 1,);
    }

    public function getSourceContext()
    {
        return new Source("", "main_layout.php", "/var/www/cisco/templates/main_layout.php");
    }
}
