
# create_route -----------------------------------------------------------

route <- Route$new()
router <- RouteStack$new()

# home Path --------------------------------------------------------------

route$add_handler('get', '/helloworld', home)

route$add_handler(method = 'get',
                  path =  '/',
                  handler = home)

route$add_handler(method = 'get',
                  path =  '/json',
                  handler = jsonHome)

route$add_handler(method = 'get',
                  path = '/css/:somefile',
                  handler =  serveCss
                  )

route$add_handler(method = 'get',
                  path = '/js/:somefile',
                  handler =  serveJs
                  )

route$add_handler(method = 'get',
                  path = '/img/:somefile',
                  handler =  serveImage
                  )

# static_route <- ressource_route('/dummy' = "dummy/")

# create router -----------------------------------------------------------

router$add_route(route, 'home')

router$add_route(static_route, 'static', after = 1)