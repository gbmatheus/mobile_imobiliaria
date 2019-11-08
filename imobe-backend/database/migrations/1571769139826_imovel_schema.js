'use strict'

const Schema = use('Schema')

class ImovelSchema extends Schema {
  up () {
    this.create('imovels', (table) => {
      table.increments()
      // referência ao usuário que criou o imóvel
      // possuio um relacionamento com a tabela usuario, relacionamento um para muito
      table.integer('user_id').unsigned().references('id').inTable('users').onUpdate('CASCADE').onDelete('CASCADE')
      table.string('titulo').notNullable()
      table.string('endereco').notNullable()
      table.string('proprietario').notNullable()
      table.string('tipo').notNullable()
      table.string('servico').notNullable()
      table.decimal('preco', 9, 2).notNullable()
      // table.decimal('latitude', 9, 6).notNullable()
      // table.decimal('longitude', 9, 6).notNullable()
      table.timestamps()
    })
  }

  down () {
    this.drop('imovels')
  }
}

module.exports = ImovelSchema
