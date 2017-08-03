<div id="related-works">
		<h2>Related</h2>
		<ul>
			<% loop RelatedArtworkPieces %>
			<li <% if First %> class="first" <% end_if %> >
			
			<% if Featured %>
			<a href="{$Link}#{$ID}">
			<% else %>
			<a href="{$Link}#{$Top.ID}">
			<% end_if %>
			
			
			<% with ThumbnailImage %><% with CroppedImage(50,50) %><img src="$URL" alt="$Title" height="$Height" width="$Width" /><% end_with %><% end_with %> </a></li>
			<% end_loop %>
		</ul>
	</div>
	
	
	<div style="clear: left;"></div>