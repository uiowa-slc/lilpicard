<div id="left">


<div id="main-carousel-container">
	<div id="mycarousel">
		<% if artworkImages %>
		<ul >
			<% control artworkImages %>
			<li><a href="$Image.URL" class="thickbox" title="$Content.ATT" rel="carousel"><% control Image %><% control PaddedImage(292,300) %><img src="$URL" alt="$Title.ATT" height="$Height" width="$Width" /><% end_control %><% end_control %> </a></li>
			<% end_control %>
		</ul>
		<!--			<a class="prev" href="#">previous</a> <a class="next" href="#">next</a> <br /> -->
	
		<% end_if %>
	</div>
	
		<div id="externalControl">
			<% control artworkImages %>
			<a href="#" class="{$Pos}" onClick="buttons({$Pos});"><img src="$ThemeDir/images/circle_inactive.png" id="dot{$Pos}"/></a>
			<% end_control %>
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
			<% control videos %>
				<li><a href="{$Link}#{$ID}"><% control Image %><% control PaddedImage(150, 113) %><img src="$URL" /><% end_control %><% end_control %></a><a href="{$Link}#{$Parent.ID}">$Title</a></li>
			<% end_control %>
			

			<% control carousels %>
				<li><a href="{$Link}#{$Parent.ID}"><% control Image %><% control PaddedImage(150, 113) %><img src="$URL" /><% end_control %><% end_control %></a> 
				<a href="{$Link}#{$Parent.ID}">$Title</a></li>
		
			 <% end_control %>
		</ul>
	</div>
	
	<% else_if videos %>
	
		<div id="carousels" class="typography">
			<ul>
				<% control videos %>
				<li><a href="{$Link}#{$ID}"><% control Image %><% control PaddedImage(150, 113) %><img src="$URL" /><% end_control %><% end_control %></a><a href="{$Link}#{$Parent.ID}">$Title</a></li>
				<% end_control %>
			</ul>
		</div>
	
	
	<% end_if %>
	
<div class="clear"></div>
</div>
<div id="right">
	<% include Search %>
</div>