import 'package:flutter/material.dart';
import 'package:fs_package/ui/tickets/view/screen/ticket_list_screen.dart';

class FSApp extends StatelessWidget {
  const FSApp({super.key});

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
