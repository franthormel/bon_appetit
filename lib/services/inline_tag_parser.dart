class InlineTagParser {
  final String text;
  final String tag;

  InlineTagParser(this.text, this.tag);

  String get start {
    final indexEnd = _indexEnd;
    String value = "";

    if (indexEnd != -1) {
      value = text.substring(_start.length, indexEnd);
    }

    return value;
  }

  String get end {
    final indexEnd = _indexEnd;
    String value = "";

    if (indexEnd != -1) {
      value = text.substring(indexEnd + _end.length, text.length);
    }

    return value;
  }

  String get _start => "<$tag>";

  String get _end => "</$tag>";

  int get _indexEnd => text.indexOf(_end, _start.length);
}
