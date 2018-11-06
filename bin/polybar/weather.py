#!/usr/bin/python3
# -*- coding: utf-8 -*-

import pyowm

apikey = 'fddd58ea30939805a18d5c75fe235c79'
owm = pyowm.OWM(apikey)
observation = owm.weather_at_place("Taipei, Taiwan")
w = observation.get_weather()
temperature = w.get_temperature('celsius')
temperature = temperature['temp_max']
status = w.get_status()

print( str(int(temperature)) + '°C' )
