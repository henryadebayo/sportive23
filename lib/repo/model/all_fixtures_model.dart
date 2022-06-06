// To parse this JSON data, do
//
//     final allFixturesModel = allFixturesModelFromJson(jsonString);

import 'dart:convert';

AllFixturesModel allFixturesModelFromJson(String str) => AllFixturesModel.fromJson(json.decode(str));

String allFixturesModelToJson(AllFixturesModel data) => json.encode(data.toJson());

class AllFixturesModel {
  AllFixturesModel({
    this.success,
    this.message,
    this.data,
  });

  bool success;
  String message;
  Data data;

  factory AllFixturesModel.fromJson(Map<String, dynamic> json) => AllFixturesModel(
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
    this.teams,
  });

  List<JustAllFixturesModel> teams;

  factory Data.fromJson(Map<String, dynamic> json) => Data(
    teams: List<JustAllFixturesModel>.from(json["teams"].map((x) => JustAllFixturesModel.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "teams": List<dynamic>.from(teams.map((x) => x.toJson())),
  };
}

class JustAllFixturesModel {
  JustAllFixturesModel({
    this.id,
    this.legacyId,
    this.name,
    this.shortCode,
    this.twitter,
    this.countryId,
    this.nationalTeam,
    this.founded,
    this.logoPath,
    this.venueId,
    this.currentSeasonId,
    this.isPlaceholder,
  });

  int id;
  int legacyId;
  String name;
  String shortCode;
  dynamic twitter;
  int countryId;
  bool nationalTeam;
  int founded;
  String logoPath;
  int venueId;
  int currentSeasonId;
  bool isPlaceholder;

  factory JustAllFixturesModel.fromJson(Map<String, dynamic> json) => JustAllFixturesModel(
    id: json["id"],
    legacyId: json["legacy_id"] == null ? null : json["legacy_id"],
    name: json["name"],
    shortCode: json["short_code"] == null ? null : json["short_code"],
    twitter: json["twitter"],
    countryId: json["country_id"],
    nationalTeam: json["national_team"],
    founded: json["founded"],
    logoPath: json["logo_path"],
    venueId: json["venue_id"],
    currentSeasonId: json["current_season_id"],
    isPlaceholder: json["is_placeholder"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "legacy_id": legacyId,
    "name": name,
    "short_code": shortCode,
    "twitter": twitter,
    "country_id": countryId,
    "national_team": nationalTeam,
    "founded": founded,
    "logo_path": logoPath,
    "venue_id": venueId,
    "current_season_id": currentSeasonId,
    "is_placeholder": isPlaceholder,
  };
}
