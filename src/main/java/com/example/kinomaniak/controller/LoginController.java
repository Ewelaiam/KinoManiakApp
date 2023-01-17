package com.example.kinomaniak.controller;

import com.example.kinomaniak.service.AuthService;
import javafx.event.EventHandler;
import javafx.fxml.FXML;
import javafx.scene.Parent;
import javafx.scene.Scene;
import javafx.scene.control.Button;
import javafx.scene.control.Hyperlink;
import javafx.scene.control.Label;
import javafx.scene.control.TextField;
import javafx.scene.input.MouseEvent;
import javafx.stage.Stage;
import net.rgielen.fxweaver.core.FxWeaver;
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

    @FXML
    public Label errorPrompt;

    private final FxWeaver fxWeaver;

    private final AuthService authService;

    private Stage stage;

    private boolean isLogin = true;

    @Autowired
    public LoginController(
            AuthService authService,
            FxWeaver fxWeaver) {
        this.fxWeaver = fxWeaver;
        this.authService = authService;
    }

    @FXML
    private void initialize(){
        switchLogin();
    }

    public void signIn(){
        if (authService.authenticateUser(mailField.getText().toString(), passwordField.getText().toString())){
            errorPrompt.setText("");
            loadHomeView();
        } else {
            errorPrompt.setText("Wrong email or password");
        }
    }

    public void signUp(){
        if (authService.addUser(mailField.getText().toString(),
                passwordField.getText().toString(),
                nameField.getText().toString(),
                surnameField.getText().toString())){
            errorPrompt.setText("");
            loadHomeView();
        } else {
            errorPrompt.setText("Wrong mail or password");
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
            });
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

        resetTextFields();
        isLogin = !isLogin;
    }

    private void loadHomeView(){
        fxWeaver.loadController(HomeController.class).setStage(this.stage);
        Parent root = fxWeaver.loadView(HomeController.class);
        Scene scene = new Scene(root, 1000, 750);
        stage.setWidth(1000);
        stage.setHeight(750);
        stage.setMinWidth(1000);
        stage.setMinHeight(750);
        stage.setMaxHeight(10000);
        stage.setMaxWidth(10000);
        stage.setScene(scene);
        stage.show();
    }

    public void resetTextFields(){
        mailField.clear();
        passwordField.clear();
        nameField.clear();
        surnameField.clear();
    }

    public void setStage(Stage stage) {
        this.stage = stage;
    }

}
