import 'package:bon_appetit/models/datasets/homepage.dart';
import 'package:bon_appetit/services/data_mock.dart';
import 'package:flutter_test/flutter_test.dart' hide group, test, expect;
import 'package:test/test.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  group("MockDataService", () {
    group("fetchHomepageDataset()", () {
      test('should return a DatasetHomepage type', () async {
        expect(await MockDataService.fetchHomepageDataset(),
            isA<DatasetHomepage>());
      });
    });
  });
}
