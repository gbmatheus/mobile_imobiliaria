"use strict";

const Corretor = use("App/Models/Corretor");
const User = use("App/Models/User");

class CorretorController {
  async index() {
    const corretor = Corretor.all();

    return corretor;
  }

  async store({ request }) {
    const dataUser = request.only(["username", "email", "password"]);
    const data = request.only(["nome", "cpf"]);

    const user = await User.create(dataUser);

    const corretor = await Corretor.create({ ...data, user_id: user.id });

    return corretor;
  }

  async show({ params }) {
    const corretor = await Corretor.findOrFail(params.id);

    return corretor;
  }

  async update({ params, request }) {}

  async destroy({ params, request, response }) {
    const corretor = await Corretor.findOrFail(params.id);

    if (corretor !== null) {
      return response.status(400).send({ error: "Corretor não existe" });
    }
    return corretor.detele();
  }
}

module.exports = CorretorController;
