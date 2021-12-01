// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Info _$InfoFromJson(Map<String, dynamic> json) => Info(
      json['name'] as String?,
      json['avatar_url'] as String?,
      json['html_url'] as String?,
      json['location'] as String?,
      json['public_repos'] as int?,
      json['email'] as String?,
    );

Map<String, dynamic> _$InfoToJson(Info instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('name', instance.name);
  writeNotNull('avatar_url', instance.avatarUrl);
  writeNotNull('html_url', instance.github);
  writeNotNull('location', instance.location);
  writeNotNull('email', instance.email);
  writeNotNull('public_repos', instance.repos);
  return val;
}
