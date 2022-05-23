// To parse this JSON data, do
//
//     final newsModel = newsModelFromJson(jsonString);

import 'dart:convert';

NewsModel newsModelFromJson(String str) => NewsModel.fromJson(json.decode(str));

String newsModelToJson(NewsModel data) => json.encode(data.toJson());

class NewsModel {
  NewsModel({
    this.success,
    this.message,
    this.data,
  });

  bool success;
  String message;
  Data data;

  factory NewsModel.fromJson(Map<String, dynamic> json) => NewsModel(
    success: json["success"],
    message: json["message"],
    data: Data.fromJson(json["data"]),
  );

  Map<String, dynamic> toJson() => {
    "success": success,
    "message": message,
    "data": data.toJson(),
  };
}

class Data {
  Data({
    this.news,
  });

  List<News> news;

  factory Data.fromJson(Map<String, dynamic> json) => Data(
    news: List<News>.from(json["news"].map((x) => News.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "news": List<dynamic>.from(news.map((x) => x.toJson())),
  };
}

class News {
  News({
    this.uri,
    this.url,
    this.image,
    this.title,
    this.description,
    this.body,
    this.source,
    this.authors,
    this.tags,
    this.createdAt,
    this.updatedAt,
    this.id,
  });

  String uri;
  String url;
  String image;
  String title;
  String description;
  String body;
  Source source;
  List<dynamic> authors;
  List<dynamic> tags;
  DateTime createdAt;
  DateTime updatedAt;
  String id;

  factory News.fromJson(Map<String, dynamic> json) => News(
    uri: json["uri"],
    url: json["url"],
    image: json["image"],
    title: json["title"],
    description: json["description"],
    body: json["body"],
    source: Source.fromJson(json["source"]),
    authors: List<dynamic>.from(json["authors"].map((x) => x)),
    tags: List<dynamic>.from(json["tags"].map((x) => x)),
    createdAt: DateTime.parse(json["createdAt"]),
    updatedAt: DateTime.parse(json["updatedAt"]),
    id: json["id"],
  );

  Map<String, dynamic> toJson() => {
    "uri": uri,
    "url": url,
    "image": image,
    "title": title,
    "description": description,
    "body": body,
    "source": source.toJson(),
    "authors": List<dynamic>.from(authors.map((x) => x)),
    "tags": List<dynamic>.from(tags.map((x) => x)),
    "createdAt": createdAt.toIso8601String(),
    "updatedAt": updatedAt.toIso8601String(),
    "id": id,
  };
}

class Source {
  Source({
    this.title,
    this.uri,
    this.createdAt,
    this.updatedAt,
    this.id,
  });

  String title;
  String uri;
  DateTime createdAt;
  DateTime updatedAt;
  dynamic id;

  factory Source.fromJson(Map<String, dynamic> json) => Source(
    title: json["title"],
    uri: json["uri"],
    createdAt: DateTime.parse(json["createdAt"]),
    updatedAt: DateTime.parse(json["updatedAt"]),
    id: json["id"],
  );

  Map<String, dynamic> toJson() => {
    "title": title,
    "uri": uri,
    "createdAt": createdAt.toIso8601String(),
    "updatedAt": updatedAt.toIso8601String(),
    "id": id,
  };
}
