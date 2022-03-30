class InlineTagParser {
  final String text;
  final String tag;

  late final int _closingTagIndex;
  late final String? _textHead;
  late final String? _textTail;

  /// * Input:
  ///
  /// [tag] is 'italic'
  /// [text] is '<italic>Dog</italic> is running.'
  ///
  /// * Output:
  /// [textHead] returns 'Dog'
  /// [textTail] returns ' is running.'
  InlineTagParser(this.text, this.tag) {
    final openingTag = "<$tag>";
    final closingTag = "</$tag>";

    // Search for the index of the closing tag (e.g. </b> or </header>)
    // from the text starting from the index of the opening tag's length
    _closingTagIndex = text.indexOf(closingTag, openingTag.length);

    // If the closing tag is in the text, get the substrings and set
    // them to the the late final properties, otherwise set them to null.
    if (_closingTagIndex != -1) {
      // Get the head substring between the opening tag and closing tag
      _textHead = text.substring(openingTag.length, _closingTagIndex);

      // Get the tail substring that is after the closing tag until the end.
      _textTail = text.substring(
        _closingTagIndex + closingTag.length,
        text.length,
      );
    } else {
      _textHead = null;
      _textTail = null;
    }
  }

  String? get textHead => _textHead;

  String? get textTail => _textTail;
}
