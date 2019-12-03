'use strict'

const Route = use('Route')

Route.get('/', () => {
  return { greeting: 'Hello world in JSON' }
})

// Route.get('/users', 'UserController.index')
Route.post('/users', 'UserController.store')
Route.post('/auth', 'AuthController.store')

Route.resource('imoveis', 'ImovelController')
  .apiOnly()
  // .middleware('auth')

Route.post('imoveis/:id/imagens', 'ImagemController.store')
  .middleware('auth')

Route.get('imagens/:path', 'ImagemController.show')

Route.resource('corretor', 'CorretorController')
  .apiOnly()

Route.resource('empresa', 'EmpresaController')
  .apiOnly()
