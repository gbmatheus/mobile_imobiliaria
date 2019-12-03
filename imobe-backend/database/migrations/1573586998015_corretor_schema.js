'use strict'

/** @type {import('@adonisjs/lucid/src/Schema')} */
const Schema = use('Schema')

class CorretorSchema extends Schema {
  up () {
    this.create('corretors', (table) => {
      table.increments()
      table.integer('user_id').unsigned('id').references('id').inTable('users').onUpdate('CASCADE').onDelete('CASCADE')
      table.string('nome').notNullable()
      table.string('cpf').notNullable()
      table.timestamps()
    })
  }

  down () {
    this.drop('corretors')
  }
}

module.exports = CorretorSchema
