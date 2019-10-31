'use strict'

const Imovel = use('App/Models/Imovel')

class ImovelController {

  async index ({ request, response, view }) {
    const imoveis = Imovel.all()
    //adicionar query de geolocalização

    return imoveis;
  }

  async store ({ auth, request, response }) {
    const { id } = auth.user

    const data = request.only([
      'titulo',
      'endereco',
      'proprietario',
      'tipo',
      'servico',
      'preco'
    ])

    const imovel = await Imovel.create({ ...data, user_id: id})

    return imovel
  }

  async show ({ params, request, response, view }) {
    const imovel = await Imovel.findOrFail(params.id)

    await imovel.load('imagens')

    return imovel
  }

  async update ({ params, request, response }) {
    const imovel = await Imovel.findOrFail(params.id)

    const data = request.only([
      'titulo',
      'endereco',
      'proprietario',
      'tipo',
      'servico',
      'preco'
    ])

    imovel.merge(data)

    await imovel.save()
    
    return imovel
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
