<!-- INCLUDE overall_header.tpl -->

<script type="text/javascript">
<!--
function checkFormComment()
{
	formErrors = false;

	//if ((document.forms['post'].message.value.length < 2) && (document.forms['post'].rate.value == -1))
	if (document.forms['post'].message.value.length < 2)
	{
		formErrors = "{L_COMMENT_NO_TEXT}";
	}
	else if (document.forms['post'].message.value.length > {S_MAX_LENGTH})
	{
		formErrors = "{L_COMMENT_TOO_LONG}";
	}

	if (formErrors)
	{
		alert(formErrors);
		return false;
	}
	else
	{
		return true;
	}
}

function checkFormRate()
{
	formErrors = false;
	if (document.ratingform.rating.value == -1)
	{
		formErrors = "{L_PLEASE_RATE_IT}";
	}

	if (formErrors)
	{
		alert(formErrors);
		return false;
	}
	else
	{
		return true;
	}
}
// -->
</script>

<table>
<tr>
	<td>&nbsp;</td>
	<td class="tdalignr">{ALBUM_SEARCH_BOX}</td>
</tr>
</table>

<a name="TopPic"></a>

{IMG_THL}{IMG_THC}<center><span class="forumlink">{NEXT_PIC}&nbsp;&nbsp;{PIC_TITLE}&nbsp;&nbsp;{PREV_PIC}</span></center>{IMG_THR}<table class="forumlinenb">
<tr>
	<td class="row1 row-center">
		<!-- IF S_SLIDESHOW_ENABLED -->
		<form name="slideshowf" action="{U_SLIDESHOW}" method="post" onsubmit="return true;">
			<span class="gensmall">{SLIDESHOW_SELECT}</span>
			<input type="submit" class="button" value="{L_SLIDESHOW_ONOFF}" style="width: 120px;" /><br />
		</form>
		<!-- ENDIF -->
		<div class="center-block">
		<br /><span class="genmed"><b>{PIC_COUNT}</b></span><br />
		{U_PIC_L1}<img class="vs10px" src="{U_PIC}" border="0" alt="{PIC_TITLE}" title="{PIC_TITLE}" />{U_PIC_L2}
		</div>
		<!-- IF U_PIC_CLICK --><span class="genmed">{U_PIC_CLICK}</span><br /><!-- ENDIF -->
		<!-- IF not S_BOT and S_PIC_NUFFED -->
		<span class="gensmall"><a href="{U_PIC_NUFFED_CLICK}">{L_PIC_NUFFED_CLICK}</a></span><br />
		<!-- ENDIF -->
		<span class="gensmall">{U_COMMENT_WATCH_LINK}</span><br />
	</td>
</tr>
<tr>
	<td class="row1">
		<table>
		<tr><td class="tw100pct tdalignc" colspan="2"><span class="genmed">{EDIT}&nbsp;{DELETE}&nbsp;{LOCK}&nbsp;{MOVE}&nbsp;{COPY}</span></td></tr>
		<tr>
			<td class="tw50pct tdalignr"><span class="genmed">{L_POSTER}:</span></td>
			<td class="tw50pct"><span class="genmed"><b>{POSTER}</b></span></td>
		</tr>
		<tr>
			<td class="tdalignr"><span class="genmed">{L_PIC_TITLE}:</span></td>
			<td><b><span class="genmed">{PIC_TITLE}</span></b></td>
		</tr>
		<tr>
			<td class="tdalignr"><span class="genmed">{L_DOWNLOAD}:</span></td>
			<td><a href="{U_PIC_DL}" class="genmed"><b>{PIC_TITLE}</b></a></td>
		</tr>
		<tr>
			<td class="tdalignr"><span class="genmed">{L_PIC_DETAILS}:</span></td>
			<td><b><span class="genmed">{L_PIC_ID}:&nbsp;{PIC_ID}&nbsp;-&nbsp;{L_PIC_TYPE}:&nbsp;{PIC_TYPE}&nbsp;-&nbsp;{L_PIC_SIZE}:&nbsp;{PIC_SIZE}</span></b></td>
		</tr>
		<tr>
			<td class="tdalignr"><span class="genmed">{L_PIC_BBCODE}:</span></td>
			<td><form name="select_all" action=""><input class="post" name="BBCode" size="50" maxlength="200" value="{PIC_BBCODE}" type="text" readonly="readonly" onclick="this.form.BBCode.focus();this.form.BBCode.select();" /></form></td>
		</tr>
		<tr>
			<td class="tdalignr"><span class="genmed">{L_POSTED}:</span></td>
			<td><b><span class="genmed">{PIC_TIME}</span></b></td>
		</tr>
		<tr>
			<td class="tdalignr"><span class="genmed">{L_VIEW}:</span></td>
			<td><b><span class="genmed">{PIC_VIEW}</span></b></td>
		</tr>
		<!-- BEGIN rate_switch -->
		<tr>
			<td class="tdalignr"><span class="genmed">{L_RATING}:</span></td>
			<td>
				<span class="genmed"><b>{PIC_RATING}</b></span>
				<!-- BEGIN rate_row -->
				<form name="ratingform" action="{S_ALBUM_ACTION}" method="post" onsubmit="return checkFormRate();">
					<select name="rating">
						<option value="-1">{S_RATE_MSG}</option>
						<!-- BEGIN rate_scale_row -->
						<option value="{rate_switch.rate_row.rate_scale_row.POINT}">{rate_switch.rate_row.rate_scale_row.POINT}</option>
						<!-- END rate_scale_row -->
					</select>&nbsp;
					<input type="submit" name="submit" value="{L_SUBMIT}" class="mainoption" />
				</form>
				<!-- END rate_row -->
				<br />
			</td>
		</tr>
		<!-- END rate_switch -->
		<tr>
			<td class="tdalignr"><span class="genmed">{L_PIC_DESC}:</span></td>
			<td><div class="post-text">{PIC_DESC}</div></td>
		</tr>
		</table>
	</td>
</tr>
</table>{IMG_TFL}{IMG_TFC}{IMG_TFR}

<!-- BEGIN social_bookmarks -->
<br />
<!-- INCLUDE social_bookmarks_full.tpl -->
<!-- END social_bookmarks -->

<!-- BEGIN switch_exif_enabled -->
<!-- BEGIN exif_switch -->
<table class="forumline">
<tr><th class="tdnw" colspan="5">EXIF</th></tr>
<!-- BEGIN exif_data -->
<tr>
	<td class="row1 tw25pct tdalignr"><span class="genmed">{switch_exif_enabled.exif_switch.exif_data.EXIFc1}&nbsp;</span></td>
	<td class="row1 tw25pct" ><b><span class="genmed">{switch_exif_enabled.exif_switch.exif_data.EXIFd1}</span></b></td>
	<td class="row1 tw25pct tdalignr"><span class="genmed">{switch_exif_enabled.exif_switch.exif_data.EXIFc2}&nbsp;</span></td>
	<td class="row1 tw25pct" ><b><span class="genmed">{switch_exif_enabled.exif_switch.exif_data.EXIFd2}</span></b></td>
</tr>
<!-- END exif_data -->
</table>
<br />
<!-- END exif_switch -->
<!-- END switch_exif_enabled -->

<!-- BEGIN pics_nav -->
<br />
{IMG_THL}{IMG_THC}<span class="forumlink">{pics_nav.L_PICS_NAV}</span>{IMG_THR}<table class="forumlinenb">
<tr>
	<!-- BEGIN pics -->
	<td class="row1g row-center tw20pct">
		<a href="{pics_nav.pics.U_PIC_LINK}"><img class="picframe" src="{pics_nav.pics.U_PIC_THUMB}" {THUMB_SIZE} alt="{pics_nav.pics.PIC_TITLE}" title="{pics_nav.pics.PIC_TITLE}" style="{pics_nav.pics.STYLE}" /></a>
	</td>
	<!-- END pics -->
</tr>
</table>{IMG_TFL}{IMG_TFC}{IMG_TFR}
<br />
<!-- END pics_nav -->
<!-- BEGIN coment_switcharo_top -->
<br />
{IMG_THL}{IMG_THC}<span class="forumlink">{L_COMMENTS}</span>{IMG_THR}<table class="forumlinenb">
<tr>
	<th class="tw15pct tdnw">{L_POSTER}</th>
	<th class="tw85pct tdnw">{L_MESSAGE}</th>
</tr>
<!-- END coment_switcharo_top -->
<!-- BEGIN commentrow -->
<tr >
	<td class="row-post-author tdnw">
		<span class="post-name"><a name="c{commentrow.ID}"></a>{commentrow.POSTER_NAME}</span><br />
		<div class="post-rank"><b>{commentrow.POSTER_RANK}</b>{commentrow.POSTER_RANK_IMAGE}</div>
		<span class="post-images">{commentrow.POSTER_AVATAR}</span>
		<div class="post-details">
			<ul class="profile-icons" style="padding-left: 10px;"><li class="{commentrow.POSTER_ONLINE_STATUS_CLASS}-icon"><a href="{commentrow.U_POSTER_ONLINE_STATUS}"><span>{commentrow.L_POSTER_ONLINE_STATUS}</span></a></li><li class="pm-icon"><a href="{commentrow.U_PM}"><span>{L_PM}</span></a></li><!-- IF commentrow.U_EMAIL --><li class="email-icon"><a href="{commentrow.U_EMAIL}"><span>{L_USER_EMAIL}</span></a></li><!-- ENDIF --><!-- IF commentrow.U_WWW --><li class="web-icon"><a href="{commentrow.U_WWW}" target="_blank"><span>{L_USER_WWW}</span></a></li><!-- ENDIF --><!-- IF commentrow.U_AIM --><li class="aim-icon"><a href="{commentrow.U_AIM}"><span>{L_AIM}</span></a></li><!-- ENDIF --><!-- IF commentrow.U_ICQ --><li class="icq-icon"><a href="{commentrow.U_ICQ}"><span>{L_ICQ}</span></a></li><!-- ENDIF --><!-- IF commentrow.U_MSN --><li class="msn-icon"><a href="{commentrow.U_MSN}"><span>{L_MSN}</span></a></li><!-- ENDIF --><!-- IF commentrow.U_SKYPE --><li class="skype-icon"><a href="{commentrow.U_SKYPE}"><span>{L_SKYPE}</span></a></li><!-- ENDIF --><!-- IF commentrow.U_YIM --><li class="yahoo-icon"><a href="{commentrow.U_YIM}"><span>{L_YIM}</span></a></li><!-- ENDIF --></ul>
			<br class="clear" /><br />
			{commentrow.POSTER_JOINED}<br />
			{commentrow.POSTER_POSTS}<br />
			{commentrow.POSTER_FROM}
		</div>
	</td>
	<td class="row-post tw100pct th100pct">
		<div style="float: right;">
		<!-- IF commentrow.U_EDIT or commentrow.U_DELETE -->
		<ul class="profile-icons" style="margin-top: -2px;">
			<!-- IF commentrow.U_EDIT --><li class="edit-icon"><a href="{commentrow.U_EDIT}"><span>{L_EDIT}</span></a></li><!-- ENDIF -->
			<!-- IF commentrow.U_DELETE --><li class="delete-icon"><a href="{commentrow.U_DELETE}"><span>{L_DELETE}</span></a></li><!-- ENDIF -->
			<!-- IF commentrow.U_IP --><li class="ip-icon"><a href="{commentrow.U_IP}"><span>{L_IP}</span></a></li><!-- ENDIF -->
		</ul>
		<!-- ELSE -->
		&nbsp;
		<!-- ENDIF -->
		</div>
		<div class="row-post-subject subject-border" style="padding-top: 8px;"><span class="gensmall"><b>&nbsp;{commentrow.COMMENT_TIME}</b></span></div>
		<div class="post-text post-text-hide-flow" style="margin-top: 3px;">{commentrow.TEXT}<br /></div>
		<div class="post-text post-text-hide-flow"><br /><br /><br />_______________<br />{commentrow.POSTER_SIGNATURE}</div>
	</td>
</tr>
<tr><td class="spaceRow" colspan="2"><img src="{SPACER}" alt="" width="1" height="3" /></td></tr>
<!-- END commentrow -->
<!-- BEGIN switch_comment -->
<tr>
	<td class="cat tdalignc" colspan="2">
		<form action="{S_ALBUM_ACTION}" method="post">
			<span class="gensmall">{L_ORDER}:</span>
			<select name="sort_order">
				<option {SORT_ASC} value='ASC'>{L_ASC}</option>
				<option {SORT_DESC} value='DESC'>{L_DESC}</option>
			</select>&nbsp;
			<input type="submit" name="submit" value="{L_SORT}" class="liteoption" />
		</form>
	</td>
</tr>
<!-- END switch_comment -->
<!-- BEGIN comment_switcharo_bottom -->
</table>{IMG_TFL}{IMG_TFC}{IMG_TFR}
<!-- END comment_switcharo_bottom -->

<!-- BEGIN switch_comment_post -->
<br />
<form name="post" action="{S_ALBUM_ACTION}" method="post" onsubmit="return checkFormComment();">
{IMG_THL}{IMG_THC}<span class="forumlink">{L_POST_YOUR_COMMENT}</span>{IMG_THR}<table class="forumlinenb">
<!-- BEGIN logout -->
<tr>
	<td class="row1"><span class="genmed">{L_USERNAME}</span></td>
	<td class="row2"><input class="post" type="text" name="comment_username" size="32" maxlength="32" /></td>
</tr>
<!-- END logout -->
<tr>
	<td class="row1 row-center tw20pct"><br /><br /><br /><br />{BBCB_SMILEYS_MG}</td>
	<td class="row2">
		{BBCB_MG}
		<div class="message-box"><textarea id="message" name="message" rows="15" cols="76" tabindex="3" onselect="storeCaret(this);" onclick="storeCaret(this);" onkeyup="storeCaret(this);">{S_MESSAGE}</textarea></div>
	</td>
</tr>
<tr><td class="cat tdalignc" colspan="2"><input class="mainoption" type="submit" name="submit" value="{L_SUBMIT}" /></td></tr>
</table>{IMG_TFL}{IMG_TFC}{IMG_TFR}
</form>
<!-- END switch_comment_post -->

<!-- BEGIN switch_comment -->
<div style="text-align: left;"><div style="float: right; text-align: right;"><span class="pagination">{PAGINATION}</span></div><span class="gensmall">{PAGE_NUMBER}</span></div>
<!--
<table>
<tr>
	<td><span class="gensmall">{PAGE_NUMBER}</span></td>
	<td class="tdalignr tdnw"><span class="gensmall">{S_TIMEZONE}</span><br /><span class="pagination">{PAGINATION}</span></td>
</tr>
</table>
-->
<!-- END switch_comment -->
<br />
{CM_PAGINATION}
<!-- You must keep my copyright notice visible with its original content -->
{ALBUM_COPYRIGHT}

<!-- INCLUDE overall_footer.tpl -->