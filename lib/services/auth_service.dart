
import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/material.dart';

class AuthService {
  final FirebaseAuth _firebaseAuth;

  AuthService(this._firebaseAuth);

  /// Stream of authentication state changes.
  /// Emits the current [User] or null if not authenticated.
  Stream<User?> get authStateChanges => _firebaseAuth.authStateChanges();

  /// Gets the current authenticated [User] or null.
  User? get currentUser => _firebaseAuth.currentUser;

  /// Registers a new user with email and password.
  ///
  /// Throws a [FirebaseAuthException] if registration fails.
  Future<UserCredential?> signUpWithEmailPassword({
    required String email,
    required String password,
  }) async {
    try {
      final UserCredential userCredential = await _firebaseAuth.createUserWithEmailAndPassword(
        email: email.trim(),
        password: password.trim(),
      );
      return userCredential;
    } on FirebaseAuthException {
      // Let the caller handle specific FirebaseAuthExceptions
      rethrow;
    } catch (e) {
      // For other unexpected errors
      // print('Unexpected error during sign up: \$e');
      throw Exception('An unexpected error occurred. Please try again.');
    }
  }

  /// Signs in an existing user with email and password.
  ///
  /// Throws a [FirebaseAuthException] if sign-in fails.
  Future<UserCredential?> signInWithEmailPassword({
    required String email,
    required String password,
  }) async {
    try {
      final UserCredential userCredential = await _firebaseAuth.signInWithEmailAndPassword(
        email: email.trim(),
        password: password.trim(),
      );
      return userCredential;
    } on FirebaseAuthException {
      rethrow;
    } catch (e) {
      throw Exception('An unexpected error occurred. Please try again.');
    }
  }

  /// Signs out the current user.
  Future<void> signOut() async {
    try {
      await _firebaseAuth.signOut();
    } catch (e) {
      // print('Error signing out: \$e');
      // Optionally, handle sign-out errors, though they are rare.
      throw Exception('Error signing out. Please try again.');
    }
  }

  // You can add other methods like:
  // - resetPassword(String email)
  // - updateProfile(String displayName, String photoURL)
  // - signInWithGoogle()
  // - etc.
}

// Helper to provide a global instance or use with a service locator/provider
// For simplicity here, you might instantiate it where needed or use Provider.
// Example: final authService = AuthService(FirebaseAuth.instance);
