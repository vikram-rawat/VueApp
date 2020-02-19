
# create_route -----------------------------------------------------------

route <- Route$new()
router <- RouteStack$new()

# home Path --------------------------------------------------------------

route$add_handler('get', '/helloworld', home)

route$add_handler('get', '/', homeFallback)
static_route <- ressource_route('/dist' = "vue-app/dist/",
                                default_file = "vue-app/dist/css/app.fb0c6e1c.css",
                                default_ext = ".css")

# create router -----------------------------------------------------------

router$add_route(route, 'home')
router$add_route(static_route, 'static', after = 1)