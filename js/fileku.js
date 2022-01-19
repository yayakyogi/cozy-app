const routes = (routes) => {
  if (routes == "login") {
    return (window.location = "login.html");
  } else if (routes == "register") {
    return (window.location = "register.html");
  } else if (routes == "home") {
    return (window.location = "home.html");
  } else if (routes == "detail") {
    return (window.location = "detail.html");
  }
};
