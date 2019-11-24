package com.manhnd.test_native_manhnd

import android.content.Intent
import android.os.Bundle
import android.util.Log

import io.flutter.app.FlutterActivity
import io.flutter.plugin.common.MethodChannel
import io.flutter.plugins.GeneratedPluginRegistrant

class MainActivity : FlutterActivity() {
    private val CHANNEL = "com.manhnd.testnative/navToLogin"

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        GeneratedPluginRegistrant.registerWith(this)
        MethodChannel(flutterView, CHANNEL).setMethodCallHandler { call, result ->
            if (call.method == "StartSecondActivity") {
                val intent = Intent(this, AndroidActivity::class.java)
                if (call.hasArgument("num1")) {
                    val num1: Int = (call.arguments as Map<String, Int>)["num1"]!!
                    Log.d("Manhnd", "num1: "+ num1)
                }

                startActivity(intent)
                result.success("ActivityStarted")
            } else {
                result.notImplemented()
            }
        }
    }
}
