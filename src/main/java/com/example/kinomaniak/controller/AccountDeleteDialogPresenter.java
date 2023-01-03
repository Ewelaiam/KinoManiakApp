package com.example.kinomaniak.controller;

import com.example.kinomaniak.model.Employee;
import com.example.kinomaniak.service.AdminService;
import com.example.kinomaniak.service.AuthService;
import javafx.collections.ObservableList;
import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.scene.control.Button;
import javafx.scene.control.Label;
import javafx.stage.Stage;
import net.rgielen.fxweaver.core.FxmlView;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Controller;

@Component
@FxmlView("accountDeleteDialog.fxml")
public class AccountDeleteDialogPresenter {
    @FXML
    private Label errorPromptLabel;
    @FXML
    private Button yesButton;
    @FXML
    private Button noButton;
    @FXML
    private Label deleteLabel;
    private Employee employee;
    private Stage dialogStage;
    private final AuthService authService;
    private final AdminService adminService;
    private ObservableList<Employee> accounts;

    @Autowired
    AccountDeleteDialogPresenter(AuthService authService, AdminService adminService){
        this.authService = authService;
        this.adminService = adminService;
    }


    public void setDialogStage(Stage dialogStage) {
        this.dialogStage = dialogStage;
    }
    public void setData(Employee employee,ObservableList<Employee> accounts) {
        this.accounts = accounts;
        this.employee = employee;
        updateControls();

    }

    private void updateControls(){
        deleteLabel.setText("Delete account: " + employee.getName() + " " + employee.getSurName() +"?");
    }
    @FXML
    private void handleYesAction(ActionEvent actionEvent) {
        if(authService.getCurrentlyLoggedEmployee().getMail().equals(employee.getMail())){
            errorPromptLabel.setText("Can't delete logged account");
        }
        else if(employee.getRole()!=null && employee.getRole().getRoleName().equals("admin")){
            errorPromptLabel.setText("Can't delete admin account");
        }
        else if(adminService.employeeSoldTickets(employee)){
            errorPromptLabel.setText("Can't delete employee who sold tickets");
        }
        else{
            adminService.deleteEmployee(employee);
            accounts.remove(employee);
            dialogStage.close();

        }
    }
    @FXML
    private void handleNoAction(ActionEvent actionEvent) {
        dialogStage.close();

    }
}
