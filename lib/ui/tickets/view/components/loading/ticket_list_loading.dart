import 'package:flutter/material.dart';

class TicketListLoading extends StatelessWidget {
  const TicketListLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CircularProgressIndicator(),
    );
  }
}
