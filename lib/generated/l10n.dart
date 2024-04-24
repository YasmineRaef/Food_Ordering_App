// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Enter your name`
  String get hintNameText {
    return Intl.message(
      'Enter your name',
      name: 'hintNameText',
      desc: '',
      args: [],
    );
  }

  /// `Please enter your first name`
  String get errorMessage {
    return Intl.message(
      'Please enter your first name',
      name: 'errorMessage',
      desc: '',
      args: [],
    );
  }

  /// `Enter`
  String get welcomeButton {
    return Intl.message(
      'Enter',
      name: 'welcomeButton',
      desc: '',
      args: [],
    );
  }

  /// `To change to Arabic press here 👇`
  String get languageButton {
    return Intl.message(
      'To change to Arabic press here 👇',
      name: 'languageButton',
      desc: '',
      args: [],
    );
  }

  /// `Welcome `
  String get badgeShop {
    return Intl.message(
      'Welcome ',
      name: 'badgeShop',
      desc: '',
      args: [],
    );
  }

  /// `Find our nearest branch`
  String get locationsQuestion {
    return Intl.message(
      'Find our nearest branch',
      name: 'locationsQuestion',
      desc: '',
      args: [],
    );
  }

  /// `Search`
  String get hintLocationText {
    return Intl.message(
      'Search',
      name: 'hintLocationText',
      desc: '',
      args: [],
    );
  }

  /// `Sign-Up to be with us`
  String get signingUpText {
    return Intl.message(
      'Sign-Up to be with us',
      name: 'signingUpText',
      desc: '',
      args: [],
    );
  }

  /// `Sign-Up`
  String get signUpButton {
    return Intl.message(
      'Sign-Up',
      name: 'signUpButton',
      desc: '',
      args: [],
    );
  }

  /// `Name`
  String get signUpName {
    return Intl.message(
      'Name',
      name: 'signUpName',
      desc: '',
      args: [],
    );
  }

  /// `Telephone Number`
  String get signUpNum {
    return Intl.message(
      'Telephone Number',
      name: 'signUpNum',
      desc: '',
      args: [],
    );
  }

  /// `POPULAR`
  String get tabName1 {
    return Intl.message(
      'POPULAR',
      name: 'tabName1',
      desc: '',
      args: [],
    );
  }

  /// `SPECIAL`
  String get tabName2 {
    return Intl.message(
      'SPECIAL',
      name: 'tabName2',
      desc: '',
      args: [],
    );
  }

  /// `OTHER`
  String get tabName3 {
    return Intl.message(
      'OTHER',
      name: 'tabName3',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'ar'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}