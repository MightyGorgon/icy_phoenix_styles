<!DOCTYPE html>
<html lang="{HEADER_LANG}">
<head>
<meta http-equiv="content-type" content="text/html; charset={S_CONTENT_ENCODING}" />
{META}
{META_TAG}
{NAV_LINKS}
<title>{PAGE_TITLE}</title>

<link rel="shortcut icon" href="{FULL_SITE_PATH}images/favicon.ico" />
<link rel="stylesheet" href="{FULL_SITE_PATH}{T_TPL_PATH}style_{CSS_COLOR}.css" type="text/css" />
<link rel="stylesheet" href="{FULL_SITE_PATH}{T_COMMON_TPL_PATH}ip_sprites_famfamfam.css" type="text/css" />
<!-- BEGIN css_style_include -->
<link rel="stylesheet" href="{FULL_SITE_PATH}{T_TPL_PATH}{css_style_include.CSS_FILE}" type="text/css" />
<!-- END css_style_include -->
<!-- BEGIN css_include -->
<link rel="stylesheet" href="{FULL_SITE_PATH}{T_COMMON_TPL_PATH}{css_include.CSS_FILE}" type="text/css" />
<!-- END css_include -->

<!-- This goes first, so that the other scripts can be 'jQuerized' -->
<script type="text/javascript" src="{FULL_SITE_PATH}{T_COMMON_TPL_PATH}jquery/jquery_compressed.js"></script>

<link rel="stylesheet" href="{FULL_SITE_PATH}{T_COMMON_TPL_PATH}jquery/ui/themes/{S_JQUERY_UI_STYLE}/jquery-ui.css" type="text/css" media="screen" />
<link rel="stylesheet" href="{FULL_SITE_PATH}{T_COMMON_TPL_PATH}jquery/ui/jquery-ui-ip.css" type="text/css" media="screen" />
<script src="{FULL_SITE_PATH}{T_COMMON_TPL_PATH}jquery/ui/jquery-ui.min.js" type="text/javascript"></script>
<script src="{FULL_SITE_PATH}{T_COMMON_TPL_PATH}jquery/ui/jquery-ui-i18n.min.js" type="text/javascript"></script>

<!-- IF S_JQUERY_UI_BA -->
<script src="{FULL_SITE_PATH}{T_COMMON_TPL_PATH}jquery/jquery_beforeafter_1_4_compressed.js" type="text/javascript"></script>
<script src="{FULL_SITE_PATH}{T_COMMON_TPL_PATH}jquery/jquery_ui_touch_punch.js" type="text/javascript"></script>
<!-- ENDIF -->

<!-- IF S_JQUERY_UI_TP -->
<link rel="stylesheet" href="{FULL_SITE_PATH}{T_COMMON_TPL_PATH}jquery/ui/jquery-ui-timepicker.css" type="text/css" media="screen" />
<script src="{FULL_SITE_PATH}{T_COMMON_TPL_PATH}jquery/ui/jquery-ui-timepicker.js" type="text/javascript"></script>
<!-- ENDIF -->

<!-- IF S_JQ_CYCLE_SLIDESHOW -->
<script src="{FULL_SITE_PATH}{T_COMMON_TPL_PATH}jquery/jquery_cycle_all_compressed.js" type="text/javascript"></script>
<!-- ENDIF -->

<!-- IF S_JQ_NIVO_SLIDER -->
<link rel="stylesheet" href="{FULL_SITE_PATH}{T_COMMON_TPL_PATH}jquery/jquery_nivo_slider_custom.css" type="text/css" media="screen" />
<script src="{FULL_SITE_PATH}{T_COMMON_TPL_PATH}jquery/jquery_nivo_slider_compressed.js" type="text/javascript"></script>
<!-- ENDIF -->

<!-- IF S_JQUERY_TAGS -->
<link rel="stylesheet" href="{FULL_SITE_PATH}{T_COMMON_TPL_PATH}jquery/jquery_tagedit.css" type="text/css" media="screen" />
<script src="{FULL_SITE_PATH}{T_COMMON_TPL_PATH}jquery/jquery_auto_grow_input.js" type="text/javascript"></script>
<script src="{FULL_SITE_PATH}{T_COMMON_TPL_PATH}jquery/jquery_tagedit.js" type="text/javascript"></script>
<!-- ENDIF -->

<script type="text/javascript">
// <![CDATA[
// OS / BROWSER VARS - BEGIN
// Check for Browser & Platform for PC & IE specific bits
// More details from: http://www.mozilla.org/docs/web-developer/sniffer/browser_type.html
var clientPC = navigator.userAgent.toLowerCase(); // Get client info
var clientVer = parseInt(navigator.appVersion); // Get browser version

var is_ie = ((clientPC.indexOf('msie') != -1) && (clientPC.indexOf('opera') == -1));
var is_win = ((clientPC.indexOf('win') != -1) || (clientPC.indexOf('16bit') != -1));
var is_iphone = ((clientPC.indexOf('iphone')) != -1);
// OS / BROWSER VARS - END

var S_SID = '{S_SID}';
var FULL_SITE_PATH = '{FULL_SITE_PATH}';
var ip_root_path = '{IP_ROOT_PATH}';
var php_ext = '{PHP_EXT}';
var POST_FORUM_URL = '{POST_FORUM_URL}';
var POST_TOPIC_URL = '{POST_TOPIC_URL}';
var POST_POST_URL = '{POST_POST_URL}';
var CMS_PAGE_LOGIN = '{CMS_PAGE_LOGIN}';
var CMS_PAGE_HOME = '{CMS_PAGE_HOME}';
var CMS_PAGE_FORUM = '{CMS_PAGE_FORUM}';
var CMS_PAGE_VIEWFORUM = '{CMS_PAGE_VIEWFORUM}';
var CMS_PAGE_VIEWTOPIC = '{CMS_PAGE_VIEWTOPIC}';
var CMS_PAGE_PROFILE = '{CMS_PAGE_PROFILE}';
var CMS_PAGE_POSTING = '{CMS_PAGE_POSTING}';
var CMS_PAGE_SEARCH = '{CMS_PAGE_SEARCH}';
var form_name = 'post';
var text_name = 'message';
var onload_functions = new Array();
var onunload_functions = new Array();

/**
* New function for handling multiple calls to window.onload and window.unload by pentapenguin
*/
window.onload = function()
{
	for (var i = 0; i < onload_functions.length; i++)
	{
		eval(onload_functions[i]);
	}
};

window.onunload = function()
{
	for (var i = 0; i < onunload_functions.length; i++)
	{
		eval(onunload_functions[i]);
	}
};

// ]]>
</script>

<script type="text/javascript" src="{FULL_SITE_PATH}{T_COMMON_TPL_PATH}js/ip_scripts.js"></script>
<script type="text/javascript" src="{FULL_SITE_PATH}{T_COMMON_TPL_PATH}js/run_active_content.js"></script>

<!-- IE conditional comments: http://msdn.microsoft.com/workshop/author/dhtml/overview/ccomment_ovw.asp -->
<!--[if IE]>
<link rel="stylesheet" href="{FULL_SITE_PATH}{T_COMMON_TPL_PATH}common_ie.css" type="text/css" />
<![endif]-->

<!--[if lt IE 7]>
<script type="text/javascript" src="{FULL_SITE_PATH}{T_COMMON_TPL_PATH}js/pngfix.js"></script>
<![endif]-->

<!-- IF S_HIGHSLIDE -->
<link rel="stylesheet" href="{FULL_SITE_PATH}{T_COMMON_TPL_PATH}highslide/highslide.css" type="text/css" media="screen" />
<!--[if lt IE 7]>
<link rel="stylesheet" href="{FULL_SITE_PATH}{T_COMMON_TPL_PATH}highslide/highslide-ie6.css" type="text/css" />
<![endif]-->
<script type="text/javascript" src="{FULL_SITE_PATH}{T_COMMON_TPL_PATH}highslide/highslide-full.packed.js"></script>
<script type="text/javascript">
// <![CDATA[
hs.graphicsDir = '{FULL_SITE_PATH}{T_COMMON_TPL_PATH}highslide/graphics/';
hs.align = 'center';
hs.transitions = ['expand', 'crossfade'];
hs.outlineType = 'glossy-dark';
hs.showCredits = false;
hs.fadeInOut = true;
hs.numberOfImagesToPreload = 5;
hs.outlineWhileAnimating = 2; // 0 = never, 1 = always, 2 = HTML only
hs.loadingOpacity = 0.75;
hs.dimmingOpacity = 0.75;

// Add the controlbar
hs.addSlideshow({
	<!-- IF S_HIGHSLIDER -->
	thumbstrip: {
		position: 'above',
		mode: 'horizontal',
		relativeTo: 'expander'
	},
	<!-- ENDIF -->
	//slideshowGroup: 'group1',
	interval: 5000,
	repeat: false,
	useControls: true,
	fixedControls: 'fit',
	overlayOptions: {
		opacity: .75,
		position: 'bottom center',
		hideOnMouseOut: true
	}
});
// ]]>
</script>
<!-- ENDIF -->

<!-- IF S_AJAX_FEATURES -->
<script type="text/javascript">
// <![CDATA[
var ajax_core_defined = 0;
var ajax_page_charset = '{S_CONTENT_ENCODING}';
// ]]>
</script>

<script type="text/javascript" src="{FULL_SITE_PATH}{T_COMMON_TPL_PATH}js/ajax/ajax_core.js"></script>
<!-- ENDIF -->

<!-- BEGIN js_include -->
<script type="text/javascript" src="{FULL_SITE_PATH}{T_COMMON_TPL_PATH}{js_include.JS_FILE}"></script>
<!-- END js_include -->

<!-- IF S_SLIDESHOW -->
<!-- INCLUDE album_slideshow_inc_js.tpl -->
<!-- ENDIF -->

{EXTRA_CSS_JS}

<!--[if IE]>
<link rel="stylesheet" href="{FULL_SITE_PATH}{T_TPL_PATH}style_{CSS_COLOR}_ie.css" type="text/css" />
<![endif]-->

</head>
<body>

<div id="global-wrapper">
<span><a id="top"></a></span>
{TOP_HTML_BLOCK}
<!-- IF GH_BLOCK --><!-- BEGIN gheader_blocks_row -->{gheader_blocks_row.CMS_BLOCK}<!-- END gheader_blocks_row --><!-- ENDIF -->
<!-- IF PROFILE_VIEW --><script type="text/javascript">window.open('{U_PROFILE_VIEW}','_blank','height=800,width=250,resizable=yes');</script><!-- ENDIF -->

<div class="top-menu">
	<div id="horiz-menu">
		<ul class="menutop">
			<li><a href="{FULL_SITE_PATH}{U_PORTAL}" accesskey="h">{L_HOME}</a></li>
			<li><a href="{FULL_SITE_PATH}{U_INDEX}">{L_INDEX}</a></li>
			<!-- BEGIN switch_upi2db_off -->
			<li><a href="{FULL_SITE_PATH}{U_SEARCH_NEW}">{L_NEW2}</a></li>
			<!-- END switch_upi2db_off -->
			<!-- BEGIN switch_upi2db_on -->
			<li><a href="{FULL_SITE_PATH}{U_SEARCH_NEW}">{L_NEW2}</a>{L_DISPLAY_U}{L_DISPLAY_M}{L_DISPLAY_P}</li>
			<!-- END switch_upi2db_on -->
			<!-- IF S_LOGGED_IN -->
			<li><a href="{FULL_SITE_PATH}{U_PROFILE}">{L_PROFILE}</a></li>
			<!-- ENDIF -->
			<li><a href="{FULL_SITE_PATH}{U_SEARCH}">{L_SEARCH}</a></li>
			<li><a href="{FULL_SITE_PATH}{U_FAQ}">{L_FAQ}</a></li>
			<!-- IF not S_LOGGED_IN -->
			<li><a href="{FULL_SITE_PATH}{U_REGISTER}">{L_REGISTER}</a></li>
			<!-- ENDIF -->
			<li><a href="{FULL_SITE_PATH}{U_LOGIN_LOGOUT}" accesskey="l">{L_LOGIN_LOGOUT2}</a></li>
		</ul>
	</div>
	<h2 class="sitename">{SITENAME}</h2>
</div>

<div class="top-header">
<table>
<!-- IF GT_BLOCK -->
<tr><td><!-- BEGIN ghtop_blocks_row -->{ghtop_blocks_row.CMS_BLOCK}<!-- END ghtop_blocks_row --></td></tr>
<!-- ENDIF -->
<tr>
	<td class="tvalignt">
		<table>
		<tr>
			<td class="th100pct tdalignl tvalignm">
			<!-- IF GL_BLOCK -->
			<!-- BEGIN ghleft_blocks_row -->{ghleft_blocks_row.OUTPUT}<!-- END ghleft_blocks_row -->
			<!-- ELSE -->
			<!-- IF S_LOGGED_IN -->&nbsp;<!-- ELSE -->&nbsp;<!-- ENDIF -->
			<!-- ENDIF -->
			</td>
			<td class="tdalignc tvalignm"><!-- IF S_HEADER_BANNER --><center><br />{HEADER_BANNER_CODE}</center><!-- ELSE -->&nbsp;<!-- ENDIF --></td>
			<td class="tdalignr tvalignm">
			<!-- <div class="sitedes"><h1>{SITENAME}</h1><h2>{SITE_DESCRIPTION}</h2></div> -->
			<!-- IF GR_BLOCK -->
			<!-- BEGIN ghright_blocks_row -->{ghright_blocks_row.OUTPUT}<!-- END ghright_blocks_row -->
			<!-- ELSE -->
			<!-- IF S_LOGGED_IN -->&nbsp;<!-- ELSE -->&nbsp;<!-- ENDIF -->
			<!-- ENDIF -->
			</td>
		</tr>
		</table>
	</td>
</tr>
</table>
</div>
<div class="top-sep">&nbsp;</div>

{PAGE_BEGIN}
<table id="forumtable">
<!-- IF GB_BLOCK -->
<tr><td colspan="3"><!-- BEGIN ghbottom_blocks_row -->{ghbottom_blocks_row.CMS_BLOCK}<!-- END ghbottom_blocks_row --></td></tr>
<!-- ENDIF -->

<!-- IF S_PAGE_NAV --><tr><td colspan="3"><div style="margin-left: 7px; margin-right: 7px;"><!-- INCLUDE breadcrumbs_main.tpl --></div></td></tr><!-- ENDIF -->

<!-- INCLUDE overall_inc_body.tpl -->
