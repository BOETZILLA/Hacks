<div style="
    margin-bottom: -10em;"> 

    <img src="addon/donate/tipping.jpg" alt="Donations" style="width:100%"/>

    <div style="
        position: relative;
        color: #fff;
        font-size: 32px;
        font-weight: bold ;
        text-rendering: optimizelegibility;
        top: -95px !important;
        left: 210px !important;
        text-transform: uppercase;
        letter-spacing: -2px;
        text-shadow: 2px 1px 1px rgba(0, 0, 0, 1) !important;">
        SUPPORT HUBZILLA!
    </div>

    <div class="bg-dark" style="
        position: relative;
        top: -150px !important;
        left: 50px;
        width: 150px;
        height: 150px;">
        <img src="addon/donate/logo.png" style="width:100%;border: 1px solid #ddd;"/>
        </div>

</div>
<div class="bg-dark p-2 bg-primary wall-item-title text-white h3">{{$header}}</div>
<div class="wall-item-content-wrapper p-2 wall-item-content">

<div class="descriptive-text">{{$text}}</div>
<form method="post" action="https://www.paypal.com/cgi-bin/webscr">
<input type="hidden" value="_donations" name="cmd">
</div>
<br />

<div class="bg-dark p-2 bg-primary wall-item-title text-white h3">{{$choice}}</div>
<div class="wall-item-content-wrapper p-2 wall-item-content">
<select name="business">
{{foreach $contributors as $c}}
<option value="{{$c[1]}}" title="{{$c.2}}" {{if $c[1] === 'max@macgirvin.com'}}selected="selected"{{/if}} >{{$c[0]}}</option>
{{/foreach}}
</select>
<br />
<br />
<input type="hidden" value="US" name="lc">
<input type="hidden" value="Hubzilla Donation" name="item_name">
<input type="hidden" value="0" name="no_note">
<input type="hidden" value="USD" name="currency_code">
<input type="submit" name="submit" value="{{$onetime}}" class="btn btn-default" />
</form>
</div>
<br />


<div class="bg-dark p-2 bg-primary wall-item-title text-white h3">{{$repeat}}</div>
<div class="wall-item-content-wrapper p-2 wall-item-content">
<p>
{{$note}}
</p>

<form action="https://www.paypal.com/cgi-bin/webscr" method="post">
<input type="hidden" name="cmd" value="_s-xclick" />
<input type="hidden" name="hosted_button_id" value="FHV36KE28CYM8" />

<input type="hidden" name="on0" value="Recurring Donation Options" />
<select name="os0">
	<option value="Option 1">Option 1 : $ 3.00 USD - monthly</option>
	<option value="Option 2">Option 2 : $ 5.00 USD - monthly</option>
	<option value="Option 3">Option 3 : $10.00 USD - monthly</option>
	<option value="Option 4">Option 4 : $20.00 USD - monthly</option>
</select>
<br />
<br />

<input type="hidden" name="currency_code" value="USD" />
<input type="submit" name="submit" value="{{$subscribe}}" class="btn btn-default" />
</form>
</div>
<br />

<div class="bg-dark p-2 bg-primary wall-item-title text-white h3">{{$thanks}}</div>
<div class="wall-item-content-wrapper p-2 wall-item-content">
<ul>
{{foreach $sponsors as $s}}
<li>{{$s}}</li>
{{/foreach}}
</ul>

</div>
