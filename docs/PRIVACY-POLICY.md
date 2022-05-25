# Privacy Policy

This privacy policy aims to help you understand what information is collected, how it is collected, what is done with the information collected, and how you can control it while using the Bon Appétit Demo mobile app.

This mobile app is created as a **free** app at no cost and is intended to be used as a **demo** app.

By using this app, you agree to the collection of the information stated in this policy.

The information collected is not used or shared by/to anyone in any way since this app is a **demo** app with its only purpose is to serve as a demonstration in integrating [Firebase Analytics](https://firebase.google.com/products/analytics) with [Flutter](https://flutter.dev/) and the corresponding [library](https://pub.dev/packages/firebase_analytics).

## Information collected
Information is collected from the user's events. The collected information is then logged by Firebase Analytics.

The following user events are collected:
1. Favorite item event
2. Login event
3. Search event
4. Select an article, recipe, or video page event
5. Sign up event
6. Page transition events

There are also events automatically collected by Firebase Analytics itself, [learn more here](https://support.google.com/analytics/answer/9234069?hl=en).


## Why collect data
This app is a **demo** app with its only purpose is to serve as a demonstration in integrating [Firebase Analytics](https://firebase.google.com/products/analytics) with [Flutter](https://flutter.dev/) and the corresponding [library](https://pub.dev/packages/firebase_analytics).

## Privacy controls
You can control whether or not to collect data while using the **demo** app by enabling or disabling the available options in the settings page.


## Source code
There are two(2) files that handle the information collected.
1. [FirebaseAnalyticsService](https://github.com/pendraic/bon_appetit/blob/c9311cae24ed8fe92fdff95077a41ed277d5369d/lib/services/firebase/analytics.dart). Calls the Firebase Analytics API and responsible for logging events to it.
2. [SettingsProvider](https://github.com/pendraic/bon_appetit/blob/7dfbe62142fdf08dbb1d99aa9a46361f4e6ae4a9/lib/services/providers/settings.dart). Controls for the user to enable or disable data collection and stores the user's preferences.