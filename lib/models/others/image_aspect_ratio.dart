/// Utility class for use between the [AspectRatio] and [CachedNetworkImage] widgets.
/// This is useful if the URL of the image contains an aspect ratio to be used for determining
/// the value for the [AspectRatio] widget.
///
/// * [text] contains the colon-String version. Examples: '1:1', '3:4', and '4:3'.
/// * [value] contains the division-double version. Examples: 1 / 1, 3 / 4, and 4 / 3.
class ImageAspectRatio {
  final int x;
  final int y;

  /// [x] represents the width ratio while [y] represents the height ratio
  const ImageAspectRatio({required this.x, required this.y});

  String get text => "$x:$y";

  double get value => x / y;
}

const imageAspectRatios = <ImageAspectRatio>[
  // The 1-to-1 ratio must always be first! Everything else can be added after.
  ImageAspectRatio(x: 1, y: 1),
  ImageAspectRatio(x: 3, y: 4),
  ImageAspectRatio(x: 4, y: 3),
];
