lifx-stock-ticker-weather
=========================

Relies on the following gems
  require 'lifx' # libraries to connect to your lifx bulb
  require 'yahoofinance' # stock quote api
  require 'weatherboy' # provides weather api
  require 'mactts' # gives access to osx command 'say' to allow voice ability

Anyone with a LIFX smartbulb can run this script to turn their LIFX into a stock ticker. Red for bad days, Green for good and Blue for flat. The 'mactts' gem gives access to your macs' 'say' command, so be prepared for it to read aloud the weather and individual stock information.

Take a look at the very simple main.rb file to update with your location and list of stocks to follow.

I automated this script to run on my machine hourly while the market was open.

Enjoy!
