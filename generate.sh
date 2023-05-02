#!/usr/bin/env bash
cd Configs/XcodeGen
xcodegen
mv -v /Users/viktorrezvantsev/Desktop/MyProjects/Layouts/GithubApp/Configs/XcodeGen/GithubApp.xcodeproj /Users/viktorrezvantsev/Desktop/MyProjects/Layouts/GithubApp/GithubApp.xcodeproj
#cd ../Cocoapods
pod install