<!-- INCLUDE overall_inc_footer.tpl -->

<!-- IF GF_BLOCK --><!-- BEGIN gfooter_blocks_row -->{gfooter_blocks_row.CMS_BLOCK}<!-- END gfooter_blocks_row --><!-- ENDIF -->

{BOTTOM_HTML_BLOCK}

<!-- IF not S_BOT -->{RUN_CRON_TASK}<!-- ENDIF -->
</div>
<div class="navbar navbar-fixed-bottom">
	<div class="navbar-inner">
		<div class="container-fluid">
		<p class="left brand">{COPYRIGHT_LINK}</p>
		<p class="right"><!-- IF S_MOBILE -->{MOBILE_STYLE}<!-- ENDIF -->{TEMPLATE_COPYRIGHT_LINK}</p>
		</div>
	</div>
</div>
</div>
</body>
</html>
