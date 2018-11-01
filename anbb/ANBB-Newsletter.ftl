<#--
Web content templates are used to lay out the fields defined in a web
content structure.

Please use the left panel to quickly add commonly used variables.
Autocomplete is also available and can be invoked by typing "${".
-->
<nav id="site-navigation">
    <a class="brand" href="https://www.berliner-antike-kolleg.org/web/netzwerk-archaeometrie/start?p_p_auth=BN3X6YNw&amp;p_p_id=49&amp;p_p_lifecycle=1&amp;p_p_state=normal&amp;p_p_mode=view&amp;_49_struts_action=%2Fmy_sites%2Fview&amp;_49_groupId=35019&amp;_49_privateLayout=false"> <img alt="Netzwerk Archaeometrie" src="/image/layout_set_logo?img_id=39318&amp;t=1536188792186"> </a>
</nav>
<div style="background: #04717f; color: #fff; text-align: center;">
    <h1>&nbsp;</h1>
    <h1>${Titel.getData()}</h1>
    <p>&nbsp;</p>
    <h2>${Untertitel.getData()}</h2>
    <h2>${Periode.getData()}</h2>
    <p>&nbsp;</p>
</div>

${Einleitungstext.getData()}

<#if Rubrik.getSiblings()?has_content>
	<#list Rubrik.getSiblings() as cur_Rubrik>
        <div style="background: #04717f; color: #fff; text-align: center;">
            <p>&nbsp;</p>
            <h3>${cur_Rubrik.getData()}</h3>
            <p>&nbsp;</p>
        </div>
        <div>
            <#list cur_Rubrik.getChildren() as cur_RubrikChild>
                <p>${cur_RubrikChild.getData()}</p>
            </#list>
		</div>
	</#list>
</#if>
<hr/>
${Schlusstext.getData()}
