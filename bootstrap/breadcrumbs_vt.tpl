<div class="block well">	
	<p class="nav-header"><a href="{U_PORTAL}">{L_HOME}</a>{NAV_SEP}<a href="{U_INDEX}">{L_INDEX}</a>{NAV_CAT_DESC}</p>
		<div class="nav-links">
			<div class="nav-links-left">{CURRENT_TIME}&nbsp;&bull;&nbsp;{S_TIMEZONE}</div>
			<!-- IF S_SHOW_ICONS -->
			<a href="{FULL_SITE_PATH}{U_VIEW_OLDER_TOPIC}"><img src="{IMG_LEFT}" alt="{L_VIEW_PREVIOUS_TOPIC}" title="{L_VIEW_PREVIOUS_TOPIC}" /></a>
			<a href="{FULL_SITE_PATH}{U_RECENT}"><img src="{IMG_RECENT_TOPICS}" alt="{L_RECENT}" title="{L_RECENT}" /></a>
			{S_WATCH_TOPIC_IMG}
			{S_MARK_AR_IMG}
			<!-- IF not S_BOT -->{S_KB_MODE_IMG}<!-- ENDIF -->
			<a href="{FULL_SITE_PATH}{DOWNLOAD_TOPIC}" title="{L_DOWNLOAD_TOPIC}"><img src="{IMG_FLOPPY}" alt="{L_DOWNLOAD_TOPIC}" title="{L_DOWNLOAD_TOPIC}" /></a>
			<!-- IF S_LOGGED_IN --><a href="{U_BOOKMARK_ACTION}"><img src="{IMG_BOOKMARK}" alt="{L_BOOKMARK_ACTION}" title="{L_BOOKMARK_ACTION}" /></a><!-- ENDIF -->
			<!-- IF U_TOPIC_VIEWED --><a href="{U_TOPIC_VIEWED}"><img src="{IMG_VIEWED}" alt="{L_TOPIC_VIEWED}" title="{L_TOPIC_VIEWED}" /></a><!-- ENDIF -->
			<a href="{FULL_SITE_PATH}{U_PRINT}" title="{L_PRINT}"><img src="{IMG_PRINT}" alt="{L_PRINT}" title="{L_PRINT}" /></a>
			<a href="{FULL_SITE_PATH}{U_TELL}" title="{L_TELL}"><img src="{IMG_EMAIL}" alt="{L_TELL}" title="{L_TELL}" /></a>
			<a href="{FULL_SITE_PATH}{U_VIEW_NEWER_TOPIC}"><img src="{IMG_RIGHT}" alt="{L_VIEW_NEXT_TOPIC}" title="{L_VIEW_NEXT_TOPIC}" /></a>
			<!-- ENDIF -->
			<!-- IF S_SHOW_LINKS -->
			<a href="{FULL_SITE_PATH}{U_RECENT}" title="{L_RECENT}" />{L_RECENT}</a>&nbsp;&bull;&nbsp;
			<a href="{FULL_SITE_PATH}{U_PRINT}" title="{L_PRINT}">{L_PRINT}</a>&nbsp;&bull;&nbsp;
			<a href="{FULL_SITE_PATH}{U_TELL}" title="{L_TELL}">{L_TELL}</a>&nbsp;&bull;&nbsp;
			<!-- IF S_LOGGED_IN --><a href="{U_BOOKMARK_ACTION}" class="genmed">{L_BOOKMARK_ACTION}</a>&nbsp;&bull;&nbsp;<!-- ENDIF -->
			<!-- IF U_TOPIC_VIEWED --><a href="{U_TOPIC_VIEWED}" class="genmed">{L_TOPIC_VIEWED}</a>&nbsp;&bull;&nbsp;<!-- ENDIF -->
			{S_WATCH_TOPIC}&nbsp;&bull;&nbsp;
			{U_MARK_ALWAYS_READ}&nbsp;&bull;&nbsp;
			<a href="{FULL_SITE_PATH}{U_VIEW_OLDER_TOPIC}">{L_VIEW_PREVIOUS_TOPIC}</a>&nbsp;&bull;&nbsp;
			<a href="{FULL_SITE_PATH}{U_VIEW_NEWER_TOPIC}">{L_VIEW_NEXT_TOPIC}</a>
			<!-- ENDIF -->
			</div>
						<div class="btn-toolbar">
				<div class="btn-group">
					<button class="btn btn-primary dropdown-toggle" data-toggle="dropdown">{L_MAIN_LINKS}<span class="caret"></span></button>
						<ul class="dropdown-menu">
						<!-- IF S_ADMIN -->
						<li><a href="{U_CMS_ACP}">{L_LINK_ACP}</a></li>
						<li class="divider"></li>
						<li><a href="{U_CMS}">{L_LINK_CMS}</a></li>
						<li class="divider"></li>
						<!-- ENDIF -->
						<li><a href="{U_PORTAL}">{L_LINK_HOME}</a></li>
						<li class="divider"></li>
						<!-- IF S_LOGGED_IN -->
						<li><a href="{U_PROFILE}">{L_LINK_PROFILE}</a></li>
						<li class="divider"></li>
						<!-- ENDIF -->
						<li><a href="{U_INDEX}">{L_LINK_FORUM}</a></li>
						<li class="divider"></li>
						<li><a href="{U_BOARDRULES}">{L_LINK_BOARDRULES}</a></li>
						<li class="divider"></li>
						<li><a href="{U_FAQ}">{L_LINK_FAQ}</a></li>
						<li class="divider"></li>
						<li><a href="{U_SEARCH}">{L_LINK_SEARCH}</a></li>
						<li class="divider"></li>
						<li><a href="{U_SITEMAP}">{L_LINK_SITEMAP}</a></li>
						<li class="divider"></li>
						<li><a href="{U_ALBUM}">{L_LINK_ALBUM}</a></li>
						<li class="divider"></li>
						<li><a href="{U_CALENDAR}">{L_LINK_CALENDAR}</a></li>
						<li class="divider"></li>
						<li><a href="{U_DOWNLOADS_NAV}">{L_LINK_DOWNLOADS}</a></li>
						<li class="divider"></li>
						<!-- IF S_LOGGED_IN -->
						<li><a href="{U_BOOKMARKS}">{L_LINK_BOOKMARKS}</a></li>
						<li class="divider"></li>
						<li><a href="{U_DRAFTS}">{L_LINK_DRAFTS}</a></li>
						<li class="divider"></li>
						<li><a href="{U_UPLOADED_IMAGES}">{L_LINK_UPLOADED_IMAGES}</a></li>
						<li class="divider"></li>
						<!-- ENDIF -->
						<li><a href="{U_AJAX_SHOUTBOX}">{L_LINK_AJAX_SHOUTBOX}</a></li>
						<li class="divider"></li>
						<li><a href="{U_LINKS}">{L_LINK_LINKS}</a></li>
						<li class="divider"></li>
						<li><a href="{U_CONTACT_US}">{L_LINK_CONTACT_US}</a></li>
					</ul>
				</div>	
			<div class="btn-group">
			<button class="btn btn-primary dropdown-toggle" data-toggle="dropdown">{L_NEWS_LINKS}<span class="caret"></span></button>
			<ul class="dropdown-menu">
			<li><a href="{U_PORTAL_NEWS_CAT}">{L_LINK_NEWS_CAT}</a></li>
			<li class="divider"></li>
			<li><a href="{U_PORTAL_NEWS_ARC}">{L_LINK_NEWS_ARC}</a></li>
			<li class="divider"></li>
			<!-- IF S_LOGGED_IN -->
			<li><a href="{U_SEARCH_NEW}">{L_LINK_NEW_MESSAGES}</a></li>
			<!-- ENDIF -->
			</ul>
			</div>
	<div class="btn-group">
		<button class="btn btn-primary dropdown-toggle" data-toggle="dropdown">{L_INFO_LINKS}<span class="caret"></span></button>
			<ul class="dropdown-menu">
			<li><a href="{U_CREDITS}">{L_LINK_CREDITS}</a></li>
			<li class="divider"></li>
			<li><a href="{U_REFERERS}">{L_LINK_REFERERS}</a></li>
			<li class="divider"></li>
			<li><a href="{U_VIEWONLINE}">{L_LINK_VIEWONLINE}</a></li>
			<li class="divider"></li>
			<li><a href="{U_STATISTICS}">{L_LINK_STATISTICS}</a></li>
			<li class="divider"></li>
			<li><a href="{U_DELETE_COOKIES}">{L_LINK_DELETE_COOKIES}</a></li>
		</ul>
	</div>
	<div class="btn-group">
		<button class="btn btn-primary dropdown-toggle" data-toggle="dropdown">{L_USERS_LINKS}<span class="caret"></span></button>
			<ul class="dropdown-menu">
			<li><a href="{U_MEMBERLIST}">{L_LINK_MEMBERLIST}</a></li>
			<li class="divider"></li>
			<li><a href="{U_GROUP_CP}">{L_LINK_USERGROUPS}</a></li>
			<li class="divider"></li>
			<li><a href="{U_RANKS}">{L_LINK_RANKS}</a></li>
			<li class="divider"></li>
			<li><a href="{U_STAFF}">{L_LINK_STAFF}</a></li>
		</ul>
	</div>
</div>
		</div>
</div>
