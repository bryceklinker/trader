defmodule Server.Workers.StockPricesWorker do
    use GenServer

    def handle_info(msg, state) do 
        payload = %{ :price => 1.02 }
        Server.Endpoint.broadcast("stock_prices:lobby", "quotes", payload)
        Process.send_after(self(), "get_quotes", 1000)
        {:noreply, state: state}
    end

    def start_link() do
        {:ok, pid} = GenServer.start_link(Server.Workers.StockPricesWorker, [])
        Process.send_after(pid, "get_quotes", 1000)
        {:ok, pid}
    end 
end