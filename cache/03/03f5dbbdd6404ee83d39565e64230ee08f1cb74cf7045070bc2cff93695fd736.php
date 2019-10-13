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

/* pagelogin.php */
class __TwigTemplate_f6b671395ff2c95c7aa9629e4ded5b9510a00f20236d31e3fa35453f034d51c9 extends \Twig\Template
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
        echo "<!DOCTYPE html>
<html lang=\"en\">
<head>
  <title>";
        // line 4
        echo twig_escape_filter($this->env, ($context["title"] ?? null), "html", null, true);
        echo "</title>
  <meta charset=\"utf-8\">
  <meta name=\"viewport\" content=\"width=device-width\">
        <link rel=\"stylesheet\" href=\"/css/bootstrap.css\" />
\t\t<link rel=\"stylesheet\" href=\"/css/icons.css\" />
\t\t<link rel=\"stylesheet\" href=\"/css/style.css\" />
\t\t<link rel=\"stylesheet\" href=\"/css/custom.css\" />
\t\t<link rel=\"stylesheet\" href=\"/css/index.css\" />
                <!--Фавикон-->
                <link rel=\"icon\" href=\"/images/favicon.ico\" type=\"image/x-icon\" />
\t\t<link rel=\"shortcut icon\" href=\"/images/favicon.ico\" type=\"image/x-icon\" />
</head>
<body>\t 
<section id=\"logindata\" class=\"dark pt-125 pb-125 text-center\">   
    \t\t\t<div class=\"container\">
        \t\t\t<h2 >Cisco Wifi</h2>
        \t\t\t<h4 class=\"mb-50\">";
        // line 20
        echo twig_escape_filter($this->env, ($context["header"] ?? null), "html", null, true);
        echo "</h4>
        \t\t\t<div class=\"compressed-box-33\"> 
            \t\t\t
                                        ";
        // line 23
        echo ($context["mainbar"] ?? null);
        echo "
                        
        \t\t\t</div>
    \t\t\t</div>
               <div class=\"bg\"></div>  
\t\t\t</section>
    
        <script src=\"/js/jquery-2.1.4.min.js\"></script>
        <script src=\"/js/bootstrap.min.js\"></script>
        <script src=\"/js/checkValidate.js\"></script>

</body>
</html>



";
    }

    public function getTemplateName()
    {
        return "pagelogin.php";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  67 => 23,  61 => 20,  42 => 4,  37 => 1,);
    }

    public function getSourceContext()
    {
        return new Source("", "pagelogin.php", "/var/www/cisco/templates/pagelogin.php");
    }
}
