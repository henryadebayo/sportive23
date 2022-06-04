
import 'dart:convert';

LeagueModel leagueModelFromJson(String str) => LeagueModel.fromJson(json.decode(str));

String leagueModelToJson(LeagueModel data) => json.encode(data.toJson());

class LeagueModel {
  LeagueModel({
    this.success,
    this.message,
    this.data,
  });

  bool success;
  String message;
  Data data;

  factory LeagueModel.fromJson(Map<String, dynamic> json) => LeagueModel(
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
    this.leagues,
  });

  List<JustLeague> leagues;

  factory Data.fromJson(Map<String, dynamic> json) => Data(
    leagues: List<JustLeague>.from(json["leagues"].map((x) => JustLeague.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "leagues": List<dynamic>.from(leagues.map((x) => x.toJson())),
  };
}

class JustLeague {
  JustLeague({
    this.coverage,
    this.active,
    this.type,
    this.legacyId,
    this.countryId,
    this.name,
    this.isCup,
    this.currentSeasonId,
    this.currentRoundId,
    this.currentStageId,
    this.liveStandings,
    this.leagueId,
    this.createdAt,
    this.updatedAt,
    this.subscriptionPrice,
    this.id,
    this.featured,
  });

  Coverage coverage;
  bool active;
  Type type;
  int legacyId;
  int countryId;
  String name;
  bool isCup;
  int currentSeasonId;
  int currentRoundId;
  int currentStageId;
  bool liveStandings;
  int leagueId;
  DateTime createdAt;
  DateTime updatedAt;
  int subscriptionPrice;
  String id;
  bool featured;

  factory JustLeague.fromJson(Map<String, dynamic> json) => JustLeague(
    coverage: Coverage.fromJson(json["coverage"]),
    active: json["active"],
    type: typeValues.map[json["type"]],
    legacyId: json["legacy_id"],
    countryId: json["country_id"],
    name: json["name"],
    isCup: json["is_cup"],
    currentSeasonId: json["current_season_id"],
    currentRoundId: json["current_round_id"],
    currentStageId: json["current_stage_id"],
    liveStandings: json["live_standings"],
    leagueId: json["league_id"],
    createdAt: DateTime.parse(json["createdAt"]),
    updatedAt: DateTime.parse(json["updatedAt"]),
    subscriptionPrice: json["subscriptionPrice"],
    id: json["id"],
    featured: json["featured"],
  );

  Map<String, dynamic> toJson() => {
    "coverage": coverage.toJson(),
    "active": active,
    "type": typeValues.reverse[type],
    "legacy_id": legacyId,
    "country_id": countryId,
    "name": name,
    "is_cup": isCup,
    "current_season_id": currentSeasonId,
    "current_round_id": currentRoundId,
    "current_stage_id": currentStageId,
    "live_standings": liveStandings,
    "league_id": leagueId,
    "createdAt": createdAt.toIso8601String(),
    "updatedAt": updatedAt.toIso8601String(),
    "subscriptionPrice": subscriptionPrice,
    "id": id,
    "featured": featured,
  };
}

class Coverage {
  Coverage({
    this.predictions,
    this.topscorerGoals,
    this.topscorerAssists,
    this.topscorerCards,
  });

  bool predictions;
  bool topscorerGoals;
  bool topscorerAssists;
  bool topscorerCards;

  factory Coverage.fromJson(Map<String, dynamic> json) => Coverage(
    predictions: json["predictions"],
    topscorerGoals: json["topscorer_goals"],
    topscorerAssists: json["topscorer_assists"],
    topscorerCards: json["topscorer_cards"],
  );

  Map<String, dynamic> toJson() => {
    "predictions": predictions,
    "topscorer_goals": topscorerGoals,
    "topscorer_assists": topscorerAssists,
    "topscorer_cards": topscorerCards,
  };
}

enum Type {
  DOMESTIC_CUP,
  CUP_INTERNATIONAL,
  DOMESTIC
}

final typeValues = EnumValues({
  "cup_international": Type.CUP_INTERNATIONAL,
  "domestic": Type.DOMESTIC,
  "domestic_cup": Type.DOMESTIC_CUP
});

class EnumValues<T> {
  Map<String, T> map;
  Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    reverseMap ??= map.map((k, v) => MapEntry(v, k));
    return reverseMap;
  }
}
