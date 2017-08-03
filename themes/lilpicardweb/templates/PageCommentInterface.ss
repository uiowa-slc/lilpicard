
<div id="PageComments_holder" class="typography">

	<div id="CommentHolder">
		<% if Comments %>
			<ul id="PageComments">
				<% loop Comments %>
					<li class="$EvenOdd<% if FirstLast %> $FirstLast <% end_if %> $SpamClass">
						<% include PageCommentInterface_singlecomment %>
					</li>
				<% end_loop %>
			</ul>
			
			<% if Comments.MoreThanOnePage %>
				<div id="PageCommentsPagination">
					<p>
					<% if Comments.PrevLink %>
						<a href="$Comments.PrevLink">&laquo; <% _t('PREV','previous') %></a>
					<% end_if %>
					
					<% if Comments.Pages %>
						<% loop Comments.Pages %>
							<% if CurrentBool %>
								<strong>$PageNum</strong>
							<% else %>
								<a href="$Link">$PageNum</a>
							<% end_if %>
						<% end_loop %>
					<% end_if %>
	
					<% if Comments.NextLink %>
						<a href="$Comments.NextLink"><% _t('NEXT','next') %> &raquo;</a>
					<% end_if %>
					</p>
				</div>
			<% end_if %>
		<% else %>
			<p id="NoComments">No one has posted any remembrances yet.</p>
		<% end_if %>
	</div>
	
	
</div>

<div id="post-comments">

<h2>Share Your Memories of Lil</h2>
<p>Complete the form below to help the university of Iowa Museum of Art build a collection of memories from your experiences with Lil Picard.</p>
<% if CanPostComment %>
		
		$PostCommentForm
		<p>Help us prevent spam.</p>
	<% else %>
		<p>You can't post comments until you have logged in<% if PostingRequiresPermission %>, and that you have an appropriate permission level<% end_if %>. Please <a href="Security/login?BackURL={$Page.URLSegment}/" title="Login to post a comment">login by clicking here</a>.</p>
	<% end_if %>
	
<p id="post-comments-footer">Do you have photographs or other media to share of Lil Picard? Please email <a href="mailto:lilpicard@uiowa.edu">lilpicard@uiowa.edu</a></p>
	
</div>
	
