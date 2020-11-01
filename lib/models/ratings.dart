import 'package:faker/faker.dart';

class Ratings {
  double totalEditPercentage;
  double weeklyEditPercentage;

  String totalEditValue;
  String weeklyEditValue;

  String leaderDetails;
  String leaderImage;

  Ratings(
      this.totalEditPercentage,
      this.weeklyEditPercentage,
      this.totalEditValue,
      this.weeklyEditValue,
      this.leaderDetails,
      this.leaderImage);
}

// var faker = new Faker();

final List<Ratings> ratings = [
  Ratings(0.9, 0.8, "273,434", "7,326", faker.person.name(),
      "https://images.unsplash.com/photo-1557296387-5358ad7997bb?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=694&q=80"),
  Ratings(0.9, 0.6, "1,540,501", "5,091", "Banana",
      "https://images.unsplash.com/photo-1568967729548-e3dbad3d37e0?ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80"),
  Ratings(0.2, 0.7, "134,069", "4,529", "Magicus",
      "https://images.unsplash.com/photo-1545167622-3a6ac756afa4?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=656&q=80"),
  Ratings(0.7, 0.6, "23,569", "7,124", "Margin",
      "https://images.unsplash.com/photo-1589329482108-e414c7c6b8c7?ixlib=rb-1.2.1&auto=format&fit=crop&w=1234&q=80"),
  Ratings(0.5, 0.5, "1,062,207", "3,406", "Alex",
      "https://thispersondoesnotexist.com/image"),
  Ratings(0.9, 0.8, "273,434", "7,326", "Sam",
      "https://images.unsplash.com/photo-1557296387-5358ad7997bb?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=694&q=80")
];
