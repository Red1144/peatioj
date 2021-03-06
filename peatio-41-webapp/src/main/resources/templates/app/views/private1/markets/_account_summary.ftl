<li id="account_summary" class="dropdown">
    <a class="dropdown-toggle" href="#" data-toggle="dropdown">
        <span id="total_assets" data-title="t('.title')"></span>
    </a>
    <div class="dropdown-menu text-right">
        <p class="text-right">
        <ul class="list-inline text-right"></ul>
        </p>
        <table class="table">
            <tbody>
            <#list current_user.accounts as account >
                <#if account.currency_obj.try(:visible)?><#break></#if>
            <tr class="${account.currency} ${@market.scope?(account) ? '' : 'hide'}">
                <td class="account-symbol col-xs-6 text-center">
                    <img src="/icon-${account.currency}.png" alt="${account.currency_obj.code_text}"/>
                    <br/>
                    <span>${account.currency_obj.code_text}</span>
                </td>
                <td class="account-balance col-xs-18 text-right">
                    <span class="amount" data-title="${t('.amount')}">${account.amount}</span>
                    <br/>
                    <span class="locked" data-title="${t('.locked')}">${account.locked}</span>
                </td>
            </tr>
            </#list>
            <tr>
                <td class="text-center" colspan="2">
                    <a class="view_all_accounts" data-hide-text="${t('.hide_all_accounts')}"
                       data-show-text="${t('.view_all_accounts')}"
                       href="#">t('.view_all_accounts')</a>
                </td>
            </tr>
            </tbody>
        </table>
    </div>
</li>
