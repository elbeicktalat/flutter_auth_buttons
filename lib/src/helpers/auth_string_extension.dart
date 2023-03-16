extension AuthStringExtension on String {
  bool get isNotBlank => isNotEmpty // && !contains(' '); ==> this should change or removed.
}
