{include file="admin/menu.tpl"}
<div class="z-admincontainer">
<div class="z-adminpageicon">{img modname='core' set='icons/large' src='agt_internet.png'}</div>
<h2>{gt text="Captcha settings"}&nbsp;({gt text="version"}&nbsp;{$modinfo.version})</h2>
<form class="z-form" action="{modurl modname="Captcha" type="admin" func="updateconfig"}" method="post" enctype="application/x-www-form-urlencoded">
    <div>
    <input type="hidden" name="authid" value="{insert name="generateauthkey" module="Captcha"}" />
    <fieldset>
        <legend>{gt text='General settings'}</legend>
        <p class="z-informationmsg">{gt text='You must obtain public and private keys by registering an account at %s.' tag1="<a href='https://www.google.com/recaptcha/admin/create' target=_blank>the reCaptcha site</a>"}</p>
        <div class="z-formrow">
			<label for="privatekey">{gt text='Private reCaptcha key'}</label>
			<input type="text" value="{$modvars.Captcha.privatekey}" id="privatekey" name="privatekey" />
        </div>
        <div class="z-formrow">
			<label for="publickey">{gt text='Public reCaptcha key'}</label>
			<input type="text" value="{$modvars.Captcha.publickey}" id="publickey" name="publickey" />
        </div>
    </fieldset>
    <div class="z-buttons z-formbuttons">
        {button src="button_ok.png" set="icons/extrasmall" __alt="Save" __title="Save" __text="Save"}
        <a href="{modurl modname="Captcha" type="admin"}" title="{gt text="Cancel"}">{img modname=core src="button_cancel.png" set="icons/extrasmall" __alt="Cancel" __title="Cancel"} {gt text="Cancel"}</a>
    </div>
    </div>
</form>
</div><!-- /z-admincontainer -->