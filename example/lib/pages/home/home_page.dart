import 'package:example/pages/home/home_view.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  final String title;
  const HomePage({super.key, required this.title});

  @override
  HomeView createState() => HomeView();
}
