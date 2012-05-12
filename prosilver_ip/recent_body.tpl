<!-- INCLUDE overall_header.tpl -->

{IMG_TBL}<div class="forumline nav-div" style="background: none; border-width: 0px;">
	<p class="nav-header" style="background: none; border-width: 0px;"><a href="#" class="nav-current">{STATUS}</a></p>
	<div class="nav-transparent gensmall">
		<form name="form" method="get" action="{FORM_ACTION}">
			{L_SELECT_MODE}
			[ <a href="{FORM_ACTION}?mode=today" class="mainmenu">{L_TODAY}</a> ]
			[ <a href="{FORM_ACTION}?mode=yesterday" class="mainmenu">{L_YESTERDAY}</a> ]
			[ <a href="{FORM_ACTION}?mode=last24" class="mainmenu">{L_LAST24}</a> ]
			[ <a href="{FORM_ACTION}?mode=lastweek" class="mainmenu">{L_LASTWEEK}</a> ]
			[ <a href="#" class="mainmenu">{L_LAST}</a> <input type="hidden" name="mode" value="lastXdays" />
			<input type="text" name="amount_days" size="2" value="{AMOUNT_DAYS}" maxlength="3" class="post" />
			<a href="javascript:document.form.submit();" class="mainmenu">{L_DAYS}</a> ]
		</form>
	</div>
</div>{IMG_TBR}

{IMG_THL}{IMG_THC}<span class="forumlink">{L_RECENT_TITLE}</span>{IMG_THR}<table class="forumlinenb" width="100%" cellspacing="0" cellpadding="0">
<tr>
	<th>&nbsp;</th>
	<th><a href="{U_SORT_CAT}">{L_FORUM}</a></th>
	<th>{L_TOPICS}</th>
	<th>{L_VIEWS}</th>
	<th>{L_REPLIES}</th>
	<th><a href="{U_SORT_TIME}">{L_LASTPOST}</a></th>
</tr>
<!-- BEGIN recent -->
<tr class="{recent.ROW_CLASS}h{recent.CLASS_NEW} row-forum">
	<td class="{recent.ROW_CLASS} row-center" style="background: none;" width="22"><img src="{recent.TOPIC_FOLDER_IMG}" alt="{recent.L_TOPIC_FOLDER_ALT}" title="{recent.L_TOPIC_FOLDER_ALT}" style="margin-right:4px;" /></td>
	<td class="{recent.ROW_CLASS}h{recent.CLASS_NEW} row-forum" style="background: none; cursor: pointer;" onclick="window.location.href='{recent.U_VIEW_FORUM}'"><span class="topiclink{recent.CLASS_NEW}"><a href="{recent.U_VIEW_FORUM}">{recent.FORUM_NAME}</a></span></td>
	<td class="{recent.ROW_CLASS}h{recent.CLASS_NEW} row-forum" style="background: none; cursor: pointer;" onclick="window.location.href='{recent.U_VIEW_TOPIC}'">
		<span class="topiclink{recent.CLASS_NEW}">{recent.NEWEST_POST_IMG}{recent.TOPIC_ATTACHMENT_IMG}{recent.L_NEWS}{recent.TOPIC_TYPE}<a href="{recent.U_VIEW_TOPIC}" class="{recent.TOPIC_CLASS}">{recent.TOPIC_TITLE}</a></span>
		<div style="float: right; display: block; height: auto; vertical-align: top; margin-top: 0px !important; padding-top: 0px !important; padding-right: 3px;">{recent.GOTO_PAGE_FULL}</div>
		<div class="gensmall" style="padding-top: 5px;">{recent.FIRST_AUTHOR}&nbsp;&bull;&nbsp;{recent.FIRST_POST_TIME}</div>
	</td>
	<td class="{recent.ROW_CLASS} row-center-small" style="background: none;">{recent.VIEWS}</td>
	<td class="{recent.ROW_CLASS} row-center-small" style="background: none;">{recent.REPLIES}</td>
	<td class="{recent.ROW_CLASS} row-center-small" style="padding-top: 0; padding-left: 2px; padding-right: 2px; background: none;" nowrap="nowrap">{recent.LAST_POST_TIME}<br />{recent.LAST_AUTHOR}&nbsp;{recent.LAST_URL}</td>
</tr>
<!-- END recent -->
<!-- BEGIN switch_no_topics -->
<tr><td colspan="7" class="row1 row-center"><span class="gen"><i>{L_NO_TOPICS}</i></span></td></tr>
<!-- END switch_no_topics -->
<tr><td class="cat" colspan="7">&nbsp;</td></tr>
</table>{IMG_TFL}{IMG_TFC}{IMG_TFR}
<table class="empty-table" width="100%" cellspacing="0" cellpadding="0" border="0">
<tr>
	<td align="left" valign="top"><span class="gensmall">{PAGE_NUMBER}</span></td>
	<td align="right" valign="top" nowrap="nowrap"><span class="pagination">{PAGINATION}</span><br /><span class="gensmall">{S_TIMEZONE}</span></td>
</tr>
</table>

<!-- INCLUDE overall_footer.tpl -->