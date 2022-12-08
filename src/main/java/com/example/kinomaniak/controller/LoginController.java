package com.example.kinomaniak.controller;

import com.example.kinomaniak.model.Hall;
import com.example.kinomaniak.repository.HallRepository;
import com.example.kinomaniak.service.auth.AuthService;
import javafx.fxml.FXML;
import javafx.scene.control.Button;
import javafx.scene.control.Label;
import javafx.scene.control.TextField;
import javafx.scene.input.MouseEvent;
import net.rgielen.fxweaver.core.FxmlView;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
@FxmlView("loginView.fxml")
public class LoginController {

    @FXML
    public TextField mailField;

    @FXML
    public TextField passwordField;

    @FXML
    public Button confirmButton;

    private final AuthService authService;


    @Autowired
    public LoginController(AuthService authService){
        this.authService = authService;
    }


    public void signIn(MouseEvent mouseEvent){

        System.out.println(mailField.getText().toString());
        if (authService.authenticateUser(mailField.getText().toString(), passwordField.getText().toString())){
            System.out.println("GIT");
        } else {
            System.out.println("NOT GIT");
        }
    }


}
