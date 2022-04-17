// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Data _$DataFromJson(Map<String, dynamic> json) => Data(
      avenueName: json['avenueName'] as String,
      buildingNumber: json['buildingNumber'] as String,
      id: json['id'] as String,
      lotNumber: json['lotNumber'] as String,
      ownershipType:
          $enumDecodeNullable(_$OwnershipTypeEnumMap, json['ownershipType']),
      streetNumber: json['streetNumber'] as String,
      title: json['title'] as String,
      userId: json['userId'] as String,
      buildingcomplex: json['buildingcomplex'] == null
          ? null
          : BuildingComplex.fromJson(
              json['buildingcomplex'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$DataToJson(Data instance) => <String, dynamic>{
      'id': instance.id,
      'userId': instance.userId,
      'lotNumber': instance.lotNumber,
      'title': instance.title,
      'streetNumber': instance.streetNumber,
      'avenueName': instance.avenueName,
      'buildingNumber': instance.buildingNumber,
      'ownershipType': _$OwnershipTypeEnumMap[instance.ownershipType],
      'buildingcomplex': instance.buildingcomplex,
    };

const _$OwnershipTypeEnumMap = {
  OwnershipType.fullyOwned: 'FULLY_OWNED',
  OwnershipType.unknwon: 'unknwon',
};
