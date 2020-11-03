      <!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN"
        "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
      <html xmlns="http://www.w3.org/1999/xhtml" lang="en" xml:lang="en">

<head>
    $GlobalAnalytics
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
<link rel="stylesheet" type="text/css" href="{$ThemeDir}/css/reset-min.css">
<link rel="stylesheet" type="text/css" href="{$ThemeDir}/css/layout.css">
<link rel="stylesheet" type="text/css" href="{$ThemeDir}/css/typography.css">
<title>
<% if $URLSegment == "home" %>
$SiteConfig.Title - Stanley Museum of Art
<% else %>
$Title - $SiteConfig.Title - Stanley Museum of Art
<% end_if %>

</title>

$MetaTags(false)

<% base_tag %>

<script type="text/javascript" src="{$ThemeDir}/javascript/jquery.min.js"></script>
<script type="text/javascript" src="{$ThemeDir}/javascript/jquery.quicksearch.js"></script>
<script type="text/javascript" src="{$ThemeDir}/javascript/jquery-ui/js/jquery-ui-1.8rc3.custom.min.js"></script>
<script type="text/javascript" src="{$ThemeDir}/javascript/jcarousellite_1.0.1.min.js"></script>

<script type="text/javascript" src="{$ThemeDir}/javascript/fancybox/jquery.fancybox-1.2.1.js"></script>
<script type="text/javascript" src="{$ThemeDir}/javascript/jquery.uitablefilter.js"></script>

<link type="text/css" href="{$ThemeDir}/javascript/jquery-ui/css/ui-lightness/jquery-ui-1.8rc3.custom.css" rel="Stylesheet" />
<link rel="stylesheet" type="text/css" href="{$ThemeDir}/javascript/fancybox/jquery.fancybox.css" media="screen" />

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
<% include UiowaBar %>
<div id="body-wrapper">

	<div id="header"> <a href="$BaseHref"><img src="$ThemeDir/images/lilpicardlogo.png" id="lilpicardlogo"/></a>

	<div id ="navigation">
	<ul role="navigation">
		<% loop Menu(1) %>
		<% if LinkOrSection = section %>
		<li><img src="$ThemeDir/images/navigation_web/{$URLSegment}.png" /></li>
		<% else  %>
		<li><a href="$Link"><img src="$ThemeDir/images/navigation_web/{$URLSegment}.png" /></a></li>
		<% end_if %>
		<% end_loop %>

		<% if CurrentMember %>
		<li class="edit"><a href="{$BaseHref}admin/show/{$ID}" target="_blank">edit</a></li>
		<% end_if %>

	</ul>
</div>

	</div>
<div class="clear"></div>


	$Layout

<div class="clear"></div>
<div id="footer" class="footer typography">

<a href="http://stanleymuseum.uiowa.edu"><img src="$ThemeDir/images/UISMA_lockup_black.png" id="uima-logo" height="50" /></a><a href="http://www.lib.uiowa.edu/spec-coll/MSC/ToMsC850/MsC817/MsC817_picardlil.htm" target="_blank"><img src="$ThemeDir/images/uilibrarieslogo.png" id="uilibraries-logo" /></a>

<p><a href="https://stanleymuseum.uiowa.edu">University of Iowa Stanley Museum of Art</a><br /><a href="https://stanleymuseum.uiowa.edu/visit/locations/" target="_blank">View museum locations</a><br />Telephone: (319) 335-1727 | Fax: (319) 335 3677| <a href="mailto:stanley-museum@uiowa.edu">stanley-museum@uiowa.edu</a></p>
<div style="clear: both;"></div>

</div>
<div class="footer__copy">
<p><a href="http://www.uiowa.edu/homepage/online-privacy-information" class="footer__bar-link" target="_blank" rel="noopener">Privacy Information</a> <a href="https://opsmanual.uiowa.edu/community-policies/nondiscrimination-statement" class="footer__bar-link" target="_blank" rel="noopener">Nondiscrimination Statement</a> <a href="https://uiowa.edu/accessibility" target="_blank" class="footer__bar-link" >Accessibility</a> Created by <a href="https://slc.studentlife.uiowa.edu/" target="_blank" rel="noopener">Student Life Communications</a></p>
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
var exControl = document.getElementById("externalControl");
if(exControl){
	var imgs = document.getElementById("externalControl").getElementsByTagName("img");
}


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
$Analytics
</body>
</html>
