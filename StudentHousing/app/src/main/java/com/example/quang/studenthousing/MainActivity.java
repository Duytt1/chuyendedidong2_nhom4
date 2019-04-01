package com.example.quang.studenthousing;

import android.app.Dialog;
import android.os.Bundle;
import android.support.v7.app.AppCompatActivity;
import android.widget.Button;
import android.widget.ImageButton;
import android.widget.LinearLayout;
import android.widget.TextView;
import dmax.dialog.SpotsDialog;


public class MainActivity extends AppCompatActivity {


    // drawerlayout
    private TextView tvName;
    private TextView tvPhone;
    private ImageButton btnMap;
    private LinearLayout lnAllHouses;
    private LinearLayout lnFavorite;
    private Button btnCountFavorite;
    private LinearLayout lnSort;
    private LinearLayout lnLogout;
    private LinearLayout lnRegisterPoster;
    private LinearLayout lnAddPost;
    private LinearLayout lnUploaded;
    private LinearLayout lnBooked;


    private int idUser;
    private String user;
    private String pass;
    private String name;
    private String phone;
    private int permission;

    private SpotsDialog progressDialog;
    private Dialog dialogSort;
    private Dialog dialogSearch;


    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

    }

}
