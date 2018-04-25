import 'dart:async';

import 'package:montbank/repository/favorite_repository.dart';

/*
 * users: Collection
 *  ├ user_id: Document
 *    ├ favorites: Collection
 *      ├ session_id: Document
 *        ├ {favorite:true}: Field
 */
class FavoriteRepositoryImpl extends FavoriteRepository {
  // <sessionId, favorite>
  Map<String, bool> _cache = new Map();

  bool isDirty = true;

  FavoriteRepositoryImpl(this._cache);

  Future<Map<String, bool>> findAll(String userId) async {
    if (!isDirty && _cache.isNotEmpty) {
      return new Future.value(_cache);
    }

    return new Future.value(_cache);
  }

  Future<bool> find(String userId, String sessionId) async {
    if (!isDirty && _cache.containsKey(sessionId)) {
      return new Future.value(_cache[sessionId]);
    }

    return new Future.value(_cache[sessionId]);
  }

  Future<Null> update(String userId, String sessionId, bool favorite) async {
    return null;
  }
}
