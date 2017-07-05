<div id="left">
<div id="main-carousel-container">
	<div id="mycarousel">

		<ul >
			<% control Children %>
			<li><% control Image %><% control SetWidth(1200) %><a href="$URL" class="thickbox" title="$Content.ATT" rel="carousel"><% end_control %><% end_control %><% control Image %><% control PaddedImage(292,300) %><img src="$URL" alt="$Title" height="$Height" width="$Width" /><% end_control %><% end_control %> </a></li>
			<% end_control %>
		</ul>
		<!--			<a class="prev" href="#">previous</a> <a class="next" href="#">next</a> <br /> -->
	

	</div>
	
		<div id="externalControl">
			<% control Children %>
			<a href="#" class="{$Pos}" onClick="buttons({$Pos});"><img src="$ThemeDir/images/circle_inactive.png" id="dot{$Pos}"/></a>
			<% end_control %>
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
		
			<% control videos %>
				<li><a href="{$Link}#{$ID}"><% control Image %><% control PaddedImage(150, 113) %><img src="$URL" /><% end_control %><% end_control %></a><a href="{$Link}#{$Parent.ID}">$Title</a></li>
			<% end_control %>
			
		
		<% control Parent %>
			<li><a href="{$Link}#{$ID}test"><% control ThumbnailImage %><% control PaddedImage(150, 113) %><img src="$URL" /><% end_control %><% end_control %></a><a href="{$Link}#{$ID}">$Title</a></li>
		<% end_control %>
		
		<% if carousels %>
			<% control carousels %>
	
				<li><a href="{$Link}#{$ID}"><% control Image %><% control PaddedImage(150, 113) %><img src="$URL" /><% end_control %><% end_control %> </a>
				<a href="{$Link}#{$ID}">$Title</a></li>
			 <% end_control %>
		<% end_if %>
		
		</ul>
	</div>
	
<div class="clear"></div>
		</div>
<div id="right">
	<% include Search %>
</div>