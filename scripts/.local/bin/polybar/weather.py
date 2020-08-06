#!/usr/bin/env python3
# -*- coding: utf-8 -*-

import pyowm

apikey = 'fddd58ea30939805a18d5c75fe235c79'
owm = pyowm.OWM(apikey)
mgr = owm.weather_manager()
w = mgr.weather_at_place('Hsinchu, Taiwan').weather

print('{s} {t}°C'.format(
    s=w.status, t=int(w.temperature('celsius')['temp_max'])))
