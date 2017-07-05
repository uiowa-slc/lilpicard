<div id="left">
	<div id="header"> <a href="$BaseHref"><img src="$ThemeDir/images/lilpicardlogo.png" /></a>
		<div class="clear"></div>
	</div>
<div id="main-carousel-container">
	<div id="mycarousel">

		<ul >
			<% control Children %>
			<li><a href="$Image.URL" class="thickbox" title="$Content.ATT"><% control Image %><% control PaddedImage(800,600) %><img src="$URL" alt="$Title" height="$Height" width="$Width" /><% end_control %><% end_control %> </a></li>
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
		$Content
		$Forms </div>
	<% if RelatedArtworkPieces %>
	<div id="related-works">
		<h2>Related</h2>
		<ul>
			<% control RelatedArtworkPieces %>
			<li><a href="$Link">$Title</a></li>
			<% end_control %>
		</ul>
	</div>
	<% end_if %>

	<% if Categories %>
	<div id="categories">
		<h2>Categories</h2>
		<ul>
			<% control Categories %>
			<li>$Title</li>
			<% end_control %>
		</ul>
	</div>
	<% end_if %>
</div>

<div id="carousels" class="typography">
	
		<ul>
		<% if carousels %>
			<% control carousels %>
				<li><% control Image %><% control PaddedImage(300, 225) %><img src="$URL" /><% end_control %><% end_control %> 
				<a href="$Link">$Title</a></li>
			 <% end_control %>
		<% end_if %>
		
		</ul>
	</div>
	
<div class="clear"></div>
</div>
<div id="right">
	<% include Search %>
</div>
