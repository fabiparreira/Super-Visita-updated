package com.fabianaparreira.super_visita

import android.os.Bundle
import io.flutter.app.FlutterActivity
import io.flutter.plugins.GeneratedPluginRegistrant


abstract class MainActivity: FlutterActivity() {

  private val TAG = "MainActivity"

  override fun onCreate(savedInstanceState: Bundle?) {
    super.onCreate(savedInstanceState)
    GeneratedPluginRegistrant.registerWith(this)
  }

  private fun checkCurrentUser() {
    // [START check_current_user]
    val user = FirebaseAuth.getInstance().currentUser
    if (user != null) {
      // User is signed in
    } else {
      // No user is signed in
    }
    // [END check_current_user]
  }
}
