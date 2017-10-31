<%@ Page Language="C#" AutoEventWireup="true" CodeFile="GoogleMap.aspx.cs" Inherits="GoogleMap" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        #map {
        height:400px;
        width:100%;
        
        }
    </style>
     <script type="text/javascript" src="http://maps.googleapis.com/maps/api/js?sensor=false"></script>
<script type="text/javascript"> 
   
    navigator.geolocation.getCurrentPosition(function (p) {
        var LatLng = new google.maps.LatLng(p.coords.latitude, p.coords.longitude);
        var mapOptions = {
            center: LatLng,
            zoom: 13,
            mapTypeId: google.maps.MapTypeId.ROADMAP
        };
    });
            </script>
    <script>
        var lat_lng = { lat: 24.8271, lng: 67.0338 };
        function initMap() {
            var options = {
                zoom: 8,
                center: { lat: 24.8271, lng: 67.0338 }
               
            }

            var map = new google.maps.Map(document.getElementById("map"), options);
            addMarker(lat_lng);
        }
            function addMarker(location) {  
                var marker = new google.maps.Marker({  
                    position: location,  
                    map: map  
                });  
               
            }  
    </script>
      <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDyBQNFqiyNb-ZFhiTFnBuierY8gdS8k3M&callback=initMap"
    async="async" defer="defer">
    </script>

</head>
<body>
    <form id="form1" runat="server">
    <div id="map">
    
    </div>
    </form>

   

</body>
   
</html>
