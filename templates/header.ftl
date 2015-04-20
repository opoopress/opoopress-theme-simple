<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8"/>
    <title><#if (page.title)??>${page.title}${page.title_suffix!} | </#if>${site.title}<#if !(page.title)??>${page.title_suffix!}</#if></title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <#if site.description?? && page.url == '/'><meta name="description" content="${site.description}"><#elseif page.description??><meta name="description" content="${page.description}"></#if>
    <meta name="author" content="${site.author}">
<#--if page.keywords??><meta name="keywords" content="${ page.keywords }"></#if-->
    <meta name="Generator" content="OpooPress-${opoopress.version}"/>
    <meta name="Generated" content="${site.time?datetime?iso_local}"/>
    <link href="${ root_url }/css/bootstrap.min.css" rel="stylesheet">
    <link href="${ root_url }/css/font-awesome.css" rel="stylesheet">
    <link href="${ root_url }/css/main.css" rel="stylesheet">

    <link rel="canonical" href="${root_url}${page.url}">
    <#if (paginator.next)??><link href="${root_url}${paginator.next.url}" rel="next" /></#if>
    <#if (paginator.previous)??><link href="${root_url}${paginator.previous.url}" rel="prev" /></#if>
    <link href="${ site.subscribe_rss }" rel="alternate" title="${site.title}" type="application/atom+xml">

    <!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
    <!--[if lt IE 9]>
    <script src="${ root_url }/js/html5shiv.min.js"></script>
    <![endif]-->

    <!-- Fav and touch icons -->
    <!--
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="../assets/ico/apple-touch-icon-144-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="../assets/ico/apple-touch-icon-114-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="../assets/ico/apple-touch-icon-72-precomposed.png">
    <link rel="apple-touch-icon-precomposed" href="../assets/ico/apple-touch-icon-57-precomposed.png">
    -->
    <link rel="shortcut icon" href="${ root_url }/favicon.ico">
</head>
<body onload="//prettyPrint()">
<div id="wrap">

    <!-- Fixed navbar -->
    <div class="navbar navbar-default navbar-fixed-top" role="navigation">
        <div class="container">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="${site.url}">${site.title}</a>
            </div>
            <div class="navbar-collapse collapse">
                <ul class="nav navbar-nav">
                <#list site.navs?keys as navLabel>
                  <#assign navUrl = site.navs[navLabel]>
                    <li><a href="${navUrl}">${navLabel}</a></li>
                </#list>
                </ul>
            </div><!--/.nav-collapse -->
        </div>
    </div>
<div class="container">
<#if page.title??>
    <div class="page-header">
        <h1>${page.title}</h1>
    </div>
</#if>
