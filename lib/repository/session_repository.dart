import 'dart:async';

import 'package:montbank/models/session.dart';

abstract class SessionRepository {
  Future<List<Session>> findAll();

  Future<Session> find(int id);

  Future<List<Session>> findByIds(List<int> ids);

  Future<List<Session>> findByRoom(int roomId);
}
