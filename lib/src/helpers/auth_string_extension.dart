extension AuthStringExtension on String {
  bool get isNotBlank => isNotEmpty && !contains(' ');
}
