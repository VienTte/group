package com.example.licaihui.student;


import android.content.Intent;
import android.os.Bundle;
import android.support.v7.app.AppCompatActivity;
import android.view.View;
import android.widget.Button;



/**
 * Created by licaihui on 16-11-13.
 */

public class ControlActivity extends AppCompatActivity {
    Button bt_qj,bt_kb,bt_fk;
    @Override
    protected void onCreate(Bundle savedInstanceState) {
    super.onCreate(savedInstanceState);
    setContentView(R.layout.controlactivity);
        Button bt_qj=(Button) findViewById(R.id.bt_qj);
        Button bt_kb=(Button) findViewById(R.id.bt_kb);
        Button bt_fk=(Button) findViewById(R.id.bt_fk);

        bt_qj.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Intent intent = new Intent(ControlActivity.this, QjActivity.class);
                startActivity(intent);
            }});
        bt_fk.setOnClickListener(new View.OnClickListener() {

            @Override
            public void onClick(View v) {

                Intent intent=new Intent(ControlActivity.this,FkActivity.class);
                startActivity(intent);}});

        bt_kb.setOnClickListener(new View.OnClickListener() {

            public void onClick(View v) {
                Intent intent=new Intent(ControlActivity.this,KbActivity.class);
                startActivity(intent);}});

    }
}