import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:starter/app/app.dart';

void main() async {
  // await initFirebase();
  await initGetStorage();
  WidgetsFlutterBinding.ensureInitialized();
  runApp(App());
}

// firebase app initialization
// Future initFirebase() async {
//   await Firebase.initializeApp();
// }

// Get storage initialization
Future initGetStorage() async {
  await GetStorage.init();
}
