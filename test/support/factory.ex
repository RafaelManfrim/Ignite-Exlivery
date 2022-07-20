defmodule Exlivery.Factory do
  use ExMachina

  alias Exlivery.Users.User

  def user_factory do
    %User{
      address: "Rua Carvalho Leme",
      age: 18,
      cpf: "12345",
      email: "rafael@gmail.com",
      name: "Rafael"
    }
  end
end
