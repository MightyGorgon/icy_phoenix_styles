<!-- INCLUDE overall_header.tpl -->

{XS_NEWS}

<h2 style="text-align: left;"><a href="{U_VIEW_FORUM}" style="text-decoration: none;">{FORUM_NAME}</a></h2>

{CALENDAR_BOX}

<!-- IF S_FORUM_RULES -->
<div class="navbar rules-box" style="margin-top: 5px;">
	<div class="inner"><span class="corners-top"><span></span></span>
	<div style="text-align: left;">
		<span class="forumlink"><b><!-- IF S_FORUM_RULES_TITLE -->{L_FORUM_RULES}<!-- ENDIF -->&nbsp;</b></span><hr class="cell-title" />
		<div class="post-text">{FORUM_RULES}</div>
	</div>
	<span class="corners-bottom"><span></span></span></div>
</div>
<br />
<!-- ENDIF -->

<table>
<tr>
	<td class="tdalignl tvalignb tw60pct">
		<span class="gensmall">{L_MODERATOR}:&nbsp;{MODERATORS}</span><br /><!-- IF not S_BOT --><span class="gensmall">{TOTAL_USERS_ONLINE}&nbsp;</span><br /><span class="gensmall">{LOGGED_IN_USER_LIST}&nbsp;</span><br /><span class="gensmall">{BOT_LIST}&nbsp;</span><!-- ENDIF --><br />
	</td>
	<td class="tdalignr tvalignb" rowspan="2">
		<span class="gen">{PAGE_NUMBER}</span><br />
		<span class="pagination">{PAGINATION}</span><br />
		<!-- IF S_EXTENDED_PAGINATION -->
		<div style="margin-top: 3px;"><form method="post" action="{U_VIEW_FORUM}"><span class="gen"><b>{L_GO_TO_PAGE_NUMBER}</b>&nbsp;<input type="text" name="page_number" value="" size="3" class="post" />&nbsp;&nbsp;<input type="submit" name="submit" value="{L_GO}" class="mainoption" /></span></form></div>
		<!-- ENDIF -->
		<!-- IF not S_BOT --><div style="margin-top: 3px;"><form action="{FULL_SITE_PATH}{U_SEARCH}" method="post"><input name="search_keywords" type="text" class="post search" style="width: 160px;" value="{L_SEARCH_THIS_FORUM}" onclick="if(this.value=='{L_SEARCH_THIS_FORUM}')this.value='';" onblur="if(this.value=='')this.value='{L_SEARCH_THIS_FORUM}';" /><input type="hidden" name="search_where" value="{FORUM_ID_FULL}" />&nbsp;<input type="submit" class="mainoption" value="{L_SEARCH}" /></form></div><!-- ENDIF -->
	</td>
</tr>
<tr><td class="tdalignl tvalignm"><!-- IF not S_BOT --><div class="buttons"><!-- IF IS_LOCKED --><div class="locked-button"><!-- ELSE --><div class="newtopic-button"><!-- ENDIF --><a href="{U_POST_NEW_TOPIC}"><span>{L_POST_NEW_TOPIC}</span></a></div></div><!-- ELSE -->&nbsp;<!-- ENDIF --></td></tr>
</table>
{BOARD_INDEX}

<form method="post" action="{S_POST_DAYS_ACTION}" style="display:inline;">
{IMG_THL}{IMG_THC}<a href="{U_VIEW_FORUM}" class="forumlink">{FORUM_NAME}</a>{IMG_THR}<table class="forumlinenb">
<!-- IF VIEWFORUM_BANNER_TOP -->
<tr><td class="row3 row-center" colspan="7">{VIEWFORUM_BANNER_TOP}</td></tr>
<!-- ENDIF -->
<tr>
	<th colspan="2"><a href="{U_VF_TITLE_SORT}" title="{L_CURRENT_SORT}">{L_TOPICS}{VF_TITLE_SORT}</a></th>
	<th class="tw50px"><a href="{U_VF_VIEWS_SORT}" title="{L_CURRENT_SORT}">{L_VIEWS}{VF_VIEWS_SORT}</a></th>
	<th class="tw50px"><a href="{U_VF_REPLIES_SORT}" title="{L_CURRENT_SORT}">{L_REPLIES}{VF_REPLIES_SORT}</a></th>
	<!-- BEGIN rating_switch -->
	<th style="max-width: 100px;">{L_RATING}</th>
	<!-- END rating_switch -->
	<th><a href="{U_VF_LAST_POST_SORT}" title="{L_CURRENT_SORT}">{L_LASTPOST}{VF_LAST_POST_SORT}</a></th>
</tr>
<!-- BEGIN topicrow -->
<!-- BEGIN divider -->
<tr><td class="forum-buttons2" colspan="7"><span>{topicrow.divider.L_DIV_HEADERS}</span></td></tr>
<!-- END divider -->
<tr class="{topicrow.ROW_CLASS}h{topicrow.CLASS_NEW} row-forum">
	<td class="{topicrow.ROW_CLASS} row-center" style="padding: 3px; background: none;" width="20">{topicrow.U_MARK_ALWAYS_READ}</td>
	<td class="{topicrow.ROW_CLASS}h{topicrow.CLASS_NEW} row-forum tw100pct" style="background: none; cursor: pointer;" data-href="{topicrow.U_VIEW_TOPIC}">
		<!-- IF S_FORUM_LIKES_SWITCH and topicrow.LIKES --><div style="float: right; display: inline; vertical-align: top; margin-top: 0px !important; padding-top: 0px !important; padding-right: 3px;"><span class="fff-icon-heart"></span> {topicrow.LIKES}</div><!-- ENDIF --><div class="topic-title-hide-flow"><span class="topiclink{topicrow.CLASS_NEW}">{topicrow.NEWEST_POST_IMG}{topicrow.TOPIC_ATTACHMENT_IMG}{topicrow.TOPIC_TYPE}<a href="{topicrow.U_VIEW_TOPIC}" class="{topicrow.TOPIC_CLASS}">{topicrow.TOPIC_TITLE}</a> <!-- BEGIN display_reg --> [{topicrow.REG_OPTIONS}]&nbsp;{topicrow.REG_USER_OWN_REG}<!-- END display_reg -->{topicrow.CALENDAR_TITLE}</span></div>
		<!-- BEGIN switch_topic_desc -->
		<span class="gensmall">&nbsp;{topicrow.switch_topic_desc.TOPIC_DESCRIPTION}</span><br />
		<!-- END switch_topic_desc -->
		<div style="float: right; display: block; height: auto; vertical-align: top; margin-top: 0px !important; padding-top: 0px !important; padding-right: 3px;">{topicrow.GOTO_PAGE}</div>
		<div class="gensmall" style="padding-top: 5px;">{topicrow.TOPIC_AUTHOR}&nbsp;&bull;&nbsp;{topicrow.FIRST_POST_TIME}</div>
	</td>
	<td class="{topicrow.ROW_CLASS} row-center-small" style="background: none;">{topicrow.VIEWS}</td>
	<td class="{topicrow.ROW_CLASS} row-center-small" style="background: none;">{topicrow.REPLIES}</td>
	<!-- BEGIN rate_switch_msg -->
	<td class="{topicrow.ROW_CLASS} row-center-small" style="background: none;"><img src="{FULL_SITE_PATH}{RATING_IMAGES_PATH}rate_{topicrow.TOPIC_RATING}.png" alt="{topicrow.TOPIC_RATING}" /></td>
	<!-- END rate_switch_msg -->
	<td class="{topicrow.ROW_CLASS} row-center-small" style="padding-top: 0; padding-left: 2px; padding-right: 2px; background: none;" nowrap="nowrap">{topicrow.LAST_POST_TIME}<br />{topicrow.LAST_POST_AUTHOR} <!-- IF S_BOT -->&nbsp;<!-- ELSE -->{topicrow.LAST_POST_IMG}<!-- ENDIF --></td>
</tr>
<!-- IF not S_BOT -->
<!-- BEGIN switch_viewforum_banner -->
<tr>
	<td class="row1 row-center" style="padding: 3px; background: none;">{VIEWFORUM_BANNER_CODE_IMG}</td>
	<td class="row1h-new row-forum tw100pct" colspan="6">{VIEWFORUM_BANNER_CODE}</td>
</tr>
<!-- END switch_viewforum_banner -->
<!-- ENDIF -->
<!-- END topicrow -->
<!-- BEGIN switch_no_topics -->
<tr><td class="row1 row-center" colspan="7" height="30"><span class="gen">{L_NO_TOPICS}</span></td></tr>
<!-- END switch_no_topics -->
<!-- IF VIEWFORUM_BANNER_BOTTOM -->
<tr><td class="row3 row-center" colspan="7">{VIEWFORUM_BANNER_BOTTOM}</td></tr>
<!-- ENDIF -->
<tr>
	<td class="cat tvalignm" colspan="7">
		<span class="genmed" style="float: right; text-align: right; vertical-align: middle; padding-right: 5px; padding-top: 5px;"><!-- IF S_TIMEZONE -->{S_TIMEZONE}<!-- ELSE -->&nbsp;<!-- ENDIF --></span>
		<div class="gensmall" style="text-align: left; padding-left: 5px; padding-top: 5px;">{L_DISPLAY_TOPICS}:&nbsp;{S_SELECT_TOPIC_DAYS}&nbsp;<input type="submit" class="liteoption jumpbox" value="{L_GO}" name="submit" /></div>
	</td>
</tr>
<!-- IF S_SHOW_ALPHA_BAR and not S_BOT -->
<tr>
	<td class="cat tdalignc tvalignm" colspan="7">
	<span class="gensmall">{L_SORT_TOPICS}:{DIVIDER}<a href="{U_NEWEST}">{L_SORT_TOPICS_NEWEST}</a>{DIVIDER}<a href="{U_OLDEST}">{L_SORT_TOPICS_OLDEST}</a>{DIVIDER}<a href="{U_AZ}">A-Z</a>{DIVIDER}<a href="{U_ZA}" >Z-A</a>{DIVIDER}<!-- BEGIN alphabetical_sort --><a href="{alphabetical_sort.U_LETTER}" >{alphabetical_sort.LETTER}</a>{alphabetical_sort.DIVIDER}<!-- END alphabetical_sort -->{DIVIDER}</span>
	</td>
</tr>
<!-- ENDIF -->
</table>{IMG_TFL}{IMG_TFC}{IMG_TFR}
</form>

<table>
<tr>
	<td><!-- IF not S_BOT --><div class="buttons"><!-- IF IS_LOCKED --><div class="locked-button"><!-- ELSE --><div class="newtopic-button"><!-- ENDIF --><a href="{U_POST_NEW_TOPIC}"><span>{L_POST_NEW_TOPIC}</span></a></div></div><!-- ELSE -->&nbsp;<!-- ENDIF --></td>
	<td width="40%" align="right" valign="top"><div style="height: 40px;"><span class="pagination">{PAGINATION}</span></div></td>
</tr>
<tr>
	<td class="tdnw">
		<div style="margin-right:30px;">{IMG_TBL}<div id="icon_description_h" style="display: none;">
			<table>
			<tr>
				<td>
					<div class="max-min-right" style="{SHOW_HIDE_PADDING}"><img src="{IMG_MAXIMISE}" onclick="ShowHide('icon_description','icon_description_h','icon_description');" alt="" />&nbsp;</div><span class="forumlink"><b>{L_ICON_DESCRIPTION}</b></span>
				</td>
			</tr>
			</table>
		</div>
		<div id="icon_description">
			<table class="s2px">
			<tr>
				<td colspan="6">
					<div class="max-min-right" style="{SHOW_HIDE_PADDING}"><img src="{IMG_MINIMISE}" onclick="ShowHide('icon_description','icon_description_h','icon_description');" alt="" />&nbsp;</div><span class="forumlink"><b>{L_ICON_DESCRIPTION}</b></span><hr class="cell-title" />
				</td>
			</tr>
			<tr>
				<td class="tw20px tdalignc"><img src="{FOLDER_NEW_IMG}" alt="{L_NEW_POSTS}" title="{L_NEW_POSTS}" /></td>
				<td class="gensmall">&nbsp;{L_NEW_POSTS}</td>
				<td>&nbsp;&nbsp;</td>
				<td class="tw20px tdalignc"><img src="{FOLDER_IMG}" alt="{L_NO_NEW_POSTS}" title="{L_NO_NEW_POSTS}" /></td>
				<td class="gensmall">&nbsp;{L_NO_NEW_POSTS}</td>
				<td>&nbsp;&nbsp;</td>
			</tr>
			<tr>
				<td class="tw20px tdalignc"><img src="{FOLDER_HOT_NEW_IMG}" alt="{L_NEW_POSTS_HOT}" title="{L_NEW_POSTS_HOT}" /></td>
				<td class="gensmall">&nbsp;{L_NEW_POSTS_HOT}</td>
				<td>&nbsp;&nbsp;</td>
				<td class="tw20px tdalignc"><img src="{FOLDER_HOT_IMG}" alt="{L_NO_NEW_POSTS_HOT}" title="{L_NO_NEW_POSTS_HOT}" /></td>
				<td class="gensmall">&nbsp;{L_NO_NEW_POSTS_HOT}</td>
				<td>&nbsp;&nbsp;</td>
			</tr>
			<tr>
				<td class="tdalignc gensmall"><img src="{FOLDER_LOCKED_NEW_IMG}" alt="{L_NEW_POSTS_TOPIC_LOCKED}" title="{L_NEW_POSTS_TOPIC_LOCKED}" /></td>
				<td class="gensmall">&nbsp;{L_NEW_POSTS_LOCKED}</td>
				<td>&nbsp;&nbsp;</td>
				<td class="tdalignc gensmall"><img src="{FOLDER_LOCKED_IMG}" alt="{L_NO_NEW_POSTS_TOPIC_LOCKED}" title="{L_NO_NEW_POSTS_TOPIC_LOCKED}" /></td>
				<td class="gensmall">&nbsp;{L_NO_NEW_POSTS_LOCKED}</td>
				<td>&nbsp;&nbsp;</td>
			</tr>
			<tr>
				<td class="tdalignc gensmall"><img src="{FOLDER_STICKY_NEW_IMG}" alt="{L_NEW_POSTS_STICKY}" title="{L_NEW_POSTS_STICKY}" /></td>
				<td class="gensmall">&nbsp;{L_NEW_POSTS_STICKY}</td>
				<td>&nbsp;&nbsp;</td>
				<td class="tdalignc gensmall"><img src="{FOLDER_STICKY_IMG}" alt="{L_NO_NEW_POSTS_STICKY}" title="{L_NO_NEW_POSTS_STICKY}" /></td>
				<td class="gensmall">&nbsp;{L_NO_NEW_POSTS_STICKY}</td>
				<td>&nbsp;&nbsp;</td>
			</tr>
			<tr>
				<td class="tdalignc gensmall"><img src="{FOLDER_ANNOUNCE_NEW_IMG}" alt="{L_NEW_POSTS_ANNOUNCEMENT}" title="{L_NEW_POSTS_ANNOUNCEMENT}" /></td>
				<td class="gensmall">&nbsp;{L_NEW_POSTS_ANNOUNCEMENT}</td>
				<td>&nbsp;&nbsp;</td>
				<td class="tdalignc gensmall"><img src="{FOLDER_ANNOUNCE_IMG}" alt="{L_NO_NEW_POSTS_ANNOUNCEMENT}" title="{L_NO_NEW_POSTS_ANNOUNCEMENT}" /></td>
				<td class="gensmall">&nbsp;{L_NO_NEW_POSTS_ANNOUNCEMENT}</td>
				<td>&nbsp;&nbsp;</td>
			</tr>
			<tr>
				<td class="tdalignc gensmall"><img src="{FOLDER_GLOBAL_ANNOUNCE_NEW_IMG}" alt="{L_NEW_POSTS_GLOBAL_ANNOUNCEMENT}" title="{L_NEW_POSTS_GLOBAL_ANNOUNCEMENT}" /></td>
				<td class="gensmall">&nbsp;{L_NEW_POSTS_GLOBAL_ANNOUNCEMENT}</td>
				<td>&nbsp;&nbsp;</td>
				<td class="tdalignc gensmall"><img src="{FOLDER_GLOBAL_ANNOUNCE_IMG}" alt="{L_NO_NEW_POSTS_GLOBAL_ANNOUNCEMENT}" title="{L_NO_NEW_POSTS_GLOBAL_ANNOUNCEMENT}" /></td>
				<td class="gensmall">&nbsp;{L_NO_NEW_POSTS_GLOBAL_ANNOUNCEMENT}</td>
				<td>&nbsp;&nbsp;</td>
			</tr>
			<tr>
				<td class="tdalignc gensmall"><img src="{FOLDER_AR}" alt="{L_AR_POSTS}" title="{L_AR_POSTS}" /></td>
				<td class="gensmall">&nbsp;{L_AR_POSTS}</td>
				<td colspan="4">&nbsp;&nbsp;</td>
			</tr>
			</table>
		</div>{IMG_TBR}</div>
		<script type="text/javascript">
		<!--
		tmp = 'icon_description';
		if(GetCookie(tmp) == '2')
		{
			ShowHide('icon_description','icon_description_h','icon_description');
		}
		//-->
		</script>
		<div style="margin-top:6px;margin-bottom:4px;">{JUMPBOX}</div><br />
	</td>
	<td class="tw40pct tdalignr tdnw">
		{IMG_TBL}<div id="topic_auth_list_h" style="display: none; text-align: left;">
			<table>
			<tr>
				<td>
					<div class="max-min-right" style="{SHOW_HIDE_PADDING}"><img src="{IMG_MAXIMISE}" onclick="ShowHide('topic_auth_list','topic_auth_list_h','topic_auth_list');" alt="" />&nbsp;</div><span class="forumlink"><b>{L_PERMISSIONS_LIST}</b></span>
				</td>
			</tr>
			</table>
		</div>
		<div id="topic_auth_list" style="text-align: left;">
			<table>
			<tr>
				<td>
					<div class="max-min-right" style="{SHOW_HIDE_PADDING}"><img src="{IMG_MINIMISE}" onclick="ShowHide('topic_auth_list','topic_auth_list_h','topic_auth_list');" alt="" />&nbsp;</div><span class="forumlink"><b>{L_PERMISSIONS_LIST}</b></span><hr class="cell-title" />
				</td>
			</tr>
			<tr><td>{S_AUTH_LIST}</td></tr>
			</table>
		</div>{IMG_TBR}
		<script type="text/javascript">
		<!--
		tmp = 'topic_auth_list';
		if(GetCookie(tmp) == '2')
		{
			ShowHide('topic_auth_list','topic_auth_list_h','topic_auth_list');
		}
		//-->
		</script>
	</td>
</tr>
</table>
{FORUM_WORDGRAPH}

<!-- INCLUDE overall_footer.tpl -->