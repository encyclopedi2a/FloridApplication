package com.example.gokarna.floridapplication;

import android.content.Intent;
import android.os.Bundle;
import android.support.v7.app.ActionBarActivity;
import android.util.TypedValue;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ext.SatelliteMenu;
import android.view.ext.SatelliteMenuItem;
import android.widget.Button;
import android.widget.EditText;

import java.util.ArrayList;
import java.util.List;


public class MainActivity extends ActionBarActivity {
    private Button loginButton;
    private EditText username,password;
    private SatelliteMenu satellite;
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        username=(EditText)findViewById(R.id.username);
        password=(EditText)findViewById(R.id.password);
        loginButton=(Button)findViewById(R.id.login);
        loginButton.setOnClickListener(new OnClickListener(){
            @Override
            public void onClick(View v) {
                //new LoginToFlorid(username.getText().toString(),password.getText().toString());
                Intent intent=new Intent(MainActivity.this,PractiseActivity.class);
                startActivity(intent);
            }
        });
        satellite=(SatelliteMenu)findViewById(R.id.menu);
        float distance = TypedValue.applyDimension(TypedValue.COMPLEX_UNIT_DIP, 150, getResources().getDisplayMetrics());
        satellite.setSatelliteDistance((int) distance);
        satellite.setExpandDuration(300);
        satellite.setCloseItemsOnClick(true);
        satellite.setTotalSpacingDegree(120);
        List<SatelliteMenuItem> items=new ArrayList<SatelliteMenuItem>();
        items.add(new SatelliteMenuItem(3,R.drawable.ic_action));
        items.add(new SatelliteMenuItem(2,R.drawable.ic_password));
        items.add(new SatelliteMenuItem(1, R.drawable.ic_action));
        satellite.addItems(items);
    }
}
