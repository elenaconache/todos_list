// ignore_for_file: unused_element, unused_field, camel_case_types, annotate_overrides, prefer_single_quotes
// GENERATED FILE, do not edit!
import 'package:i69n/i69n.dart' as i69n;

String get _languageCode => 'en';
String get _localeName => 'en';

String _plural(int count,
        {String? zero,
        String? one,
        String? two,
        String? few,
        String? many,
        String? other}) =>
    i69n.plural(count, _languageCode,
        zero: zero, one: one, two: two, few: few, many: many, other: other);
String _ordinal(int count,
        {String? zero,
        String? one,
        String? two,
        String? few,
        String? many,
        String? other}) =>
    i69n.ordinal(count, _languageCode,
        zero: zero, one: one, two: two, few: few, many: many, other: other);
String _cardinal(int count,
        {String? zero,
        String? one,
        String? two,
        String? few,
        String? many,
        String? other}) =>
    i69n.cardinal(count, _languageCode,
        zero: zero, one: one, two: two, few: few, many: many, other: other);

class Translations implements i69n.I69nMessageBundle {
  const Translations();
  TitlesTranslations get titles => TitlesTranslations(this);
  LabelsTranslations get labels => LabelsTranslations(this);
  ButtonsTranslations get buttons => ButtonsTranslations(this);
  Object operator [](String key) {
    var index = key.indexOf('.');
    if (index > 0) {
      return (this[key.substring(0, index)]
          as i69n.I69nMessageBundle)[key.substring(index + 1)];
    }
    switch (key) {
      case 'titles':
        return titles;
      case 'labels':
        return labels;
      case 'buttons':
        return buttons;
      default:
        return key;
    }
  }
}

class TitlesTranslations implements i69n.I69nMessageBundle {
  final Translations _parent;
  const TitlesTranslations(this._parent);
  String todoItem(int todoId) => "Todo #$todoId";
  String editingTodo(int todoId) => "Editing todo #$todoId";
  String get allTodos => "All todos";
  Object operator [](String key) {
    var index = key.indexOf('.');
    if (index > 0) {
      return (this[key.substring(0, index)]
          as i69n.I69nMessageBundle)[key.substring(index + 1)];
    }
    switch (key) {
      case 'todoItem':
        return todoItem;
      case 'editingTodo':
        return editingTodo;
      case 'allTodos':
        return allTodos;
      default:
        return key;
    }
  }
}

class LabelsTranslations implements i69n.I69nMessageBundle {
  final Translations _parent;
  const LabelsTranslations(this._parent);
  String get title => "Title";
  String get everything => "Everything";
  String get today => "Today";
  Object operator [](String key) {
    var index = key.indexOf('.');
    if (index > 0) {
      return (this[key.substring(0, index)]
          as i69n.I69nMessageBundle)[key.substring(index + 1)];
    }
    switch (key) {
      case 'title':
        return title;
      case 'everything':
        return everything;
      case 'today':
        return today;
      default:
        return key;
    }
  }
}

class ButtonsTranslations implements i69n.I69nMessageBundle {
  final Translations _parent;
  const ButtonsTranslations(this._parent);
  String get login => "Login";
  Object operator [](String key) {
    var index = key.indexOf('.');
    if (index > 0) {
      return (this[key.substring(0, index)]
          as i69n.I69nMessageBundle)[key.substring(index + 1)];
    }
    switch (key) {
      case 'login':
        return login;
      default:
        return key;
    }
  }
}
