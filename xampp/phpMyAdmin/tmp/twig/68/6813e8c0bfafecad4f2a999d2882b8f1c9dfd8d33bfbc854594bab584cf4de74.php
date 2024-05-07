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

/* server/privileges/get_user_link.twig */
class __TwigTemplate_97f448631d175fb485e7bc6e2ff60523fe19bfbc70592c4403e3666321e3985f extends Template
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
        echo "<a
  ";
        // line 2
        if ( !(($context["link_class"] ?? null) === "")) {
            // line 3
            echo "    class=\"";
            echo twig_escape_filter($this->env, ($context["link_class"] ?? null), "html", null, true);
            echo "\"
  ";
        }
        // line 5
        echo "  href=\"";
        echo PhpMyAdmin\Url::getFromRoute("/server/privileges", ((($context["is_revoke"] ?? null)) ? ([]) : (($context["url_params"] ?? null))));
        echo "\"
  ";
        // line 6
        if (($context["is_revoke"] ?? null)) {
            // line 7
            echo "    data-post=\"";
            echo PhpMyAdmin\Url::getCommon(($context["url_params"] ?? null), "");
            echo "\"
  ";
        }
        // line 9
        echo ">
  ";
        // line 10
        echo PhpMyAdmin\Html\Generator::getIcon(twig_get_attribute($this->env, $this->source, ($context["action"] ?? null), "icon", [], "any", false, false, false, 10), twig_get_attribute($this->env, $this->source, ($context["action"] ?? null), "text", [], "any", false, false, false, 10));
        echo "
</a>";
    }

    public function getTemplateName()
    {
        return "server/privileges/get_user_link.twig";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  64 => 10,  61 => 9,  55 => 7,  53 => 6,  48 => 5,  42 => 3,  40 => 2,  37 => 1,);
    }

    public function getSourceContext()
    {
        return new Source("", "server/privileges/get_user_link.twig", "G:\\xampp\\phpMyAdmin\\templates\\server\\privileges\\get_user_link.twig");
    }
}