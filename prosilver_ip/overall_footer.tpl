<!-- IF S_LOFI -->
<!-- IF S_LOFI_BOTS -->
<!-- INCLUDE ../common/lofi/bots/lofi_bots_footer.tpl -->
<!-- ELSE -->
<!-- INCLUDE ../common/lofi/lofi_footer.tpl -->
<!-- ENDIF -->
<!-- ELSE -->
<!-- INCLUDE overall_inc_footer.tpl -->
<tr>
	<td colspan="3">
	<div id="bottom_logo_ext">
	{IMG_TBL}
	<div id="bottom_logo">
		<table class="empty-table" width="100%" cellspacing="0" cellpadding="0" border="0">
			<tr>
				<td nowrap="nowrap" class="min250" align="left"><span class="copyright">{COPYRIGHT_LINK}{TRANSLATION_INFO}</span></td>
				<td nowrap="nowrap" align="center">
					<div style="text-align:center;">
						<span class="generation"><b>{LOFI}</b></span><br />
						<!-- IF S_GENERATION_TIME -->
						<span class="generation">{PAGE_GEN_TIME} <b>{GENERATION_TIME}s</b> (PHP: {PHP_PART}% SQL: {SQL_PART}%){MEMORY_USAGE}</span><br />
						<span class="generation">{SQL_QUERIES}: {NUMBER_QUERIES} - {DEBUG_TEXT} - {GZIP_TEXT}</span>
						<!-- ENDIF -->
					</div>
				</td>
				<td nowrap="nowrap" class="min250" align="right">{TEMPLATE_COPYRIGHT_LINK}</td>
			</tr>
		</table>
	</div>
	{IMG_TBR}
	</div>
	</td>
</tr>
</table>
{PAGE_END}

<!-- IF GF_BLOCK --><!-- BEGIN gfooter_blocks_row -->{gfooter_blocks_row.CMS_BLOCK}<!-- END gfooter_blocks_row --><!-- ENDIF -->
{BOTTOM_HTML_BLOCK}
<span><a name="bottom"></a></span>
<!-- IF not S_BOT -->{RUN_CRON_TASK}<!-- ENDIF -->

</div>

{GOOGLE_ANALYTICS}
</body>
</html>
<!-- ENDIF -->