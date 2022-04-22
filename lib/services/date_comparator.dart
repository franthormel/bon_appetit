class DateComparatorService {
  /// Returns a value based on the comparisons between [DateTime]s [a] and [b]
  /// The following values are expected:
  /// * -1 if [a] is before [b] (or [b] is after [a])
  /// * 0 if [a] and [b] are of the same dates
  /// * 1 if [a] is after [b] (or [b] is before [a])
  static int compare(DateTime a, DateTime b) => b.compareTo(a);
}
