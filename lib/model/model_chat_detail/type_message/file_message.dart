import 'package:chat_ui/model/model_chat_detail/message.dart';
import 'package:chat_ui/model/model_chat_detail/preview_data.dart';
import 'package:chat_ui/model/model_chat_detail/user.dart';
import 'package:json_annotation/json_annotation.dart';

part 'file_message.g.dart';

@JsonSerializable(explicitToJson: true)
class FileMessage extends Message {
  /// Media type
  final String? mimeType;

  /// The name of the file
  final String name;

  /// Size of the file in bytes
  final num size;

  /// The file source (either a remote URL or a local resource)
  final String uri;

  FileMessage({
    required User author,
    int? createdAt,
    required String id,
    Map<String, dynamic>? metadata,
    this.mimeType,
    required this.name,
    String? remoteId,
    String? roomId,
    required this.size,
    Status? status,
    MessageType? type,
    int? updatedAt,
    required this.uri,
  }) : super(
          author: author,
          createdAt: createdAt,
          id: id,
          metadata: metadata,
          remoteId: remoteId,
          roomId: roomId,
          status: status,
          type: type ?? MessageType.file,
          updatedAt: updatedAt,
        );

  @override
  Message copyWith({
    Map<String, dynamic>? metadata,
    PreviewData? previewData,
    String? remoteId,
    Status? status,
    String? text,
    int? updatedAt,
    String? uri,
  }) {
    // TODO:
    return FileMessage(
      author: author,
      createdAt: createdAt,
      id: id,
      metadata: (metadata == null)
          ? null
          : {
              ...this.metadata ?? {},
              ...metadata,
            },
      mimeType: mimeType,
      name: name,
      remoteId: remoteId,
      roomId: roomId,
      size: size,
      status: status ?? this.status,
      updatedAt: updatedAt,
      uri: uri ?? this.uri,
    );
  }

  @override
  Map<String, dynamic> toJson() {
    // TODO: implement toJson
    throw UnimplementedError();
  }
}
