package com.example.kinomaniak.controller;

import com.example.kinomaniak.model.Employee;
import com.example.kinomaniak.model.Role;
import com.example.kinomaniak.repository.RoleRepository;
import com.example.kinomaniak.service.AdminService;
import com.example.kinomaniak.service.AuthService;
import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.scene.control.Button;
import javafx.scene.control.ComboBox;
import javafx.scene.control.Label;
import javafx.scene.control.TextField;
import javafx.scene.layout.GridPane;
import javafx.scene.layout.HBox;
import javafx.stage.Stage;
import javafx.util.converter.LocalDateStringConverter;
import net.rgielen.fxweaver.core.FxmlView;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import java.time.format.DateTimeFormatter;
import java.util.Optional;
import java.util.Stack;

@Component
@FxmlView("accountEditDialog.fxml")
public class AccountEditDialogPresenter {
    @FXML
    private Label errorPrompt;
    @FXML
    private Button saveButton;
    @FXML
    private Button cancelButton;
    @FXML
    private TextField nameTextField;
    @FXML
    private TextField surnameTextField;
    @FXML
    private TextField mailTextField;
    @FXML
    private ComboBox<String> roleComboBox;
    private Stage dialogStage;
    private Employee employee;

    private final AdminService adminService;
    private final AuthService authService;

    private  HomeController homeController;


    @Autowired
    AccountEditDialogPresenter(AdminService adminService, AuthService authService){
        this.adminService = adminService;
        this.authService = authService;
    }

    @FXML
    private void initialize(){
        nameTextField.textProperty().addListener(text->errorPrompt.setText(""));
        surnameTextField.textProperty().addListener(text->errorPrompt.setText(""));
        mailTextField.textProperty().addListener(text->errorPrompt.setText(""));
        roleComboBox.valueProperty().addListener(value->errorPrompt.setText(""));
    }
    public void setDialogStage(Stage dialogStage) {
        this.dialogStage = dialogStage;
    }
    public void setData(Employee employee,HomeController homeController) {
        this.employee = employee;
        this.homeController = homeController;
        updateControls();

    }

    private void updateControls() {
        nameTextField.setText(employee.getName());
        surnameTextField.setText(employee.getSurName());
        mailTextField.setText(employee.getMail());
        roleComboBox.getItems().add("none");
        roleComboBox.getItems().addAll(adminService.getRoles().stream().map(Role::getRoleName).sorted().toList());
        if(employee.getRole() == null)
            roleComboBox.getSelectionModel().select("none");
        else{
            roleComboBox.getSelectionModel().select(employee.getRole().getRoleName());
        }
    }
    @FXML
    private void handleSaveAction(ActionEvent actionEvent) {
        String name = nameTextField.getText();
        String surname = surnameTextField.getText();
        String mail = mailTextField.getText();
        Optional<Role> role =  adminService.roleRepository.getRoleByRoleName(roleComboBox.getSelectionModel().getSelectedItem());

        if(authService.performCredentialsValidation(name,surname) && (mail.equals(employee.getMail()) || authService.performEmailValidation(mail)) &&
                (roleComboBox.getSelectionModel().getSelectedItem().equals("none") || role.isPresent())){
            employee.setName(nameTextField.getText());
            employee.setSurName(surnameTextField.getText());
            employee.setMail(mailTextField.getText());
            if(roleComboBox.getSelectionModel().getSelectedItem().equals("none"))
                employee.setRole(null);
            else {
                role.ifPresent(value -> employee.setRole(value));
            }

            adminService.employeeRepository.save(employee);
            homeController.showAccountsAdmin();
            dialogStage.close();
        }
        else{
            errorPrompt.setText("Wrong data");
        }

    }
    @FXML
    private void handleCancelAction(ActionEvent actionEvent) {
        dialogStage.close();
    }
}
