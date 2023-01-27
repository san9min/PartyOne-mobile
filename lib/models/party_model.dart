class PartyModel {
  final String partyName,
      partyWhen,
      partyWhere,
      hashtag,
      contents,
      thumb,
      auth,
      joinMember;
  PartyModel.fromJson(Map<String, dynamic> json)
      : partyName = json["partyName"],
        partyWhen = json["partyWhen"],
        joinMember = json["joinMember"],
        contents = json["contents"],
        hashtag = json["hashtag"],
        partyWhere = json['partyWhere'],
        thumb = json["thum"],
        auth = json["auth"]; // 임시 파티장 id

}
