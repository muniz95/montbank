import 'dart:async';

import 'package:montbank/models/room.dart';
import 'package:montbank/models/session.dart';
import 'package:montbank/models/speaker.dart';

abstract class MontbankApi {
  Future<Map<int, Session>> getSessions({bool refresh});

  Future<Map<String, Speaker>> getSpeakers({bool refresh});

  Future<Map<int, Room>> getRooms({bool refresh});
}
