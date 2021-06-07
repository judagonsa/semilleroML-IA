package com.example.semilleroapp.adapter

import android.content.Context
import android.view.LayoutInflater
import android.view.ViewGroup
import androidx.recyclerview.widget.RecyclerView
import com.example.semilleroapp.R
import com.xwray.groupie.ViewHolder
import kotlinx.android.synthetic.main.message_item.view.*

class MessageAdapter(
    private val context: Context,
    private val messages: ArrayList<String>
): RecyclerView.Adapter<ViewHolder>() {

    override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): ViewHolder {
        return ViewHolder(
            LayoutInflater.from(context).inflate(R.layout.message_item, parent, false)
        )
    }

    override fun getItemCount(): Int = messages.size

    override fun onBindViewHolder(holder: ViewHolder, position: Int) {
        holder.itemView.message.text = messages[position]
        holder.itemView.message_content.setOnClickListener {  }
        holder.itemView.play_message_button.setOnClickListener {  }
    }
}