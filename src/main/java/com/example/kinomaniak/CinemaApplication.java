package com.example.kinomaniak;

import com.example.kinomaniak.controller.HomeController;
import com.example.kinomaniak.controller.LoginController;
import javafx.application.Application;
import javafx.application.Platform;
import javafx.scene.Parent;
import javafx.scene.Scene;
import javafx.scene.layout.AnchorPane;
import javafx.stage.Stage;
import net.rgielen.fxweaver.core.FxWeaver;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.context.ApplicationEvent;
import org.springframework.context.ConfigurableApplicationContext;
import org.springframework.context.annotation.Bean;
import org.springframework.stereotype.Component;

public class CinemaApplication extends Application {
    private ConfigurableApplicationContext applicationContext;

    @Override
    public void start(Stage primaryStage) throws Exception {
        FxWeaver fxWeaver = applicationContext.getBean(FxWeaver.class);
        setControllersStages(fxWeaver, primaryStage);
        Parent root = fxWeaver.loadView(LoginController.class);
        Scene scene = new Scene(root, 1000, 550);
        primaryStage.setMinWidth(1000);
        primaryStage.setMinHeight(550);
        primaryStage.setScene(scene);
        primaryStage.show();
    }

    @Override
    public void init() {
        applicationContext = new SpringApplicationBuilder()
                .sources(KinoManiakApplication.class)
                .run(getParameters().getRaw().toArray(new String[0]));
    }

    @Override
    public void stop() {
        applicationContext.close();
        Platform.exit();
    }

    private void setControllersStages(FxWeaver fxWeaver, Stage primaryStage){
        fxWeaver.loadController(LoginController.class).setStage(primaryStage);
    }



}
