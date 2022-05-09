<!doctype html>
<html lang="pl">
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta name="description" content="{$page_description|default:'Opis domyślny'}">
	<title>{$page_title|default:"Logowanie"}</title>
	<link rel="stylesheet" href="https://unpkg.com/purecss@0.6.2/build/pure-min.css" integrity="sha384-UQiGfs9ICog+LwheBSRCt1o5cbyKIHbwjWscjemyBMT9YCUMZffs6UqUTd0hObXD" crossorigin="anonymous">
	<link rel="stylesheet" href="{$conf->app_url}/css/style.css">	

</head>
<body>

<div class="content">
<form action="{$conf->action_root}login" method="post" class="pure-form pure-form-aligned bottom-margin">
	<legend style="text-align:center;">Logowanie do systemu</legend>
	<fieldset style="margin-left:-25%;">
        <div class="pure-control-group">
			<label for="id_login">login: </label>
			<input id="id_login" type="text" name="login" value="{$form->login}"/>
		</div>
        <div class="pure-control-group">
			<label for="id_pass">pass: </label>
			<input id="id_pass" type="password" name="pass" /><br />
		</div>
		<div class="pure-controls">
			<input type="submit" value="zaloguj" class="pure-button pure-button-primary"/>
			<a style="margin-left:25px;" class="pure-button " href="{$conf->action_root}hello">powrót</a>		
			<a class="pure-button pure-button-primary" href="{$conf->action_root}register">rejestracja</a>


		</div>
	</fieldset>
</form>	


{if $msgs->isMessage()}
<div class="messages">
	<ul>
	{foreach $msgs->getMessages() as $msg}
	{strip}
		<li class="msg {if $msg->isError()}error{/if} {if $msg->isWarning()}warning{/if} {if $msg->isInfo()}info{/if}">{$msg->text}</li><br>
	{/strip}
	{/foreach}
	</ul>
</div>
{/if}
</div>

</body>
</html>

