import 'package:flutter/material.dart';
import 'package:fs_package/ui/ticket/list/viewmodel/model/ticket_ui_model.dart';

class TicketItem extends StatelessWidget {
  final TicketUIModel ticket;
  final Function(TicketUIModel) onItemClick;

  TicketItem({
    required this.ticket,
    required this.onItemClick,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onItemClick(ticket);
      },
      child: Card(
        child: Container(
          padding: EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                ticket.humanDisplayId,
                style: Theme.of(context).textTheme.bodySmall,
              ),
              SizedBox(
                height: 8.0,
              ),
              Text(
                ticket.subject,
                style: Theme.of(context).textTheme.titleMedium,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
