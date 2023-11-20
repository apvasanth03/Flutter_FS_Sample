import 'package:fs_package/data/datasource/remote/model/ticket_api_model.dart';
import 'package:fs_package/data/model/ticket.dart';

extension TicketApiModelMapper on TicketApiModel {
  Ticket toDataModel() {
    return Ticket(
      displayId: displayId ?? -1,
      humanDisplayId: humanDisplayId ?? '',
      subject: subject ?? '',
      responderName: responderName ?? '',
      statusName: statusName ?? '',
    );
  }
}
