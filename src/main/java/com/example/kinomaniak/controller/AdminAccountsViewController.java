package com.example.kinomaniak.controller;


import com.example.kinomaniak.model.Employee;
import com.example.kinomaniak.model.MovieCategory;
import com.example.kinomaniak.model.Role;
import com.example.kinomaniak.service.AdminService;
import javafx.beans.binding.Bindings;
import javafx.beans.property.SimpleStringProperty;
import javafx.collections.FXCollections;
import javafx.collections.ObservableList;
import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.fxml.FXMLLoader;
import javafx.scene.Scene;
import javafx.scene.control.*;
import javafx.scene.control.cell.PropertyValueFactory;
import javafx.scene.layout.BorderPane;
import javafx.stage.Modality;
import javafx.stage.Stage;
import net.rgielen.fxweaver.core.FxWeaver;
import net.rgielen.fxweaver.core.FxmlView;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import java.io.IOException;
import java.util.Locale;
import java.util.stream.Collectors;

@Component
@FxmlView("adminAccountsView.fxml")
public class AdminAccountsViewController {
    @FXML
    public TextField searchTextField;
    @FXML
    public Button resetFiltersButton;
    @FXML
    public ComboBox<String> roleComboBox;
    @FXML
    public Button editAccountButton;
    @FXML
    public Button deleteAccountButton;
    AdminService adminService;

    private ObservableList<Employee> accounts;
    private ObservableList<Role> roles;
    @FXML
    public TableView<Employee> accountsTable;
    @FXML
    public TableColumn<Employee,String> nameColumn;
    @FXML
    public TableColumn<Employee,String> surnameColumn;
    @FXML
    public TableColumn<Employee,String> mailColumn;
    @FXML
    public TableColumn<Employee,String> roleColumn;
    private HomeController homeController;


    @Autowired
    AdminAccountsViewController(HomeController homeController, AdminService adminService){
        this.homeController = homeController;
        this.adminService = adminService;
    }
    @FXML
    private void initialize(){
        accountsTable.getSelectionModel().setSelectionMode(SelectionMode.SINGLE);

        loadData();
        setUpAccountsTable();
        setUpSearchTextField();
        setUpRoleComboBox();

        deleteAccountButton.disableProperty().bind(Bindings.isEmpty(accountsTable.getSelectionModel().getSelectedItems()));
        editAccountButton.disableProperty().bind(Bindings.isEmpty(accountsTable.getSelectionModel().getSelectedItems()));
    }



    private void loadData(){
        this.accounts = adminService.getEmployees();
        this.roles = adminService.getRoles();
    }
    private void setUpAccountsTable(){
        accountsTable.getSelectionModel().setSelectionMode(SelectionMode.SINGLE);

        nameColumn.setCellValueFactory(new PropertyValueFactory<>("name"));
        surnameColumn.setCellValueFactory(new PropertyValueFactory<>("surName"));
        mailColumn.setCellValueFactory(new PropertyValueFactory<>("mail"));
        roleColumn.setCellValueFactory(cellData -> {
            if(cellData.getValue().getRole() == null)
                return null;
            return new SimpleStringProperty(cellData.getValue().getRole().getRoleName());
        });
        accountsTable.setItems(accounts);
    }
    private void setUpSearchTextField() {
        searchTextField.textProperty().addListener(observable-> accountsTable.setItems(filterResults()));
    }
    private void setUpRoleComboBox() {
        this.roleComboBox.getItems().add("not specified");
        this.roleComboBox.getItems().add("none");
        this.roleComboBox.getItems().addAll(roles.stream().map(Role::getRoleName).sorted().toList());
        this.roleComboBox.getSelectionModel().selectFirst();
        this.roleComboBox.valueProperty().addListener(genre-> accountsTable.setItems(filterResults()));
    }

    private ObservableList<Employee> filterResults() {
        removeSelection();
        return FXCollections.observableList(accounts
                .stream()
                .filter(account ->{
                    String accountData = account.getName() + " " + account.getSurName() + " " + account.getMail();
                    return accountData.toLowerCase().contains(searchTextField.getText().toLowerCase());})
                .filter(account -> switch (roleComboBox.getValue()) {
                    case "not specified" -> true;
                    case "none" -> account.getRole() == null;
                    default -> account.getRole()!=null && roleComboBox.getValue().equals(account.getRole().getRoleName());
                })
                .collect(Collectors.toList()));
    }
    @FXML
    private void removeSelection() {
        accountsTable.getSelectionModel().clearSelection();
    }

    @FXML
    private void resetFilters(){
        roleComboBox.getSelectionModel().selectFirst();
        searchTextField.setText("");
    }


    @FXML
    private void handleEditAccount(ActionEvent actionEvent) {
        homeController.showAccountEditDialog(accountsTable.getSelectionModel().getSelectedItem());
    }
    @FXML
    private void handleDeleteAccount(ActionEvent actionEvent) {
        homeController.showAccountDeleteDialog(accountsTable.getSelectionModel().getSelectedItem());
    }
}
