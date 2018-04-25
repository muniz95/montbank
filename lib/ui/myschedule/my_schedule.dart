
import 'package:montbank/models/session.dart';
import 'package:montbank/ui/sessions/session_item.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class MySchedulePage extends StatefulWidget {
  @override
  _MySchedulePageState createState() => new _MySchedulePageState();
}

class _MySchedulePageState extends State<MySchedulePage> {
  List<Session> _sessions = [];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    if (_sessions.isEmpty) {
      return new Center(
        child: const CircularProgressIndicator(),
      );
    }

    return new ListView(
      padding: const EdgeInsets.symmetric(vertical: 4.0, horizontal: 4.0),
      children: _sessions.map((Session session) {
        return new Padding(
          padding: const EdgeInsets.symmetric(vertical: 4.0),
          child: new SessionsItem(
            session: session,
          ),
        );
      }).toList(),
    );
  }

  void setSessions(List<Session> sessions) {
    setState(() => _sessions = sessions);
  }
}

class SessionPageRoute<Session> extends MaterialPageRoute {
  SessionPageRoute({
    @required this.session,
    WidgetBuilder builder,
    RouteSettings settings: const RouteSettings(),
  })
      : super(builder: builder, settings: settings);

  Session session;

  @override
  Session get currentResult => session;
}
