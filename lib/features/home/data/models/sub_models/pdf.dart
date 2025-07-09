import 'package:equatable/equatable.dart';

class Pdf extends Equatable {
  final bool? isAvailable;
  final String? acsTokenLink;

  const Pdf({this.isAvailable, this.acsTokenLink});

  factory Pdf.fromJson(Map<String, dynamic> json) {
    return Pdf(
      isAvailable: json['isAvailable'],
      acsTokenLink: json['acsTokenLink'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['isAvailable'] = isAvailable;
    data['acsTokenLink'] = acsTokenLink;
    return data;
  }

  @override
  List<Object?> get props => [isAvailable, acsTokenLink];
}
