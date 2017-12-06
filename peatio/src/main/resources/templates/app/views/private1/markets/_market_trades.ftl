<div class="has-right-dropdown" id="market_trades_wrapper">
    <div class="dropdown-wrapper">
        <ul class="dropdown-menu">
            <li>
                <a class="all active" href="#">
                    t('.all_html')
                </a>
            </li>
            <li>
                <a class="my" href="#">
                    t('.my_html')
                </a>
            </li>
        </ul>
    </div>
    <div id="market_trades">
        <div class="panel panel-default">
            <div class="panel-body panel-body-head">
                <table class="table">
                    <thead>
                        <tr>
                            <th class="at col-xs-5 text-left">#{t('.time')}</th>
                            <th class="my col-xs-1 text-left"></th>
                            <th class="price col-xs-5 text-right">#{t('.price')}</th>
                            <th class="volume col-xs-5 text-right">#{t('.volume')}</th>
                        </tr>
                    </thead>
                </table>
            </div>
            <div class="panel-body panel-body-content">
                <table class="table table-hover all-trades">
                    <tbody></tbody>
                </table>
                <table class="table table-hover my-trades">
                    <tbody></tbody>
                </table>
            </div>
        </div>
    </div>
</div>