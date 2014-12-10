
# Discover your LIFX bulb
def disover_bulb

lifxcontrol = LIFX::Client.lan
lifxcontrol.discover!
lifxcontrol.lights.first

end

# Using YahooFinance API to retreive quote details for stocks
def stock_quote(stocks, bulb)

  quotes = YahooFinance::get_standard_quotes( stocks )
  quotes.each do |symbol, qt|
	change_light(bulb, qt) # call change light function
  end

end


# Function to greet with Weather
def weather_report(location)

  # Fetch weather
  weatherboy = Weatherboy.new(location)
  w = weatherboy.current
  Mac::TTS.say("The current weather in Atherton is #{w.temp_f} degrees and #{w.weather}", :victoria)
  sleep(0.5)

end

# Function determines quote performance and changes light color accordingly
def change_light(light, quote)

	if quote.changePercent <= -1
		light.set_color LIFX::Color.red, duration: 0
		Mac::TTS.say("#{quote.name} is down #{quote.changePercent.abs} percent", :victoria)
	elsif quote.changePercent >= 1
		light.set_color LIFX::Color.green, duration: 0
		Mac::TTS.say("#{quote.name} is up #{quote.changePercent.abs} percent", :victoria)
	else
		light.set_color LIFX::Color.blue, duration: 0
		Mac::TTS.say("#{quote.name} is flat at #{quote.changePercent} percent", :victoria)
	end
	sleep(0.5)
	light.set_color LIFX::Color.hsb(0,0,0.35), duration: 0

end