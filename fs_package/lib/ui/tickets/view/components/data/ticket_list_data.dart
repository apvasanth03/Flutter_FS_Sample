import 'package:flutter/material.dart';
import 'package:fs_package/ui/tickets/view/components/data/ticket_item.dart';
import 'package:fs_package/ui/tickets/viewmodel/model/ticket_ui_model.dart';

class TicketListData extends StatelessWidget {
  final List<TicketUIModel> tickets;

  TicketListData({required this.tickets});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: tickets.length,
        itemBuilder: (context, index) {
          return TicketItem(
            ticket: tickets[index],
          );
        });
  }
}
