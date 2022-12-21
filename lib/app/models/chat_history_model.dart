class ChatHistoryModel {
  int id;
  String astrologersName;
  String dateTime;
  String chatStatus;
  String chatType;
  int charge;
  double amountDeducted;
  double timeDuration;
  String chatcode;

  ChatHistoryModel(
    this.id,
    this.astrologersName,
    this.dateTime,
    this.timeDuration,
    this.chatStatus,
    this.chatType,
    this.charge,
    this.amountDeducted,
    this.chatcode,
  );
}
