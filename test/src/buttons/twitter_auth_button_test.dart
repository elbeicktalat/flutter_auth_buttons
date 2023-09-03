// Copyright (c) 2021 Talat El Beick. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:auth_buttons/auth_buttons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  late Widget sut;

  setUp(() {
    GoogleFonts.config.allowRuntimeFetching = false;
  });

  group('Check the default value of', () {
    final TwitterAuthButton twitterAuthButton =
        TwitterAuthButton(onPressed: () {});
    test('text', () {
      expect(twitterAuthButton.text, 'Sign in with Twitter');
    });
    test('isLoading', () {
      expect(twitterAuthButton.isLoading, false);
    });
  });

  void defaultButtonTypeTestGroup() {
    setUp(() {
      sut = const MaterialApp(
        home: TwitterAuthButton(),
      );
    });

    testWidgets(
      'default button should have a text',
      (WidgetTester tester) async {
        await tester.pumpWidget(sut);
        final Finder text = find.byType(Text);
        expect(text, findsOneWidget);
      },
    );

    testWidgets(
      'default button should have an icon',
      (WidgetTester tester) async {
        await tester.pumpWidget(sut);
        final Finder icon = find.byType(AuthIcon);
        expect(icon, findsOneWidget);
      },
    );

    testWidgets(
      'default button should have a text and icon synchronously',
      (WidgetTester tester) async {
        await tester.pumpWidget(sut);
        final Finder text = find.byType(Text);
        final Finder icon = find.byType(AuthIcon);
        expect(text, findsOneWidget);
        expect(icon, findsOneWidget);
      },
    );

    testWidgets(
      'default button should have no icon but, a text and circular progress indicator if isLoading',
      (WidgetTester tester) async {
        sut = MaterialApp(
          home: TwitterAuthButton(
            onPressed: () {},
            isLoading: true,
          ),
        );
        await tester.pumpWidget(sut);

        final Finder indicator = find.byType(CircularProgressIndicator);
        final Finder icon = find.byType(AuthIcon);
        final Finder text = find.byType(Text);

        expect(indicator, findsOneWidget);
        expect(icon, findsNothing);
        expect(text, findsOneWidget);
      },
    );

    testWidgets(
      'default button should have no text, but an icon and linear progress indicator if isLoading',
      (WidgetTester tester) async {
        sut = MaterialApp(
          home: TwitterAuthButton(
            onPressed: () {},
            isLoading: true,
            style: const AuthButtonStyle(
              progressIndicatorType: AuthIndicatorType.linear,
            ),
          ),
        );
        await tester.pumpWidget(sut);

        final Finder indicator = find.byType(LinearProgressIndicator);
        final Finder icon = find.byType(AuthIcon);
        final Finder text = find.byType(Text);

        expect(indicator, findsOneWidget);
        expect(icon, findsOneWidget);
        expect(text, findsNothing);
      },
    );
  }

  void secondaryButtonTypeTestGroup() {
    setUp(() {
      sut = const MaterialApp(
        home: TwitterAuthButton(
          style: AuthButtonStyle(
            buttonType: AuthButtonType.secondary,
          ),
        ),
      );
    });

    testWidgets(
      'secondary button should have a text',
      (WidgetTester tester) async {
        await tester.pumpWidget(sut);
        final Finder text = find.byType(Text);
        expect(text, findsOneWidget);
      },
    );

    testWidgets(
      'secondary button should have an icon',
      (WidgetTester tester) async {
        await tester.pumpWidget(sut);
        final Finder icon = find.byType(AuthIcon);
        expect(icon, findsOneWidget);
      },
    );

    testWidgets(
      'secondary button should have a text and icon synchronously',
      (WidgetTester tester) async {
        await tester.pumpWidget(sut);
        final Finder text = find.byType(Text);
        final Finder icon = find.byType(AuthIcon);
        expect(text, findsOneWidget);
        expect(icon, findsOneWidget);
      },
    );

    testWidgets(
      'secondary button should have no icon but, a text and circular progress indicator if isLoading',
      (WidgetTester tester) async {
        sut = MaterialApp(
          home: TwitterAuthButton(
            onPressed: () {},
            isLoading: true,
          ),
        );
        await tester.pumpWidget(sut);

        final Finder indicator = find.byType(CircularProgressIndicator);
        final Finder icon = find.byType(AuthIcon);
        final Finder text = find.byType(Text);

        expect(indicator, findsOneWidget);
        expect(icon, findsNothing);
        expect(text, findsOneWidget);
      },
    );

    testWidgets(
      'secondary button should have no text, but an icon and linear progress indicator if isLoading',
      (WidgetTester tester) async {
        sut = MaterialApp(
          home: TwitterAuthButton(
            onPressed: () {},
            isLoading: true,
            style: const AuthButtonStyle(
              progressIndicatorType: AuthIndicatorType.linear,
            ),
          ),
        );
        await tester.pumpWidget(sut);

        final Finder indicator = find.byType(LinearProgressIndicator);
        final Finder icon = find.byType(AuthIcon);
        final Finder text = find.byType(Text);

        expect(indicator, findsOneWidget);
        expect(icon, findsOneWidget);
        expect(text, findsNothing);
      },
    );
  }

  void iconButtonTypeTestGroup() {
    setUp(() {
      sut = MaterialApp(
        home: TwitterAuthButton(
          onPressed: () {},
          style: const AuthButtonStyle(
            buttonType: AuthButtonType.icon,
          ),
        ),
      );
    });

    testWidgets('icon button should have only an icon',
        (WidgetTester tester) async {
      await tester.pumpWidget(sut);
      final Finder icon = find.byType(AuthIcon);
      final Finder text = find.byType(Text);
      expect(icon, findsOneWidget);
      expect(text, findsNothing);
    });

    testWidgets(
      'icon button should have a circular progress indicator if isLoading',
      (WidgetTester tester) async {
        sut = MaterialApp(
          home: TwitterAuthButton(
            onPressed: () {},
            isLoading: true,
            style: const AuthButtonStyle(
              buttonType: AuthButtonType.icon,
            ),
          ),
        );
        await tester.pumpWidget(sut);

        final Finder indicator = find.byType(CircularProgressIndicator);
        final Finder icon = find.byType(AuthIcon);

        expect(indicator, findsOneWidget);
        expect(icon, findsNothing);
      },
    );
  }

  group('UI tests for the default button type', defaultButtonTypeTestGroup);

  group('UI tests for the secondary button type', secondaryButtonTypeTestGroup);

  group('UI tests for the Icon button type', iconButtonTypeTestGroup);
}
