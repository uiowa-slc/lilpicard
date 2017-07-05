<div id="left">
<div id="main-carousel-container">

		<div id="video">The player will show in this paragraph</div>
	</div>

<div id="content-container" class="typography">
	<div id="content">
	<h2>$Title</h2>
	<% control Parent %>
		<h2>$Title<% if Date %>, $Date <% end_if %></h2>
		$Content
		$Forms 
		
	<% end_control %>
		</div>
		
	<% control Parent %>
	<% if RelatedArtworkPieces %>
		<% include RelatedArtwork %>
	<% end_if %>
	<% end_control %>

</div>

<% if carousels %>
	<div id="carousels" class="typography">
		<ul>
		
			<% control videos %>
			
				<li><a href="{$Link}#{$Parent.ID}"><% control Image %><% control PaddedImage(150, 113) %><img src="$URL" /><% end_control %><% end_control %></a><a href="{$Link}#{$Parent.ID}">$Title</a></li>
			<% end_control %>
			
			<% if Parent.VideosOnly %>
		
			<% else %>
					<% control Parent %>
			<li><a href="{$Link}#{$ID}"><% control ThumbnailImage %><% control PaddedImage(150, 113) %><img src="$URL" /><% end_control %><% end_control %></a><a href="$Link">$Title</a></li>
		<% end_control %>
		<% end_if %>

			<% control carousels %>
			
				<li><a href="{$Link}#{$Parent.ID}"><% control Image %><% control PaddedImage(150, 113) %><img src="$URL" /><% end_control %><% end_control %></a> 
				<a href="$Link">$Title</a></li>
		
			 <% end_control %>
		</ul>
	</div>
	
	<% else_if videos %>
	
		<div id="carousels" class="typography">
			<ul>
			<% if Parent.VideosOnly %>
			
			<% else %>
								<% control Parent %>
							
			<li><a href="{$Link}#{$ID}"><% control ThumbnailImage %><% control PaddedImage(150, 113) %><img src="$URL" /><% end_control %><% end_control %></a><a href="$Link">$Title</a></li>
		<% end_control %>
		<% end_if %>
			
				<% control videos %>
	<li><a href="{$Link}#{$Parent.ID}"><% control Image %><% control PaddedImage(150, 113) %><img src="$URL" /><% end_control %><% end_control %></a><a href="{$Link}#{$Parent.ID}">$Title</a></li>
				<% end_control %>
			</ul>
		</div>
	
	
	<% end_if %>
<script type='text/javascript' src='{$BaseHref}/mysite/jwplayer/swfobject.js'></script>
		
		<script type='text/javascript'>
		var s1 = new SWFObject('{$BaseHref}/mysite/jwplayer/player.swf','player','300','300','9');
		s1.addParam('allowfullscreen','true');
		s1.addParam('allowscriptaccess','always');
		s1.addParam('flashvars','file=$Video.URL');
		s1.write('video');
		</script> 
		</div>
<div id="right">
	<% include Search %>
</div>