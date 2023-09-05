extension AuthStringExtension on String {
  /// Whether if the [String] is not empty or doesn't contains only white space.
  bool get isNotBlank => RegExp(r'(.|\s)*\S(.|\s)*').hasMatch(this);
}
