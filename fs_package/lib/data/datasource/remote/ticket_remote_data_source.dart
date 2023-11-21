import 'dart:convert';

import 'package:fs_package/data/datasource/remote/mapper/ticket_api_model_mapper.dart';
import 'package:fs_package/data/datasource/remote/model/ticket_api_model.dart';
import 'package:fs_package/data/datasource/remote/util/ticket_remote_util.dart';
import 'package:fs_package/data/model/ticket.dart';
import 'package:http/http.dart' as http;

class TicketRemoteDataSource {
  /// Get Tickets.
  Future<List<Ticket>> getTickets() async {
    final url = TicketRemoteUtil.getTicketsUrl();

    final response = await http.get(
      url,
      headers: TicketRemoteUtil.getHeaders(),
    );

    if (response.statusCode == 200) {
      final responseJson = jsonDecode(response.body) as Map<String, dynamic>;
      final ticketsJson =
          (responseJson['tickets'] as List).cast<Map<String, dynamic>>();
      final ticketApiModels =
          ticketsJson.map((json) => TicketApiModel.fromJson(json)).toList();
      final tickets =
          ticketApiModels.map((model) => model.toDataModel()).toList();

      return tickets;
    } else {
      throw Exception('Failed to load tickets');
    }
  }
}
