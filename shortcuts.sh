dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings "[
    '/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/', 
    '/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom1/',
    '/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom2/',
    '/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom3/',
    '/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom4/',
    '/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom5/',
    '/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom6/',
    '/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom7/',
    '/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom8/',
    '/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom9/',
    '/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom10/',
    '/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom11/'
]"

dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/binding "'<Alt>E'"
dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/command "'xdg-open .'"
dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/name "'Open file explorer'"

dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom1/binding "'<Alt>B'"
dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom1/command "'brave-browser'"
dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom1/name "'Open Brave browser'"

dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom2/binding "'<Alt><Shift>B'"
dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom2/command "'brave-browser --incognito'"
dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom2/name "'Open Brave browser incognito'"

dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom3/binding "'<Alt>C'"
dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom3/command "'google-chrome'"
dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom3/name "'Open Chrome browser'"

dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom4/binding "'<Alt><Shift>C'"
dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom4/command "'google-chrome --incognito'"
dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom4/name "'Open Chrome browser incognito'"

dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom5/binding "'<Alt>F'"
dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom5/command "'firefox'"
dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom5/name "'Open Firefox browser'"

dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom6/binding "'<Alt><Shift>F'"
dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom6/command "'firefox --private-window'"
dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom6/name "'Open Firefox browser incognito'"

dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom7/binding "'<Alt>A'"
dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom7/command "'google-chrome https://chatgpt.com'"
dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom7/name "'Open ChatGPT in Chrome browser'"

dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom8/binding "'<Alt><Shift>A'"
dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom8/command "'google-chrome https://chatgpt.com/?temporary-chat=true'"
dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom8/name "'Open ChatGPT temporary chat in Chrome browser'"

dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom9/binding "'<Alt>S'"
dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom9/command "'slack'"
dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom9/name "'Open Slack'"

dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom10/binding "'<Alt>O'"
dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom10/command "'clockify'"
dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom10/name "'Open Clockify'"

dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom11/binding "'<Alt>P'"
dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom11/command "'1password'"
dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom11/name "'Open 1Password'"
