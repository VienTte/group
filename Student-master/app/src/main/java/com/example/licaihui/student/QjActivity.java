package com.example.licaihui.student;

import android.content.Intent;
import android.os.Bundle;
import android.support.v7.app.AppCompatActivity;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.Toast;

/**
 * Created by licaihui on 16-11-13.
 */

public class QjActivity extends AppCompatActivity {
    Button bt_submit;
    EditText ed_qingjia,ed_time;
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.qjactivity);
        bt_submit=(Button)findViewById(R.id.bt_submit);
        ed_qingjia= (EditText)findViewById(R.id.ed_qingjia);
        ed_time = (EditText)findViewById(R.id.ed_time);
        bt_submit.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                if(ed_qingjia.getText().toString().trim().equals("") || ed_time.getText().toString().trim().equals("")){
                    Toast.makeText(QjActivity.this, "请假事由或请假时间不能为空", Toast.LENGTH_SHORT).show();
                }
                else {
                    Toast.makeText(QjActivity.this, "Submit Successful", Toast.LENGTH_LONG).show();

                    QjActivity.this.finish();
                }
            }
        });
    }
}