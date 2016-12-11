#!/bin/python

import dbus,sys,os
from pprint import pprint

bus = dbus.SessionBus()
if bus.name_has_owner("im.pidgin.purple.PurpleService") :
	obj = bus.get_object("im.pidgin.purple.PurpleService", "/im/pidgin/purple/PurpleObject")
	purple = dbus.Interface(obj, "im.pidgin.purple.PurpleInterface")
	purple.UnseenPluginToggleFocus()
else:
	os.spawnlp(os.P_NOWAIT, 'pidgin', 'pidgin', '-n')
