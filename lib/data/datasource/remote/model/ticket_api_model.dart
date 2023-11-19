class TicketApiModel {
  final int? displayId;
  final String? humanDisplayId;
  final String? subject;
  final String? responderName;
  final String? statusName;

  TicketApiModel({
    required this.displayId,
    required this.humanDisplayId,
    required this.subject,
    required this.responderName,
    required this.statusName,
  });

  factory TicketApiModel.fromJson(Map<String, dynamic> json) {
    return TicketApiModel(
      displayId: json['display_id'] as int?,
      humanDisplayId: json['human_display_id'] as String?,
      subject: json['subject'] as String?,
      responderName: json['responder_name'] as String?,
      statusName: json['status']['name'] as String?,
    );
  }
}
