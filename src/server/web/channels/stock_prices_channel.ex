defmodule Server.StockPricesChannel do
  use Server.Web, :channel

  def join("stock_prices:lobby", payload, socket) do
    { :ok, socket }
  end
end
