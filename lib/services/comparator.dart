/// Utility class for comparing nullable [int] and [double].
class ComparatorService {
  static int compareDoubleStrings(String? a, String? b) {
    // Compare nullable strings
    if (a == null && b == null) {
      return 0;
    } else if (a == null) {
      return 1;
    } else if (b == null) {
      return -1;
    } else {
      final aValue = double.tryParse(a);
      final bValue = double.tryParse(b);

      // Compare nullable doubles
      if (aValue == null && bValue == null) {
        return 0;
      } else if (aValue == null) {
        return 1;
      } else if (bValue == null) {
        return -1;
      } else {
        final diff = bValue - aValue;

        if (diff > 0) {
          return 1;
        } else if (diff < 0) {
          return -1;
        } else {
          return 0;
        }
      }
    }
  }

  static int compareIntStrings(String? a, String? b) {
    // Compare nullable strings
    if (a == null && b == null) {
      return 0;
    } else if (a == null) {
      return 1;
    } else if (b == null) {
      return -1;
    } else {
      final aValue = int.tryParse(a);
      final bValue = int.tryParse(b);

      // Compare nullable ints
      if (aValue == null && bValue == null) {
        return 0;
      } else if (aValue == null) {
        return 1;
      } else if (bValue == null) {
        return -1;
      } else {
        return bValue - aValue;
      }
    }
  }
}
