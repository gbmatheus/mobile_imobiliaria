'use strict'

const Imovel = use('App/Models/Imovel')

class ImovelController {

  async index ({ request, response, view }) {
    const imoveis = Imovel.all();

    return imoveis;
  }

  async store ({ request, response }) {
  }

  async show ({ params, request, response, view }) {
    const imovel = await Imovel.findOrFail(params.id)

    await imovel.load('imagens')

    return imovel
  }

  async update ({ params, request, response }) {
  }

  async destroy ({ params, request, response }) {
    const imovel = await Imovel.findOrFail(params.id)

    if(imovel.user_id !== auth.users.id){
      return response.status(401).send({ error: 'Não autorizado'})
    }

    await imovel.delete()

  }
}

module.exports = ImovelController
