defmodule Exlivery.Users.UserTest do
  use ExUnit.Case
  alias Exlivery.Users.User

  describe "build/5" do
    test "when all params are valid, returns the user" do
      response = User.build("Rafael", "rafael@gmail.com", "Rua Carvalho Leme", "12345", 18)

      expected_response =
        {:ok,
         %User{
           address: "Rua Carvalho Leme",
           age: 18,
           cpf: "12345",
           email: "rafael@gmail.com",
           name: "Rafael"
         }}

      assert response == expected_response
    end

    test "when there are invalid params, returns an error" do
      response = User.build("Rafael Jr", "rafael@gmail.com", "Rua Carvalho Leme", "12345", 17)

      expected_response = {:error, "Invalid parameters"}

      assert response == expected_response
    end
  end
end
