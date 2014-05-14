<script language="JavaScript" >

function preLoader(){
  if(document.images) {
    pics = new Array();
    pics[01] = new Image();pics[01].src = "images/root/upload/na.gif";
    pics[02] = new Image();pics[02].src = "images/root/upload/af.gif";
    pics[03] = new Image();pics[03].src = "images/root/upload/as.gif";
	pics[04] = new Image();pics[04].src = "images/root/upload/eu.gif";
	pics[05] = new Image();pics[05].src = "images/root/upload/au.gif";
	pics[06] = new Image();pics[06].src = "images/root/upload/sa.gif";
	pics[07] = new Image();pics[07].src = "images/root/upload/ca.gif";
	pics[08] = new Image();pics[08].src = "images/root/upload/me.gif";
    pics[09] = new Image();pics[09].src = "images/root/upload/base.gif";
  }
 }
function imgChange(imgSrc,imgNum) {
	if(document.images) {
    	document.images[imgSrc].src = pics[imgNum].src;
    }
}

function region_change() {
	change_map();
}

function regionChange(num) {
	$("#region").val(num);
	$.getJSON("<?php echo HTTP_SERVER ?>?route=splash/visasplash/countries",{id: $("#region").val(), ajax: 'true'}, function(j){
			var options = '';
			for (var i = 0; i < j.length; i++) {
				options += '<option value="' + j[i].value + '">' + j[i].display + '</option>';
			}
			$("select#country").html(options);
	});
}

function linkto() {
	document.location.href = '<?php echo HTTP_SERVER ?>'+$("#country").val()+".html";
}


function change_map() {
	var region = $("#region").val();
	switch (region) {
		case '42':
			imgChange('Continents',06);
			break;
		case '41':
			imgChange('Continents',01);
			break;
		case '40':
			imgChange('Continents',08);
			break;
		case '39':
			imgChange('Continents',04);
			break;
		case '38':
			imgChange('Continents',07);
			break;
		case '37':
			imgChange('Continents',05);
			break;
		case '36':
			imgChange('Continents',03);
			break;
		case '35':
			imgChange('Continents',02);
			break;
		default:
			imgChange('Continents',09);
			break;
	}
	
}

</script>


<div align="center">
<div class="header-nav">
<?php echo ($this->config->get('config_languageid') == 'vn')?'Vùng: ' : 'Continent: ' ?>
<select id="region" name="region" onchange="region_change()">
	<?php echo $cbx_sitemap?>
</select>
<?php echo ($this->config->get('config_languageid') == 'vn')?'Quốc gia: ' : 'Country: ' ?>
<select id="country" name="country">
</select>
<input type="hidden" id="tmp" />
<a class="elife-button" onclick="linkto()"><?php echo ($this->config->get('config_languageid') == 'vn')?'Xem' : 'View' ?></a>
</div>
<img name="Continents" id="Continents" src="images/root/upload/base.gif" alt="" align="absmiddle" usemap="#base" style="border-style:none" />
    <map id="base" name="base" >
<area shape="poly" onclick="regionChange(42)" alt="South America" coords="146,216,146,220,145,223,143,226,140,232,141,237,141,241,141,244,144,250,147,256,153,261,154,274,152,284,150,297,149,305,149,313,150,325,154,331,159,336,163,334,166,330,168,325,170,319,169,311,177,302,183,296,188,291,200,278,209,270,214,263,214,252,216,244,215,239,206,234,197,228,191,222,182,218,172,214,168,213,164,213,159,212,157,212,153,212" title="South America" onmouseOver="imgChange('Continents',06)" onmouseOut="change_map()" />
<area shape="poly" onclick="regionChange(41)" alt="North America & Canada" coords="34,133,42,130,52,131,59,138,64,151,68,165,72,176,79,189,90,204,120,216,145,220,143,213,141,203,134,202,134,195,131,190,134,185,141,190,147,188,143,178,169,158,176,148,186,151,195,145,182,130,173,117,186,121,180,105,173,80,161,64,158,51,162,39,169,32,186,10,180,3,166,6,137,14,120,32,99,38,72,56,61,80,13,81,8,110,14,125,17,141" title="North America & Canada" onmouseOver="imgChange('Continents',1)" onmouseOut="change_map()" />
<area shape="poly" onclick="regionChange(35)" alt="Africa" coords="249,179,245,186,241,194,240,204,241,217,254,228,270,230,279,235,286,246,291,281,298,292,308,296,316,290,324,284,333,271,339,277,349,277,357,255,341,237,347,226,353,213,353,211,340,213,334,206,323,184,320,178,310,177,301,176,298,179,288,174,289,167,278,168,265,171,253,174" title="Africa" onMouseOver="imgChange('Continents',2)" onMouseOut="change_map()" />
<area shape="poly" onclick="regionChange(40)" alt="Middle East" coords="320,176,330,196,335,202,337,207,345,211,367,197,360,191,366,186,366,177,357,171,343,166,326,169,326,178" title="Middle East" onMouseOver="imgChange('Continents',8)" onMouseOut="change_map()" />
<area shape="poly" onclick="regionChange(38)" alt="Caribbean" coords="138,191,137,199,147,211,179,217,203,195,169,178,145,189" title="Caribbean" onMouseOver="imgChange('Continents',7)" onMouseOut="change_map()" />
<area shape="poly" onclick="regionChange(36)" alt="Asia" title="Asia" coords="362,190,368,183,364,174,356,169,351,142,351,137,363,137,379,137,399,151,418,148,439,148,457,151,475,148,485,143,496,149,503,166,492,176,466,192,477,223,496,235,489,242,430,249,426,235,416,221,413,199,403,205,403,218,397,226,384,211,365,191" onMouseOver="imgChange('Continents',3)" onMouseOut="change_map()" />
<area shape="poly" onclick="regionChange(39)" alt="Europe" title="Europe" coords="515,151,505,127,463,150,398,149,377,134,347,135,352,162,324,164,319,177,296,172,273,168,261,171,202,143,160,47,181,19,199,7,229,2,308,26,356,40,575,66,582,82,578,97" onMouseOver="imgChange('Continents',4)" onMouseOut="change_map()" />
<area shape="poly" onclick="regionChange(37)" alt="Australasia" title="Australasia" coords="497,233,488,243,454,252,446,292,474,285,494,296,496,305,527,311,547,313,554,289,516,274,505,253,507,234"  onMouseOver="imgChange('Continents',5)" onMouseOut="change_map()" />
<area shape="default" nohref="nohref" alt="" />
</map>
</div>




<script language="javascript">
	$(document).ready(function(e) {
        $.getJSON("<?php echo HTTP_SERVER ?>?route=splash/visasplash/countries",{id: $("#region").val(), ajax: 'true'}, function(j){
		 		var options = '';
		  		for (var i = 0; i < j.length; i++) {
					options += '<option value="' + j[i].value + '">' + j[i].display + '</option>';
		  		}
		  		$("select#country").html(options);
		});
		preLoader();
    });

	$(function(){
	  	$("select#region").change(function(){
			$.getJSON("<?php echo HTTP_SERVER ?>?route=splash/visasplash/countries",{id: $(this).val(), ajax: 'true'}, function(j){
		 		var options = '';
		  		for (var i = 0; i < j.length; i++) {
					options += '<option value="' + j[i].value + '">' + j[i].display + '</option>';
		  		}
		  		$("select#country").html(options);
			})
	  	})
	})
</script>