import 'package:flutter/material.dart';

class TicketListError extends StatelessWidget {
  const TicketListError({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "Something went wrong, please try again.",
        style: Theme.of(context).textTheme.bodyMedium,
      ),
    );
  }
}
