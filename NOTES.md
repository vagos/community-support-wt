## Links 

### Javascript links

[Node documentation](https://nodejs.org/en/docs/)
[Express documentation](https://expressjs.com/)
[Express HandleBars](https://www.npmjs.com/package/express-handlebars)
[Express Routing](https://expressjs.com/en/guide/routing.html)
[Static Files](https://expressjs.com/en/starter/static-files.html)
[Static File serving](https://stackoverflow.com/questions/11569181/serve-static-files-on-a-dynamic-route-using-express)
[Bootstrap](https://getbootstrap.com/docs/5.1/getting-started/introduction/)

Switching between routers, Is done by using router.use(OtherUrl,OtherRouter). This will make the current router call the other router when the OtherUrl is requested. So for example if we request /activities/authors first the index router will be used (for the '/') and then the activities router will be used (for the 'activities/authors') 

### Code Reminders

- For intergrating css we have to put the css in public since we have the static path there (https://www.reddit.com/r/node/comments/asxtrf/how_to_link_css_stylesheets_to_hbs_file/) (https://stackoverflow.com/questions/47371954/cannot-access-stylesheet-with-handlebars).
After that we referance it using /assets/css/myfile.css

- Helpfull tip making the css in firefox is nicer because we can see the changes live

- Multiple Css styles with handlebars (https://www.youtube.com/watch?v=o4njTeKjGWQ)

### Workspace Notes

- intellisense for css extension reades all files os its slow. Use only when making css
