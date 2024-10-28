import 'package:flutter/widgets.dart';
import 'package:todo_list/localization/app_localization.dart';
import 'package:todo_list/localization/translations.i69n.dart';

extension ContextExtensions on BuildContext {
  Translations get translations => AppLocalizations.of(this);
}
