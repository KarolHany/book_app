
import 'package:equatable/equatable.dart';

class IndustryIdentifiers extends Equatable {
  final String? type;
  final String? identifier;

  const IndustryIdentifiers({this.type, this.identifier});

  factory IndustryIdentifiers.fromJson(Map<String, dynamic> json) {
    return IndustryIdentifiers(
      type: json['type'],
      identifier: json['identifier'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['type'] = type;
    data['identifier'] = identifier;
    return data;
  }

  @override
  List<Object?> get props => [type, identifier];
}
