<!doctype html>
<head>
<!-- INCLUDE overall_inc_header.tpl -->
</head>
<body>
<div id="page-header">
	<div class="navbar navbar-fixed-top">
		<div class="navbar-inner">
			<div class="container-fluid">
			<a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
			<span class="icon-bar"></span>
			<span class="icon-bar"></span>
			<span class="icon-bar"></span>
			</a>
			<a class="brand" href="{FULL_SITE_PATH}{U_PORTAL}"><?php
				$list = array('_TITLE', 'TOPIC_TITLE_SHORT', 'SITENAME');
				for($i=0; $i<count($list); $i++)
				{
				if(isset($this->vars[$list[$i]]))
				{
				echo $this->vars[$list[$i]];
				break;
				}
			} ?></a>
			<div class="nav-collapse">
				<ul class="nav">
				<li><a href="{FULL_SITE_PATH}{U_PORTAL}">{L_HOME}</a></li>
					<li><a href="{FULL_SITE_PATH}{U_INDEX}">{L_INDEX}</a></li>
					<!-- BEGIN switch_upi2db_off -->
					<li><a href="{FULL_SITE_PATH}{U_SEARCH_NEW}">{L_NEW2}</a></li>
					<!-- END switch_upi2db_off -->
					<!-- BEGIN switch_upi2db_on -->
					<li><a href="{FULL_SITE_PATH}{U_SEARCH_NEW}">{L_NEW2}</a></li>
					<!-- END switch_upi2db_on -->
					<!-- IF S_LOGGED_IN -->
					<li><a href="{FULL_SITE_PATH}{U_PROFILE}">{L_PROFILE}</a></li>
					<!-- ENDIF -->
					<li><a href="{FULL_SITE_PATH}{U_SEARCH}">{L_SEARCH}</a></li>
					<li><a href="{FULL_SITE_PATH}{U_FAQ}">{L_FAQ}</a></li>
					<!-- IF not S_LOGGED_IN -->
					<li><a href="{FULL_SITE_PATH}{U_REGISTER}">{L_REGISTER}</a></li>
					<!-- ENDIF -->
					<li><a href="{FULL_SITE_PATH}{U_LOGIN_LOGOUT}">{L_LOGIN_LOGOUT2}</a></li>
					<!-- IF S_MOBILE --><li>{MOBILE_STYLE}</li><!-- ENDIF -->
				</ul>
			</div><!--/.nav-collapse -->
		</div>
	</div>
</div>
<div id="page-body">

{TOP_HTML_BLOCK}
<!-- IF GH_BLOCK --><!-- BEGIN gheader_blocks_row -->{gheader_blocks_row.CMS_BLOCK}<!-- END gheader_blocks_row --><!-- ENDIF -->

<!-- IF GT_BLOCK -->
<!-- BEGIN ghtop_blocks_row -->{ghtop_blocks_row.CMS_BLOCK}<!-- END ghtop_blocks_row -->
<!-- ENDIF -->

<!-- IF GL_BLOCK -->
<!-- BEGIN ghleft_blocks_row -->{ghleft_blocks_row.OUTPUT}<!-- END ghleft_blocks_row -->
<!-- ENDIF -->

<!-- IF GR_BLOCK -->
<!-- BEGIN ghright_blocks_row -->{ghright_blocks_row.OUTPUT}<!-- END ghright_blocks_row -->
<!-- ENDIF -->


<!-- IF GB_BLOCK -->
<!-- BEGIN ghbottom_blocks_row -->{ghbottom_blocks_row.CMS_BLOCK}<!-- END ghbottom_blocks_row -->
<!-- ENDIF -->

<!-- IF S_PAGE_NAV --><!-- INCLUDE breadcrumbs_main.tpl --><!-- ENDIF -->

<!-- INCLUDE overall_inc_body.tpl -->

<!-- ENDIF -->