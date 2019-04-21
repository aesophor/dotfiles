#!/usr/bin/env python3
# -*- coding: utf-8 -*-

import pyowm

apikey = 'fddd58ea30939805a18d5c75fe235c79'
owm = pyowm.OWM(apikey)
w = owm.weather_at_place('Taipei, Taiwan').get_weather()

print('{s} {t}°C'.format(
    s=w.get_temperature('celsius')['temp_max'], t=w.get_status()))
