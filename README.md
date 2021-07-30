# Dynamic App

Flutter Backend Driven UI Project, using Dynamic Widget and Firebase Firestore to "hot reload" the application when cloud database updated. 


## Getting Started

This project is using:

- [dynamic_widget](https://pub.dev/packages/dynamic_widget): ^4.0.1 due backend to UI parse;
- [firebase_core](https://pub.dev/packages/firebase_core): ^1.4.0 to use the Firebase services;
- [cloud_firestore](https://pub.dev/packages/cloud_firestore): ^2.4.0 to implement the Firestore database.


## Configuration

To run this project you'll need to:

- Update the 'android/app/google-services.json'  with the firebase generated file; - Import the 'GoogleService-Info.plist' to the iOS project;
- Replace the 'web/index.html' firebaseConfig var (line 37) with your generated config.
- Create the Firestore structure: "pages" collection >> "home" document >> "widgets" field as string, with 'example_backend_code.json' content as value. You can check the expected structure with the 'firestore_database_structure.png' file, attached at this project.


## Building the UI

You can easily check the available widgets json structure at the 'lib/src/common/constants/widget_example_constants.dart' file. 
Also, it's recommended to check the [dynamic_widget](https://pub.dev/packages/dynamic_widget) example project. 
Remember to update the 'pubspec.yaml' with the last version of dynamic_widget to get the newest widget structures, always reading the lib documentations and checking possible conflicts.


## If you want to learn Flutter:

- [Lab: Write your first Flutter app](https://flutter.dev/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.dev/docs/cookbook)
- [Flutter documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.