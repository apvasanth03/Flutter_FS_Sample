import 'package:fs_package/ui/ticket/list/viewmodel/model/ticket_ui_model.dart';

sealed class TicketListUIState {}

class TicketListUIStateLoading extends TicketListUIState {}

class TicketListUIStateData extends TicketListUIState {
  final List<TicketUIModel> tickets;

  TicketListUIStateData({required this.tickets});
}

class TicketListUIStateError extends TicketListUIState {}
