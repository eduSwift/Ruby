/* eslint-disable no-undef */
// TODO: Create a function to get the coordinates
// from an address and display a map with a marker on it

// TODO: Call the Mapbox API when the form is submitted
const showMapAndCoordinates = () => {
  event.preventDefault();
  const address = event.target.input.value;
  const url = `https://api.mapbox.com/geocoding/v5/mapbox.places/${address}.json?access_token=${TOKEN}`;

  fetch(url)
    .then(response => response.json())
    .then((data) => {
      const longitude = data.features[0].center[0];
      const latitude = data.features[0].center[1];
      displayCoordinates(longitude, latitude);
      injectMap(longitude, latitude);
    });
};

const displayCoordinates = (longitude, latitude) => {
  const paragraphElement = document.getElementById('coordinates');
  paragraphElement.innerText = `${latitude}, ${longitude}`;
};

const injectMap = (lng, lat) => {
  const mapDiv = document.getElementById('map');
  mapDiv.innerHTML = '';

  mapboxgl.accessToken = "pk.eyJ1IjoiZW1tdnMiLCJhIjoiY2xlZm5zdDhtMDB5bjNwbWM3dTFzZ2NzMyJ9.lNPahpBOstBXWwyyi0L09w";
  const map = new mapboxgl.Map({
    container: "map",
    style: "mapbox://styles/mapbox/streets-v9",
    center: [-0.077, 51.533],
    zoom: 12
  });

  new mapboxgl.Marker()
    .setLngLat([lng, lat])
    .addTo(map);
};
const TOKEN = "pk.eyJ1IjoiZW1tdnMiLCJhIjoiY2xlZm5zdDhtMDB5bjNwbWM3dTFzZ2NzMyJ9.lNPahpBOstBXWwyyi0L09w";
const form = doucment.querySelector('form');
form.addEventListener('submit', showMapAndCoordinates);

// TODO: Construct the URL (with apiKey & userInput) and make the fetch request to the mapbox API
// TODO: Insert the info into the DOM
// - Extract the coordinates from the parsed JSON response (lang, lat)
// - Display the coordinates in the element where the coordinates will be displayed
// - Create a map using the Mapbox API and the coordinates
// - Add a marker to the map at the coordinates
// TODO: Select the form element
// TODO: Add event listener to the form that:
// - Prevents the default form submission behavior
// - Get the user input
// - Calls the showMap function with the user input as an argument
