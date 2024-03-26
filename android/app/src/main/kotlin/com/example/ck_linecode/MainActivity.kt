package com.example.ck_linecode

import android.content.ComponentName
import android.content.Context
import android.content.pm.PackageManager
import android.content.SharedPreferences
import androidx.annotation.NonNull
import io.flutter.embedding.android.FlutterActivity
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.plugin.common.MethodChannel


class MainActivity: FlutterActivity() {
    private val CHANNEL = "com.example.ck_linecode/changeIcon"

    override fun configureFlutterEngine(@NonNull flutterEngine: FlutterEngine) {
        super.configureFlutterEngine(flutterEngine)
        MethodChannel(flutterEngine.dartExecutor.binaryMessenger, CHANNEL).setMethodCallHandler { call, result ->
            if (call.method == "changeIcon") {
                val aliasName = call.argument<String>("aliasName")
                changeIcon(aliasName)
                result.success(null)
            } else {
                result.notImplemented()
            }
        }
    }

    private fun changeIcon(aliasName: String?) {
        val pm: PackageManager = packageManager
        val prefs: SharedPreferences = getSharedPreferences("MyPrefs", Context.MODE_PRIVATE)

        // Get the current activity alias from SharedPreferences
        val currentAliasName = prefs.getString("currentAlias", "com.example.ck_linecode.MainActivity")

        // Disable the current activity alias
        val currentActivityAlias = ComponentName(this, currentAliasName!!)
        pm.setComponentEnabledSetting(
            currentActivityAlias,
            PackageManager.COMPONENT_ENABLED_STATE_DISABLED,
            PackageManager.DONT_KILL_APP
        )

        // Enable the new activity alias
        val newActivityAlias = ComponentName(this, "$packageName.$aliasName")
        pm.setComponentEnabledSetting(
            newActivityAlias,
            PackageManager.COMPONENT_ENABLED_STATE_ENABLED,
            PackageManager.DONT_KILL_APP
        )

        // Store the new alias in SharedPreferences
        val editor: SharedPreferences.Editor = prefs.edit()
        editor.putString("currentAlias", "$packageName.$aliasName")
        editor.apply()
    }
}
