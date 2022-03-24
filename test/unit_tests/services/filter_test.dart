import 'package:bon_appetit/services/providers/filter.dart';
import 'package:test/test.dart';

void main() {
  group("FilterProvider", () {
    group("change()", () {
      test("should change the value if the option is not the same", () {
        final filter = FilterProvider();

        filter.change("Others");

        expect(filter.optionIs("Others"), true);
      });

      test("should not change the value if the option is empty", () {
        final filter = FilterProvider();

        filter.change("");

        expect(filter.optionIs(""), false);
      });
    });

    group("optionIs()", () {
      test("should return true when option is the same", () {
        final filter = FilterProvider();

        filter.change("Others");

        expect(filter.optionIs("Others"), true);
      });

      test("should return false when option is not the same", () {
        final filter = FilterProvider();

        expect(filter.optionIs("Others"), false);
      });
    });

    group("optionIsIn()", () {
      test("should return true when the value is in the categories", () {
        final filter = FilterProvider();

        filter.change("Others");

        expect(filter.optionIsIn(["Others"]), true);
      });

      test("should return false when the value is not in the categories", () {
        final filter = FilterProvider();

        filter.change("Others");

        expect(filter.optionIsIn(["All"]), false);
      });
    });

    group("shouldFilter", () {
      test("should return false", () {
        final filter = FilterProvider();
        expect(filter.shouldFilter, false);
      });

      test("should return true", () {
        final filter = FilterProvider();

        filter.change("Others");

        expect(filter.shouldFilter, true);
      });
    });
  });
}
