import 'package:bon_appetit/models/videos/video.dart';
import 'package:flutter/material.dart';
import 'package:test/test.dart';

void main() {
  group('VideoEntry', () {
    group('heroTag', () {
      test('should return a String from its ObjectKey value', () {
        final video = Video(
          about: "about",
          imageUrl: "imageUrl",
          title: "title",
          transcript: "transcript",
          uploadDate: DateTime.now(),
        );

        expect(video.heroTag, ObjectKey(video).toString());
      });
    });
  });
}
