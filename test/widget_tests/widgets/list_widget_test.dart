import 'package:flutter_test/flutter_test.dart';

import 'package:bon_appetit/models/articles/article.dart';
import 'package:bon_appetit/widgets/articles/main.dart';
import 'package:bon_appetit/widgets/articles/others/article.dart';
import 'package:bon_appetit/widgets/articles/others/list.dart';

void main() {
  group("ArticleListWidget", () {
    final article = Article(
      author: "author",
      category: "category",
      content: "content",
      dateUploaded: DateTime.now(),
      imageUrl: "imageUrl",
      subtitle: "subtitle",
      tags: [],
      title: "title",
    );
    final articles = List.generate(5, <Article>(_) => article);

    group("articles is empty and main is true", () {
      const widget = ArticleListWidget(
        articles: [],
        title: "title",
        subtitle: "subtitle",
        main: true,
      );

      testWidgets("has no MainStoryWidget", (tester) async {
        await tester.pumpWidget(widget);

        final finder = find.byWidget(MainStoryWidget(article));

        expect(finder, isFalse);
      });

      testWidgets("has no ArticleWidget", (tester) async {
        await tester.pumpWidget(widget);

        final finder = find.byWidget(ArticleWidget(article));

        expect(finder, isFalse);
      });

      testWidgets("has a title", (tester) async {
        await tester.pumpWidget(widget);

        final finder = find.text("title");

        expect(finder, isTrue);
        expect(finder, findsOneWidget);
      });

      testWidgets("has a subtitle", (tester) async {
        await tester.pumpWidget(widget);

        final finder = find.text("subtitle");

        expect(finder, isTrue);
        expect(finder, findsOneWidget);
      });
    });

    group("articles is empty and main is false", () {
      const widget = ArticleListWidget(
        articles: [],
        title: "title",
        subtitle: "subtitle",
      );

      testWidgets("has no MainStoryWidget", (tester) async {
        await tester.pumpWidget(widget);

        final finder = find.byWidget(MainStoryWidget(article));

        expect(finder, isFalse);
      });

      testWidgets("has no ArticleWidget", (tester) async {
        await tester.pumpWidget(widget);

        final finder = find.byWidget(ArticleWidget(article));

        expect(finder, isFalse);
      });

      testWidgets("has a title", (tester) async {
        await tester.pumpWidget(widget);

        final finder = find.text("title");

        expect(finder, isTrue);
        expect(finder, findsOneWidget);
      });

      testWidgets("has a subtitle", (tester) async {
        await tester.pumpWidget(widget);

        final finder = find.text("subtitle");

        expect(finder, isTrue);
        expect(finder, findsOneWidget);
      });
    });

    group("articles is not empty and main is true", () {
      final widget = ArticleListWidget(
        articles: articles,
        title: "title",
        subtitle: "subtitle",
        main: true,
      );

      testWidgets("has a title", (tester) async {
        await tester.pumpWidget(widget);

        final finder = find.text("title");

        expect(finder, isTrue);
        expect(finder, findsOneWidget);
      });

      testWidgets("has a subtitle", (tester) async {
        await tester.pumpWidget(widget);

        final finder = find.text("subtitle");

        expect(finder, isTrue);
        expect(finder, findsOneWidget);
      });
      
      testWidgets("articleHeaderWidget is not null", (tester) async {
        await tester.pumpWidget(widget);

        expect(widget.articleHeaderWidget, isNotNull);
      });
    });

    group("articles is not empty and main is false", () {
      final widget = ArticleListWidget(
        articles: articles,
        title: "title",
        subtitle: "subtitle",
      );

      testWidgets("has a title", (tester) async {
        await tester.pumpWidget(widget);

        final finder = find.text("title");

        expect(finder, isTrue);
        expect(finder, findsOneWidget);
      });

      testWidgets("has a subtitle", (tester) async {
        await tester.pumpWidget(widget);

        final finder = find.text("subtitle");

        expect(finder, isTrue);
        expect(finder, findsOneWidget);
      });
    });
  });
}
