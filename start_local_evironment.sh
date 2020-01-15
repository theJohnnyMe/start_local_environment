osascript <<EOF
tell application "iTerm2"

    tell current window
       create tab with profile "default"
     end tell

    tell first session of current tab of current window
         set name to "YARN"
         split horizontally with profile "default"
         write text "Yarn server"
         split vertically with profile "default"
    end tell

    tell second session of current tab of current window
        set name to "DOCKER"
        write text "***COMMAND FOR STARTING DOCKER GOES HERE***"
        split vertically with profile "default"
    end tell

    tell third session of current tab of current window
        set name to "CHROME"
        set myLink to "***LINK TO LOCAL ENVIRONMENT***"
        tell application "Google Chrome"
             activate
            tell front window to make new tab at after (get active tab) with properties {URL:myLink} -- open a new tab after the current tab
        end tell     
    end tell

 
end tell
EOF