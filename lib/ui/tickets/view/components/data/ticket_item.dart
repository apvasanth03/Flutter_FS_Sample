import 'package:flutter/material.dart';
import 'package:fs_sample/ui/tickets/viewmodel/model/ticket_ui_model.dart';

class TicketItem extends StatelessWidget {
  final TicketUIModel ticket;

  TicketItem({required this.ticket});

  @override
  Widget build(BuildContext context) {
    return Card(
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
            SizedBox(
              height: 8.0,
            ),
            Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Status',
                        style: Theme.of(context).textTheme.bodySmall,
                      ),
                      SizedBox(
                        height: 4.0,
                      ),
                      Text(
                        ticket.statusName,
                        style: Theme.of(context).textTheme.bodyMedium,
                      )
                    ],
                  ),
                ),
                SizedBox(
                  width: 8.0,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Agent Name',
                        style: Theme.of(context).textTheme.bodySmall,
                      ),
                      SizedBox(
                        height: 4.0,
                      ),
                      Text(
                        ticket.agentName,
                        style: Theme.of(context).textTheme.bodyMedium,
                      )
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
