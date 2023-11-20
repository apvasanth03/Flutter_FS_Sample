import 'package:fs_package/data/model/ticket.dart';
import 'package:fs_package/ui/tickets/viewmodel/model/ticket_ui_model.dart';

class TicketUIMapper {
  TicketUIModel map(Ticket ticket) {
    final uiModel = TicketUIModel(
      displayId: ticket.displayId,
      humanDisplayId: ticket.humanDisplayId,
      subject: ticket.subject,
      agentName: ticket.responderName,
      statusName: ticket.statusName,
    );
    return uiModel;
  }
}
