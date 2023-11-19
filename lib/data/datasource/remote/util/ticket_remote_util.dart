import 'dart:io';

import 'package:fs_sample/data/datasource/remote/util/ticket_remote_constants.dart';

class TicketRemoteUtil {
  static Map<String, String> getHeaders() {
    final headers = {
      HttpHeaders.userAgentHeader: 'Freshservice_Native_Android',
      HttpHeaders.acceptHeader: 'application/json',
      HttpHeaders.authorizationHeader: 'Basic ${TicketRemoteConstants.token}',
    };
    return headers;
  }

  static Uri getTicketsUrl({
    required String filter,
    required int page,
  }) {
    final uri = Uri(
      scheme: TicketRemoteConstants.scheme,
      host: TicketRemoteConstants.host,
      path: 'support/v2/tickets',
      queryParameters: {
        'wf_filter': filter,
        'wf_order': 'created_at',
        'wf_order_type': 'desc',
        'page': page.toString(),
        'per_page': '30',
      },
    );
    return uri;
  }
}
