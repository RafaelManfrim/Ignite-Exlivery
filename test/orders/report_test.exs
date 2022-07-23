defmodule Exlivery.Orders.ReportTest do
  use ExUnit.Case
  import Exlivery.Factory
  alias Exlivery.Orders.Agent, as: OrderAgent
  alias Exlivery.Orders.Report

  describe "create/1" do
    test "creates the report file" do
      OrderAgent.start_link(%{})

      order1 = build(:order)
      OrderAgent.save(order1)

      order2 = build(:order)
      OrderAgent.save(order2)

      expected_response = {
        :ok,
        "12345,pizza,2,24.50,pizza,2,24.50,98.00\n12345,pizza,2,24.50,pizza,2,24.50,98.00\n"
      }

      Report.create("report_test.csv")

      response = File.read("report_test.csv")

      assert response == expected_response
    end
  end
end
