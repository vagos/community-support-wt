## Links 

### Javascript links

[Node documentation](https://nodejs.org/en/docs/)
[Express documentation](https://expressjs.com/)
[Express HandleBars](https://www.npmjs.com/package/express-handlebars)
[Express Routing](https://expressjs.com/en/guide/routing.html)
[Static Files](https://expressjs.com/en/starter/static-files.html)
[Static File serving](https://stackoverflow.com/questions/11569181/serve-static-files-on-a-dynamic-route-using-express)
[Bootstrap](https://getbootstrap.com/docs/5.1/getting-started/introduction/)

[Bootstrap Tutorial](https://www.w3schools.com/bootstrap/bootstrap_get_started.asp)

Switching between routers, Is done by using router.use(OtherUrl,OtherRouter). This will make the current router call the other router when the OtherUrl is requested. So for example if we request /activities/authors first the index router will be used (for the '/') and then the activities router will be used (for the 'activities/authors') 

### Code Reminders

- For intergrating css we have to put the css in public since we have the static path there (https://www.reddit.com/r/node/comments/asxtrf/how_to_link_css_stylesheets_to_hbs_file/) (https://stackoverflow.com/questions/47371954/cannot-access-stylesheet-with-handlebars).
After that we referance it using /assets/css/myfile.css

- Helpfull tip making the css in firefox is nicer because we can see the changes live

- Multiple Css styles with handlebars (https://www.youtube.com/watch?v=o4njTeKjGWQ)

### Styling notes

- badges in bootstrap are a nice way to add notificcations (https://www.w3schools.com/bootstrap5/bootstrap_badges.php)

- pagination in bootstrap will be nice on posts (https://www.w3schools.com/bootstrap5/bootstrap_pagination.php)

- Collapsables will be nice to organize comment threads (https://www.w3schools.com/bootstrap5/bootstrap_collapse.php)

- Bootstrap Navbar with a search will be a nice replacement (https://www.w3schools.com/bootstrap5/bootstrap_navbar.php)

- maybe change sidebar to offcanvas for small screens? (https://www.w3schools.com/bootstrap5/bootstrap_offcanvas.php)

- Media objects no longer exist in bootstrap 5 here is an alternative with flex (https://www.tutorialrepublic.com/twitter-bootstrap-tutorial/bootstrap-media-objects.php) (https://stackoverflow.com/questions/64045201/in-bootstrap-v5-0-0-alpha1-what-can-i-use-for-media-bs-3-4)

- Carousel for many pictures (https://www.w3schools.com/bootstrap5/bootstrap_carousel.php)

- Modals for login? (https://www.w3schools.com/bootstrap5/bootstrap_modal.php)

- Tools tips for forms (https://www.w3schools.com/bootstrap5/bootstrap_tooltip.php)

- spinners for loading (https://www.w3schools.com/bootstrap5/bootstrap_spinners.php)

- utilities instead of only cards (https://www.w3schools.com/bootstrap5/bootstrap_utilities.php)

- row column for auto resizing (https://www.w3schools.com/bootstrap5/bootstrap_grid_examples.php)

- bootstrap 4 supports flexbox (https://www.w3schools.com/bootstrap5/bootstrap_flex.php)

- maybe look into making our own bootstrap templates? (https://www.w3schools.com/bootstrap4/bootstrap_templates.asp)


- moving text to the right in bootstrap with css(https://stackoverflow.com/questions/31815881/set-bootstrap-right-side-or-left-side)

### Workspace Notes

- intellisense for css extension reades all files os its slow. Use only when making css
