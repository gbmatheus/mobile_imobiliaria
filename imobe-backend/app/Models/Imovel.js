'use strict'

const Model = use('Model')

class Imovel extends Model {

  //informando o relacionamento N:1
  user () {
    return this.belongsTo('App/Models/User')
  }

  //informando o relacionamento um para muitos
  imagens () {
    return this.hasMany('App/Models/Imagem')
  }
}

module.exports = Imovel
