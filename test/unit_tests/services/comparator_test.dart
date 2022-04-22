import 'package:bon_appetit/services/comparator.dart';
import 'package:test/test.dart';

void main() {
  group("Comparator", () {
    group("compareDoublesFromNullableStrings()", () {
      group("should return negative", () {
        group("if a is greater than b", () {
          test("#1", () {
            expect(
              ComparatorService.compareDoublesFromNullableStrings("5.0", ""),
              isNegative,
            );
          });
        });
        group("if b is null and a is not null", () {});
      });
      group("should return 0", () {});
      group("should return 1", () {});
    });

    group("compareIntsFromNullableStrings()", () {
      // TODO: Test compareIntsFromNullableStrings()
      group("should return -1", () {});
      group("should return 0", () {});
      group("should return 1", () {});
    });
  });

  group("Sorting collections with nullable values", () {
    group("Nullable doubles should be sorted in descending order", () {
      // TODO: Test compareDoublesFromNullableStrings() with a collection
    });

    group("Nullable integers should be sorted in descending order", () {
      // TODO: Test compareIntsFromNullableStrings() with a collection
    });
  });
}
