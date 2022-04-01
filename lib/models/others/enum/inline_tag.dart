enum InlineTag {
  b, // Bold
  header, // Header
}

extension InlineTagStringer on InlineTag {
  /// Gets the actual value of the enum without the '.' and its name
  /// Example, instead of [InlineTag.b] this method returns only [b]
  String toLiteralValue() => toString().split('.').last;
}
