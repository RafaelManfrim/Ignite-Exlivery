defmodule Exlivery.Users.User do
  @keys [:name, :email, :address, :cpf, :age]
  @enforce_keys @keys
  defstruct @keys

  def build(name, email, address, cpf, age) when age >= 18 and is_bitstring(cpf) do
    {:ok,
     %__MODULE__{
       name: name,
       email: email,
       address: address,
       cpf: cpf,
       age: age
     }}
  end

  def build(_name, _email, _address, _cpf, _age), do: {:error, "Invalid parameters"}
end
