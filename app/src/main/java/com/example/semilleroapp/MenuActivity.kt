package com.example.semilleroapp

import android.content.Intent
import androidx.appcompat.app.AppCompatActivity
import android.os.Bundle
import kotlinx.android.synthetic.main.activity_menu.*

class MenuActivity : AppCompatActivity() {
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_menu)
        initComponents()
    }

    private fun initComponents() {
        video_to_text_button.setOnClickListener {
            startActivity(Intent(this, VideoToTextActivity::class.java))
        }
        text_to_video_button.setOnClickListener {
            startActivity(Intent(this, TextToVideoActivity::class.java))
        }
    }
}