import 'dart:convert';

import 'package:montbank/models/link.dart';
import 'package:test/test.dart';

void main() {
  group("fromJson", () {
    test('works well.', () {
      // given
      var json = jsonDecode("""
{
  "linkType": "Twitter",
  "url": "https://twitter.com/konifar"
}
      """);

      // when
      Link link = Link.fromJson(json);

      // then
      expect(link.type, LinkType.twitter);
      expect(link.url, 'https://twitter.com/konifar');
    });
  });
}
