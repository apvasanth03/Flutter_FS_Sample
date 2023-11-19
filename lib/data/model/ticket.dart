class Ticket {
  final int displayId;
  final String humanDisplayId;
  final String subject;
  final String responderName;
  final String statusName;

  Ticket({
    required this.displayId,
    required this.humanDisplayId,
    required this.subject,
    required this.responderName,
    required this.statusName,
  });
}
