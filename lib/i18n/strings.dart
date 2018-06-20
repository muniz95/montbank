import 'dart:async';

import 'package:montbank/i18n/messages_all.dart';
import 'package:flutter/widgets.dart';
import 'package:intl/intl.dart';

class Strings {
  static Future<Strings> load(Locale locale) {
    final String name =
        locale.countryCode.isEmpty ? locale.languageCode : locale.toString();
    final String localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      return new Strings();
    });
  }

  static Strings of(BuildContext context) {
    return Localizations.of<Strings>(context, Strings);
  }

  static final Strings instance = new Strings();

  String get appName => Intl.message("MontBank Admin", name: "appName");
  String get appDescription =>
      Intl.message("Manager", name: "appDescription");
  String get allSessions => Intl.message("All Sessions", name: "allSessions");
  String get home => Intl.message("Home", name: "home");
  String get mySchedule => Intl.message("My Schedule", name: "mySchedule");
  String get map => Intl.message("Map", name: "map");
  String get access => Intl.message("Access", name: "access");
  String get settings => Intl.message("Settings", name: "settings");
  String get sponsors => Intl.message("Sponsors", name: "sponsors");
  String get questionnaire =>
      Intl.message("Quesionnaire", name: "questionnaire");
  String get about => Intl.message("About", name: "about");
  String day(int day) => Intl.message("DAY$day", name: "day", args: [day]);
  String get mapPlaceName =>
      Intl.message("Praça Santos Andrade",
          name: "mapPlaceName");
  String get mapMeetingRoomsName =>
      Intl.message("Montbank Place", name: "mapMeetingRoomsName");
  String get mapAddress => Intl.message(
      "Rua Alfredo Bufren / Praça Santos Andrade 2-102, Centro, Curitiba, Paraná",
      name: "mapAddress");
  String get mapNearbyStations => Intl.message(
      "Consulte as linhas disponíveis",
      name: "mapNearbyStations");

  String get settingsShowPerformanceOverlay =>
      Intl.message("Show Performance Overlay",
          name: "settingsShowPerformanceOverlay");
}
