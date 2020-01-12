module IEX

using HTTP, JSON

export iex_get, get_book, get_delayed_quote, get_intraday_prices, get_ohlc, get_previous, get_logo, get_historical, get_dividends

const IEX_URL = "https://cloud.iexapis.com/"
const RATE_LIMIT = 0.01

iex_url(version = "stable") = IEX_URL * version

function add_token!(headers::Dict)
    merge!(
        headers,
        Dict(
            :token => ENV["IEX_TOKEN"]
        )
    )
end

function iex_get(endpoint::String, params = Dict(), body = ""; version::String = "stable")
    url = iex_url(version)
    add_token!(params)
    sleep(RATE_LIMIT) # 100 requests / second
    result = HTTP.get(url * endpoint, [], JSON.json(body), query = params)
    !HTTP.iserror(result) && JSON.parse(String(result.body))
end

include("stock.jl")

end # module
