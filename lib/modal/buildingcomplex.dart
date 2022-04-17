import 'package:json_annotation/json_annotation.dart';

part 'buildingcomplex.g.dart';

@JsonSerializable()



class BuildingComplex {

  String? buildingComplexId , image , commNameAr , commNameEn;


  BuildingComplex(
      {
         this.buildingComplexId,
         this.image,
         this.commNameAr,
         this.commNameEn,
     
      });


    factory BuildingComplex.fromJson(Map<String, dynamic> json) => _$BuildingComplexFromJson(json);

  Map<String, dynamic> toJson() => _$BuildingComplexToJson(this);
}