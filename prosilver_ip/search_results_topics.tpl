<!-- INCLUDE overall_header.tpl -->

<form action="{S_POST_ACTION}" method="post" name="post">
{IMG_THL}{IMG_THC}<span class="forumlink">{L_SEARCH_MATCHES}</span>{IMG_THR}<table class="forumlinenb">
<tr>
	<th width="18">&nbsp;</th>
	<th>{L_FORUM}</th>
	<th>{L_TOPICS}</th>
	<th>{L_REPLIES}</th>
	<th>{L_AUTHOR}</th>
	<th>{L_VIEWS}</th>
	<th>{L_LASTPOST}</th>
	<!-- BEGIN switch_upi2db_on -->
	<th>{L_MAR}</th>
	<!-- END switch_upi2db_on -->
</tr>
<!-- BEGIN searchresults -->
<tr class="{searchresults.ROW_CLASS}h{searchresults.CLASS_NEW} row-forum">
	<td class="{searchresults.ROW_CLASS} row-center" style="background: none;">{searchresults.U_MARK_ALWAYS_READ}</td>
	<td class="{searchresults.ROW_CLASS}h{searchresults.CLASS_NEW} row-forum" style="background: none; cursor: pointer;" data-href="{searchresults.U_VIEW_FORUM}"><span class="topiclink{searchresults.CLASS_NEW}"><a href="{searchresults.U_VIEW_FORUM}">{searchresults.FORUM_NAME}</a></span></td>
	<td class="{searchresults.ROW_CLASS}h{searchresults.CLASS_NEW} row-forum" style="background: none; cursor: pointer;" data-href="{searchresults.U_VIEW_TOPIC}">
		<div class="topic-title-hide-flow"><span class="topiclink{searchresults.CLASS_NEW}">{searchresults.NEWEST_POST_IMG}{searchresults.TOPIC_TYPE}<a href="{searchresults.U_VIEW_TOPIC}" class="{searchresults.TOPIC_CLASS}">{searchresults.TOPIC_TITLE}</a></span> <!-- BEGIN display_reg -->[{searchresults.REG_OPTIONS}]&nbsp;{searchresults.REG_USER_OWN_REG}<!-- END display_reg --></div>
		{searchresults.GOTO_PAGE_FULL}
	</td>
	<td class="{searchresults.ROW_CLASS} row-center-small" style="background: none;">{searchresults.REPLIES}</td>
	<td class="{searchresults.ROW_CLASS} row-center-small" style="background: none;">{searchresults.TOPIC_AUTHOR}</td>
	<td class="{searchresults.ROW_CLASS} row-center-small" style="background: none;">{searchresults.VIEWS}</td>
	<td class="{searchresults.ROW_CLASS} row-center-small" style="background: none;">{searchresults.LAST_POST_TIME}<br />{searchresults.LAST_POST_AUTHOR} {searchresults.LAST_POST_IMG}</td>
	<!-- BEGIN switch_upi2db_on -->
	<td class="{searchresults.ROW_CLASS} row-center-small" style="background: none;" nowrap="nowrap"><input type="checkbox" name="mar_topic_id[]" value="{searchresults.TOPIC_ID}" {searchresults.NO_AGM} /></td>
	<!-- END switch_upi2db_on -->
</tr>
<!-- END searchresults -->
<tr>
	<td class="cat" colspan="8">
		{S_HIDDEN_FIELDS}
		<!-- BEGIN switch_upi2db_on -->
		<input type="submit" class="mainoption" value="{L_SUBMIT_MARK_READ}" />
		<input name="mar" type="hidden" value="1" />
		<!-- END switch_upi2db_on -->
	</td>
</tr>
</table>{IMG_TFL}{IMG_TFC}{IMG_TFR}
<!-- BEGIN switch_upi2db_on -->
<table>
<tr>
	<td class="tdalignr tvalignm">
		<a href="#" onclick="setCheckboxes('post', 'mar_topic_id[]', true); return false;" class="gensmall">{L_MARK_ALL}</a>&nbsp;&bull;&nbsp;<a href="#" onclick="setCheckboxes('post', 'mar_topic_id[]', false); return false;" class="gensmall">{L_UNMARK_ALL}</a><br class="mb5" />
	</td>
</tr>
</table>
<!-- END switch_upi2db_on -->
</form>

<table>
<tr>
	<td><span class="gensmall">{PAGE_NUMBER}</span></td>
	<td class="tdalignr tdnw"><span class="pagination">{PAGINATION}</span><br /><span class="gensmall">{S_TIMEZONE}</span></td>
</tr>
</table>

<div align="right">{JUMPBOX}</div>

<!-- INCLUDE overall_footer.tpl -->