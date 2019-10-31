'use strict'

const Env = use('Env')
const Model = use('Model')

class Imagem extends Model {
  static get computed() {
    return ['url']
  }

  getUrl({ path }){
    return `${Env.get('APP_URL')}/imagens/${path}`
  }
}

module.exports = Imagem
