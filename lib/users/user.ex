defmodule Exlivery.Users.User do
  @keys [:name, :email, :cpf, :age]
  @enforce_keys @keys
  defstruct @keys

  def build(name, email, cpf, age) when age >= 18 and is_bitstring(cpf) do
    {:ok,
     %__MODULE__{
       name: name,
       email: email,
       cpf: cpf,
       age: age
     }}
  end

  def build(__name, __email, __cpf, __age), do: {:error, "Invalid parameters"}
end
