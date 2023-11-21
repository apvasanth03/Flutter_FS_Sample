import 'package:flutter/material.dart';
import 'package:fs_package/ui/ticket/detail/view/screen/components/ticket_detail_screen_content.dart';
import 'package:fs_package/ui/ticket/list/viewmodel/model/ticket_ui_model.dart';

class TicketDetailScreen extends StatelessWidget {
  final TicketUIModel ticket;

  TicketDetailScreen({required this.ticket});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.keyboard_arrow_left),
            onPressed: () => Navigator.of(context).pop(),
          ),
          title: Text(
            ticket.humanDisplayId,
          ),
        ),
        body: TicketDetailScreenContent(
          ticket: ticket,
        ));
  }
}
