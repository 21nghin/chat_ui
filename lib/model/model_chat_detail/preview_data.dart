class PreviewData {
  /// Link description (usually og:description meta tag)
  final String? description;

  /// See [PreviewDataImage]
  final PreviewDataImage? image;

  /// Remote resource URL
  final String? link;

  /// Link title (usually og:title meta tag)
  final String? title;

  PreviewData({
    this.description,
    this.image,
    this.link,
    this.title,
  });

  /// Creates a copy of the preview data with an updated data.
  /// Null values will nullify existing values.
  PreviewData copyWith({
    String? description,
    PreviewDataImage? image,
    String? link,
    String? title,
  }) {
    return PreviewData(
      description: description,
      image: image,
      link: link,
      title: title,
    );
  }
}

class PreviewDataImage {
  /// Image height in pixels
  final double height;

  /// Remote image URL
  final String url;

  /// Image width in pixels
  final double width;

  PreviewDataImage({
    required this.height,
    required this.url,
    required this.width,
  });
}
