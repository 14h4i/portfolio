import 'package:json_annotation/json_annotation.dart';

part 'info.g.dart';

@JsonSerializable()
class Info {
  @JsonKey(name: 'name', includeIfNull: false)
  final String? name;

  @JsonKey(name: 'avatar_url', includeIfNull: false)
  final String? avatarUrl;

  @JsonKey(name: 'html_url', includeIfNull: false)
  final String? github;

  @JsonKey(name: 'location', includeIfNull: false)
  final String? location;

  @JsonKey(name: 'email', includeIfNull: false)
  final String? email;

  @JsonKey(name: 'public_repos', includeIfNull: false)
  final int? repos;

  @JsonKey(name: 'public_gists', includeIfNull: false)
  final int? gists;

  @JsonKey(name: 'followers', includeIfNull: false)
  final int? followers;

  Info(
    this.name,
    this.avatarUrl,
    this.github,
    this.location,
    this.repos,
    this.email,
    this.gists,
    this.followers,
  );

  String get country =>
      location != null ? location!.split(', ').elementAt(0) : '';
  String get city => location != null ? location!.split(', ').elementAt(1) : '';

  factory Info.fromJson(Map<String, dynamic> json) => _$InfoFromJson(json);

  Map<String, dynamic> toJson() => _$InfoToJson(this);
}
