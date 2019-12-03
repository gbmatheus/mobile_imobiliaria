"use strict";

const Empresa = use("App/Models/Empresa");
const User = use("App/Models/User");

class EmpresaController {
  async index() {
    const empresa = Empresa.all();

    return empresa;
  }

  async store({ request }) {
    const dataUser = request.only(["username", "email", "password"]);
    const data = request.only(["nome", "cnpj"]);

    const user = await User.create(dataUser);

    const empresa = await Empresa.create({ ...data, user_id: user.id });

    return empresa;
  }

  async show({ params }) {
    const empresa = await Empresa.findOrFail(params.id);

    return empresa;
  }

  async update({ params, request }) {}

  async destroy({ params, request, response }) {
    const empresa = await Empresa.findOrFail(params.id);

    if (empresa !== null) {
      return response.status(400).send({ error: "Empresa não existe" });
    }
    return empresa.detele();
  }
}

module.exports = EmpresaController;
