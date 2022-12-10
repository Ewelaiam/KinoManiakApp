package com.example.kinomaniak.controller;

import com.example.kinomaniak.model.Hall;
import com.example.kinomaniak.repository.HallRepository;
import com.example.kinomaniak.service.auth.AuthService;
import javafx.event.ActionEvent;
import javafx.event.EventHandler;
import javafx.fxml.FXML;
import javafx.scene.control.Button;
import javafx.scene.control.Hyperlink;
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

    @FXML
    public TextField nameField;

    @FXML
    public TextField surnameField;

    @FXML
    public Hyperlink switchModeLink;

    @FXML
    public Label promptLabel;

    private final AuthService authService;


    private boolean isLogin = false;



    @Autowired
    public LoginController(AuthService authService){
        this.authService = authService;
    }


    public void signIn(){

        System.out.println(mailField.getText().toString());
        if (authService.authenticateUser(mailField.getText().toString(), passwordField.getText().toString())){
            System.out.println("GIT");
        } else {
            System.out.println("NOT GIT");
        }
    }

    public void signUp(){
        if (authService.addUser(mailField.getText().toString(),
                passwordField.getText().toString(),
                nameField.getText().toString(),
                surnameField.getText().toString())){
            System.out.println("GIT");
        } else {
            System.out.println("NOT GIT");
        }
    }

    public void switchLogin(){
        if (isLogin){
            nameField.setManaged(true);
            surnameField.setManaged(true);
            nameField.setVisible(true);
            surnameField.setVisible(true);

            promptLabel.setText("Sign Up");
            switchModeLink.setText("Already have an account?");
            confirmButton.setOnMouseClicked(new EventHandler<MouseEvent>() {
                @Override
                public void handle(MouseEvent event) {
                    signUp();
                }
            });;
        } else {
            nameField.setManaged(false);
            surnameField.setManaged(false);
            nameField.setVisible(false);
            surnameField.setVisible(false);

            promptLabel.setText("Sign In");
            switchModeLink.setText("Don't have an account?");
            confirmButton.setOnMouseClicked(new EventHandler<MouseEvent>() {
                @Override
                public void handle(MouseEvent event) {
                    signIn();
                }
            });
        }

        isLogin = !isLogin;
    }


}
