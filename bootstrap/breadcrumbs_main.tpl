<div class="block well">
	<div class="nav-links">
		<div class="nav-links-left"><!-- IF S_BREADCRUMBS_BOTTOM_LEFT_LINKS -->{BREADCRUMBS_BOTTOM_LEFT_LINKS}<br /><!-- ENDIF -->{CURRENT_TIME}</div>
			<!-- IF S_LOGGED_IN --><a href="{FULL_SITE_PATH}{U_PRIVATEMSGS}">{PRIVATE_MESSAGE_INFO}</a>&nbsp;|&nbsp;<!-- ENDIF --><a href="{FULL_SITE_PATH}{U_RECENT}" class="gensmall">{L_RECENT}</a>&nbsp;|&nbsp;<a href="{FULL_SITE_PATH}{U_SEARCH_UNANSWERED}">{L_SEARCH_UNANSWERED}</a>
			<!-- IF S_BREADCRUMBS_BOTTOM_RIGHT_LINKS --><br />{BREADCRUMBS_BOTTOM_RIGHT_LINKS}<!-- ENDIF -->
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
</div>

