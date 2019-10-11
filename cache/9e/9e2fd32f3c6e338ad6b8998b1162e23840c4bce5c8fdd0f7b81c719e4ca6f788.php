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

/* template_point_page.php */
class __TwigTemplate_6d9d675bd8b794c89d0a691c7a3fc00ee9d2de819c69c73ceaabd54a8ac752eb extends \Twig\Template
{
    private $source;
    private $macros = [];

    public function __construct(Environment $env)
    {
        parent::__construct($env);

        $this->source = $this->getSourceContext();

        $this->parent = false;

        $this->blocks = [
        ];
    }

    protected function doDisplay(array $context, array $blocks = [])
    {
        $macros = $this->macros;
        // line 1
        echo "   <header id=\"header-slogan-modal-2\" class=\"pt-250 pb-250 light text-left\">
      <div class=\"container\">
         <div class=\"row flex-md-vmiddle\">
           <div class=\"col-md-12\" id=\"button\">
             <h2 class=\"dark text-left\" style=\"\" data-aos=\"zoom-in\" data-aos-easing=\"none\" data-aos-duration=\"500\" data-aos-delay=\"0\"><strong>Access Point</strong>&nbsp; CiscoWifi</h2>
               <p class=\"compressed-box-50 mb-100 dark\" style=\"\">
                   Статистика установленных точек доступа CiscoWifi<br>
                   Организации и фирмы пользующиеся услугой \"Wifi в пользование\"
               </p>
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
    </header>
";
    }

    public function getTemplateName()
    {
        return "template_point_page.php";
    }

    public function getDebugInfo()
    {
        return array (  37 => 1,);
    }

    public function getSourceContext()
    {
        return new Source("", "template_point_page.php", "/var/www/cisco/templates/template_point_page.php");
    }
}
