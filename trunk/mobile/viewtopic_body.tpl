<!-- INCLUDE breadcrumbs_vt.tpl -->
<br clear="all" />

<!-- IF S_FORUM_RULES -->
<div class="block">
	<!-- IF S_FORUM_RULES_TITLE --><h2>{L_FORUM_RULES}</h2><!-- ENDIF -->
	{FORUM_RULES}
</div>
<!-- ENDIF -->

<div class="block-empty">
	<h2><a href="{U_VIEW_TOPIC_BASE}" style="text-decoration: none;">{TOPIC_TITLE}</a></h2>
	{PAGE_NUMBER} {PAGINATION}<br>
	<!-- IF not S_BOT -->
		<a href="{U_POST_REPLY_TOPIC}" class="btn gradient btn-large">{L_POST_REPLY_TOPIC}</a>
		<a href="{U_POST_NEW_TOPIC}" class="btn gradient">{L_POST_NEW_TOPIC}</a>
		<!-- IF S_THANKS --><a href="{U_THANKS}" class="btn gradient">{L_THANKS}</a><!-- ENDIF --><br />
	<!-- ENDIF -->
</div>

{POLL_DISPLAY}
{REG_DISPLAY}

<!-- BEGIN postrow -->
<div class="block well post" style="position: relative;">
	
	<div class="btn popup right" style="position: static;">
		{postrow.POSTER_NAME}
		<div class="block">
			<p class="post-details">
				{postrow.POSTER_JOINED}<br />
				{postrow.POSTER_POSTS}<br />
				<!-- BEGIN author_profile -->
				{postrow.author_profile.AUTHOR_VAL}<br />
				<!-- END author_profile -->
			</p>
			<div class="extra-top-padding">
				{postrow.PROFILE_IMG} {postrow.PM_IMG} {postrow.EMAIL_IMG} {postrow.WWW_IMG}&nbsp;
			</div>
		</div>
	</div>
	<!-- IF not S_BOT and S_LOGGED_IN -->
	<div class="btn btn-primary dropdown-toggle right" style="position: static; >
		<button class="btn">{postrow.QUOTE}</button>
			<button class="btn dropdown-toggle" data-toggle="dropdown">
				<span class="caret"></span>
				<ul class="dropdown-menu">
				<li>{postrow.EDIT}</li>
				<li class="divider"></li>
				<li>{postrow.DELETE}</li>
			</ul>
		</div>
	<!-- ENDIF -->
	<h2>{postrow.POST_SUBJECT}</h2>
	<p class="post-time">{postrow.POST_DATE}</p>
			{postrow.MESSAGE}<br />
			{postrow.ATTACHMENTS}
	<div class="clear"></div>
</div>
<!-- END postrow -->
<div class="block-empty">
	<!-- IF not S_BOT -->
		<a href="{U_POST_REPLY_TOPIC}" class="btn gradient btn-large">{L_POST_REPLY_TOPIC}</a>
		<a href="{U_POST_NEW_TOPIC}" class="btn gradient">{L_POST_NEW_TOPIC}</a>
		<!-- IF S_THANKS --><a href="{U_THANKS}" class="btn gradient">{L_THANKS}</a><!-- ENDIF --><br />
	<!-- ENDIF -->
		{PAGE_NUMBER} {PAGINATION}<br />

</table>
</div>
