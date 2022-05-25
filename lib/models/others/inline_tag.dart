enum InlineTag {
  b, // Bold
  header, // Header
}

extension InlineTagStringer on InlineTag {
  static const _kDefinitions = <InlineTag, String>{
    InlineTag.b: "b",
    InlineTag.header: "header",
  };

  String toLiteralValue() => _kDefinitions[this] ?? "";
}
