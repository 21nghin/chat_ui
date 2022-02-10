import 'package:chat_ui/model/model_chat_detail/preview_data.dart';
import 'package:chat_ui/model/model_chat_detail/user.dart';

/// All possible message types.
enum MessageType { custom, file, image, text, unsupported }

/// All possible statuses message can have.
enum Status { delivered, error, seen, sending, sent }

abstract class Message {
  /// Converts a particular message to the map representation, encodable to JSON.
  Map<String, dynamic> toJson();

  /// User who sent this message
  final User? author;

  /// Created message timestamp, in ms
  final int? createdAt;

  /// Unique ID of the message
  final String? id;

  /// Additional custom metadata or attributes related to the message
  final Map<String, dynamic>? metadata;

  /// Unique ID of the message received from the backend
  final String? remoteId;

  /// ID of the room where this message is sent
  final String? roomId;

  /// Message [Status]
  final Status? status;

  /// [MessageType]
  final MessageType? type;

  /// Updated message timestamp, in ms
  final int? updatedAt;

  Message(
      {this.author,
      this.createdAt,
      this.id,
      this.metadata,
      this.remoteId,
      this.roomId,
      this.status,
      this.type,
      this.updatedAt});

  Message copyWith({
    Map<String, dynamic>? metadata,
    PreviewData? previewData,
    String? remoteId,
    Status? status,
    String? text,
    int? updatedAt,
    String? uri,
  });
}
