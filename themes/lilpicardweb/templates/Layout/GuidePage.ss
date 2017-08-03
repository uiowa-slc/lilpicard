
<div id="guide-content" class="typography">
	
	<div class="guide-column first">
		$Column1
	</div>
	<div class="guide-column">$Column2</div>
	
</div>
<div style="clear: both;"></div>



<div id ="guide-navigation" class="typography"> 
	<% with PrevNextPage('prev') %>
		  <a href="$Link" title="Go to $Title">< Previous Page</a>	
	<% end_with %>

	Page $CurrentPageNumber of $NumberOfSiblings
	
	<% with PrevNextPage('next') %>
		<a href="$Link" title="Go to $Title">Next Page > </a>
	<% end_with %>
</div>
	<div style="clear: both;"></div>