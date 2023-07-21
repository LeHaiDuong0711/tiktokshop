{* {include  file="`$tpldirect`header.tpl"}
{include  file="`$tpldirect``$temp`"}
{include  file="`$tpldirect`footer.tpl"}
 *}
{* 
{if $m == 'panel' || $m == 'setting'}
	{include  file="`$tpldirect`header_admin.tpl"} *}
{* {elseif $m=='client'}
	{include  file="`$tpldirect`header_client.tpl"} *}
{* {elseif $m=='home' && $act=='index'}
	{include  file="`$tpldirect`header_home.tpl"}
{else}
	{include  file="`$tpldirect`header.tpl"}
{/if} *}

{* {if $m == 'home' && $act=='index'}
	{include  file="`$tpldirect``$temp`"}
{else}
	<div id="main-container" class="">
		{include  file="`$tpldirect``$temp`"}
	</div>
{/if} *}

{* {if $m == 'panel' || $m == 'setting'}
	{include  file="`$tpldirect`footer_admin.tpl"} *}
{* {elseif $m=='client'}
	{include  file="`$tpldirect`footer_client.tpl"} *}
{* {elseif $m=='home' && $act=='index'}
	{include  file="`$tpldirect`footer_home.tpl"}
{else}
	{include  file="`$tpldirect`footer.tpl"}
{/if} *}
{include  file="`$tpldirect`header.tpl"}
{include  file="`$tpldirect``$temp`"}
{include  file="`$tpldirect`footer.tpl"}
{$tpldirect}{$temp}