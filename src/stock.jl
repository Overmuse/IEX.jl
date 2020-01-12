function get_book(symbol)
    iex_get("/stock/$symbol/book")
end

function get_delayed_quote(symbol)
    iex_get("/stock/$symbol/delayed-quote")
end

function get_intraday_prices(symbol)
    iex_get("/stock/$symbol/intraday-prices")
end

function get_largest_trades(symbol)
    iex_get("/stock/$symbol/largest-trades")
end

function get_ohlc(symbol)
    iex_get("/stock/$symbol/ohlc")
end

function get_previous(symbol)
    iex_get("/stock/$symbol/previous")
end

function get_price(symbol)
    iex_get("/stock/$symbol/price")
end

function get_quote(symbol)
    iex_get("/stock/$symbol/quote")
end

function get_quote(symbol, field)
    iex_get("/stock/$symbol/quote/$field")
end

function get_volume_by_venue(symbol)
    iex_get("/stock/$symbol/volume-by-venue")
end

function get_company(symbol)
    iex_get("/stock/$symbol/company")
end

function get_insider_roster(symbol)
    iex_get("/stock/$symbol/insider-roster")
end

function get_insider_summary(symbol)
    iex_get("/stock/$symbol/insider-summary")
end

function get_insider_transactions(symbol)
    iex_get("/stock/$symbol/insider-transactions")
end

function get_logo(symbol)
    iex_get("/stock/$symbol/logo")
end

function get_peers(symbol)
    iex_get("/stock/$symbol/peers")
end

function get_balance_sheet(symbol)
    iex_get("/stock/$symbol/balance-sheet")
end

function get_cash_flow(symbol)
    iex_get("/stock/$symbol/cash-flow")
end

function get_dividends(symbol, range)
    iex_get("/stock/$symbol/dividends/$range")
end

function get_historical(symbol, range)
    iex_get("/stock/$symbol/chart/$range")
end

function get_historical(symbol, range, date)
    iex_get("/stock/$symbol/chart/$range/$date")
end
