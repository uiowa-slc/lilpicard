
<div id="search-bar">
	<form onSubmit="return false">
		<fieldset>
			<input type="text" name="search" value="" id="id_search" class="typography" maxlength="30" />
			<img src="$ThemeDir/images/search_options.png" id="search-options-button" /> 
		</fieldset>
		
	</form>
    

    
	
</div>
<div style="clear: left"></div>
    <div id="search-categories" class="typography">
    
    <form name="categoryboxes" class="category-form">
	
	<!--
	
	
	
	-->
<!--Performance
Installation
Painting
Mixed Media
Biography
Reviews of Picard
Reviews by Picard
Artist Statements
Drawing
Fashion -->
<h2>Filter catalog contents...</h2>
		<fieldset>
			<!--<legend>Filter catalog contents...</legend>-->
			<label for="All"><input type="radio" name="myboxes" class="search-checkbox" id="All" checked="checked" /><span>All</span></label>
			<label for="Installation"><input type="radio" name="myboxes" class="search-checkbox" id="Installation" /><span>Installations</span></label>
            <label for="Painting"><input type="radio" name="myboxes" class="search-checkbox" id="Painting" /><span>Paintings</span></label>
            <label for="Mixed Media"><input type="radio" name="myboxes" class="search-checkbox" id="Mixed Media" /><span>Mixed Media Works</span></label>
			<label for="Biography"><input type="radio" name="myboxes" class="search-checkbox" id="Biography" /><span>Biographies</span></label>
			<label for="Reviews of Picard"><input type="radio" name="myboxes" class="search-checkbox" id="Reviews of Picard" /><span>Reviews of Picard</span></label>
			<label for="Reviews by Picard"><input type="radio" name="myboxes" class="search-checkbox" id="Reviews by Picard" /><span>Reviews by Picard</span></label>
			<label for="Artist Statements"><input type="radio" name="myboxes" class="search-checkbox" id="Artist Statements" /><span>Artist Statements</span></label>
			<label for="Drawing"><input type="radio" name="myboxes" class="search-checkbox" id="Drawing" /><span>Drawings</span></label>
			<label for="Audio"><input type="radio" name="myboxes" class="search-checkbox" id="Audio" /><span>Audio Clips</span></label>
			<label for="Film"><input type="radio" name="myboxes" class="search-checkbox" id="Film" /><span>Film Clips</span></label>
		</fieldset>
    </form>
	
<div style="clear: left"></div>
    
    </div>
<div id="search-container">
	<div id="search-results">
	<table id="results" class="typography">
		<tbody>
			<% control ArtworkPieces %>
			<% if Featured %>
			<tr class="{$LinkOrSection}-results" id="result{$Pos}">
				<td class="artwork-thumbnail"><a name="{$ID}" href="{$Link}#{$ID}"><% control ThumbnailImage %><% control CroppedImage(50,50) %><img src="$URL" alt="$Title" height="$Height" width="$Width" /><% end_control %><% end_control %></a></td>
				<td class="result_info"><a href="{$Link}#{$ID}">$Title<% if Date %>, $Date <% end_if %></a>
					<p>$Medium</p></td>
					
			
					<td class="hidden"> all<% if Categories %>
				<% control Categories %>
				$Title.ATT
				<% end_control %>
				<% end_if %>
				</td>
		
	
		</tr>
		
		<% end_if %>
		
		<% end_control %>
		</tbody>
		
	</table>
</div>
</div>
