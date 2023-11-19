import 'package:fs_sample/data/datasource/remote/ticket_remote_data_source.dart';
import 'package:fs_sample/data/model/ticket.dart';

class TicketRepository {
  final TicketRemoteDataSource _ticketRemoteDataSource;

  TicketRepository(this._ticketRemoteDataSource);

  TicketRepository.create() : this(TicketRemoteDataSource());

  /// Get Tickets.
  Future<List<Ticket>> getTickets({
    required String filter,
    required int page,
  }) async {
    final tickets = await _ticketRemoteDataSource.getTickets(
      filter: filter,
      page: page,
    );
    return tickets;
  }
}
