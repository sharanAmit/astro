class Astrologer {
  int id;
  int categoryId;
  String astrologerFirstName;
  String astrologerSecondName;
  List<String> languages;
  List<String> skills;
  dynamic experience;
  int callPrice;
  int chatPrice;
  String profilePic;
  double rating;
  int isVerified;
  Astrologer(
      this.id,
      this.categoryId,
      this.astrologerFirstName,
      this.astrologerSecondName,
      this.languages,
      this.skills,
      this.experience,
      this.callPrice,
      this.chatPrice,
      this.isVerified,
      this.profilePic,
      this.rating);
}

class AstrologerCard {
  int id;
  int categoryId;
  String astrologerName;
  String profilePic;

  int chatPrice;
  int isVerified;
  AstrologerCard(
    this.id,
    this.categoryId,
    this.astrologerName,
    this.isVerified,
    this.chatPrice,
    this.profilePic,
  );
}
