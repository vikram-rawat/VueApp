
# create_route -----------------------------------------------------------

route <- Route$new()
router <- RouteStack$new()

# hello Path --------------------------------------------------------------

route$add_handler('get', '/helloworld', home)

route$add_handler('get', '/', homeFallback)
static_route <- ressource_route('/dist' = "vue-app/dist/")

# create router -----------------------------------------------------------

router$add_route(route, 'test')
router$add_route(static_route, 'static', after = 1)