import 'package:chat_ui/model/model_chat_detail/message.dart';
import 'package:chat_ui/model/model_chat_detail/user.dart';

class CustomMessage extends Message {
  /// Creates a custom message.

  CustomMessage({
    required User author,
    int? createdAt,
    required String id,
    Map<String, dynamic>? metadata,
    String? remoteId,
    String? roomId,
    Status? status,
    MessageType? type,
    int? updatedAt,
  }) : super(
          author: author,
          createdAt: createdAt,
          id: id,
          metadata: metadata,
          remoteId: remoteId,
          roomId: roomId,
          status: status,
          type: type ?? MessageType.custom,
          updatedAt: updatedAt,
        );

  @override
  Map<String, dynamic> toJson() {
    // TODO: implement toJson
    throw UnimplementedError();
  }

  /// Creates a copy of the custom message with an updated data.
  /// [metadata] with null value will nullify existing metadata, otherwise
  /// both metadatas will be merged into one Map, where keys from a passed
  /// metadata will overwite keys from the previous one.
  /// [previewData] is ignored for this message type.
  /// [remoteId] and [updatedAt] with null values will nullify existing value.
  /// [status] with null value will be overwritten by the previous status.
  /// [text] is ignored for this message type.
  /// [uri] is ignored for this message type.
  @override
  Message copyWith({
    Map<String, dynamic>? metadata,
    previewData,
    String? remoteId,
    Status? status,
    String? text,
    int? updatedAt,
    String? uri,
  }) {
    // TODO:
    return CustomMessage(
      author: author!,
      createdAt: createdAt,
      id: id!,
      metadata: (metadata == null)
          ? null
          : {
              ...this.metadata ?? {},
              ...metadata,
            },
      remoteId: remoteId,
      roomId: roomId,
      status: status ?? this.status,
      updatedAt: updatedAt,
    );
  }
}
