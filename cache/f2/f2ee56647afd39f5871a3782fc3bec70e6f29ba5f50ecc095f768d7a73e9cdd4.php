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

/* login.php */
class __TwigTemplate_b75471c98b8b480a6c0dc9b334b9d19f9dfb9733b2724785affd718dfa1f754c extends \Twig\Template
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
        echo "<form>
                         <div class=\"form-group\">
                              <div class =\"input-group\">
                                        <span class=\"input-group-addon\"><i class=\"icon-user2   icon-size-m\"></i></span>
                    \t\t\t        <input type=\"text\" class=\"form-control\" placeholder=\"login\" name=\"login\" required>
                                </div>  
                \t</div>
                        <div class=\"form-group\">
                                <div class =\"input-group\">
                                        <span class=\"input-group-addon\"><i class=\"icon-key2 icon-size-m\"></i></span>
                                    \t<input type=\"password\" class=\"form-control valid\" placeholder=\"password\" name=\"password\" required>
                                </div>
                        </div>
                                   
                \t     <input type=\"button\" name=\"logIn\" value =\"Вход\" class=\"btn btn-block btn-primary\" id=\"loginform\"> 
                        <div class=\"form-group response_order\">
                               <p style=\"color: green; display: none;\"></p>
                        </div>
</form>";
    }

    public function getTemplateName()
    {
        return "login.php";
    }

    public function getDebugInfo()
    {
        return array (  37 => 1,);
    }

    public function getSourceContext()
    {
        return new Source("", "login.php", "/var/www/cisco/templates/login.php");
    }
}
