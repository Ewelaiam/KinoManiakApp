package com.example.kinomaniak.controller;

import com.example.kinomaniak.model.Hall;
import com.example.kinomaniak.repository.HallRepository;
import javafx.fxml.FXML;
import javafx.scene.control.Label;
import javafx.scene.input.MouseEvent;
import net.rgielen.fxweaver.core.FxmlView;
import org.springframework.stereotype.Component;

@Component
@FxmlView("loginView.fxml")
public class LoginController {

    @FXML
    public Label labelAdd;

//    private final HallRepository rep;


    public LoginController(){
    }


    public void addHall(MouseEvent mouseEvent) {
//        Hall hall = new Hall();
//        this.rep.save(hall);
    }

    @FXML
    public void initialize() {

    }


}
