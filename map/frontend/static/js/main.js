document.addEventListener('DOMContentLoaded', init);

function init() {
  //  Leaflet Map
  const map = L.map('map').setView(
    [10.778766026437442, 106.69519008483388],
    14
  );
  L.tileLayer('https://tile.openstreetmap.org/{z}/{x}/{y}.png', {
    attribution:
      '&copy; <a href="https://www.openstreetmap.org/copyright">OpenStreetMap</a> contributors',
  }).addTo(map);

  // Fetch API - GET Request
  const fetchGetRequest = async (url, func) => {
    try {
      const response = await fetch(url);
      const json = await response.json();
      return func(json);
    } catch (error) {
      console.log(error.message);
    }
  };

  // STYLES
  let pointStyle = {
    stroke: true,
    radius: 11,
    color: 'black',
    weight: 2,
    opacity: 1,
    fillOpacity: 1,
  };

  const selectedPointStyle = {
    stroke: true,
    radius: 11,
    color: 'black',
    weight: 2,
    opacity: 1,
    fillColor: 'white',
    fillOpacity: 1,
  };

  const styleGeoJSONOnClick = (places) => {
    let lastClickedFeature;
    places.on('click', (e) => {
      if (lastClickedFeature) {
        places.resetStyle(lastClickedFeature);
      }

      lastClickedFeature = e.layer;
      e.layer.setStyle(selectedPointStyle);

      map.setView([e.latlng.lat, e.latlng.lng], 16);
    });
  };

  // Add three nearest cities
  var nearbyCitiesGeoJSONLayer;
  const addNearbyCities = (geojson) => {
    if (nearbyCitiesGeoJSONLayer) {
      map.removeLayer(nearbyCitiesGeoJSONLayer);
    }

    function createCustomIcon(feature, latlng) {
      console.log({ feature });

      let cityName = feature.properties.name;
      let proximity = feature.properties.proximity;

      let myIcon = L.icon({
        iconUrl: '/static/images/' + feature.properties.type + '.png',
      });

      return L.marker(latlng, { icon: myIcon }).bindPopup(
        `<b>Tên thành phố</b>: ${cityName} <br/> <b>Khoảng cách</b>: ${proximity}`
      );
    }

    let myLayerOptions = {
      pointToLayer: createCustomIcon,
    };

    L.geoJSON(geojson, myLayerOptions).addTo(map);
  };

  // addNearbyCitiesLogic
  const addNearbyCitiesLogic = (id) => {
    let url = `/api/v1/cities/?placeid=${id}`;
    fetchGetRequest(url, addNearbyCities);
  };

  const placeImageElement = document.getElementById('placeimage');
  const menuTitleElement = document.getElementById('menu_title');
  const menuTextElement = document.getElementById('menu_text');

  // GeoJSON popup and Menu information
  const onEachFeatureHandler = (feature, layer) => {
    // Popup for feature - on click display the feature name
    let placeName = feature.properties.place_name;
    layer.bindPopup(`<b>Tên địa điểm</b>: <br/>${placeName}`);
    // No image available source
    let noImageAvailable = './media/place_images/no_image_available.jpg';

    layer.on('click', (e) => {
      // On click, update the menu information
      let featureImage = feature.properties.image
        ? feature.properties.image
        : noImageAvailable;
      let featureDescription = feature.properties.description;

      menuTitleElement.innerHTML = `<b>Tên địa danh di sản văn hóa</b>:</br>${placeName}`;
      placeImageElement.setAttribute('src', featureImage);
      menuTextElement.innerHTML = featureDescription;

      let featureID = feature.properties.pk;
      addNearbyCitiesLogic(featureID);
    });
  };

  // GeoJSON Layer
  const addAllPlacesToMap = (json) => {
    let places = L.geoJSON(json, {
      //  Change default marker to circle marker
      pointToLayer: function (feature, latlng) {
        pointStyle.fillColor = feature.properties.color;
        return L.circleMarker(latlng, pointStyle);
      },
      onEachFeature: (feature, layer) => {
        onEachFeatureHandler(feature, layer);
      },
    }).addTo(map);

    //  Style GeoJSONOnClick
    styleGeoJSONOnClick(places);
  };

  fetchGetRequest('/api/v1/places/', addAllPlacesToMap);
}
