import 'package:flutter/material.dart';
import 'package:fs_package/ui/tickets/view/components/data/ticket_list_data.dart';
import 'package:fs_package/ui/tickets/view/components/error/ticket_list_error.dart';
import 'package:fs_package/ui/tickets/view/components/loading/ticket_list_loading.dart';
import 'package:fs_package/ui/tickets/viewmodel/model/ticket_list_ui_state.dart';

class TicketListScreenContent extends StatelessWidget {
  final TicketListUIState uiState;

  TicketListScreenContent({required this.uiState});

  @override
  Widget build(BuildContext context) {
    return switch (uiState) {
      TicketListUIStateLoading() => TicketListLoading(),
      TicketListUIStateData(tickets: var tickets) =>
        TicketListData(tickets: tickets),
      TicketListUIStateError() => TicketListError(),
    };
  }
}
