<div id="left">
	<div id="header"> <a href="$BaseHref"><img src="$ThemeDir/images/lilpicardlogo.png" /></a>
		<div class="clear"></div>
	</div>
<div id="main-carousel-container">
	<div id="mycarousel">

		<ul >
			<% loop Children %>
			<li><a href="$Image.URL" class="thickbox" title="$Content.ATT"><% with Image %><% with PaddedImage(800,600) %><img src="$URL" alt="$Title" height="$Height" width="$Width" /><% end_with %><% end_with %> </a></li>
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
		$Content
		$Forms </div>
	<% if RelatedArtworkPieces %>
	<div id="related-works">
		<h2>Related</h2>
		<ul>
			<% with RelatedArtworkPieces %>
			<li><a href="$Link">$Title</a></li>
			<% end_with %>
		</ul>
	</div>
	<% end_if %>

	<% if Categories %>
	<div id="categories">
		<h2>Categories</h2>
		<ul>
			<% loop Categories %>
			<li>$Title</li>
			<% end_loop %>
		</ul>
	</div>
	<% end_if %>
</div>

<div id="carousels" class="typography">
	
		<ul>
		<% if carousels %>
			<% loop carousels %>
				<li><% with Image %><% with PaddedImage(300, 225) %><img src="$URL" /><% end_with %><% end_with %> 
				<a href="$Link">$Title</a></li>
			 <% end_loop %>
		<% end_if %>
		
		</ul>
	</div>
	
<div class="clear"></div>
</div>
<div id="right">
	<% include Search %>
</div>
