#!/usr/bin/env bash
cd Configs/XcodeGen
xcodegen
#mv -v /Users/viktorrezvantsev/Desktop/MyProjects/Layouts/GithubApp/Configs/XcodeGen/GithubApp.xcodeproj /Users/viktorrezvantsev/Desktop/MyProjects/Layouts/GithubApp/GithubApp.xcodeproj
#cd ../Cocoapods
pod install
read -p "Open project? (y/n) " -n 1 -r
echo    # (optional) move to a new line
if [[ $REPLY =~ ^[Yy]$ ]]
then
    open GithubApp.xcworkspace
fi