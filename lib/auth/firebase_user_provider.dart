import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class FluttermobileFirebaseUser {
  FluttermobileFirebaseUser(this.user);
  User? user;
  bool get loggedIn => user != null;
}

FluttermobileFirebaseUser? currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<FluttermobileFirebaseUser> fluttermobileFirebaseUserStream() =>
    FirebaseAuth.instance
        .authStateChanges()
        .debounce((user) => user == null && !loggedIn
            ? TimerStream(true, const Duration(seconds: 1))
            : Stream.value(user))
        .map<FluttermobileFirebaseUser>(
            (user) => currentUser = FluttermobileFirebaseUser(user));
