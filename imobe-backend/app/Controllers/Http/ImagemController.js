'use strict'

const Imovel = use('App/Models/Imovel')
const Helpers = use('Helpers')

class ImagemController {

  async store({ params, request }){
    const imovel = await Imovel.findOrFail(params.id)

    const imagens = request.file('imagens', {
      types: ['image'],
      size: '2mb'
    })

    await imagens.moveAll(Helpers.tmpPath('uploads'), (file) => {
      return {
        name: `${Date.now()}-${file.clientName}`
      }
    })

    if(!imagens.movedAll()){
      return imagens.errors()
    }

    await Promise.all(
      imagens
        .movedList()
        .map(imagem => imovel.imagens().create({ path: imagem.fileName }))
    )

    console.log('terminou')
  }

  async show({ params, response }){
    return response.download(Helpers.tmpPath(`uploads/${params.path}`))
  }
  
}

module.exports = ImagemController
