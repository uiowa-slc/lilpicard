
<div id="guide-content" class="typography">
	
	<div class="guide-column first">
	
		$Column1
	
	</div>
	<div class="guide-column">$Column2</div>
	
</div>
<div style="clear: both;"></div>



<div id ="guide-navigation" class="typography"> 



<% control PrevNextPage(prev) %>
	  <a href="$Link" href="$Link" title="Go to $Title">< Previous Page</a>	
<% end_control %>Page $CurrentPageNumber of $NumberOfSiblings <a href="#"><% control PrevNextPage(next) %> <a href="$Link" href="$Link" title="Go to $Title">Next Page > </a>
<% end_control %></div>
<div style="clear: both;"></div>