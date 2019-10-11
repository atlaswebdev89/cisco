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

/* logout.php */
class __TwigTemplate_85904f03c3bdc3b0193cedad1b7877a66e46ccb140a71985e76806ea2f53b0c5 extends \Twig\Template
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
        echo "<div>
    <p>";
        // line 2
        echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, ($context["session"] ?? null), "name", [], "any", false, false, false, 2), "html", null, true);
        echo "  ";
        echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, ($context["session"] ?? null), "secondname", [], "any", false, false, false, 2), "html", null, true);
        echo " </p> 
    <p>Статус: ";
        // line 3
        echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, ($context["session"] ?? null), "role", [], "any", false, false, false, 3), "html", null, true);
        echo "</p>
    <p>Время входа: ";
        // line 4
        echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, ($context["session"] ?? null), "timeLogin", [], "any", false, false, false, 4), "html", null, true);
        echo " </p> 
    <p>IP адрес: ";
        // line 5
        echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, ($context["session"] ?? null), "ip", [], "any", false, false, false, 5), "html", null, true);
        echo " </p> 
    <p>Номер телефона ";
        // line 6
        echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, ($context["session"] ?? null), "phone", [], "any", false, false, false, 6), "html", null, true);
        echo "</p>
    <p>Отдел ";
        // line 7
        echo twig_escape_filter($this->env, ($context["routerAdd"] ?? null), "html", null, true);
        echo "</p>
    <a href =\"";
        // line 8
        echo twig_escape_filter($this->env, ($context["routerHome"] ?? null), "html", null, true);
        echo "\"  class=\"btn btn-block btn-success\">EditProfileUser</a>
    <a href =\"";
        // line 9
        echo twig_escape_filter($this->env, ($context["routerHome"] ?? null), "html", null, true);
        echo "\"  class=\"btn btn-block btn-success\">Home</a>
</div>  
<form method = \"post\" action=\"";
        // line 11
        echo twig_escape_filter($this->env, ($context["routerLogin"] ?? null), "html", null, true);
        echo "\">
    <input type=\"submit\" name=\"logout\" class=\"btn btn-block btn-danger\" value =\"Выход\">  
</form>";
    }

    public function getTemplateName()
    {
        return "logout.php";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  75 => 11,  70 => 9,  66 => 8,  62 => 7,  58 => 6,  54 => 5,  50 => 4,  46 => 3,  40 => 2,  37 => 1,);
    }

    public function getSourceContext()
    {
        return new Source("", "logout.php", "/var/www/cisco/templates/logout.php");
    }
}
