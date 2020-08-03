***Settings***

Library     AppiumLibrary

***Keywords***
Open Session
    Set Appium Timeout    5
    Open Application      http://localhost:4723/wd/hub
    ...                   automationName=UiAutomator2
    ...                   platformName=Android
    ...                   deviceName=Emulator
    ...                   app=${EXECDIR}/app/app-debug.apk

Close Session
    Capture Page Screenshot
    Close Application
