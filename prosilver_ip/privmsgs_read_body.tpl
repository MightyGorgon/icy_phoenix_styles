<!-- INCLUDE overall_header.tpl -->

<?php
global $user, $config, $is_auth, $lang, $to_username, $privmsgs_id, $post_subject, $images, $privmsg;
$post_subject = (((strlen($post_subject) > 0) && ((substr($post_subject, 0, strlen($lang['REPLY_PREFIX'])) == $lang['REPLY_PREFIX']) || (substr($post_subject, 0, strlen($lang['REPLY_PREFIX'])) == $lang['REPLY_PREFIX_OLD']))) ? '' : $lang['REPLY_PREFIX']) . $post_subject;
$this->vars['qr_subject'] = $post_subject;
$this->vars['CA_QUICK_REPLY_BUTTON'] = '<a href="#" onclick="showQuickEditor(); return false;" title="' . $lang['Post_a_reply'] . '"><img src="' . $images['quick_reply'] . '" alt="' . $lang['Post_a_reply'] . '" /></a><a href="#quick"></a>';
$this->vars['privmsgs_id'] = $privmsgs_id;

ob_start();
?>
<div id="quick_reply" style="display: none; position: relative; ">
<a name="quick"></a>
<form method="post" action="{S_PRIVMSGS_ACTION}&amp;{POST_POST_URL}={PM_ID}" name="post">
{S_HIDDEN_FIELDS}
<input type="hidden" name="post_time" value="<?php echo time(); ?>" />
{IMG_THL}{IMG_THC}<span class="forumlink"><?php echo $lang['Post_a_reply']; ?></span>{IMG_THR}<table class="forumlinenb">
<tr>
	<td class="row1" width="200"><span class="gen"><b>{L_TO}</b></span></td>
	<td class="row2 tw100pct"><input type="text" class="post" name="username" size="25" maxlength="25" tabindex="1" value="{RECIPIENT_QQ}" /></td>
</tr>
<tr>
	<td class="row1 tw200px tdnw"><span class="gen"><b><?php echo $lang['Subject']; ?>:</b></span></td>
	<td class="row2 tw100pct"><input type="text" name="subject" size="45" maxlength="120" style="width: 98%;" tabindex="2" class="post" value="{qr_subject}" /></td>
</tr>
<tr>
	<td class="row1 tw200px tdnw"><span class="gen"><b><?php echo $lang['Message_body']; ?>:<br /><img src="{SPACER}" width="200" height="1" alt="" /></b></span></td>
	<td class="row2 tw100pct"><div class="message-box"><textarea name="message" rows="15" cols="35" tabindex="3"></textarea></div></td>
</tr>
<tr>
	<td class="row1 tdnw"><span class="gen"><b><?php echo $lang['Options']; ?>:</b></span></td>
	<td class="row2">
	<span class="genmed">
	<?php
		$user_sig = ( $user->data['user_sig'] != '' && $config['allow_sig'] ) ? $user->data['user_sig'] : '';
		$html_on = $config['allow_html'] ? $user->data['user_allowhtml'] : 1;
		$bbcode_on = $config['allow_bbcode'] ? $user->data['user_allowbbcode'] : 0;
		$smilies_on = $config['allow_smilies'] ? $user->data['user_allowsmile'] : 0;
	?>
	<label><input type="checkbox" name="disable_acro_auto" /><span class="genmed">&nbsp;<?php echo $lang['Disable_ACRO_AUTO_post']; ?></span></label><br />
	<?php if($config['allow_html']) { ?>
	<label><input type="checkbox" name="disable_html" <?php echo ($html_on ? '' : 'checked="checked"'); ?> /><span class="genmed">&nbsp;<?php echo $lang['Disable_HTML_post']; ?></span></label><br />
	<?php } else { ?><input type="hidden" name="disable_html" value="checked" /><?php } ?>
	<?php if($config['allow_bbcode']) { ?>
	<label><input type="checkbox" name="disable_bbcode" <?php echo ($bbcode_on ? '' : 'checked="checked"'); ?> /><span class="genmed">&nbsp;<?php echo $lang['Disable_BBCode_post']; ?></span></label><br />
	<?php } else { ?><input type="hidden" name="disable_bbcode" value="checked" /><?php } ?>
	<?php if($config['allow_smilies']) { ?>
	<label><input type="checkbox" name="disable_smilies" <?php echo ($smilies_on ? '' : 'checked="checked"'); ?> /><span class="genmed">&nbsp;<?php echo $lang['Disable_Smilies_post']; ?></span></label><br />
	<?php } else { ?><input type="hidden" name="disable_smilies" value="checked" /><?php } ?>
	<?php if($user_sig) {  ?>
	<label><input type="checkbox" name="attach_sig" <?php echo ($user->data['user_attachsig'] ? 'checked="checked"' : ''); ?> /><span class="genmed">&nbsp;<?php echo $lang['Attach_signature']; ?></span></label><br />
	<?php } else { ?><input type="hidden" name="attach_sig" value="" /><?php } ?>
	</span>
	</td>
</tr>
<tr>
	<td class="cat" colspan="2">
		<input type="hidden" name="reply" value="{REPLY}" />
		<input type="hidden" name="id" value="{REPLY_ID}" />
		<input type="hidden" name="mode" value="reply" />
		<input type="hidden" name="t" value="<?php echo $privmsgs_id; ?>" />
		<input type="hidden" name="sid" value="<?php echo $user->data['session_id']; ?>" />
		<input type="submit" tabindex="5" name="preview" class="liteoption" value="<?php echo $lang['Preview']; ?>" />&nbsp;
		<input type="submit" accesskey="s" tabindex="6" name="post" class="mainoption" value="<?php echo $lang['Submit']; ?>" />
	</td>
</tr>
</table>{IMG_TFL}{IMG_TFC}{IMG_TFR}
</form>
</div>
<?php
$str = ob_get_contents();
ob_end_clean();
$this->vars['CA_QUICK_REPLY_FORM'] = $str;
?>
{CPL_MENU_OUTPUT}
<div class="forumline" style="margin-left: 5%; margin-right: 5%;">
<table>
<tr>
	<td class="tdalignc tw25pct">{INBOX_IMG}<br /><b><span class="topiclink">{INBOX}</span></b></td>
	<td class="tdalignc tw25pct">{SENTBOX_IMG}<br /><b><span class="topiclink">{SENTBOX}</span></b></td>
	<td class="tdalignc tw25pct">{OUTBOX_IMG}<br /><b><span class="topiclink">{OUTBOX}</span></b></td>
	<td class="tdalignc tw25pct">{SAVEBOX_IMG}<br /><b><span class="topiclink">{SAVEBOX}</span></b></td>
</tr>
</table>
</div>
<script type="text/javascript">
// <![CDATA[

message = new Array();
message[{privmsgs_id}] = " user=\"{RECIPIENT_QQ}\"]{PLAIN_MESSAGE}[/";

// ]]>
</script>
<br />
<form method="post" action="{S_PRIVMSGS_ACTION}">
{S_HIDDEN_FIELDS}

<!-- IF REPLY_PM_URL --><div class="buttons"><div class="pmreply-button"><a href="{REPLY_PM_URL}"><span>{L_REPLY_PM}</span></a></div><div class="quickreply-button"><a href="javascript:showQuickEditor();"><span>{L_QUICK_REPLY}</span></a></div></div><!-- ENDIF -->
<br class="clear" />
{IMG_THL}{IMG_THC}<span class="forumlink">{POST_SUBJECT}</span>{IMG_THR}<table class="forumlinenb">
	<tr>
		<th class="tw150px">{L_AUTHOR}</th>
		<th>{L_MESSAGE}</th>
	</tr>
	<tr>
		<td class="row-post-author">
			<span class="post-name">{MESSAGE_FROM}&nbsp;{POSTER_GENDER}</span><br />
			<div class="post-rank"><b>{POSTER_RANK}</b>{RANK_IMAGE}</div>
			<span class="post-images">{POSTER_AVATAR}</span>
			<div class="post-details">
			{POSTER_JOINED}<br />
			{POSTER_POSTS}<br />
			{POSTER_FROM}
			</div>
			<br />
			<ul class="profile-icons">
				<li class="{ONLINE_STATUS_CLASS}-icon"><a href="{ONLINE_STATUS_URL}"><span>{L_ONLINE_STATUS}</span></a></li>
				<li class="profile-icon"><a href="{U_PROFILE}"><span>{L_USER_PROFILE}</span></a></li>
				<li class="pm-icon"><a href="{U_PM}"><span>{L_PM}</span></a></li>
				<!-- IF EMAIL_URL --><li class="email-icon"><a href="{EMAIL_URL}"><span>{L_USER_EMAIL}</span></a></li><!-- ENDIF -->
				<!-- IF WWW_URL --><li class="web-icon"><a href="{WWW_URL}" target="_blank"><span>{L_USER_WWW}</span></a></li><!-- ENDIF -->
				<!-- IF AIM_URL --><li class="aim-icon"><a href="{AIM_URL}"><span>{L_AIM}</span></a></li><!-- ENDIF -->
				<!-- IF ICQ_URL --><li class="icq-icon"><a href="{ICQ_URL}"><span>{L_ICQ}</span></a></li><!-- ENDIF -->
				<!-- IF MSN_URL --><li class="msn-icon"><a href="{MSN_URL}"><span>{L_MSN}</span></a></li><!-- ENDIF -->
				<!-- IF SKYPE_URL --><li class="skype-icon"><a href="{SKYPE_URL}"><span>{L_SKYPE}</span></a></li><!-- ENDIF -->
				<!-- IF YIM_URL --><li class="yahoo-icon"><a href="{YIM_URL}"><span>{L_YIM}</span></a></li><!-- ENDIF -->
			</ul>
			<br class="clear" />
		</td>
		<td class="row-post tw100pct">
			<!-- IF QUOTE_PM_URL or EDIT_PM_URL -->
			<div style="float: right;">
			<ul class="profile-icons">
				<!-- IF QUOTE_PM_URL --><li class="quote-icon"><a href="{QUOTE_PM_URL}"><span>{L_QUOTE_PM}</span></a></li><!-- ENDIF -->
				<!-- IF EDIT_PM_URL --><li class="edit-icon"><a href="{EDIT_PM_URL}"><span>{L_EDIT_PM}</span></a></li><!-- ENDIF -->
			</ul>
			</div>
			<!-- ENDIF -->
			<div class="post-subject">{POST_SUBJECT}&nbsp;</div>
			<div class="post-text post-text-hide-flow">
				{MESSAGE}
				<!-- BEGIN postrow -->
				<br />
				{ATTACHMENTS}
				<!-- END postrow -->
			</div>
			<div class="post-text post-text-hide-flow"><br /><br /><br />{SIGNATURE}</div>
		</td>
	</tr>
	<tr>
		<td class="row-post-date">{POST_DATE}</td>
		<td class="row-post-buttons post-buttons">
			<div style="float: right; text-align: right;">
			<ul class="profile-icons">
				<li class="quickquote-icon"><a href="javascript:addquote(%27{privmsgs_id}%27,%27quote%27,true,false);"><span>{L_QUICK_QUOTE}</span></a></li>
				<li class="offtopic-icon"><a href="javascript:addquote(%27{privmsgs_id}%27,%27ot%27,true,false);"><span>{L_OFFTOPIC}</span></a></li>
			</ul>
			</div>
			&nbsp;
		</td>
	</tr>
	<tr><td class="spaceRow" colspan="2"><img src="{SPACER}" width="1" height="3" alt="" /></td></tr>
	<tr>
		<td class="cat" colspan="2">
			<input type="submit" name="save" value="{L_SAVE_MSG}" class="liteoption" />&nbsp;&nbsp;
			<input type="submit" name="delete" value="{L_DELETE_MSG}" class="liteoption" />&nbsp;
			<!-- BEGIN switch_attachments -->
			<input type="submit" name="pm_delete_attach" value="{L_DELETE_ATTACHMENTS}" class="liteoption" />
			<!-- END switch_attachments -->
		</td>
	</tr>
</table>{IMG_TFL}{IMG_TFC}{IMG_TFR}

<table>
<tr>
	<td><!-- IF REPLY_PM_URL --><div class="buttons"><div class="pmreply-button"><a href="{REPLY_PM_URL}"><span>{L_REPLY_PM}</span></a></div><div class="quickreply-button"><a href="javascript:showQuickEditor();"><span>{L_QUICK_REPLY}</span></a></div></div><!-- ELSE -->&nbsp;<!-- ENDIF --></td>
	<td class="tdalignr tdnw"><span class="gensmall">{S_TIMEZONE}</span></td>
</tr>
</table>
</form>
{CA_QUICK_REPLY_FORM}
</td>
</tr>
</table>
<table>
<tr><td class="tdalignr">{JUMPBOX}</td></tr>
</table>

<!-- INCLUDE overall_footer.tpl -->