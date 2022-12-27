package com.example.kinomaniak.controller;

import com.example.kinomaniak.model.Employee;
import javafx.stage.Stage;
import net.rgielen.fxweaver.core.FxmlView;
import org.springframework.stereotype.Component;

import java.util.Stack;

@Component
@FxmlView("accountEditDialog.fxml")
public class AccountEditDialogPresenter {
    private Stage dialogStage;
    private Employee employee;
    public void setDialogStage(Stage dialogStage) {
        this.dialogStage = dialogStage;
    }
    public void setData(Employee employee) {
        this.employee = employee;

    }

    public boolean isApproved(){
        return true;
    }


}
