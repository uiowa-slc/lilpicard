<div id="left">


<div id="main-carousel-container">
	<div id="mycarousel">
		<% if artworkImages %>
		<ul >
			<% loop artworkImages %>
			<li><a href="$Image.URL" class="thickbox" title="$Content.ATT" rel="carousel"><% with Image %><% with PaddedImage(292,300) %><img src="$URL" alt="$Title.ATT" height="$Height" width="$Width" /><% end_with %><% end_with %> </a></li>
			<% end_loop %>
		</ul>
		<!--			<a class="prev" href="#">previous</a> <a class="next" href="#">next</a> <br /> -->
	
		<% end_if %>
	</div>
	
		<div id="externalControl">
			<% loop artworkImages %>
			<a href="#" class="{$Pos}" onClick="buttons({$Pos});"><img src="$ThemeDir/images/circle_inactive.png" id="dot{$Pos}"/></a>
			<% end_loop %>
		</div>
</div>
<div id="content-container" class="typography">
	<div id="content">
		<h2>$Title<% if Date %>, $Date <% end_if %></h2>
		<p>$Medium</p>
		$Content
		$Forms </div>
	<% if RelatedArtworkPieces %>
		<% include RelatedArtwork %>
	<% end_if %>
</div>

	<% if carousels %>
	<div id="carousels" class="typography">
		<ul>
			<% loop videos %>
				<li><a href="{$Link}#{$ID}"><% with Image %><% with PaddedImage(150, 113) %><img src="$URL" /><% end_with %><% end_with %></a><a href="{$Link}#{$Parent.ID}">$Title</a></li>
			<% end_loop %>
			

			<% loop carousels %>
				<li><a href="{$Link}#{$Parent.ID}"><% with Image %><% with PaddedImage(150, 113) %><img src="$URL" /><% end_with %><% end_with %></a> 
				<a href="{$Link}#{$Parent.ID}">$Title</a></li>
		
			 <% end_loop %>
		</ul>
	</div>
	
	<% else_if videos %>
	
		<div id="carousels" class="typography">
			<ul>
				<% loop videos %>
				<li><a href="{$Link}#{$ID}"><% with Image %><% with PaddedImage(150, 113) %><img src="$URL" /><% end_with %><% end_with %></a><a href="{$Link}#{$Parent.ID}">$Title</a></li>
				<% end_loop %>
			</ul>
		</div>
	
	
	<% end_if %>
	
<div class="clear"></div>
</div>
<div id="right">
	<% include Search %>
</div>