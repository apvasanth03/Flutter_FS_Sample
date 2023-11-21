import 'package:flutter/material.dart';
import 'package:fs_package/ui/ticket/list/viewmodel/model/ticket_ui_model.dart';

class TicketDetailScreenContent extends StatelessWidget {
  final TicketUIModel ticket;

  TicketDetailScreenContent({
    required this.ticket,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            ticket.subject,
            style: Theme.of(context).textTheme.bodyLarge,
          ),
          SizedBox(
            height: 16.0,
          ),
          Text(
            ticket.descriptionText,
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ],
      ),
    );
  }
}
