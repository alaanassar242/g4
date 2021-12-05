/*this functions takes the location of the user (longitude and latitude) - based on the browser
and then calculates the air distance of the user from the business using the getDistanceFromLatLonInKm function below */
const showPosition = (position) => {
  const currentLocationLatitude = position.coords.latitude; 
  const currentLocationLongitude = position.coords.longitude;
  //calculates the distance from the location to the business based on coordinates. d is the distance in kilometres (fixed to 2)
  const airDistance = getDistanceFromLatLonInKm(currentLocationLatitude, currentLocationLongitude,31.253193, 34.797563).toFixed(2);
  //estimates the delivery time
  deliveryTime = Math.ceil(10+airDistance*3); 
  if (airDistance <= 0.7) { /*if the customer is close*/
    x.innerHTML = ("We are so close! only " + airDistance + " km and you are in our ice cream parlor. <br> Estimated time for delivery: " + deliveryTime + " minutes");
  }
  else if (airDistance > 0.7 && airDistance < 10) { /*if the customer's location is not close but there is a delivery option*/
    x.innerHTML = ("Within " + airDistance + " we can reach to you or you can come to our place. <br>  Estimated time for delivery: " + deliveryTime + " minutes");
  }
  else { /*if the customer's location is far*/
    x.innerHTML = ("It seems like there are " + airDistance + " km between us. <br> We invite you to come visit us! <br> (delivery is up to 10 km)");
  }
}

function getLocation() {
  if (navigator.geolocation) {
    navigator.geolocation.getCurrentPosition(showPosition);
  } else {
    x.innerHTML = "Geolocation is not supported by this browser.";
  }
}

/*\calculates the air distance from the users location to the business.
the business coordinates are 31.253193, 34.797563 */
const getDistanceFromLatLonInKm = (lat1, lon1, lat2, lon2) => {
  const R = 6371; // Radius of the earth in km
  const dLat = deg2rad(lat2-lat1);  // deg2rad below
  const dLon = deg2rad(lon2-lon1); 
  const a = 
    Math.sin(dLat/2) * Math.sin(dLat/2) +
    Math.cos(deg2rad(lat1)) * Math.cos(deg2rad(lat2)) * 
    Math.sin(dLon/2) * Math.sin(dLon/2); 
  const c = 2 * Math.atan2(Math.sqrt(a), Math.sqrt(1-a)); 
  const d = R * c; // Distance in km
  return d;
}

const deg2rad = (deg) => {
  return deg * (Math.PI/180)
};

function popUpMassage () {
  myFunction()
  getLocation()
}

function myFunction() {
  popup = document.getElementById("myPopup");
  popup.classList.toggle("show");
}