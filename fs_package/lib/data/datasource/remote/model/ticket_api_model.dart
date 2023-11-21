class TicketApiModel {
  final int? id;
  final String? subject;
  final String? descriptionText;
  final String? type;

  TicketApiModel({
    required this.id,
    required this.subject,
    required this.descriptionText,
    required this.type,
  });

  factory TicketApiModel.fromJson(Map<String, dynamic> json) {
    return TicketApiModel(
      id: json['id'] as int?,
      subject: json['subject'] as String?,
      descriptionText: json['description_text'] as String?,
      type: json['type'] as String?,
    );
  }
}
