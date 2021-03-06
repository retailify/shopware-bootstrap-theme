{extends file="frontend/index/sidebar.tpl"}

{block name="frontend_index_sidebar"}
    {if $theme.sidebarFilter}
        <div id="sidebarFilterOffcanvas" class="offcanvas-has-panel">
            {block name='frontend_listing_sidebar_offcanvas'}
                <div class="buttons-off-canvas{if $class} {$class}{else} offcanvas-default{/if}">
                    {block name='frontend_listing_sidebar_offcanvas_inner'}
                        <a href="#" title="{"{s name="OffcanvasCloseMenuLink"}Menü schließen{/s}"|escape}"
                           class="close-off-canvas sw5-plugin">
                            <i class="fa fa-angle-left"></i>
                            <span class="sidebar-offcanvas-close"
                                  data-show-products-text="{s name="ListingActionsCloseFilterShowProducts" namespace="frontend/listing/listing_actions"}{/s}">
                                {s name="OffcanvasCloseMenuLink"}{/s}
                            </span>
                        </a>
                    {/block}
                </div>
            {/block}
            {block name='frontend_listing_sidebar'}
                <div class="listing-sidebar mtm-xs mtm-sm">
                    {$smarty.block.parent}

                    <div class="sidebar-filter">
                        <div class="sidebar-filter--content sw5-plugin">
                            {include file="frontend/listing/actions/action-filter-panel.tpl" filterBtn='btn-block'}
                        </div>
                    </div>
                </div>
            {/block}
        </div>
    {else}
        {$smarty.block.parent}
    {/if}
{/block}
