import 'package:fs_package/data/model/ticket.dart';
import 'package:fs_package/data/repository/ticket_repository.dart';
import 'package:fs_package/ui/ticket/list/viewmodel/mapper/ticket_ui_mapper.dart';
import 'package:fs_package/ui/ticket/list/viewmodel/model/ticket_list_ui_state.dart';
import 'package:rxdart/rxdart.dart';

class TicketListViewModel {
  // region VARIABLE DECLARATION
  final TicketRepository _ticketRepository;
  final TicketUIMapper _ticketUIMapper;

  final BehaviorSubject<TicketListUIState> _uiStateStream = BehaviorSubject();

  Stream<TicketListUIState> get uiStateStream => _uiStateStream.stream;

  // endregion

  // region CONSTRUCTOR
  TicketListViewModel(this._ticketRepository, this._ticketUIMapper);

  TicketListViewModel.create()
      : this(
          TicketRepository.create(),
          TicketUIMapper(),
        );

  // endregion

  // region LOAD TICKETS
  Future<void> loadTickets() async {
    try {
      _uiStateStream.add(TicketListUIStateLoading());

      final tickets = await _ticketRepository.getTickets();
      _loadTicketsSuccess(tickets);
    } catch (e) {
      _loadTicketsFailure();
    }
  }

  void _loadTicketsSuccess(List<Ticket> tickets) {
    final ticketUIModels =
        tickets.map((ticket) => _ticketUIMapper.map(ticket)).toList();
    _uiStateStream.add(TicketListUIStateData(tickets: ticketUIModels));
  }

  void _loadTicketsFailure() {
    _uiStateStream.add(TicketListUIStateError());
  }
// endregion
}
