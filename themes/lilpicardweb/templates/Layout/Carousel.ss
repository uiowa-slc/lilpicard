<div id="left">
<div id="main-carousel-container">
	<div id="mycarousel">

		<ul >
			<% loop Children %>
			<li><% with Image %><% with SetWidth(1200) %><a href="$URL" class="thickbox" title="$Content.ATT" rel="carousel"><% end_with %><% end_with %><% with Image %><% with Pad(292,300) %><img src="$URL" alt="$Title" height="$Height" width="$Width" /><% end_with %><% end_with %> </a></li>
			<% end_loop %>
		</ul>
		<!--			<a class="prev" href="#">previous</a> <a class="next" href="#">next</a> <br /> -->
	

	</div>
	
		<div id="externalControl">
			<% loop Children %>
			<a href="#" class="{$Pos}" onClick="buttons({$Pos});"><img src="$ThemeDir/images/circle_inactive.png" id="dot{$Pos}"/></a>
			<% end_loop %>
		</div>
</div>
<div id="content-container" class="typography">
	<div id="content">
		<h2>$Title</h2>
		$Parent.Content
		$Forms </div>
	<% if RelatedArtworkPieces %>
	<% include RelatedArtwork %>
	<% end_if %>
</div>

<div id="carousels" class="typography">
	
		<ul>
		
			<% loop videos %>
				<li><a href="{$Link}#{$ID}"><% with Image %><% with Pad(150, 113) %><img src="$URL" /><% end_with %><% end_with %></a><a href="{$Link}#{$Parent.ID}">$Title</a></li>
			<% end_loop %>
			
		
		<% with Parent %>
			<li><a href="{$Link}#{$ID}test"><% with ThumbnailImage %><% with Pad(150, 113) %><img src="$URL" /><% end_with %><% end_with %></a><a href="{$Link}#{$ID}">$Title</a></li>
		<% end_with %>
		
		<% if carousels %>
			<% loop carousels %>
	
				<li><a href="{$Link}#{$ID}"><% with Image %><% with Pad(150, 113) %><img src="$URL" /><% end_with %><% end_with %> </a>
				<a href="{$Link}#{$ID}">$Title</a></li>
			 <% end_loop %>
		<% end_if %>
		
		</ul>
	</div>
	
<div class="clear"></div>
		</div>
<div id="right">
	<% include Search %>
</div>