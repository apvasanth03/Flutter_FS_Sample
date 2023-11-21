import 'package:fs_package/data/model/ticket.dart';
import 'package:fs_package/ui/ticket/list/viewmodel/model/ticket_ui_model.dart';

class TicketUIMapper {
  TicketUIModel map(Ticket ticket) {
    final humanDisplayId = switch (ticket.type) {
      'Incident' => 'INC-${ticket.id}',
      'Service Request' => 'SR-${ticket.id}',
      _ => 'INC-${ticket.id}',
    };

    final uiModel = TicketUIModel(
      id: ticket.id,
      humanDisplayId: humanDisplayId,
      subject: ticket.subject,
      descriptionText: ticket.descriptionText,
    );
    return uiModel;
  }
}
