import 'package:fs_package/data/datasource/remote/ticket_remote_data_source.dart';
import 'package:fs_package/data/model/ticket.dart';

class TicketRepository {
  final TicketRemoteDataSource _ticketRemoteDataSource;

  TicketRepository(this._ticketRemoteDataSource);

  TicketRepository.create() : this(TicketRemoteDataSource());

  /// Get Tickets.
  Future<List<Ticket>> getTickets() async {
    final tickets = await _ticketRemoteDataSource.getTickets();
    return tickets;
  }
}
