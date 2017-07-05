      <!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN"
        "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
      <html xmlns="http://www.w3.org/1999/xhtml" lang="en" xml:lang="en">

<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
<link rel="stylesheet" type="text/css" href="{$BaseHref}{$ThemeDir}/css/reset-min.css">
<link rel="stylesheet" type="text/css" href="{$BaseHref}{$ThemeDir}/css/layout.css">
<link rel="stylesheet" type="text/css" href="{$BaseHref}{$ThemeDir}/css/typography.css">
<title>
<% if MetaTitle %>
$MetaTitle
<% else %>
$Title - Lil Picard
<% end_if %>

</title>
<% control Page(home) %>
$MetaTags(false)
<% end_control %>
<% base_tag %>

<script type="text/javascript" src="{$BaseHref}/mysite/javascript/jquery.min.js"></script>
<script type="text/javascript" src="{$BaseHref}/mysite/javascript/jquery.quicksearch.js"></script>
<script type="text/javascript" src="{$BaseHref}/mysite/javascript/jquery-ui/js/jquery-ui-1.8rc3.custom.min.js"></script>
<script type="text/javascript" src="{$BaseHref}/mysite/javascript/jcarousellite_1.0.1.min.js"></script>

<script type="text/javascript" src="{$BaseHref}/mysite/javascript/fancybox/jquery.fancybox-1.2.1.js"></script>
<script type="text/javascript" src="{$BaseHref}/mysite/javascript/jquery.uitablefilter.js"></script>

<link type="text/css" href="{$BaseHref}/mysite/javascript/jquery-ui/css/ui-lightness/jquery-ui-1.8rc3.custom.css" rel="Stylesheet" />
<link rel="stylesheet" type="text/css" href="{$BaseHref}/mysite/javascript/fancybox/jquery.fancybox.css" media="screen" />

<script type="text/javascript">
$(function() {
		   
		   				
			$('input#id_search').quicksearch('table#results tbody tr', {
				'bind': 'myCustomEvent'

			});
		   
		   $("a.thickbox").fancybox({
				'scrolling' : true,
				'padding' : 0,
				'transitionIn'		: 'none',
				'transitionOut'		: 'none',
				'titlePosition' 	: 'outside',
				'titleFormat'		: function(title, currentArray, currentIndex, currentOpts) {
					return '<span id="fancybox-title-over"> ' + title +'</span>';
				}
			});
		   
		   	$("a.iframe").fancybox({
			    'width'		: 815,
				'height'		: 615,
				'hideOnContentClick': true
			});
			
			
			

		   
	//$.scrollTo('.section-results', 800);
	
    $("#mycarousel").jCarouselLite({
        btnNext: ".next",
        btnPrev: ".prev",
		visible: 2,
		scroll: 0.5,
		start: -0.5,
		circular: false,
		

		btnGo:
			["#externalControl .1", "#externalControl .2",
			"#externalControl .3", "#externalControl .4",
			"#externalControl .5", "#externalControl .6",
			"#externalControl .7", "#externalControl .8",
			"#externalControl .9", "#externalControl .10",
			"#externalControl .11", "#externalControl .12",
			"#externalControl .13", "#externalControl .14",
			"#externalControl .15", "#externalControl .16",
			"#externalControl .17", "#externalControl .18",
			"#externalControl .19", "#externalControl .20",
			
			
			],
			
		    afterEnd: function(a) {
		
    }

			
	


    });
});


</script>


</head>
<body>
<div id="body-wrapper">

	<div id="header"> <a href="$BaseHref"><img src="$ThemeDir/images/lilpicardlogo.png" id="lilpicardlogo"/></a>
	
	<div id ="navigation">
	<ul>
		<% control Menu(1) %>
		<% if LinkOrSection = section %>
		<li><img src="$ThemeDir/images/navigation_web/{$URLSegment}.png" /></li>
		<% else  %>
		<li><a href="$Link"><img src="$ThemeDir/images/navigation_web/{$URLSegment}.png" /></a></li>
		<% end_if %>
		<% end_control %>
		
		<% if CurrentMember %>
		<li class="edit"><a href="{$BaseHref}admin/show/{$ID}" target="_blank">edit</a></li>
		<% end_if %>
		
	</ul>
</div>
		
	</div>
<div class="clear"></div>


	$Layout

<div class="clear"></div>
<div id="footer" class="typography">

<a href="http://uima.uiowa.edu"><img src="$ThemeDir/images/uimalogo.png" id="uima-logo" /></a><a href="http://www.lib.uiowa.edu/spec-coll/MSC/ToMsC850/MsC817/MsC817_picardlil.htm" target="_blank"><img src="$ThemeDir/images/uilibrarieslogo.png" id="uilibraries-logo" /></a>

<p>1375 Highway One West | 1840 Studio Arts Building | Iowa City, Iowa 52242<br />Telephone: (319) 335-1727 | Fax: (319) 335 3677| <a href="mailto:uima@uiowa.edu">uima@uiowa.edu</a></p>
<div style="clear: both;"></div>
</div>


<script type="text/javascript">



 $('div#search-categories').hide();

$('#search-options-button').click( function() {
    $('div#search-categories').toggle();
   });


function findCheckBoxValues(){
	
	boxes = document.categoryboxes.myboxes.length;
	var searchstring = "";
	for(i=0; i < boxes; i++){
		if(document.categoryboxes.myboxes[i].checked == true){
			searchstring = searchstring + " " + document.categoryboxes.myboxes[i].id;
		}
	}
	
	return searchstring;
	
}


$(".search-checkbox").click(function () {
									  
	var searchstring = findCheckBoxValues();
	//alert(searchstring);

	$("input#id_search").trigger("myCustomEvent", searchstring);



});


$('input#id_search').bind('keyup', function() {
	var searchstring = findCheckBoxValues();
	$("input#id_search").trigger("myCustomEvent", searchstring);

});

function buttons(current) {
	
var imgs = document.getElementById("externalControl").getElementsByTagName("img");

if(imgs){

for (var i = 0, l = imgs.length; i < l; i++) {
	icorrected = i +1;
	if(icorrected==current){
		imgs[i].src ="{$ThemeDir}/images/circle_active.png";
	}else{
		
		imgs[i].src ="{$ThemeDir}/images/circle_inactive.png";
	}
}
}
}

buttons(1);

</script>
<!-- page id is {$ID} -->
<script type="text/javascript">
var gaJsHost = (("https:" == document.location.protocol) ? "https://ssl." : "http://www.");
document.write(unescape("%3Cscript src='" + gaJsHost + "google-analytics.com/ga.js' type='text/javascript'%3E%3C/script%3E"));
</script>
<script type="text/javascript">
try {
var pageTracker = _gat._getTracker("UA-426753-17");
pageTracker._trackPageview();
} catch(err) {}</script>
</body>
</html>
