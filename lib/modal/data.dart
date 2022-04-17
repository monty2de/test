import 'package:json_annotation/json_annotation.dart';
import 'package:jsonse/modal/buildingcomplex.dart';

part 'data.g.dart';

@JsonSerializable()
class Data {
  String 
      id,
      userId,
      lotNumber,
      title,
      streetNumber,
      avenueName;
  String buildingNumber;
  OwnershipType? ownershipType;
  BuildingComplex? buildingcomplex;

  Data({
    required this.avenueName,
    required this.buildingNumber,
    required this.id,
    required this.lotNumber,
    this.ownershipType,
    required this.streetNumber,
    required this.title,
    required this.userId,
    this.buildingcomplex
  });

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);

  Map<String, dynamic> toJson() => _$DataToJson(this);
}

enum OwnershipType {
  @JsonValue('FULLY_OWNED')
  fullyOwned,
  unknwon,
}
