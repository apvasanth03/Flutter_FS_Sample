import 'dart:io';

import 'package:fs_package/data/datasource/remote/util/ticket_remote_constants.dart';

class TicketRemoteUtil {
  static Map<String, String> getHeaders() {
    final headers = {
      HttpHeaders.acceptHeader: 'application/json',
      HttpHeaders.authorizationHeader: 'Basic ${TicketRemoteConstants.token}',
    };
    return headers;
  }

  static Uri getTicketsUrl() {
    final uri = Uri(
      scheme: TicketRemoteConstants.scheme,
      host: TicketRemoteConstants.host,
      path: 'api/v2/tickets',
    );
    return uri;
  }
}
