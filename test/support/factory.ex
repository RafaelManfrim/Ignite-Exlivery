defmodule Exlivery.Factory do
  use ExMachina

  alias Exlivery.Orders.Item
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

  def item_factory do
    %Item{
      description: "Pizza de Pepperoni",
      category: :pizza,
      unity_price: Decimal.new("24.50"),
      quantity: 2
    }
  end
end
