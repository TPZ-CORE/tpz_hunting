fx_version "adamant"
games {"rdr3"}
rdr3_warning 'I acknowledge that this is a prerelease build of RedM, and I am aware my resources *will* become incompatible once RedM ships.'

author 'Nosmakos'
description 'TPZ-CORE Hunting'

shared_scripts { 'config.lua', 'config_animals.lua', 'locales.lua' }
server_scripts { 'server/*.lua' }
client_scripts { 'client/*.lua', 'client/main.js' }

exports { 'DataViewNativeGetEventData' }
