import 'package:flutter/material.dart';
import 'package:fs_package/ui/ticket/list/view/components/loading/ticket_list_loading.dart';
import 'package:fs_package/ui/ticket/list/view/components/ticket_list_screen_content.dart';
import 'package:fs_package/ui/ticket/list/viewmodel/model/ticket_list_ui_state.dart';
import 'package:fs_package/ui/ticket/list/viewmodel/ticket_list_view_model.dart';
import 'package:flutter/services.dart';

class TicketListScreen extends StatefulWidget {
  const TicketListScreen({super.key});

  @override
  State<TicketListScreen> createState() => _TicketListScreenState();
}

class _TicketListScreenState extends State<TicketListScreen> {
  late TicketListViewModel _viewModel;

  @override
  void initState() {
    super.initState();

    _viewModel = TicketListViewModel.create();
    _viewModel.loadTickets();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Tickets',
        ),
        leading: BackButton(
          onPressed: () => {
            if (Navigator.canPop(context))
              {Navigator.pop(context)}
            else
              {SystemNavigator.pop()}
          },
        ),
      ),
      body: StreamBuilder<TicketListUIState>(
        stream: _viewModel.uiStateStream,
        builder:
            (BuildContext context, AsyncSnapshot<TicketListUIState> snapshot) {
          if (snapshot.hasData) {
            return TicketListScreenContent(
              uiState: snapshot.data!,
            );
          } else {
            return TicketListLoading();
          }
        },
      ),
    );
  }
}
