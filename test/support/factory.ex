defmodule Exlivery.Factory do
  use ExMachina
  alias Exlivery.Orders.{Item, Order}
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

  def order_factory do
    %Order{
      delivery_address: "Rua Carvalho Leme",
      items: [
        build(:item),
        build(:item, description: "Pizza de 4 Queijos")
      ],
      total_price: Decimal.new("98.00"),
      user_cpf: "12345"
    }
  end
end
