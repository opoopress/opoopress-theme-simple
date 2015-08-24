<#include "/header.ftl">
    <p>
        <span><em>${page.dateFormatted}</em></span>

        <#if page.tags?? && (page.tags?size > 0)>
        <#list page.tags as tag>
            <a class="btn btn-default btn-sm" href="${root_url}${tag.url}">
                <span class="glyphicon glyphicon-tag" aria-hidden="true"></span>
            ${tag.name}
            </a>
        </#list>
        </#if>

        <#if page.categories?? && (page.categories?size > 0)>
        <#list page.categories as cat>
            <a class="btn btn-default btn-sm" href="${root_url}${cat.url}">
                <span class="glyphicon glyphicon-folder-open" aria-hidden="true"> </span>
            ${cat.name}
            </a>
        </#list>
        </#if>
    </p>

${content}

    <hr />

    <nav>
      <ul class="pager">
        <#if (page.previous.url)??><li class="previous"><a href="${root_url}${page.previous.url}"><span aria-hidden="true">&larr;</span> ${page.previous.title}</a></li></#if>
        <#if (page.next.url)??><li class="next"><a href="${root_url}${page.next.url}">${page.next.title} <span aria-hidden="true">&rarr;</span></a></li></#if>
      </ul>
    </nav>

<#if page.related_posts?? && (page.related_posts?size > 0)>
<hr />
<h2>相关文章</h2>
<ul>
    <#list page.related_posts as p>
        <li><a href="${p.url}">${p.title}</a></li>
    </#list>
</ul>
</#if>

<#include "/footer.ftl">
