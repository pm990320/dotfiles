dockutil --remove all
sleep 2

dockutil --add '~' --view grid --display folder --section apps
dockutil --add '/Applications/Siri.app'
dockutil --add '/Applications/Launchpad.app'
sleep 2

dockutil --add 'Productivity' --type spacer --section apps --after 'Launchpad'
dockutil --add '/Applications/Firefox.app'
dockutil --add '/Applications/Spark.app'
sleep 2
dockutil --add '/Applications/Trello.app'
dockutil --add '/Applications/Calendar.app'
dockutil --add '/Applications/Messages.app'
sleep 5

dockutil --add 'Programming' --type spacer --section apps --after 'Messages'
dockutil --add '/Applications/iTerm.app'
dockutil --add '/Applications/Atom.app'
sleep 2
dockutil --add '/Applications/PyCharm.app'
dockutil --add '/Applications/WebStorm.app'
dockutil --add '/Applications/IntelliJ IDEA.app'
sleep 5

dockutil --add 'System' --type spacer --section apps --after 'IntelliJ IDEA'
dockutil --add '/Applications/LastPass.app'
dockutil --add '/Applications/Authy Desktop.app'
sleep 2
dockutil --add '/Applications/App Store.app'
dockutil --add '/Applications/System Preferences.app'
sleep 7

dockutil --add '~/Downloads' --view grid --display stack
