// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'test.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Test _$TestFromJson(Map<String, dynamic> json) => Test(
      title: json['title'] as String,
      url: json['url'] as String,
      type: $enumDecode(_$AttachmentTypeEnumMap, json['type']),
    );

Map<String, dynamic> _$TestToJson(Test instance) => <String, dynamic>{
      'title': instance.title,
      'url': instance.url,
      'type': _$AttachmentTypeEnumMap[instance.type],
    };

const _$AttachmentTypeEnumMap = {
  AttachmentType.png: 'png',
  AttachmentType.pdf: 'pdf',
};
