<script type="text/javascript">
<!--
function post_time_edit(url)
{
	window.open(url, '_postedittime', 'width=600,height=300,resizable=no,scrollbars=no');
}
//-->
</script>
<!-- INCLUDE breadcrumbs_vt.tpl -->

<script type="text/javascript">
<!--
function open_postreview(ref)
{
	height = screen.height / 2.23;
	width = screen.width / 2;
	window.open(ref,'_ippostreview','height=' + height + ',width=' + width + ',resizable=yes,scrollbars=yes');
	return;
}
//-->
</script>

<h2 style="text-align: left;"><a href="{U_VIEW_TOPIC_BASE}" style="text-decoration: none;">{TOPIC_TITLE}</a></h2>
{POLL_DISPLAY}
{IMG_THL}{IMG_THC}<span class="forumlink">{TOPIC_TITLE}</span>{IMG_THR}<table class="forumlinenb">
<!-- IF VIEWTOPIC_BANNER_TOP -->
<tr><td class="row-post" colspan="2" style="text-align: center; vertical-align: middle !important;"><div class="center-block-text" style="overflow: auto;">{VIEWTOPIC_BANNER_TOP}</div></td></tr>
<!-- ENDIF -->
<tr><th colspan="2">{L_ARTICLE}</th></tr>
<!-- BEGIN postrow -->
<tr>
	<td class="row-post-buttons post-buttons" colspan="2">
		<div style="float: right;">
		<ul class="profile-icons">
			<!-- IF IS_UPI2DB -->
				<li class="inline" style="padding-top: 3px;">
				<!-- IF postrow.UPI2DB_MARK_UNREAD --><a href="{postrow.UPI2DB_MARK_UNREAD_URL}"><img src="{postrow.UPI2DB_MARK_UNREAD_IMG}" alt="{postrow.L_UPI2DB_MARK_UNREAD}" title="{postrow.L_UPI2DB_MARK_UNREAD}" /></a><!-- ENDIF -->
				<!-- IF postrow.UPI2DB_CANT_MARK --><img src="{postrow.UPI2DB_CANT_MARK_IMG}" alt="{postrow.L_UPI2DB_CANT_MARK}" title="{postrow.L_UPI2DB_CANT_MARK}" /><!-- ENDIF -->
				<!-- IF postrow.UPI2DB_MARK_POST --><a href="{postrow.UPI2DB_MARK_POST_URL}"><img src="{postrow.UPI2DB_MARK_POST_IMG}" alt="{postrow.L_UPI2DB_MARK_POST}" title="{postrow.L_UPI2DB_MARK_POST}" /></a><!-- ENDIF -->
				<!-- IF postrow.UPI2DB_UNMARK_POST --><a href="{postrow.UPI2DB_UNMARK_POST_URL}"><img src="{postrow.UPI2DB_UNMARK_POST_IMG}" alt="{postrow.L_UPI2DB_UNMARK_POST}" title="{postrow.L_UPI2DB_UNMARK_POST}" /></a><!-- ENDIF -->
				</li>
			<!-- ENDIF -->
			<!-- IF not S_BOT -->
			<li class="inline">{postrow.U_R_CARD}{postrow.U_Y_CARD}{postrow.U_G_CARD}{postrow.U_B_CARD}</li>
			<!-- IF postrow.U_QUOTE --><li class="quote-icon"><a href="{postrow.U_QUOTE}"><span>{L_POST_QUOTE}</span></a></li><!-- ENDIF -->
			<!-- IF postrow.U_EDIT --><li class="edit-icon"><a href="{postrow.U_EDIT}"><span>{L_POST_EDIT}</span></a></li><!-- ENDIF -->
			<!-- IF postrow.U_DELETE --><li class="delete-icon"><a href="{postrow.U_DELETE}"><span>{L_POST_DELETE}</span></a></li><!-- ENDIF -->
			<!-- IF postrow.U_EDIT --><li class="ip-icon"><a href="{postrow.U_IP}"><span>{L_USER_IP}</span></a></li><!-- ENDIF -->
			<li class="postdownload-icon"><a href="{postrow.DOWNLOAD_POST}" rel="nofollow"><span>{L_DOWNLOAD_POST}</span></a></li>
			<!-- ENDIF -->
			<li class="inline">{postrow.ARROWS}</li>
		</ul>
		</div>
		<div class="post-subject {postrow.UNREAD_COLOR}"><a href="{postrow.U_MINI_POST}"><img src="{postrow.MINI_POST_IMG}" alt="{postrow.L_MINI_POST_ALT}" title="{postrow.L_MINI_POST_ALT}" /></a> {postrow.POST_SUBJECT}&nbsp;</div>
	</td>
</tr>
<tr>
	<!-- <td class="row-post-author"></td> -->
	<td class="row-post th100pct" colspan="2">
		&nbsp;
		<div class="post-text post-text-hide-flow">{postrow.MESSAGE}<br />{postrow.ATTACHMENTS}</div>
		</div>
		<br /><br /><br />
		<div class="align-spacer">&nbsp;</div>
		<!-- IF S_EDIT_NOTES -->
		<!-- IF postrow.EDITED_MESSAGE --><div class="post-notes"><div class="post-note"><span class="gensmall">{postrow.EDITED_MESSAGE}&nbsp;</span></div></div><!-- ENDIF -->
		<!-- IF postrow.NOTES_S_COUNT > 0 --><div class="post-notes"><!-- BEGIN notes --><div class="post-note"><!-- IF notes.U_DELETE --><div class="post-note-delete">[<a href="{notes.U_DELETE}">{L_DELETE_NOTE}</a>]</div><!-- ENDIF -->{L_EDITED_BY} {postrow.notes.POSTER_NAME}, {postrow.notes.TIME}: {postrow.notes.TEXT}</div><!-- END notes --></div><!-- ENDIF -->
		<!-- IF postrow.NOTES_M_COUNT --><div class="post-notes"><!-- BEGIN notes_mod --><div class="post-note"><!-- IF notes_mod.U_DELETE --><div class="post-note-delete">[<a href="{notes_mod.U_DELETE}">{L_DELETE_NOTE}</a>]</div><!-- ENDIF -->{L_NOTES_MOD} &bull; {postrow.notes_mod.POSTER_NAME}, {postrow.notes_mod.TIME}: {postrow.notes_mod.TEXT}</div><!-- END notes_mod --></div><!-- ENDIF -->
		<!-- ENDIF -->
	</td>
</tr>
<tr>
	<td class="row-post-buttons post-buttons" colspan="2">
		<div style="float:right;">
		<ul class="profile-icons">
			<li class="{postrow.POSTER_ONLINE_STATUS_CLASS}-icon"><a href="{postrow.U_POSTER_ONLINE_STATUS}"><span>{postrow.L_POSTER_ONLINE_STATUS}</span></a></li>
			<li class="profile-icon"><a href="{postrow.U_PROFILE}"><span>{L_USER_PROFILE}</span></a></li>
			<li class="pm-icon"><a href="{postrow.U_PM}"><span>{L_PM}</span></a></li>
			<!-- IF postrow.U_EMAIL --><li class="email-icon"><a href="{postrow.U_EMAIL}"><span>{L_USER_EMAIL}</span></a></li><!-- ENDIF -->
			<!-- IF postrow.U_WWW --><li class="web-icon"><a href="{postrow.U_WWW}" target="_blank"><span>{L_USER_WWW}</span></a></li><!-- ENDIF -->
		</ul>
		</div>
		<span class="gensmall">&nbsp;{postrow.POSTER_NAME}&nbsp;[&nbsp;{postrow.POST_DATE}&nbsp;]</span>
	</td>
</tr>
<tr><td class="spaceRow" colspan="2"><img src="{SPACER}" width="1" height="3" alt="" /></td></tr>
<!-- IF not S_BOT -->
<!-- BEGIN switch_viewtopic_banner -->
<tr>
	<td align="center" class="row-post-author" width="140" style="width: 140px;">
		<span class="post-name"><a href="#" style="font-weight: bold; text-decoration: none;">{L_SPONSORS_LINKS}</a></span><br />
		<img src="images/ranks/rank_sponsor.png" alt="" /><br />
		<img src="images/avatars/default_avatars/sponsor.gif" alt="" />
	</td>
	<td class="row-post" style="text-align: center; vertical-align: middle !important;"><div class="center-block-text" style="overflow: auto;">{VIEWTOPIC_BANNER_CODE}</div></td>
</tr>
<tr><td class="spaceRow" colspan="2"><img src="{SPACER}" width="1" height="3" alt="" /></td></tr>
<!-- END switch_viewtopic_banner -->
<!-- ENDIF -->
<!-- BEGIN switch_first_post -->
</table>{IMG_TFL}{IMG_TFC}{IMG_TFR}
<br />
<br />
{IMG_THL}{IMG_THC}<span class="forumlink">{TOPIC_TITLE}</span>{IMG_THR}<table class="forumlinenb">
<tr><th colspan="2">{L_COMMENTS}</th></tr>
<!-- END switch_first_post -->
<!-- END postrow -->
<!-- IF VIEWTOPIC_BANNER_BOTTOM -->
<tr><td class="row-post" colspan="2" style="text-align: center; vertical-align: middle !important;"><div class="center-block-text" style="overflow: auto;">{VIEWTOPIC_BANNER_BOTTOM}</div></td></tr>
<!-- ENDIF -->
<tr>
	<td class="cat" colspan="2">
		<form method="post" action="{S_POST_DAYS_ACTION}" style="display: inline;">
		<span class="genmed">{L_DISPLAY_POSTS}:</span>&nbsp;{S_SELECT_SORT_DAYS}&nbsp;{S_SELECT_SORT_KEY}&nbsp;{S_SELECT_SORT_DIR}&nbsp;<input type="submit" value="{L_GO}" class="liteoption jumpbox" name="submit" />
		</form>
	</td>
</tr>
</table>{IMG_TFL}{IMG_TFC}{IMG_TFR}

<!-- IF not S_BOT -->
<!-- BEGIN switch_topic_useful -->
<a id="ratingblock"></a>
<div id="rate_block_h" style="display: none;">
{IMG_THL}{IMG_THC}<img class="max-min-right" style="{SHOW_HIDE_PADDING}" src="{IMG_MAXIMISE}" onclick="ShowHide('rate_block','rate_block_h','rate_block');" alt="{L_SHOW}" /><span class="forumlink">{L_TOPIC_RATING}</span>{IMG_THR}<table class="forumlinenb">
<tr><td class="row1g row-center">&nbsp;</td></tr>
</table>{IMG_TFL}{IMG_TFC}{IMG_TFR}
</div>

<div id="rate_block">
{IMG_THL}{IMG_THC}<img class="max-min-right" style="{SHOW_HIDE_PADDING}" src="{IMG_MINIMISE}" onclick="ShowHide('rate_block','rate_block_h','rate_block');" alt="{L_HIDE}" /><span class="forumlink">{L_TOPIC_RATING}</span>{IMG_THR}<table class="forumlinenb">
{RATING_VIEWTOPIC}
<!-- BEGIN social_bookmarks -->
<tr><th colspan="4">{L_SHARE_TOPIC}</th></tr>
<!-- INCLUDE social_bookmarks.tpl -->
<!-- END social_bookmarks -->
</table>{IMG_TFL}{IMG_TFC}{IMG_TFR}
</div>
<script type="text/javascript">
<!--
tmp = 'rate_block';
if(GetCookie(tmp) == '2')
{
	ShowHide('rate_block', 'rate_block_h', 'rate_block');
}
//-->
</script>
<!-- END switch_topic_useful -->
<!-- ENDIF -->

<table>
<tr>
	<td>
	<!-- IF not S_BOT -->
	<div class="buttons">
		<div class="newtopic-button"><a href="{U_POST_NEW_TOPIC}"><span>{L_POST_NEW_TOPIC}</span></a></div>
		<!-- IF IS_LOCKED --><div class="locked-button"><!-- ELSE --><div class="postreply-button"><!-- ENDIF --><a href="{U_POST_REPLY_TOPIC}"><span>{L_POST_REPLY_TOPIC}</span></a></div>
	</div>
	<!-- ELSE -->
	&nbsp;
	<!-- ENDIF -->
	</td>
	<td class="tdalignr">
		<span class="gen">{PAGE_NUMBER}</span><br />
		<span class="pagination">{PAGINATION}</span><br />
		<!-- IF S_EXTENDED_PAGINATION -->
		<div style="margin-top: 3px;"><form method="post" action="{U_VIEW_TOPIC}"><span class="gen"><b>{L_GO_TO_PAGE_NUMBER}</b>&nbsp;<input type="text" name="page_number" value="" size="3" class="post" />&nbsp;&nbsp;<input type="submit" name="submit" value="{L_GO}" class="mainoption" /></span></form></div>
		<!-- ENDIF -->
		<!-- IF not S_BOT --><div style="margin-top: 3px;"><form action="{FULL_SITE_PATH}{U_SEARCH}" method="post"><input name="search_keywords" type="text" class="post search" style="width: 160px;" value="{L_SEARCH_THIS_TOPIC}" onclick="if(this.value=='{L_SEARCH_THIS_TOPIC}')this.value='';" onblur="if(this.value=='')this.value='{L_SEARCH_THIS_TOPIC}';" /><input type="hidden" name="search_where" value="{FORUM_ID_FULL}" /><input type="hidden" name="search_where_topic" value="{TOPIC_ID_FULL}" />&nbsp;<input type="submit" class="mainoption" value="{L_SEARCH}" /></form></div><!-- ENDIF -->
	</td>
</tr>
</table>

<!-- INCLUDE breadcrumbs_vt.tpl -->

<!-- IF not S_BOT -->
<table>
<tr><td class="gensmall tw100pct"><span class="gensmall"><br />{TOTAL_USERS_ONLINE}<br />{LOGGED_IN_USER_LIST}</span><br /><br /></td></tr>
</table>
<!-- ENDIF -->

<table>
<tr>
	<td class="gensmall tw40pct">&nbsp;</td>
	<td class="tdalignr">
		<!-- IF not S_BOT and S_TMOD_BUTTONS -->
		<!-- INCLUDE viewtopic_admin.tpl -->
		<!-- ENDIF -->
		{S_TMOD_TOPIC_LABELS_BLOCK}<br /><br />
		{JUMPBOX}
	</td>
</tr>
</table>