<div id="left">
<div id="main-carousel-container">

		<div id="video">

		<video src="$Video.URL" poster="$Image.SetWidth(660).URL" preload="none" controls></video></div>
	</div>

<div id="content-container" class="typography">
	<div id="content">
	<h2>$Title</h2>
	<% with Parent %>
		<h2>$Title<% if Date %>, $Date <% end_if %></h2>
		$Content
		$Forms 
		
	<% end_with %>
		</div>
		
	<% with Parent %>
	<% if RelatedArtworkPieces %>
		<% include RelatedArtwork %>
	<% end_if %>
	<% end_with %>

</div>

<% if carousels %>
	<div id="carousels" class="typography">
		<ul>
		
			<% loop videos %>
			
				<li><a href="{$Link}#{$Parent.ID}"><% with Image %><% with Pad(150, 113) %><img src="$URL" /><% end_with %><% end_with %></a><a href="{$Link}#{$Parent.ID}">$Title</a></li>
			<% end_loop %>
			
			<% if Parent.VideosOnly %>
		
			<% else %>
					<% with Parent %>
			<li><a href="{$Link}#{$ID}"><% with ThumbnailImage %><% with Pad(150, 113) %><img src="$URL" /><% end_with %><% end_with %></a><a href="$Link">$Title</a></li>
		<% end_with %>
		<% end_if %>

			<% loop carousels %>
			
				<li><a href="{$Link}#{$Parent.ID}"><% with Image %><% with Pad(150, 113) %><img src="$URL" /><% end_with %><% end_with %></a> 
				<a href="$Link">$Title</a></li>
		
			 <% end_loop %>
		</ul>
	</div>
	
	<% else_if videos %>
	
		<div id="carousels" class="typography">
			<ul>
			<% if Parent.VideosOnly %>
			
			<% else %>
								<% with Parent %>
							
			<li><a href="{$Link}#{$ID}"><% with ThumbnailImage %><% with Pad(150, 113) %><img src="$URL" /><% end_with %><% end_with %></a><a href="$Link">$Title</a></li>
		<% end_with %>
		<% end_if %>
			
				<% loop videos %>
	<li><a href="{$Link}#{$Parent.ID}"><% with Image %><% with Pad(150, 113) %><img src="$URL" /><% end_with %><% end_with %></a><a href="{$Link}#{$Parent.ID}">$Title</a></li>
				<% end_loop %>
			</ul>
		</div>
	
	
	<% end_if %>

		</div>
<div id="right">
	<% include Search %>
</div>