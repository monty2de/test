// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'buildingcomplex.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BuildingComplex _$BuildingComplexFromJson(Map<String, dynamic> json) =>
    BuildingComplex(
      buildingComplexId: json['buildingComplexId'] as String?,
      image: json['image'] as String?,
      commNameAr: json['commNameAr'] as String?,
      commNameEn: json['commNameEn'] as String?,
    );

Map<String, dynamic> _$BuildingComplexToJson(BuildingComplex instance) =>
    <String, dynamic>{
      'buildingComplexId': instance.buildingComplexId,
      'image': instance.image,
      'commNameAr': instance.commNameAr,
      'commNameEn': instance.commNameEn,
    };
