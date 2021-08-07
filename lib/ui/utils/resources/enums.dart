import 'package:equatable/equatable.dart';

import '../resources/Strings.dart';

enum MessageType {
  success,
  failed,
  areYouSure,
  pleaseTryAgain,
  error,
}

extension CustomMessage on MessageType {
  static Map<MessageType, MessageContent> contentFromTypeMap = {
    MessageType.success: MessageContent(
      messageTitle: Strings.success,
      button1Title: Strings.ok.toUpperCase(),
    ),
    MessageType.failed: MessageContent(
      messageTitle: Strings.error,
      button1Title: Strings.ok.toUpperCase(),
    ),
    MessageType.areYouSure: MessageContent(
      messageTitle: Strings.areYouSure,
      button1Title: Strings.no,
      button2Title: Strings.yes,
    ),
    MessageType.pleaseTryAgain: MessageContent(
      messageTitle: Strings.error,
      messageBody: Strings.plsTryAgain,
      button1Title: Strings.ok,
    ),
  };

  MessageContent? get content => contentFromTypeMap[this];
}

class MessageContent extends Equatable {
  final String messageTitle;
  final String? messageBody;
  final String button1Title;
  final String? button2Title;

  MessageContent(
      {required this.messageTitle,
      this.messageBody,
      required this.button1Title,
      this.button2Title});

  @override
  List<Object> get props => [messageTitle, button1Title];
}
