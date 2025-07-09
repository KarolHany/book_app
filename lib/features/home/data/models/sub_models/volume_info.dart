import 'package:book_app/features/home/data/models/sub_models/image_links.dart';
import 'package:book_app/features/home/data/models/sub_models/industry_identifiers.dart';
import 'package:book_app/features/home/data/models/sub_models/panelization_summary.dart';
import 'package:book_app/features/home/data/models/sub_models/reading_modes.dart';
import 'package:equatable/equatable.dart';

class VolumeInfo extends Equatable {
  final String? title;
  final List<String>? authors;
  final String? publisher;
  final String? publishedDate;
  final String? description;
  final List<IndustryIdentifiers>? industryIdentifiers;
  final ReadingModes? readingModes;
  final int? pageCount;
  final String? printType;
  final List<String>? categories;
  final String? maturityRating;
  final bool? allowAnonLogging;
  final String? contentVersion;
  final PanelizationSummary? panelizationSummary;
  final ImageLinks? imageLinks;
  final String? language;
  final String? previewLink;
  final String? infoLink;
  final String? canonicalVolumeLink;

  const VolumeInfo({
    this.title,
    this.authors,
    this.publisher,
    this.publishedDate,
    this.description,
    this.industryIdentifiers,
    this.readingModes,
    this.pageCount,
    this.printType,
    this.categories,
    this.maturityRating,
    this.allowAnonLogging,
    this.contentVersion,
    this.panelizationSummary,
    this.imageLinks,
    this.language,
    this.previewLink,
    this.infoLink,
    this.canonicalVolumeLink,
  });

  factory VolumeInfo.fromJson(Map<String, dynamic> json) {
    return VolumeInfo(
      title: json['title'],
      authors: json['authors']?.cast<String>(),
      publisher: json['publisher'],
      publishedDate: json['publishedDate'],
      description: json['description'],
      industryIdentifiers: json['industryIdentifiers'] != null
          ? (json['industryIdentifiers'] as List)
              .map((v) => IndustryIdentifiers.fromJson(v))
              .toList()
          : null,
      readingModes: json['readingModes'] != null
          ? ReadingModes.fromJson(json['readingModes'])
          : null,
      pageCount: json['pageCount'],
      printType: json['printType'],
      categories: json['categories']?.cast<String>(),
      maturityRating: json['maturityRating'],
      allowAnonLogging: json['allowAnonLogging'],
      contentVersion: json['contentVersion'],
      panelizationSummary: json['panelizationSummary'] != null
          ? PanelizationSummary.fromJson(json['panelizationSummary'])
          : null,
      imageLinks: json['imageLinks'] != null
          ? ImageLinks.fromJson(json['imageLinks'])
          : null,
      language: json['language'],
      previewLink: json['previewLink'],
      infoLink: json['infoLink'],
      canonicalVolumeLink: json['canonicalVolumeLink'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['title'] = title;
    data['authors'] = authors;
    data['publisher'] = publisher;
    data['publishedDate'] = publishedDate;
    data['description'] = description;
    if (industryIdentifiers != null) {
      data['industryIdentifiers'] =
          industryIdentifiers!.map((v) => v.toJson()).toList();
    }
    if (readingModes != null) {
      data['readingModes'] = readingModes!.toJson();
    }
    data['pageCount'] = pageCount;
    data['printType'] = printType;
    data['categories'] = categories;
    data['maturityRating'] = maturityRating;
    data['allowAnonLogging'] = allowAnonLogging;
    data['contentVersion'] = contentVersion;
    if (panelizationSummary != null) {
      data['panelizationSummary'] = panelizationSummary!.toJson();
    }
    if (imageLinks != null) {
      data['imageLinks'] = imageLinks!.toJson();
    }
    data['language'] = language;
    data['previewLink'] = previewLink;
    data['infoLink'] = infoLink;
    data['canonicalVolumeLink'] = canonicalVolumeLink;
    return data;
  }

  @override
  List<Object?> get props => [
        title,
        authors,
        publisher,
        publishedDate,
        description,
        industryIdentifiers,
        readingModes,
        pageCount,
        printType,
        categories,
        maturityRating,
        allowAnonLogging,
        contentVersion,
        panelizationSummary,
        imageLinks,
        language,
        previewLink,
        infoLink,
        canonicalVolumeLink,
      ];
}