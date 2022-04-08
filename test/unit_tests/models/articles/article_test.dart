import 'package:bon_appetit/models/articles/article.dart';
import 'package:flutter/material.dart';
import 'package:test/test.dart';

void main() {
  group('Article', () {
    group('heroTag', () {
      test('should return a String from its ObjectKey value', () {
        final article = Article(
          id: "1",
          author: "author",
          category: "category",
          content: "content",
          dateUploaded: DateTime.now(),
          imageUrl: "imageUrl",
          subtitle: "subtitle",
          tags: [],
          title: "title",
        );

        expect(article.heroTag, ObjectKey(article).toString());
      });
    });
  });
}
