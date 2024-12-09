import 'package:flutter/material.dart';
import 'package:shared_crud_local/shared/shared_instance.dart';
import 'my_app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SharedInstance.getInstance();
  runApp(const MyApp());
}
