import 'package:equatable/equatable.dart';

class Epub extends Equatable {
  final bool? isAvailable;

  const Epub({this.isAvailable});

  factory Epub.fromJson(Map<String, dynamic> json) {
    return Epub(
      isAvailable: json['isAvailable'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['isAvailable'] = isAvailable;
    return data;
  }

  @override
  List<Object?> get props => [isAvailable];
}
