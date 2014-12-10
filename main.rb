require 'lifx' # libraries to connect to your lifx bulb
require 'yahoofinance' # stock quote api
require 'weatherboy' # provides weather api
require 'mactts' # gives access to osx command 'say' to allow voice ability
require './lifx_stock_methods.rb'

weather_report 90210 # update with zip code 94027 or string "Palo Alto, CA"
stock_quote "tsla,amba,scty,crm,znga", disover_bulb 