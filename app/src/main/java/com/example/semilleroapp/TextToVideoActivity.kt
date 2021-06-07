package com.example.semilleroapp

import android.app.Activity
import androidx.appcompat.app.AppCompatActivity
import android.os.Bundle
import android.text.Editable
import android.text.TextWatcher
import android.view.inputmethod.InputMethodManager
import com.example.semilleroapp.adapter.MessageAdapter
import kotlinx.android.synthetic.main.activity_text_to_video.*

class TextToVideoActivity : AppCompatActivity() {

    private val messages = ArrayList<String>()
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_text_to_video)
        initComponents()
    }

    private fun updateAdapter() {
        messages_recycler.adapter = MessageAdapter(this, messages)
    }

    private fun initComponents() {
        updateAdapter()
        input_message_parent.setEndIconOnClickListener {
            if(input_message.text!!.isEmpty()) {
                input_message_parent.error = getString(R.string.message_empty_error)
            } else {
                messages.add(input_message.text.toString())
                updateAdapter()
                input_message.setText("")
                hideKeyboard()
            }
        }
        input_message.addTextChangedListener(object: TextWatcher {
            override fun beforeTextChanged(s: CharSequence?, start: Int, count: Int, after: Int) {}

            override fun onTextChanged(sequence: CharSequence?, start: Int, before: Int, count: Int) {
                input_message_parent.error = if(sequence!!.toString().isEmpty()) {
                    getString(R.string.message_empty_error)
                } else {
                    null
                }
            }

            override fun afterTextChanged(s: Editable?) {}

        })
    }

    private fun hideKeyboard() {
        input_message.clearFocus()
        val imm = getSystemService(Activity.INPUT_METHOD_SERVICE) as InputMethodManager
        imm.toggleSoftInput(InputMethodManager.HIDE_IMPLICIT_ONLY, 0)
    }
}