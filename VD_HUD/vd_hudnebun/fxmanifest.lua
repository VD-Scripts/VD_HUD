fx_version 'adamant'
game 'gta5'

ui_page 'ui.html'

client_scripts {
    "client.lua"
}
server_scripts {
    "@vrp/lib/utils.lua",
    "server.lua"
}
 
files {
    "*.*",
    "img/*.*",
    "js/java.js",
    "style/*.*"
}