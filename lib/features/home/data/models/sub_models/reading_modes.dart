import 'package:equatable/equatable.dart';

class ReadingModes extends Equatable {
  final bool? text;
  final bool? image;

  const ReadingModes({this.text, this.image});

  factory ReadingModes.fromJson(Map<String, dynamic> json) {
    return ReadingModes(
      text: json['text'],
      image: json['image'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['text'] = text;
    data['image'] = image;
    return data;
  }

  @override
  List<Object?> get props => [text, image];
}
