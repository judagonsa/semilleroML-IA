package com.example.semilleroapp

import android.os.Bundle
import androidx.appcompat.app.AppCompatActivity
import kotlinx.android.synthetic.main.activity_video_to_text.*

class VideoToTextActivity : AppCompatActivity() {
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        try {
            this.supportActionBar!!.hide()
        } catch (e: NullPointerException) {
        }
        setContentView(R.layout.activity_video_to_text)
        initComponents()
    }

    private  fun initComponents() {
        close_button.setOnClickListener { finish() }
    }
}