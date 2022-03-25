import 'package:bon_appetit/services/assets_loader.dart';
import 'package:flutter_test/flutter_test.dart' hide group, test, expect;
import 'package:test/test.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  group("AssetsLoaderService", () {
    group("loadSponsorTxtFile()", () {
      test('should return a String type', () async {
        expect(await AssetsLoaderService.loadSponsorTxtFile(), isA<String>());
      });
    });

    group("loadHomepageJsonFile()", () {
      test('should return a String type', () async {
        expect(await AssetsLoaderService.loadHomepageJsonFile(), isA<String>());
      });
    });
  });
}
