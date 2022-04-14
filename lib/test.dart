
import 'package:json_annotation/json_annotation.dart';


part 'test.g.dart';

@JsonSerializable()
class Test {
  String title , url ;
  AttachmentType type;

  Test({required this.title, required this.url,  required this.type});

  factory Test.fromJson(Map<String, dynamic> json) => _$TestFromJson(json);

  Map<String, dynamic> toJson() => _$TestToJson(this);
}

enum AttachmentType {
  png , pdf
}