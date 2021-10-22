// To parse this JSON data, do
//
//     final cardResponse = cardResponseFromMap(jsonString);

import 'dart:convert';

class CardResponse {
    CardResponse({
        required this.id,
        required this.name,
        this.type,
        required this.desc,
        this.atk,
        this.def,
        this.level,
        this.race,
        this.attribute,
        this.cardSets,
        required this.cardImages,
        required this.cardPrices,
    });

    int id;
    String name;
    String? type;
    String desc;
    int? atk;
    int? def;
    int? level;
    String? race;
    String? attribute;
    List<CardSet>? cardSets;
    List<CardImage> cardImages;
    List<CardPrice> cardPrices;

    factory CardResponse.fromJson(String str) => CardResponse.fromMap(json.decode(str));

    factory CardResponse.fromMap(Map<String, dynamic> json) => CardResponse(
        id: json["id"],
        name: json["name"],
        type: json["type"],
        desc: json["desc"],
        atk: json["atk"],
        def: json["def"],
        level: json["level"],
        race: json["race"],
        attribute: json["attribute"],
        cardSets: List<CardSet>.from(json["card_sets"].map((x) => CardSet.fromMap(x))),
        cardImages: List<CardImage>.from(json["card_images"].map((x) => CardImage.fromMap(x))),
        cardPrices: List<CardPrice>.from(json["card_prices"].map((x) => CardPrice.fromMap(x))),
    );
}

class CardImage {
    CardImage({
        required this.imageUrl,
        required this.imageUrlSmall,
    });

    String imageUrl;
    String imageUrlSmall;

    factory CardImage.fromJson(String str) => CardImage.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory CardImage.fromMap(Map<String, dynamic> json) => CardImage(
        imageUrl: json["image_url"],
        imageUrlSmall: json["image_url_small"],
    );

    Map<String, dynamic> toMap() => {
        "image_url": imageUrl,
        "image_url_small": imageUrlSmall,
    };
}

class CardPrice {
    CardPrice({
        this.cardmarketPrice,
        this.tcgplayerPrice,
        this.ebayPrice,
        this.amazonPrice,
    });

    String? cardmarketPrice;
    String? tcgplayerPrice;
    String? ebayPrice;
    String? amazonPrice;

    factory CardPrice.fromJson(String str) => CardPrice.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory CardPrice.fromMap(Map<String, dynamic> json) => CardPrice(
        cardmarketPrice: json["cardmarket_price"],
        tcgplayerPrice: json["tcgplayer_price"],
        ebayPrice: json["ebay_price"],
        amazonPrice: json["amazon_price"],
    );

    Map<String, dynamic> toMap() => {
        "cardmarket_price": cardmarketPrice,
        "tcgplayer_price": tcgplayerPrice,
        "ebay_price": ebayPrice,
        "amazon_price": amazonPrice,
    };
}

class CardSet {
    CardSet({
        this.setName,
        this.setCode,
        this.setRarity,
        this.setPrice,
    });

    String? setName;
    String? setCode;
    String? setRarity;
    String? setPrice;

    factory CardSet.fromJson(String str) => CardSet.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory CardSet.fromMap(Map<String, dynamic> json) => CardSet(
        setName: json["set_name"],
        setCode: json["set_code"],
        setRarity: json["set_rarity"],
        setPrice: json["set_price"],
    );

    Map<String, dynamic> toMap() => {
        "set_name": setName,
        "set_code": setCode,
        "set_rarity": setRarity,
        "set_price": setPrice,
    };
}
