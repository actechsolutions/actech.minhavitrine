import 'package:rxdart/rxdart.dart';

import 'custom_auth_manager.dart';

class MinhaVitrineAuthUser {
  MinhaVitrineAuthUser({required this.loggedIn, this.uid});

  bool loggedIn;
  String? uid;
}

/// Generates a stream of the authenticated user.
BehaviorSubject<MinhaVitrineAuthUser> minhaVitrineAuthUserSubject =
    BehaviorSubject.seeded(MinhaVitrineAuthUser(loggedIn: false));
Stream<MinhaVitrineAuthUser> minhaVitrineAuthUserStream() =>
    minhaVitrineAuthUserSubject
        .asBroadcastStream()
        .map((user) => currentUser = user);
