
# News App

A Simple News app made in Flutter and makes use of the NewsApi: https://newsapi.org. 

## Architecture
The State Management used is Flutter Bloc With Clean Architecture Pattern
![Architecture](https://raw.githubusercontent.com/timndichu/news_app/master/lib/src/screenshoot/clean_architecture.jpg)

## Screenshots
![App Screenshot](https://raw.githubusercontent.com/timndichu/news_app/master/lib/src/screenshoot/app_screenshoot.png)

## Git Hooks

make components are re-useable as possible and commit frequently.
git commits should have a subject and phrase description of your work.
your commits should look like the example.

```bash
git commit -m "docs: add readme docs"
```

all avalable subjects are included below:

- build: Changes that affect the build system or external dependencies (example scopes: gulp, broccoli, npm)
- ci: Changes to our CI configuration files and scripts (example scopes: Travis, Circle, BrowserStack, SauceLabs)
- docs: documentation only changes
- chore: working on cleanups and random changes
- feat: A new feature
- fix: A bug fix
  -wip : work in progress
  -develop : routing and architecture
- perf: A code change that improves performance
- refactor: A code change that neither fixes a bug nor adds a feature
- revert: A code change that reverts to a previous feature
- translation: A code change translates to a modified form
- style: Changes that do not affect the meaning of the code (white-space, formatting, missing semi-colons, etc)
- security: code to improve app security
- test: Adding missing tests or correcting existing tests

## Running The App
To run the flutter app, you need to have flutter installed on your machine. You can find the installation instructions here: https://flutter.dev/docs/get-started/install

After installing flutter, you can run the app by running the following command in the root directory of the project.

```bash
flutter run
```

## APK Installation
You can download the apk from the apk section of the repository here: [apk files](./apk)

### Don't know what apk file to download?
Download Droid Info app from Google Play Store from the link below: [Droid info](https://play.google.com/store/apps/details?id=com.inkwired.droidinfo)

After installing the app, click on the system tab. You will see the architecture of your device.

Download the apk file that matches your device architecture (In the system tab, look under PROCESSOR and see what your "Instruction Sets" is. (It should be either arm64-v8a or armeabi-v7a))