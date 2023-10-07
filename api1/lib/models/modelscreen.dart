// To parse this JSON data, do
//
//     final modelScreen = modelScreenFromJson(jsonString);

import 'dart:convert';

List<ModelScreen> modelScreenFromJson(String str) => List<ModelScreen>.from(
    json.decode(str).map((x) => ModelScreen.fromJson(x)));

String modelScreenToJson(List<ModelScreen> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class ModelScreen {
  int userId;
  int id;
  String title;
  String body;

  ModelScreen({
    required this.userId,
    required this.id,
    required this.title,
    required this.body,
  });

  factory ModelScreen.fromJson(Map<String, dynamic> json) => ModelScreen(
        userId: json["userId"],
        id: json["id"],
        title: json["title"],
        body: json["body"],
      );

  Map<String, dynamic> toJson() => {
        "userId": userId,
        "id": id,
        "title": title,
        "body": body,
      };
}
