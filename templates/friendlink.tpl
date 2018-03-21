<!DOCTYPE html>
<html lang="zh-CN">
<head>
<meta charset="utf-8">
<title>{$webname}</title>
<link rel="stylesheet" href="style/basic.css">
<link rel="stylesheet" href="style/friendlink.css">
<script src="js/friendlink.js"></script>
</head>
<body style="overflow-y: scroll;">



{include file='header.tpl'}






{if $frontadd}
<div id="friendlink">
	<h2>申请友情链接</h2>
	<form method="post" action="?action=frontadd" name="friendlink">
		<input type="hidden" value="0" name="state">
		<dl>
			<dd>网 站 类 型：<input type="radio" class="type_radio" name="type" id="type1" value="1" checked><label for="type1">文字链接</label>
										<input type="radio" class="type_radio" name="type" id="type2" value="2"><label for="type2">图片链接</label>
			</dd>
			<dd>网 站 名 称：<input type="text" class="text" name="webname"> <span class="orange"> [必填]</span>　(网站名称不得为空,不得大于23位)</dd>
			<dd>网 站 地 址：<input type="text" class="text" name="weburl"> <span class="orange"> [必填]</span>　(网站地址不得为空,不得大于236位)</dd>
			<dd id="logo" style="display: none;">LOGO地址：<input type="text" class="text" name="weblogo"> <span class="orange"> [必填]</span>　(LOGO地址不得为空)</dd>
			<dd>站 长 名 称：<input type="text" class="text" name="user"> <span class="orange"></span></dd>
			<dd>　验 证 码 ：<input type="text" class="text" name="code"> <span class="orange"> [必填]</span> </dd>
			<dd><img src="config/code.php" onclick="this.src='config/code.php?tm=' + Math.random()" style="margin-left: 76px;"></dd>
			<dd><input type="submit" name="send" onclick="return checkForm()" value="申请友情链接" style="margin-left: 79px;"></dd>
		</dl>
	</form>
</div>
{/if}

























{if $frontshow}
<div id="friendlink">
	<h2>所有链接</h2>
	<h3>文字链接</h3>
	<div>
		{if $Alltext}
		{foreach $text(key,value)}
		<a href="{@value->weburl}" target="_blank" class="friendlink">{@value->webname}</a>
		{/foreach}
		{/if}
	</div>
	<h3>Logo链接</h3>
	<div>
		{if $AllLogo}
		{foreach $AllLogo(key,value)}
		<a href="{@value->weburl}" target="_blank"><img src="{@value->logourl}" title="_blank"></a>
		{/foreach}
		{/if}
	</div>
</div>
{/if}






{include file='footer.tpl'}



</body>
</html>
