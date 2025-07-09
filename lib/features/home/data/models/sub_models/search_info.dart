import 'package:equatable/equatable.dart';

class SearchInfo extends Equatable {
  
  final String? textSnippet;

  const SearchInfo({this.textSnippet});

  factory SearchInfo.fromJson(Map<String, dynamic> json) {
    return SearchInfo(
      textSnippet: json['textSnippet'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['textSnippet'] = textSnippet;
    return data;
  }

  @override
  List<Object?> get props => [textSnippet];
}