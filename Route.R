
# create_route -----------------------------------------------------------

route <- Route$new()
router <- RouteStack$new()

# hello Path --------------------------------------------------------------

route$add_handler('get', '/helloworld', home)

route$add_handler('get', '/*', homeFallback)

# create router -----------------------------------------------------------

router$add_route(route, 'test')