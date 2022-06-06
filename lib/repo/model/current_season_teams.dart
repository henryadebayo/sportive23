// To parse this JSON data, do
//
//     final currentSeasonTeams = currentSeasonTeamsFromJson(jsonString);

import 'dart:convert';

CurrentSeasonTeams currentSeasonTeamsFromJson(String str) => CurrentSeasonTeams.fromJson(json.decode(str));

String currentSeasonTeamsToJson(CurrentSeasonTeams data) => json.encode(data.toJson());

class CurrentSeasonTeams {
  CurrentSeasonTeams({
    this.success,
    this.message,
    this.data,
  });

  bool success;
  String message;
  Data data;

  factory CurrentSeasonTeams.fromJson(Map<String, dynamic> json) => CurrentSeasonTeams(
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

  List<JustCurrentSeasonTeams> teams;

  factory Data.fromJson(Map<String, dynamic> json) => Data(
    teams: List<JustCurrentSeasonTeams>.from(json["teams"].map((x) => JustCurrentSeasonTeams.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "teams": List<dynamic>.from(teams.map((x) => x.toJson())),
  };
}

class JustCurrentSeasonTeams {
  JustCurrentSeasonTeams({
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

  factory JustCurrentSeasonTeams.fromJson(Map<String, dynamic> json) => JustCurrentSeasonTeams(
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
    "legacy_id": legacyId == null ? null : legacyId,
    "name": name,
    "short_code": shortCode == null ? null : shortCode,
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
