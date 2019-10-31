'use strict'

const Schema = use('Schema')

class ImagemSchema extends Schema {
  up () {
    this.create('imagems', (table) => {
      table.increments()
      //relacionamento (imovel)um para (imagens)muitos, reponsável pela imagens de cada imovel
      table.integer('imovel_id').unsigned().references('id').inTable('imovels').onUpdate('CASCADE').onDelete('CASCADE').notNullable()
      table.string('path').notNullable()
      table.timestamps()
    })
  }

  down () {
    this.drop('imagems')
  }
}

module.exports = ImagemSchema
