# fitness_passport_nz (FPNZ)

A new Flutter project for fitness-passport-nz mobile app

**Repo and branches**
Download code from Bitbucket https://github.com/dilprasad/FP-NZ_Mobile-App
The default branch name is "master", this is also the main-clean branch. 
Use "develop" branch for developers, all Active/Draft PR's of feature/bugfix/test should be merged to this branch.


## Project Structure

The top-level of the project consists of below parts:
fpnz-flutter: Flutter version 3.3.2 as of 14th September 2022, can be upgraded as development goes along.
Android project: supports with kotlin, Android version supports from Android 'O'.
iOS project: supports with Swift, iOS version supports from iOS '13'.
.gitignore: The top-level git ignored file, there are separated ignore file in Android and iOS project
README.md: This file.


## Workflow

Create your own working branch(from the development branch), naming convetion should be:
FPNZ-1234_<task-title>
In which 1234 is the ticket number from Jira.

Commit on the branch, test your code. Commits log should look like "FPNZ-1234_<task title>: Commit message".
If code works well and all the Accept Criteria (ACs) of the tickets has been satisfied, create pull request(PR).


**Before code build for Android**

Please add the API KEY for google map in local.properties, this key is for debugging from client's google account.
Please note that this is a temporary way.
MAPS_API_KEY= **tobe filled**
However after getting the production key from the client, we need to set the KEY info to build.
gradle file then remove the info from local.properties.


**TODOs**
  
Add different build variant, e.g. DEBUG and RELEASE
Key-stores and Signing for RELEASE build
Provisioning profile creation and certificates
Google maps API and services setup
AWS API test with test environment and production environment
Pipeline deployment, iOS TestFlight setup, google beta test set up


## Project Resources

UI for FitnessPassport NZ App **

Jira Board https://fitnesspassport.atlassian.net/jira/software/c/projects/FPNZ/boards/5

FPNZ mobile app MVP estimation https://docs.google.com/spreadsheets/d/1jxcncVuc7Kvo0Sc_1M-I2xifCqMf_Cb3vHNNVXGqA5Y/edit#gid=0

FPNZ drive assets https://drive.google.com/drive/u/6/folders/1ZTIkrYZogxUp14tKlXiOsbxjaOsJpJlu

FPNZ detail project timeline https://docs.google.com/spreadsheets/d/1gcjomteFW-dEH8SG_CY-78IlelGG4b_HayA2CZ2vW3s/edit#gid=0

FPNZ member mobile app TL sheet https://docs.google.com/spreadsheets/d/1Rej5hLE1qiKCf2clwEGQg4_CCZfgYkxQ51LSXXoCzJY/edit#gid=548825306

FPNZ apple developer https://appstoreconnect.apple.com/get_started

FPNZ google developer https://play.google.com/console/u/6/developers/5793254859428631973/app-list?onboardingflow=signup

FP AWS account https://fitpassdev.signin.aws.amazon.com/console

Project Play Book **

A google official tool for testing accessibility app https://play.google.com/store/apps/details?id=com.google.android.apps.accessibility.auditor

**Rules to follow on Android app**

https://www.w3.org/WAI/standards-guidelines/mobile/

https://mobilea11y.com/resources/

https://developer.android.com/guide/topics/ui/accessibility

https://developer.android.com/guide/topics/ui/accessibility/apps

https://material.io/design/usability/accessibility.html#understanding-accessibility

Google maps completion https://developers.google.com/maps/documentation/places/web-service/search 

https://developers.google.com/maps/documentation/places/web-service/autocomplete

**Rules to follow on iOS app**

https://developer.apple.com/app-store/guidelines/

https://developer.apple.com/app-store/articles/

**Flutter Guidelines**

Flutter official dev guide https://docs.flutter.dev

Flutter official package guide https://pub.dev

## Getting Started

This project is a starting point for the FitnessPassport NZ Flutter application.
A few resources to get you started if this is your first Flutter project:
- [Lab: Write your first Flutter app](https://flutter.dev/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.dev/docs/cookbook)

For help getting started with Flutter, view our
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
