import 'dart:convert';

Product welcomeFromJson(String str) => Product.fromJson(json.decode(str));

String welcomeToJson(Product data) => json.encode(data.toJson());

class Product {
  Product({
    this.totalSize,
    this.limit,
    this.offset,
    this.restaurants,
  });

  int totalSize;
  String limit;
  String offset;
  List<Restaurant> restaurants;

  factory Product.fromJson(Map<String, dynamic> json) => Product(
        totalSize: json["total_size"] == null ? null : json["total_size"],
        limit: json["limit"] == null ? null : json["limit"],
        offset: json["offset"] == null ? null : json["offset"],
        restaurants: json["restaurants"] == null
            ? null
            : List<Restaurant>.from(
                json["restaurants"].map((x) => Restaurant.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "total_size": totalSize == null ? null : totalSize,
        "limit": limit == null ? null : limit,
        "offset": offset == null ? null : offset,
        "restaurants": restaurants == null
            ? null
            : List<dynamic>.from(restaurants.map((x) => x.toJson())),
      };
}

class Restaurant {
  Restaurant({
    this.id,
    this.name,
    this.phone,
    this.email,
    this.logo,
    this.latitude,
    this.longitude,
    this.address,
    this.footerText,
    this.minimumOrder,
    this.comission,
    this.scheduleOrder,
    this.status,
    this.vendorId,
    this.createdAt,
    this.updatedAt,
    this.freeDelivery,
    this.coverPhoto,
    this.delivery,
    this.takeAway,
    this.foodSection,
    this.tax,
    this.zoneId,
    this.reviewsSection,
    this.active,
    this.offDay,
    this.selfDeliverySystem,
    this.posSystem,
    this.deliveryCharge,
    this.open,
    this.availableTimeStarts,
    this.availableTimeEnds,
    this.avgRating,
    this.ratingCount,
    this.gstStatus,
    this.gstCode,
    this.discount,
  });

  int id;
  String name;
  String phone;
  String email;
  String logo;
  String latitude;
  String longitude;
  String address;
  dynamic footerText;
  int minimumOrder;
  int comission;
  bool scheduleOrder;
  int status;
  int vendorId;
  DateTime createdAt;
  DateTime updatedAt;
  bool freeDelivery;
  String coverPhoto;
  bool delivery;
  bool takeAway;
  bool foodSection;
  int tax;
  int zoneId;
  bool reviewsSection;
  bool active;
  String offDay;
  int selfDeliverySystem;
  bool posSystem;
  int deliveryCharge;
  int open;
  String availableTimeStarts;
  String availableTimeEnds;
  int avgRating;
  int ratingCount;
  bool gstStatus;
  String gstCode;
  dynamic discount;

  factory Restaurant.fromJson(Map<String, dynamic> json) => Restaurant(
        id: json["id"] == null ? null : json["id"],
        name: json["name"] == null ? null : json["name"],
        phone: json["phone"] == null ? null : json["phone"],
        email: json["email"] == null ? null : json["email"],
        logo: json["logo"] == null ? null : json["logo"],
        latitude: json["latitude"] == null ? null : json["latitude"],
        longitude: json["longitude"] == null ? null : json["longitude"],
        address: json["address"] == null ? null : json["address"],
        footerText: json["footer_text"],
        minimumOrder:
            json["minimum_order"] == null ? null : json["minimum_order"],
        comission: json["comission"] == null ? null : json["comission"],
        scheduleOrder:
            json["schedule_order"] == null ? null : json["schedule_order"],
        status: json["status"] == null ? null : json["status"],
        vendorId: json["vendor_id"] == null ? null : json["vendor_id"],
        createdAt: json["created_at"] == null
            ? null
            : DateTime.parse(json["created_at"]),
        updatedAt: json["updated_at"] == null
            ? null
            : DateTime.parse(json["updated_at"]),
        freeDelivery:
            json["free_delivery"] == null ? null : json["free_delivery"],
        coverPhoto: json["cover_photo"] == null ? null : json["cover_photo"],
        delivery: json["delivery"] == null ? null : json["delivery"],
        takeAway: json["take_away"] == null ? null : json["take_away"],
        foodSection: json["food_section"] == null ? null : json["food_section"],
        tax: json["tax"] == null ? null : json["tax"],
        zoneId: json["zone_id"] == null ? null : json["zone_id"],
        reviewsSection:
            json["reviews_section"] == null ? null : json["reviews_section"],
        active: json["active"] == null ? null : json["active"],
        offDay: json["off_day"] == null ? null : json["off_day"],
        selfDeliverySystem: json["self_delivery_system"] == null
            ? null
            : json["self_delivery_system"],
        posSystem: json["pos_system"] == null ? null : json["pos_system"],
        deliveryCharge:
            json["delivery_charge"] == null ? null : json["delivery_charge"],
        open: json["open"] == null ? null : json["open"],
        availableTimeStarts: json["available_time_starts"] == null
            ? null
            : json["available_time_starts"],
        availableTimeEnds: json["available_time_ends"] == null
            ? null
            : json["available_time_ends"],
        avgRating: json["avg_rating"] == null ? null : json["avg_rating"],
        ratingCount:
            json["rating_count "] == null ? null : json["rating_count "],
        gstStatus: json["gst_status"] == null ? null : json["gst_status"],
        gstCode: json["gst_code"] == null ? null : json["gst_code"],
        discount: json["discount"],
      );

  Map<String, dynamic> toJson() => {
        "id": id == null ? null : id,
        "name": name == null ? null : name,
        "phone": phone == null ? null : phone,
        "email": email == null ? null : email,
        "logo": logo == null ? null : logo,
        "latitude": latitude == null ? null : latitude,
        "longitude": longitude == null ? null : longitude,
        "address": address == null ? null : address,
        "footer_text": footerText,
        "minimum_order": minimumOrder == null ? null : minimumOrder,
        "comission": comission == null ? null : comission,
        "schedule_order": scheduleOrder == null ? null : scheduleOrder,
        "status": status == null ? null : status,
        "vendor_id": vendorId == null ? null : vendorId,
        "created_at": createdAt == null ? null : createdAt.toIso8601String(),
        "updated_at": updatedAt == null ? null : updatedAt.toIso8601String(),
        "free_delivery": freeDelivery == null ? null : freeDelivery,
        "cover_photo": coverPhoto == null ? null : coverPhoto,
        "delivery": delivery == null ? null : delivery,
        "take_away": takeAway == null ? null : takeAway,
        "food_section": foodSection == null ? null : foodSection,
        "tax": tax == null ? null : tax,
        "zone_id": zoneId == null ? null : zoneId,
        "reviews_section": reviewsSection == null ? null : reviewsSection,
        "active": active == null ? null : active,
        "off_day": offDay == null ? null : offDay,
        "self_delivery_system":
            selfDeliverySystem == null ? null : selfDeliverySystem,
        "pos_system": posSystem == null ? null : posSystem,
        "delivery_charge": deliveryCharge == null ? null : deliveryCharge,
        "open": open == null ? null : open,
        "available_time_starts":
            availableTimeStarts == null ? null : availableTimeStarts,
        "available_time_ends":
            availableTimeEnds == null ? null : availableTimeEnds,
        "avg_rating": avgRating == null ? null : avgRating,
        "rating_count ": ratingCount == null ? null : ratingCount,
        "gst_status": gstStatus == null ? null : gstStatus,
        "gst_code": gstCode == null ? null : gstCode,
        "discount": discount,
      };
}
