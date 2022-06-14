# Android

## List devices
`$ adb devices -l`

## Available emulators
```
emulator -list-avds
avdmanager list avd
```

### Run emulators
`emulator -avd emulator_name`

## Install app
```
$ adb install -r <path/to/app.apk> # -r: reinstall an app
$ adb -s <device_id> install <path/to/app.apk>
```


# iOS

## List devices (real and simulators)
```
$ instruments -s devices # deprecated
$ xcrun xctrace list devices
```

