<div id="related-works">
		<h2>Related</h2>
		<ul>
			<% control RelatedArtworkPieces %>
			<li <% if First %> class="first" <% end_if %> >
			
			<% if Featured %>
			<a href="{$Link}#{$ID}">
			<% else %>
			<a href="{$Link}#{$Top.ID}">
			<% end_if %>
			
			
			<% control ThumbnailImage %><% control CroppedImage(50,50) %><img src="$URL" alt="$Title" height="$Height" width="$Width" /><% end_control %><% end_control %> </a></li>
			<% end_control %>
		</ul>
	</div>
	
	
	<div style="clear: left;"></div>