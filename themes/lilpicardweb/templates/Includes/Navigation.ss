<div id ="navigation">
	<ul>
		<% control Menu(1) %>
		<% if LinkOrSection = section %>
		<li><img src="$ThemeDir/images/navigation_web/{$URLSegment}.png" /></li>
		<% else  %>
		<li><a href="$Link"><img src="$ThemeDir/images/navigation_web/{$URLSegment}.png" /></a></li>
		<% end_if %>
		<% end_control %>
		
		<% if CurrentMember %>
		<li class="edit"><a href="{$BaseHref}admin/show/{$ID}" target="_blank">edit</a></li>
		<% end_if %>
		
	</ul>
</div>