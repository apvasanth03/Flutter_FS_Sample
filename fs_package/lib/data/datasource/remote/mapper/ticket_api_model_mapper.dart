import 'package:fs_package/data/datasource/remote/model/ticket_api_model.dart';
import 'package:fs_package/data/model/ticket.dart';

extension TicketApiModelMapper on TicketApiModel {
  Ticket toDataModel() {
    return Ticket(
      id: id ?? -1,
      subject: subject ?? '',
      descriptionText: descriptionText ?? '',
      type: type ?? '',
    );
  }
}
