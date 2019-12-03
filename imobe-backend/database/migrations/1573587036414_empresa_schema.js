'use strict'

/** @type {import('@adonisjs/lucid/src/Schema')} */
const Schema = use('Schema')

class EmpresaSchema extends Schema {
  up () {
    this.create('empresas', (table) => {
      table.increments()
      table.integer('user_id').unsigned('id').references('id').inTable('users').onUpdate('CASCADE').onDelete('CASCADE')
      table.string('nome').notNullable()
      table.string('cnpj').notNullable()
      table.timestamps()
    })
  }

  down () {
    this.drop('empresas')
  }
}

module.exports = EmpresaSchema
