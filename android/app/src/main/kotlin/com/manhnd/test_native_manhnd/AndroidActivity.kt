package com.manhnd.test_native_manhnd

import android.os.Bundle
import android.widget.Button
import androidx.appcompat.app.AppCompatActivity

class AndroidActivity : AppCompatActivity() {
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.android_main)

        val btnBack = findViewById<Button>(R.id.backFlutter)

        btnBack.setOnClickListener {
            finish()
        }
    }
}