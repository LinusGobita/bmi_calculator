// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a de locale. All the
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
  String get localeName => 'de';

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "age": MessageLookupByLibrary.simpleMessage("alter"),
        "app_title": MessageLookupByLibrary.simpleMessage("BMI rächner"),
        "bmi_score": MessageLookupByLibrary.simpleMessage("BMI bewertig"),
        "calculate": MessageLookupByLibrary.simpleMessage("usrächne"),
        "entry_request": MessageLookupByLibrary.simpleMessage(
            "bitte gib dini grössi und gwicht ii"),
        "height_input": MessageLookupByLibrary.simpleMessage("grössi in cm"),
        "normal":
            MessageLookupByLibrary.simpleMessage("dis gwicht isch öppe normal"),
        "obese_moderately":
            MessageLookupByLibrary.simpleMessage("du bisch fettliibig"),
        "obese_severely":
            MessageLookupByLibrary.simpleMessage("du bisch sehr fettliibig"),
        "obese_very_severely":
            MessageLookupByLibrary.simpleMessage("du bisch extrem fettliibig"),
        "overweight":
            MessageLookupByLibrary.simpleMessage("du bisch übergwichtig"),
        "recalculate": MessageLookupByLibrary.simpleMessage("neu usrächne"),
        "share": MessageLookupByLibrary.simpleMessage("teile"),
        "underweight_moderately":
            MessageLookupByLibrary.simpleMessage("du bisch e untergwichtig"),
        "underweight_severely":
            MessageLookupByLibrary.simpleMessage("du bisch sehr untergwichtig"),
        "underweight_slightly": MessageLookupByLibrary.simpleMessage(
            "du bisch e chli untergwichtig"),
        "underweight_very_severely": MessageLookupByLibrary.simpleMessage(
            "du bisch scho sehr sehr mager"),
        "weight_input": MessageLookupByLibrary.simpleMessage("gwicht in kg"),
        "your_score": MessageLookupByLibrary.simpleMessage("dini bewertig")
      };
}
