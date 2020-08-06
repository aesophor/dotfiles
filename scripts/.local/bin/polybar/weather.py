#!/usr/bin/env python3
# -*- coding: utf-8 -*-

import os
import pyowm

apikey_location = os.environ['HOME'] + "/.private/OpenWeatherMapApi.key"
with open(apikey_location, 'r') as f: apikey = f.readline().strip()

owm = pyowm.OWM(apikey)
mgr = owm.weather_manager()
w = mgr.weather_at_place('Hsinchu, Taiwan').weather

print('{s} {t}°C'.format(
    s=w.status, t=int(w.temperature('celsius')['temp_max'])))
