import 'package:counterapp_1/screen/counter/provider/counter_provider.dart';
import 'package:counterapp_1/screen/counter/view/counter_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => CounterProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/': (context) => Counterscreen(),
        },
      ),
    ),
  );
}
