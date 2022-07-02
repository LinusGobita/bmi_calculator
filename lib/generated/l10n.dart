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

  /// `Age`
  String get age {
    return Intl.message(
      'Age',
      name: 'age',
      desc: '',
      args: [],
    );
  }

  /// `BMI Calculator`
  String get app_title {
    return Intl.message(
      'BMI Calculator',
      name: 'app_title',
      desc: '',
      args: [],
    );
  }

  /// `Calculate`
  String get calculate {
    return Intl.message(
      'Calculate',
      name: 'calculate',
      desc: '',
      args: [],
    );
  }

  /// `height (cm)`
  String get height_input {
    return Intl.message(
      'height (cm)',
      name: 'height_input',
      desc: '',
      args: [],
    );
  }

  /// `weight (kg)`
  String get weight_input {
    return Intl.message(
      'weight (kg)',
      name: 'weight_input',
      desc: '',
      args: [],
    );
  }

  /// `you are very severely underweight`
  String get underweight_very_severely {
    return Intl.message(
      'you are very severely underweight',
      name: 'underweight_very_severely',
      desc: '',
      args: [],
    );
  }

  /// `you very underweight`
  String get underweight_severely {
    return Intl.message(
      'you very underweight',
      name: 'underweight_severely',
      desc: '',
      args: [],
    );
  }

  /// `you are moderately underweight`
  String get underweight_moderately {
    return Intl.message(
      'you are moderately underweight',
      name: 'underweight_moderately',
      desc: '',
      args: [],
    );
  }

  /// `you are slightly underweight`
  String get underweight_slightly {
    return Intl.message(
      'you are slightly underweight',
      name: 'underweight_slightly',
      desc: '',
      args: [],
    );
  }

  /// `you are at a normal weight`
  String get normal {
    return Intl.message(
      'you are at a normal weight',
      name: 'normal',
      desc: '',
      args: [],
    );
  }

  /// `you are overweight`
  String get overweight {
    return Intl.message(
      'you are overweight',
      name: 'overweight',
      desc: '',
      args: [],
    );
  }

  /// `you are moderately obese`
  String get obese_moderately {
    return Intl.message(
      'you are moderately obese',
      name: 'obese_moderately',
      desc: '',
      args: [],
    );
  }

  /// `you are severely obese`
  String get obese_severely {
    return Intl.message(
      'you are severely obese',
      name: 'obese_severely',
      desc: '',
      args: [],
    );
  }

  /// `you are very severely obese`
  String get obese_very_severely {
    return Intl.message(
      'you are very severely obese',
      name: 'obese_very_severely',
      desc: '',
      args: [],
    );
  }

  /// `please enter your height and weight`
  String get entry_request {
    return Intl.message(
      'please enter your height and weight',
      name: 'entry_request',
      desc: '',
      args: [],
    );
  }

  /// `BMI Score`
  String get bmi_score {
    return Intl.message(
      'BMI Score',
      name: 'bmi_score',
      desc: '',
      args: [],
    );
  }

  /// `Recalculate`
  String get recalculate {
    return Intl.message(
      'Recalculate',
      name: 'recalculate',
      desc: '',
      args: [],
    );
  }

  /// `Share`
  String get share {
    return Intl.message(
      'Share',
      name: 'share',
      desc: '',
      args: [],
    );
  }

  /// `Your Score`
  String get your_score {
    return Intl.message(
      'Your Score',
      name: 'your_score',
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
      Locale.fromSubtags(languageCode: 'de'),
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
