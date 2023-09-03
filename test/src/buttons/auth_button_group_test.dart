import 'package:auth_buttons/auth_buttons.dart';
import 'package:auth_buttons/src/shared/base/contracts/auth_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  late AuthButtonGroup sut;

  final List<AuthButton> listOf2EnabledAuthButtons = <AuthButton>[
    GoogleAuthButton(onPressed: () {}),
    AppleAuthButton(onPressed: () {}),
  ];

  setUp(() {
    GoogleFonts.config.allowRuntimeFetching = false;
    sut = AuthButtonGroup(buttons: listOf2EnabledAuthButtons);
  });

  test(
    'buttons should contains more than one button else throw assertion error',
    () {
      expect(sut.buttons.length, greaterThanOrEqualTo(2));
      expect(
        () => sut = AuthButtonGroup(buttons: const <AuthButton>[]),
        throwsAssertionError,
      );
    },
  );

  testWidgets(
    'should wrap buttons with FittedBox if buttonType is not icon',
    (WidgetTester tester) async {
      final List<Widget>? children = sut.getChildren();
      if (children == null) return;

      await tester.pumpWidget(MaterialApp(home: sut.getChildren()!.first));
      expect(find.byType(FittedBox), findsNWidgets(2));
      expect(children.length, equals(sut.buttons.length));

      // if buttonType equals to icon
      sut = AuthButtonGroup(
        buttons: listOf2EnabledAuthButtons,
        style: const AuthButtonStyle(buttonType: AuthButtonType.icon),
      );
      expect(sut.getChildren(), null);
    },
  );
}
