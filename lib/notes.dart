// Dart alapcsomagok
export 'dart:convert';

// Flutter csomagok
export 'package:flutter/material.dart' hide RefreshCallback;
export 'package:flutter/cupertino.dart';
export 'package:flutter/services.dart';
export 'package:flutter/widgets.dart';
export 'package:flutter_localizations/flutter_localizations.dart';

// Külső csomagok
export 'package:provider/provider.dart';
export 'package:isar/isar.dart';
export 'package:path_provider/path_provider.dart';
export 'package:google_fonts/google_fonts.dart';
export 'package:popover/popover.dart';
export 'package:provider/single_child_widget.dart';

// Saját komponensek és oldalak
export 'package:notes/app.dart';
export 'package:notes/components/app_drawer.dart';
export 'package:notes/components/drawer_menu_tile.dart';
export 'package:notes/components/note_settings.dart';
export 'package:notes/components/note_tile.dart';
export 'package:notes/components/text_field_decoration.dart';
export 'package:notes/components/note_dialog.dart';
export 'package:notes/components/switch_tile.dart';
export 'package:notes/pages/settings/settings_page.dart';
export 'package:notes/pages/notes/notes_page.dart';

// Modellek, adatbázis és lokális szolgáltatások
export 'package:notes/models/note_database.dart';
export 'package:notes/models/note_model.dart';
export 'package:notes/theme/theme_provider.dart';
export 'package:notes/localization/app_localizations.dart';
export 'package:notes/localization/language_provider.dart';
export 'package:notes/providers/providers.dart';
export 'package:notes/utils/dimens.dart';


