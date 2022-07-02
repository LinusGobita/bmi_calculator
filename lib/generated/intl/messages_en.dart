// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a en locale. All the
// messages from the main program should be duplicated here with the same
// function name.

// Ignore issues from commonly used lints in this file.
// ignore_for_file:unnecessary_brace_in_string_interps, unnecessary_new
// ignore_for_file:prefer_single_quotes,comment_references, directives_ordering
// ignore_for_file:annotate_overrides,prefer_generic_function_type_aliases
// ignore_for_file:unused_import, file_names, avoid_escaping_inner_quotes
// ignore_for_file:unnecessary_string_interpolations, unnecessary_string_escapes

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

typedef String MessageIfAbsent(String messageStr, List<dynamic> args);

class MessageLookup extends MessageLookupByLibrary {
  String get localeName => 'en';

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "age": MessageLookupByLibrary.simpleMessage("Age"),
        "app_title": MessageLookupByLibrary.simpleMessage("BMI Calculator"),
        "bmi_score": MessageLookupByLibrary.simpleMessage("BMI Score"),
        "calculate": MessageLookupByLibrary.simpleMessage("Calculate"),
        "entry_request": MessageLookupByLibrary.simpleMessage(
            "please enter your height and weight"),
        "height_input": MessageLookupByLibrary.simpleMessage("height (cm)"),
        "normal":
            MessageLookupByLibrary.simpleMessage("you are at a normal weight"),
        "obese_moderately":
            MessageLookupByLibrary.simpleMessage("you are moderately obese"),
        "obese_severely":
            MessageLookupByLibrary.simpleMessage("you are severely obese"),
        "obese_very_severely":
            MessageLookupByLibrary.simpleMessage("you are very severely obese"),
        "overweight":
            MessageLookupByLibrary.simpleMessage("you are overweight"),
        "recalculate": MessageLookupByLibrary.simpleMessage("Recalculate"),
        "share": MessageLookupByLibrary.simpleMessage("Share"),
        "underweight_moderately": MessageLookupByLibrary.simpleMessage(
            "you are moderately underweight"),
        "underweight_severely":
            MessageLookupByLibrary.simpleMessage("you very underweight"),
        "underweight_slightly": MessageLookupByLibrary.simpleMessage(
            "you are slightly underweight"),
        "underweight_very_severely": MessageLookupByLibrary.simpleMessage(
            "you are very severely underweight"),
        "weight_input": MessageLookupByLibrary.simpleMessage("weight (kg)"),
        "your_score": MessageLookupByLibrary.simpleMessage("Your Score")
      };
}
