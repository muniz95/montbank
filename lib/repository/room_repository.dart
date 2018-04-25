import 'dart:async';

import 'package:montbank/models/room.dart';

abstract class RoomRepository {
  Future<Map<int, Room>> findAll();

  Future<Room> find(int id);
}
