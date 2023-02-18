package com.example.kinomaniak.controller;

import com.example.kinomaniak.model.Hall;
import com.example.kinomaniak.service.ManagerService;
import javafx.beans.binding.Bindings;
import javafx.beans.value.ChangeListener;
import javafx.beans.value.ObservableValue;
import javafx.collections.FXCollections;
import javafx.collections.ObservableList;
import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.scene.control.*;
import javafx.scene.control.cell.PropertyValueFactory;
import net.rgielen.fxweaver.core.FxmlView;
import org.springframework.stereotype.Component;

import java.util.stream.Collectors;

@Component
@FxmlView("ManagerHallView.fxml")
public class ManagerHallViewController {
    @FXML
    private TextField minCapacityTextField;
    @FXML
    private TextField maxCapacityTextField;
    @FXML
    private TableView<Hall> hallsTable;
    @FXML
    private TableColumn<Hall,String> hallNoColumn;
    @FXML
    private TableColumn<Hall,String> capacityColumn;
    @FXML
    private Button showScreeningsButton;
    @FXML
    private Button resetFiltersButton;
    @FXML
    private TextField hallNoTextField;

    private ObservableList<Hall> halls;

    private final ManagerService managerService;
    private final HomeController homeController;

    ManagerHallViewController(ManagerService managerService, HomeController homeController){

        this.managerService = managerService;
        this.homeController = homeController;
    }


    @FXML
    private void initialize(){

        loadData();
        setUpHallsTable();
        setUpTextField(hallNoTextField);
        setUpTextField(minCapacityTextField);
        setUpTextField(maxCapacityTextField);

        showScreeningsButton.disableProperty().bind(Bindings.isEmpty(hallsTable.getSelectionModel().getSelectedItems()));
    }

    private void setUpTextField(TextField textField) {
        textField.textProperty().addListener(observable-> hallsTable.setItems(filterResults()));
        textField.textProperty().addListener(new ChangeListener<String>() {
            @Override
            public void changed(ObservableValue<? extends String> observable, String oldValue,
                                String newValue) {
                if (!newValue.matches("\\d*")) {
                    textField.setText(newValue.replaceAll("[^\\d]", ""));
                }
            }
        });
    }

    private ObservableList<Hall> filterResults() {
        return FXCollections.observableList(halls
                .stream()
                .filter(hall -> hall.getHallNo().toString().contains(hallNoTextField.getText()))
                .filter(hall ->{
                    if(minCapacityTextField.getText().equals("")) return true;
                    return Integer.parseInt(minCapacityTextField.getText()) <=  hall.getCapacity();
                })
                .filter(hall ->{
                    if(maxCapacityTextField.getText().equals("")) return true;
                    return Integer.parseInt(maxCapacityTextField.getText()) >=  hall.getCapacity();
                })
                .collect(Collectors.toList()));
    }


    private void setUpHallsTable() {
        hallNoColumn.setCellValueFactory(new PropertyValueFactory<>("hallNo"));
        capacityColumn.setCellValueFactory(new PropertyValueFactory<>("capacity"));
        hallsTable.setItems(halls);
    }

    private void loadData() {
        this.halls = managerService.getHalls();
    }

    @FXML
    private void resetFilters(ActionEvent actionEvent) {
        hallNoTextField.setText("");
        minCapacityTextField.setText("");
        maxCapacityTextField.setText("");
    }

    @FXML
    private void handleShowScreenings(ActionEvent actionEvent) {
        homeController.changeModeIntoCashier();
        homeController.showScreeningsCashier(hallsTable.getSelectionModel().getSelectedItem().getHallNo());
    }
}
