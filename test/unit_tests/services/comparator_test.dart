import 'package:bon_appetit/services/comparator.dart';
import 'package:test/test.dart';

class ComparatorServiceTester {
  static void testCompareDoubleStrings(Map<String?, String?> map, Matcher m) {
    map.forEach((a, b) {
      test("a=$a b=$b", () {
        expect(ComparatorService.compareDoubleStrings(a, b), m);
      });
    });
  }

  static void testCompareIntStrings(Map<String?, String?> map, Matcher m) {
    map.forEach((a, b) {
      test("a=$a b=$b", () {
        expect(ComparatorService.compareIntStrings(a, b), m);
      });
    });
  }
}

void main() {
  group("ComparatorService", () {
    group("compareDoubleStrings()", () {
      group("should return negative", () {
        const m = isNegative;

        group("if a is greater than b", () {
          const map = <String?, String?>{
            "5.0": "",
            "3.9": "3.",
            "1.1": "1.0",
          };

          ComparatorServiceTester.testCompareDoubleStrings(map, m);
        });

        group("if a is not null and b is null", () {
          const map = <String?, String?>{
            "5.0": null,
            "3.9": "null",
          };

          ComparatorServiceTester.testCompareDoubleStrings(map, m);
        });
      });

      group("should return zero", () {
        const m = isZero;

        group("if a and b are null", () {
          ComparatorServiceTester.testCompareDoubleStrings({null: null}, m);
        });

        group("if a and b are not doubles", () {
          const map = <String?, String?>{
            "": "",
            "*&*@": "KKJ(",
            "asdnull": "nuller",
            "nVll": "axr",
            "ryh": "nUll",
          };

          ComparatorServiceTester.testCompareDoubleStrings(map, m);
        });

        group("if a and b are equal", () {
          const map = <String?, String?>{
            "3.0": "3.0",
            "50.2": "50.20",
            "0.12302": "00.12302",
          };

          ComparatorServiceTester.testCompareDoubleStrings(map, m);
        });
      });

      group("should return positive", () {
        const m = isPositive;

        group("if a is lesser than b", () {
          const map = <String?, String?>{
            "": "1.2",
            "3.2": "3.3",
            "0.01": "1.01",
            "5.1102": "5.11030",
          };

          ComparatorServiceTester.testCompareDoubleStrings(map, m);
        });

        group("if a is null and b is not null", () {
          const map = <String?, String?>{
            null: "3.2",
            "null": "5.1",
          };

          ComparatorServiceTester.testCompareDoubleStrings(map, m);
        });
      });
    });

    group("compareIntStrings()", () {
      group("should return negative", () {
        const m = isNegative;

        group("if a is greater than b", () {
          const map = <String?, String?>{
            "5": "",
            "3": "2",
            "10": "1",
          };

          ComparatorServiceTester.testCompareIntStrings(map, m);
        });

        group("if a is not null and b is null", () {
          const map = <String?, String?>{
            "5": "null",
            "1": null,
          };

          ComparatorServiceTester.testCompareIntStrings(map, m);
        });
      });

      group("should return zero", () {
        const m = isZero;

        group("if a and b are null", () {
          ComparatorServiceTester.testCompareIntStrings({null: null}, m);
        });

        group("if a and b are not ints", () {
          const map = <String?, String?>{
            "asdnull": "nuller",
            "ryh": "nUll",
            "*&*@": "KKJ(",
            "": "",
            "nVll": "axr",
          };

          ComparatorServiceTester.testCompareIntStrings(map, m);
        });

        group("if a and b are equal", () {
          const map = <String?, String?>{
            "3": "3",
            "-25": "-25",
            "0": "0",
          };

          ComparatorServiceTester.testCompareIntStrings(map, m);
        });
      });

      group("should return positive", () {
        const m = isPositive;

        group("if a is lesser than b", () {
          const map = <String?, String?>{
            "": "1",
            "32": "33",
            "-1": "0",
            "0": "5",
          };

          ComparatorServiceTester.testCompareIntStrings(map, m);
        });

        group("if a is null and b is not null", () {
          const map = <String?, String?>{
            null: "2",
            "null": "5",
          };

          ComparatorServiceTester.testCompareIntStrings(map, m);
        });
      });
    });
  });

  group("Sorting collections with nullable values", () {
    group("Nullable doubles should be sorted in descending order", () {
      const sortedA = <String?>[
        "1084.7",
        "1054.5",
        "991.6",
        "920.0",
        "853.0",
        "499.9",
        "470.0",
        "386.0",
        "377.6",
        "341.4",
        "240.8",
        "159.6",
        "",
        null,
        null,
      ];
      List<String?> unsortedA = <String?>[
        "991.6",
        "470.0",
        null,
        "159.6",
        "",
        "1054.5",
        "341.4",
        "1084.7",
        "240.8",
        "920.0",
        null,
        "853.0",
        "499.9",
        "386.0",
        "377.6",
      ];
      const sortedB = <String?>[
        "68.5",
        "22.2",
        "14.3",
        "-9.3",
        "-23.2",
        "-54.2",
        "-78.3",
        "-80.7",
        null,
        null,
      ];
      List<String?> unsortedB = <String?>[
        "-9.3",
        null,
        "-78.3",
        "-23.2",
        "-80.7",
        "68.5",
        "14.3",
        "-54.2",
        "22.2",
        null,
      ];
      const sortedC = <String?>[
        "110.9",
        "109.7",
        "104.2",
        "82.8",
        "57.1",
        "31.1",
        "13.5",
        "-32.2",
        "-48.8",
        "-55.8",
        "",
        "",
        null,
        null,
      ];
      List<String?> unsortedC = <String?>[
        "",
        "82.8",
        "110.9",
        "-48.8",
        "-32.2",
        null,
        null,
        "104.2",
        "13.5",
        "-55.8",
        "57.1",
        "31.1",
        "109.7",
        "",
      ];
      const outputs = <List<String?>>[sortedA, sortedB, sortedC];
      List<List<String?>> inputs = [unsortedA, unsortedB, unsortedC];

      for (int i = 0; i < inputs.length; i++) {
        test("#${i + 1}", () {
          final input = inputs[i];

          input.sort(ComparatorService.compareDoubleStrings);

          expect(input, outputs[i]);
        });
      }
    });
    group("Nullable integers should be sorted in descending order", () {
      const sortedA = <String?>[
        "1084",
        "1054",
        "991",
        "920",
        "853",
        "499",
        "470",
        "386",
        "377",
        "341",
        "240",
        "159",
        "",
        null,
        null,
      ];
      List<String?> unsortedA = <String?>[
        "991",
        "470",
        null,
        "159",
        "",
        "1054",
        "341",
        "1084",
        "240",
        "920",
        null,
        "853",
        "499",
        "386",
        "377",
      ];
      const sortedB = <String?>[
        "68",
        "22",
        "14",
        "-9",
        "-23",
        "-54",
        "-78",
        "-80",
        null,
        null,
      ];
      List<String?> unsortedB = <String?>[
        "-9",
        null,
        "-78",
        "-23",
        "-80",
        "68",
        "14",
        "-54",
        "22",
        null,
      ];
      const sortedC = <String?>[
        "110",
        "109",
        "104",
        "82",
        "57",
        "31",
        "13",
        "-32",
        "-48",
        "-55",
        "",
        "",
        null,
        null,
      ];
      List<String?> unsortedC = <String?>[
        "",
        "82",
        "110",
        "-48",
        "-32",
        null,
        null,
        "104",
        "13",
        "-55",
        "57",
        "31",
        "109",
        "",
      ];
      const outputs = <List<String?>>[sortedA, sortedB, sortedC];
      List<List<String?>> inputs = [unsortedA, unsortedB, unsortedC];

      for (int i = 0; i < inputs.length; i++) {
        test("#${i + 1}", () {
          final input = inputs[i];

          input.sort(ComparatorService.compareIntStrings);

          expect(input, outputs[i]);
        });
      }
    });
  });
}
