<div id="tab_map">
<script type="text/javascript" src="http://maps.google.com/maps/api/js?sensor=false"></script>
<script type="text/javascript">

var pos = 0;
var flagedit=false;

var x = parseFloat("<?php echo $locationmap['x']?>");
var y = parseFloat("<?php echo $locationmap['y']?>");
var zoom = parseInt("<?php echo $locationmap['zoom']?>");

//get session
var zoomSession = "<?php echo $this->session->data['PostPropertyProduct']['zoom']?>";
var xSession = "<?php echo $this->session->data['PostPropertyProduct']['x']?>";
var ySession = "<?php echo $this->session->data['PostPropertyProduct']['y']?>";
if(zoomSession != "" && xSession != "" && ySession != "") {
	zoom = parseInt(zoomSession);
	x = parseFloat(xSession);
	y = parseFloat(ySession);
}


function initialize(x,y,zoom) 
{
	geocoder = new google.maps.Geocoder();
	var latlng = new google.maps.LatLng(x, y);
	var myOptions = 
	{
	  zoom: zoom,
	  center: latlng,
	  mapTypeId: google.maps.MapTypeId.ROADMAP,
	  scrollwheel: true
	}
	map = new google.maps.Map(document.getElementById("map_canvas"), myOptions);

	markerobj = new google.maps.Marker({
			map: map, 
			position: latlng,
			draggable:true
					});
	pathCoordinates = new google.maps.MVCArray();
    
    var polyOptions = {
      path: pathCoordinates,
      strokeColor: '#000000',
      strokeOpacity: 1.0,
      strokeWeight: 3
	  
    }
	
	
	
    poly = new google.maps.Polyline(polyOptions);
    poly.setMap(map);

    // Add a listener for the click event
    google.maps.event.addListener(map, 'click', getPosition);
	
	
	attachSecretMessage(markerobj);
	
	
	//google.maps.event.addListener( map ,'click',getPosition)
	google.maps.event.addListener( map ,'zoom_changed',changeZoom)
}
var obj = new Array()

function getPosition(event)
{
	if(flagedit==true)
	{
		/*var marker = new google.maps.Marker({
		  position: event.latLng,
		  map: map,
		  draggable:true,
		  title: "#"+(obj.length)
		});
		
		
		google.maps.event.addListener(marker, 'dragend', function() {
			redawpath();
		  });
		google.maps.event.addListener(marker, 'rightclick', function() {
			rightaction(marker);
		  });
		*/
		obj.push(createMarker(event.latLng));
		redawpath();	
	}
}

function redawpath()
{
	
	var path =new google.maps.MVCArray();
	document.getElementById("listpath").innerHTML = "";
	for(i=0;i<obj.length;i++)
	{
		//path = poly.getPath();
		// Because path is an MVCArray, we can simply append a new coordinate
		// and it will automatically appear
		if(obj[i].getTitle()!="-1")
		{
			var point =obj[i].getPosition();
			path.insertAt(pathCoordinates.length, point);
			
			input = "X"+i+": "+createInput("text","pointpath["+i+"][x]",point.lat(),"onchange='updatePath()'")+ "Y"+i+": "+createInput("text","pointpath["+i+"][y]",point.lng(),"onchange='updatePath()'")+"<br>"
			
			document.getElementById("listpath").innerHTML+=input
		}
		
	}
	poly.setPath(path);
}

function rightaction(mak)
{
	mak.setTitle("-1");
	mak.setVisible(false);
	redawpath()
}

function updatePath()
{
	var pointx =new Array();
	var pointy =new Array();
	$('input[name*=\'pointpath\']').each(function(index) {
    	//alert(index + ': ' + $(this).val());
		//alert($(this).attr('name'))
		if(index % 2 == 0)
			pointx.push($(this).val());
		else
			pointy.push($(this).val());
  	});
	for(i=0;i<pointx.length;i++)
	{
		var latlng = new google.maps.LatLng(pointx[i], pointy[i]);
		obj[i].setPosition(latlng);
	}
	redawpath();
}

function createMarker(pos)
{
	var marker = new google.maps.Marker({
			  position: pos,
			  map: map,
			  draggable:true,
			  title:"#"+i
			});
			
		google.maps.event.addListener(marker, 'dragend', function() {
			redawpath();
		  });	
		google.maps.event.addListener(marker, 'rightclick', function() {
			rightaction(marker);
		  });
	return marker;
}

function drawpath()
{
	arr = new Array();
<?php
	for($i=0;$i<count($listpoint);$i++)
	{
?>
	var latlng = new google.maps.LatLng(<?php echo $listpoint[$i]['x']?>, <?php echo $listpoint[$i]['y']?>);
	arr.push(latlng);
<?php 
	}
?>	
	for(i=0;i<arr.length;i++)
	{
		
		
		obj.push(createMarker(arr[i]));

	
	}
	for(i=0;i<obj.length;i++)
	{
		obj[i].setVisible(false);
		
	}
	redawpath();
}

function codeAddress(address) 
{
	if (geocoder) 
	{
	  geocoder.geocode( { 'address': address}, function(results, status) 
	  {
		if (status == google.maps.GeocoderStatus.OK) 
		{
		  	map.panTo(results[0].geometry.location);
		  	/*var marker = new google.maps.Marker({
			  map: map, 
			  position: results[0].geometry.location
		  				});*/
			markerobj.setPosition(results[0].geometry.location)
			setPosition(results[0].geometry.location)	
			//alert(results[0].geometry.location.lat())
			//attachSecretMessage(marker);
		} 
		else 
		{
		  alert("Geocode was not successful for the following reason: " + status);
		}
	  });
	}
	var polyOptions = {
      path: pathCoordinates,
      strokeColor: '#000000',
      strokeOpacity: 1.0,
      strokeWeight: 3
    }
    poly = new google.maps.Polyline(polyOptions);
    poly.setMap(map);
	
}

function attachSecretMessage(marker) {
  
	google.maps.event.addListener(marker, 'position_changed', function() 
	{
		document.post_product.x.value=marker.position.lat()
		document.post_product.y.value=marker.position.lng()
  	});
}

function setPosition(latLng)
{
	document.post_product.x.value=latLng.lat()
	document.post_product.y.value=latLng.lng()
}

function loadPosition()
{
	var x = parseFloat(document.post_product.x.value);
	var y = parseFloat(document.post_product.y.value);
	var latlng = new google.maps.LatLng(x, y);
	map.panTo(latlng);
	markerobj.setPosition(latlng)
}



function changeZoom()
{
	document.post_product.zoom.value=map.zoom
}
function setZoom(zoom)
{
	initialize(x,y,parseInt(zoom)) 
}
function editPathEnable()
{
	if(flagedit==false)
	{
		flagedit=true
		document.getElementById("listpath").innerHTML=""
		document.getElementById("btnEditPath").value="Lưu danh sách điểm"
		
	}
	else
	{
		flagedit=false
		document.getElementById("btnEditPath").value="Edit Path"
		
	}
	for(i=0;i<obj.length;i++)
	{
		obj[i].setVisible(flagedit);
	}
	redawpath();
}

</script>
<div class="section" id="locationmap">
    
    <div class="section-content padding">
    
            <div class="clearer">&nbsp;</div>
        	<div id="error" class="error" style="display:none"></div>
        	<div>        
                <div class="map-info">
                	<p>
                		<label><?php echo $title_address?>:</label>&nbsp;<?php echo $product['location'];?>
                    </p>
                    <p>
                		<label><?php echo $text_district?>:</label>&nbsp;<?php echo $product['zonename'];?>
                    </p>
                    <p>
                		<label><?php echo $text_nearest_station?>:</label>&nbsp;<?php echo $product['stationname'];?>
                    </p>
                    
                </div>
               	<p>
                    <input id="btnSearchLocation" type="button" class="elife-button" value="<?php echo $text_search_location?>" onclick="codeAddress($('#address').val())">
                    <!--<input type="button" id="btnEditPath" value="Vẽ biên giới" onclick="editPathEnable()">-->
                    <div id="map_canvas" class="map-google"></div>
                    <!--<em>Click chuột phải vào điểm cần xóa trên bản đồ để xóa</em>-->
                </p>
                    
                <p style="display:none">
                    <label>Point</label>
                    X:<input type="text" name="x" value="<?php echo $locationmap['x']?>" style="width:120px" class="elife-textbox"/> 
                    Y:<input type="text" name="y" value="<?php echo $locationmap['y']?>" style="width:120px" class="elife-textbox" onchange="loadPosition()"/>
                    <input type="hidden" name="pointid" value="<?php echo $locationmap['pointid']?>" onchange="loadPosition()"/>
                    <input type="hidden" name="position" value="<?php echo $locationmap['position']?>"  />
                    <div id="listpath">
                    </div>
                </p>
                <p style="display:none">
                    <label>Zoom</label>&nbsp;
                    <input type="text" name="zoom" value="<?php echo $locationmap['zoom']?>" style="width:120px" class="elife-textbox" size=60 readonly="readonly"/>
                </p> 
            </div>
            
      
    </div>
    
</div>
<script type="text/javascript" charset="utf-8">
var DIR_UPLOADPHOTO = "<?php echo $DIR_UPLOADPHOTO?>";
var DIR_UPLOADATTACHMENT = "<?php echo $DIR_UPLOADATTACHMENT?>";

</script>
<script language="javascript">

	initialize(x,y,zoom);
	//codeLatLng() 
	//map.setZoom(1)
	//drawpath();
</script>

</div>