# Android

## List devices

	$ adb devices -l

## Install app

	$ adb install -r <app_name.apk>
	$ adb install -s <app_name.apk> # -s install app on SD card if it's possible


# iOS

## List devices (real and simulators)

	$ instruments -s devices # deprecated
	$ xcrun xctrace list devices


