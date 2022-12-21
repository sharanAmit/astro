import 'package:astro/app/models/chat_history_model.dart';
import 'package:astro/app/models/wallet_transaction_model.dart';
import 'package:get/get.dart';

class HistoryController extends GetxController {
  final count = 0.obs;
  RxBool isWallet = true.obs;
  RxBool isNestedScroll = false.obs;

  RxList<WalletTransactionModel> wallet =
      List<WalletTransactionModel>.empty().obs;

  RxList<ChatHistoryModel> chatHistory = List<ChatHistoryModel>.empty().obs;
  RxList<ChatHistoryModel> filterchatHistory =
      List<ChatHistoryModel>.empty().obs;
  RxList<ChatHistoryModel> searchHistory = List<ChatHistoryModel>.empty().obs;

  @override
  void onInit() {
    super.onInit();
    getWalletTransaction();
    getChatHistory();
  }

  search(value) {
    filterchatHistory.clear();
    for (int i = 0; i < searchHistory.length; i++) {
      if (searchHistory[i].astrologersName.contains(value)) {
        filterchatHistory.add(searchHistory[i]);
      }
    }
  }

  void getWalletTransaction() async {
    await Future.delayed(Duration(seconds: 1));
    var serverResponse = [
      WalletTransactionModel(1, "Himani singh", 5, 2.1, "#CHAT_NEW12178045",
          "18 Aug 22, 01:00 PM"),
      WalletTransactionModel(2, "Salini singh", 5, 2.2, "#CHAT_NEW12178044",
          "17 Aug 22, 02:00 PM"),
      WalletTransactionModel(3, "Saloni singh", 5, 2.3, "#CHAT_NEW12178043",
          "16 Aug 22, 03:00 PM"),
      WalletTransactionModel(4, "Safaali singh", 5, 2.4, "#CHAT_NEW12178042",
          "15 Aug 22, 04:00 PM"),
      WalletTransactionModel(5, "Aakansha singh", 5, 2.5, "#CHAT_NEW12178041",
          "14 Aug 22, 05:00 PM"),
      WalletTransactionModel(6, "Aarchna singh", 5, 2.6, "#CHAT_NEW12178040",
          "13 Aug 22, 06:00 PM"),
    ];
    wallet.value = serverResponse;
  }

  void getChatHistory() async {
    await Future.delayed(Duration(seconds: 1));
    var serverResponse = [
      ChatHistoryModel(1, "Alok Singh", "24 Aug 22, 05:00 PM", 5, "complete",
          "Free Session", 15, 5.8, "#1660808022952"),
      ChatHistoryModel(2, "Nishant Singh", "23 Aug 22, 06:00 PM", 5, "complete",
          "Paid Session", 14, 5.9, "#1660808022952"),
      ChatHistoryModel(3, "Neeraj Singh", "22 Aug 22, 07:00 PM", 5, "complete",
          "Paid Session", 13, 6.0, "#1660808022952"),
      ChatHistoryModel(4, "Salani Singh", "21 Aug 22, 08:00 PM", 5, "complete",
          "Paid Session", 12, 6.1, "#1660808022952"),
      ChatHistoryModel(5, "Saloni Singh", "20 Aug 22, 09:00 PM", 5, "complete",
          "Paid Session", 11, 6.2, "#1660808022952"),
      ChatHistoryModel(6, "Aakansha Singh", "19 Aug 22, 11:00 PM", 5,
          "complete", "Free Session", 10, 6.3, "#1660808022952"),
      ChatHistoryModel(7, "Himmat Singh", "18 Aug 22, 01:00 PM", 5, "complete",
          "Paid Session", 9, 6.4, "#1660808022952"),
    ];
    chatHistory.value = serverResponse;
    searchHistory.value = serverResponse;
  }
}
