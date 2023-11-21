import 'package:flutter/material.dart';
import 'package:fs_package/ui/ticket/detail/view/screen/ticket_detail_screen.dart';
import 'package:fs_package/ui/ticket/list/view/components/data/ticket_item.dart';
import 'package:fs_package/ui/ticket/list/viewmodel/model/ticket_ui_model.dart';

class TicketListData extends StatelessWidget {
  final List<TicketUIModel> tickets;

  TicketListData({
    required this.tickets,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: tickets.length,
        itemBuilder: (context, index) {
          return TicketItem(
            onItemClick: (ticket) {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => TicketDetailScreen(ticket: ticket),
                ),
              );
            },
            ticket: tickets[index],
          );
        });
  }
}
