import 'package:equatable/equatable.dart';

class PanelizationSummary extends Equatable {
  final bool? containsEpubBubbles;
  final bool? containsImageBubbles;

  const PanelizationSummary({this.containsEpubBubbles, this.containsImageBubbles});

  factory PanelizationSummary.fromJson(Map<String, dynamic> json) {
    return PanelizationSummary(
      containsEpubBubbles: json['containsEpubBubbles'],
      containsImageBubbles: json['containsImageBubbles'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['containsEpubBubbles'] = containsEpubBubbles;
    data['containsImageBubbles'] = containsImageBubbles;
    return data;
  }

  @override
  List<Object?> get props => [containsEpubBubbles, containsImageBubbles];
}
