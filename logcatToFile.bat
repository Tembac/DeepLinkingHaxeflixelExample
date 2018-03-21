adb logcat -c #clears the logcat output
adb shell setprop debug.checkjni 1
adb logcat > logcat.txt #start collecting the device’s output and saves it in a desired txt file