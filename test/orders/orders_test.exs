defmodule Exlivery.Orders.OrderTest do
  use ExUnit.Case
  alias Exlivery.Orders.Order
  import Exlivery.Factory

  describe "build/2" do
    test "when all params are valid, returns an order" do
      user = build(:user)

      items = [
        build(:item),
        build(:item, description: "Pizza de 4 Queijos")
      ]

      response = Order.build(user, items)
      expected_response = {:ok, build(:order)}
      assert response == expected_response
    end

    test "when there is no items in the order, returns an error" do
      user = build(:user)

      items = []

      response = Order.build(user, items)
      expected_response = {:error, "Invalid parameters"}
      assert response == expected_response
    end
  end
end
