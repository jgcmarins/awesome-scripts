adb reverse tcp:8081 tcp:8081
adb reverse tcp:4000 tcp:4000
adb reverse tcp:5002 tcp:5002

adb -d reverse tcp:8081 tcp:8081
adb -d reverse tcp:4000 tcp:4000
adb -d reverse tcp:5002 tcp:5002

adb -e reverse tcp:8081 tcp:8081
adb -e reverse tcp:4000 tcp:4000
adb -e reverse tcp:5002 tcp:5002
