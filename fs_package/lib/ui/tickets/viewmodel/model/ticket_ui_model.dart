class TicketUIModel {
  final int displayId;
  final String humanDisplayId;
  final String subject;
  final String agentName;
  final String statusName;

  TicketUIModel({
    required this.displayId,
    required this.humanDisplayId,
    required this.subject,
    required this.agentName,
    required this.statusName,
  });
}
