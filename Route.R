
# create_route -----------------------------------------------------------

route <- Route$new()
router <- RouteStack$new()

# home Path --------------------------------------------------------------

route$add_handler('get', '/helloworld', home)

route$add_handler(method = 'get',
                  path =  '/',
                  handler = homeFallback)

route$add_handler(method = 'get',
                  path = '/dummycss/:somefile',
                  handler =  serveCss
                  )

route$add_handler(method = 'get',
                  path = '/dummyjs/:somefile',
                  handler =  serveJs
                  )

static_route <- ressource_route('/dummy' = "dummy/")

# create router -----------------------------------------------------------

router$add_route(route, 'home')

router$add_route(static_route, 'static', after = 1)