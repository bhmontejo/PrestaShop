{*
* 2007-2013 PrestaShop
*
* NOTICE OF LICENSE
*
* This source file is subject to the Academic Free License (AFL 3.0)
* that is bundled with this package in the file LICENSE.txt.
* It is also available through the world-wide-web at this URL:
* http://opensource.org/licenses/afl-3.0.php
* If you did not receive a copy of the license and are unable to
* obtain it through the world-wide-web, please send an email
* to license@prestashop.com so we can send you a copy immediately.
*
* DISCLAIMER
*
* Do not edit or add to this file if you wish to upgrade PrestaShop to newer
* versions in the future. If you wish to customize PrestaShop for your
* needs please refer to http://www.prestashop.com for more information.
*
*  @author PrestaShop SA <contact@prestashop.com>
*  @copyright  2007-2013 PrestaShop SA
*  @license    http://opensource.org/licenses/afl-3.0.php  Academic Free License (AFL 3.0)
*  International Registered Trademark & Property of PrestaShop SA
*}

{if isset($hook_mobile)}
	<!-- block seach mobile -->
	<div class="input_search" data-role="fieldcontain">
		<form method="get" action="{$link->getPageLink('search')|escape:'html':'UTF-8'}" id="searchbox">
			<input type="hidden" name="controller" value="search" />
			<input type="hidden" name="orderby" value="position" />
			<input type="hidden" name="orderway" value="desc" />
			<input class="search_query" type="search" id="search_query_top" name="search_query" placeholder="{l s='Search' mod='blocksearch'}" value="{if isset($smarty.get.search_query)}{Tools::htmlentitiesUTF8($smarty.get.search_query)|stripslashes}{/if}" />
		</form>
	</div>
	<!-- /block seach mobile -->
{else}
	<!-- Block search module TOP -->
	<div id="search_block_top">
		<form id="searchbox" method="get" action="{$link->getPageLink('search')|escape:'html':'UTF-8'}" >
			<input type="hidden" name="controller" value="search" />
			<input type="hidden" name="orderby" value="position" />
			<input type="hidden" name="orderway" value="desc" />
			<input class="search_query form-control" type="text" id="search_query_top" name="search_query" placeholder="{l s='Search' mod='blocksearch'}" value="{if isset($smarty.get.search_query)}{Tools::htmlentitiesUTF8($smarty.get.search_query)|stripslashes}{/if}" />
			<button type="submit" name="submit_search" class="btn btn-default button-search">
				<span>{l s='Search' mod='blocksearch'}</span>
			</button>
		</form>
	</div>
	{include file="$tpl_dir/modules/blocksearch/blocksearch-instantsearch.tpl"}
	<!-- /Block search module TOP -->
{/if}