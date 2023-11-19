import 'package:flutter/material.dart';
import 'package:fs_sample/ui/tickets/view/screen/ticket_list_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Color(0x2E66D0)),
        useMaterial3: false,
      ),
      home: TicketListScreen(),
    );
  }
}
