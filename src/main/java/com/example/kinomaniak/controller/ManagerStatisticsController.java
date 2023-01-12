package com.example.kinomaniak.controller;

import com.example.kinomaniak.enums.StatisticCategory;
import com.example.kinomaniak.model.Movie;
import com.example.kinomaniak.model.MovieCategory;
import com.example.kinomaniak.service.CashierService;
import com.example.kinomaniak.service.StatisticsQueryService;
import javafx.beans.property.SimpleIntegerProperty;
import javafx.beans.property.SimpleObjectProperty;
import javafx.beans.property.SimpleStringProperty;
import javafx.beans.value.ChangeListener;
import javafx.beans.value.ObservableValue;
import javafx.collections.FXCollections;
import javafx.collections.ObservableList;
import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.geometry.Pos;
import javafx.scene.chart.*;
import javafx.scene.control.*;
import javafx.scene.control.cell.MapValueFactory;
import javafx.scene.control.cell.PropertyValueFactory;
import javafx.scene.image.Image;
import javafx.scene.image.ImageView;
import javafx.scene.layout.BorderPane;
import javafx.scene.layout.GridPane;
import javafx.scene.layout.VBox;
import net.rgielen.fxweaver.core.FxWeaver;
import net.rgielen.fxweaver.core.FxmlView;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import java.math.BigInteger;
import java.text.NumberFormat;
import java.text.ParseException;
import java.time.LocalDate;
import java.util.*;
import java.util.stream.Collectors;

@Component
@FxmlView("managerStatisticsView.fxml")
public class ManagerStatisticsController {
    private final CashierService cashierService;

    List<Object[]> fetchedData;
    List<Map.Entry<String, Number>> chartData;
    List<String> columnNames;

    @FXML
    public DatePicker fromDatePicker;
    @FXML
    public DatePicker toDatePicker;
    @FXML
    public GridPane mainGrid;
    @FXML
    public BorderPane statisticsTableBorderPane;

    private TableView statisticsTable;

    private XYChart<String, Number> statisticsChart;

    private ToggleGroup displayTypeRadioButtonsGroup;

    @FXML
    public RadioButton tableTypeButton;
    @FXML
    public RadioButton chartTypeButton;

    @FXML
    private TableColumn<Movie,String> titleColumn;
    @FXML
    private TableColumn<Movie,String> directorColumn;
    @FXML
    private TableColumn<Movie,Integer> durationColumn;
    @FXML
    private TableColumn<Movie, LocalDate> premierDateColumn;
    @FXML
    private TableColumn<Movie,Integer> ageRestrictionColumn;
//    @FXML
//    private TextField searchTextField;
    @FXML
    private ComboBox<String> categoryComboBox;
//    @FXML
//    private Button recommendedMoviesButton;
//    @FXML
//    private ComboBox<String> ageRestrictionComboBox;
    @FXML
    private Button showScreeningsButton;
    @FXML
    private BorderPane bottomPane;
    @FXML
    private Button hideBottomPaneButton;

    @FXML
    private ImageView moviePosterImageView;
    @FXML
    private Label descriptionLabel;
    @FXML
    private Button resetFiltersButton;
    @FXML
    private Label titleLabel;
    @FXML
    private VBox filtersVBox;
    @FXML
    private VBox tableActionsVBox;
    @FXML
    private Button toggleFiltersButton;

    private FxWeaver fxWeaver;

    private ObservableList<Movie> movies;
    private List<MovieCategory> movieCategories;
    private final HomeController homeController;
    private final StatisticsQueryService statisticsQueryService;

    @Autowired
    public ManagerStatisticsController(FxWeaver fxWeaver,
                                       CashierService cashierService,
                                       HomeController homeController,
                                       StatisticsQueryService statisticsQueryService) {
        this.fxWeaver = fxWeaver;
        this.cashierService = cashierService;
        this.homeController = homeController;
        this.statisticsQueryService = statisticsQueryService;
    }

    @FXML
    private void initialize() throws ParseException {
        //load data from database once
        setModeButtonGroup();
        setUpCategoryComboBox();
        setUpDatePickers();
        loadData();
    }

    private void setModeButtonGroup(){
        displayTypeRadioButtonsGroup = new ToggleGroup();
        tableTypeButton.setToggleGroup(displayTypeRadioButtonsGroup);
        chartTypeButton.setToggleGroup(displayTypeRadioButtonsGroup);

        tableTypeButton.setSelected(true);
    }

    public void displayStatisticsData() {
        if (tableTypeButton.isSelected()) setUpStatisticsTable(fetchedData, columnNames);
        if (chartTypeButton.isSelected()) setUpStatisticsChart(chartData, columnNames);
    }

    private void setUpStatisticsTable(List<Object[]> data, List<String> columnNames) {
        statisticsTable = new TableView();
        statisticsTable.setPrefWidth(20000);

        statisticsTable.getSelectionModel().setSelectionMode(SelectionMode.SINGLE);

        for (String columnName : columnNames){
            System.out.println(columnName);
            TableColumn<Map, String> column = new TableColumn<>(columnName);
            column.setCellValueFactory(new MapValueFactory<>(columnName));
            column.prefWidthProperty().bind(statisticsTable.widthProperty().divide(columnNames.size()));
            statisticsTable.getColumns().add(column);
        }

        ObservableList<Map<String, Object>> items =
                FXCollections.<Map<String, Object>>observableArrayList();

        for (Object[] record : data){
            Map<String, Object> item = new HashMap<>();
            for (int i = 0; i < record.length; i++){
                System.out.println(columnNames.get(i));
                System.out.println(record[i].toString());
                item.put(columnNames.get(i), record[i].toString());
            }
            items.add(item);
        }

        statisticsTable.setItems(items);
        mainGrid.getChildren().remove(statisticsTable);
        mainGrid.getChildren().remove(statisticsChart);
        mainGrid.add(statisticsTable, 0, 2);
    }

    private void setUpStatisticsChart(List<Map.Entry<String, Number>> chartData, List<String> columnNames) {
        CategoryAxis xAxis = new CategoryAxis();
        NumberAxis yAxis = new NumberAxis();
        xAxis.setLabel(columnNames.get(0));
        yAxis.setLabel(columnNames.get(columnNames.size()-1));


        if (categoryComboBox.getValue().equals(StatisticCategory.EARNINGS_BY_DAY.getLabel())){
            statisticsChart = new LineChart<String,Number>(xAxis,yAxis);
        } else {
            statisticsChart = new BarChart<String, Number>(xAxis, yAxis);
        }

        statisticsChart.setTitle(categoryComboBox.getValue());

        XYChart.Series series = new XYChart.Series();

        for (Map.Entry<String, Number> entry : chartData){
            series.getData().add(new XYChart.Data(entry.getKey(), entry.getValue()));
        }

        statisticsChart.getData().add(series);
        mainGrid.getChildren().remove(statisticsTable);
        mainGrid.getChildren().remove(statisticsChart);
        mainGrid.add(statisticsChart, 0, 2);
    }

    private void setUpDatePickers() {
        fromDatePicker.setDayCellFactory(picker -> new DateCell() {
            public void updateItem(LocalDate date, boolean empty) {
                super.updateItem(date, empty);
                LocalDate today = LocalDate.now();
                setDisable(empty  || date.compareTo(toDatePicker.getValue()) >= 0);
            }
        });
        toDatePicker.setDayCellFactory(picker -> new DateCell() {
            public void updateItem(LocalDate date, boolean empty) {
                super.updateItem(date, empty);
                LocalDate today = LocalDate.now();
                setDisable(empty  || date.compareTo(fromDatePicker.getValue()) <= 0);
            }
        });
        fromDatePicker.setValue(LocalDate.now().minusDays(7));
        toDatePicker.setValue(LocalDate.now());

        fromDatePicker.valueProperty().addListener(date-> {
            try {
                loadData();
            } catch (ParseException e) {
                e.printStackTrace();
            }
        });
        toDatePicker.valueProperty().addListener(date-> {
            try {
                loadData();
            } catch (ParseException e) {
                e.printStackTrace();
            }
        });
    }

    private void setUpCategoryComboBox() {

        this.categoryComboBox.getItems().addAll(Arrays.stream(StatisticCategory.values()).map(StatisticCategory::getLabel).collect(Collectors.toList()));
        this.categoryComboBox.getSelectionModel().selectFirst();
        categoryComboBox.valueProperty().addListener(category-> {
            try {
                loadData();
            } catch (ParseException e) {
                e.printStackTrace();
            }
        });

    }
//
    private void loadData() throws ParseException {
        columnNames = new ArrayList<>();
        chartData = new ArrayList<Map.Entry<String, Number>>();

        switch (categoryComboBox.getValue()){
            case "Best cashier" -> {
                columnNames.add("E-mail");
                columnNames.add("Name");
                columnNames.add("Surname");
                columnNames.add("Sold tickets");

                fetchedData = statisticsQueryService.getBestCashiers(fromDatePicker.getValue(), toDatePicker.getValue());

                for (Object[] record : fetchedData){
                    Map.Entry<String, Number> chartEntry = new AbstractMap.SimpleEntry<>(record[1].toString() + " " +
                            record[2].toString(), NumberFormat.getInstance().parse(record[3].toString()));
                    chartData.add(chartEntry);
                }
            }
            case "Most watched movies" -> {
                columnNames.add("Title");
                columnNames.add("Director");
                columnNames.add("Duration");
                columnNames.add("Sold tickets");

                fetchedData = statisticsQueryService.getMostWatchedMovies(fromDatePicker.getValue(), toDatePicker.getValue());
                for (Object[] record : fetchedData){
                    Map.Entry<String, Number> chartEntry = new AbstractMap.SimpleEntry<>(record[0].toString(),
                            NumberFormat.getInstance().parse(record[3].toString()));
                    chartData.add(chartEntry);
                }
            }
            case "Most profitable movies" -> {
                columnNames.add("Title");
                columnNames.add("Director");
                columnNames.add("Duration");
                columnNames.add("Earnings from tickets");

                fetchedData = statisticsQueryService.getMostProfitableMovies(fromDatePicker.getValue(), toDatePicker.getValue());
                for (Object[] record : fetchedData){
                    Map.Entry<String, Number> chartEntry = new AbstractMap.SimpleEntry<>(record[0].toString(),
                            NumberFormat.getInstance().parse(record[3].toString()));
                    chartData.add(chartEntry);
                }
            }
            case "Most popular halls" -> {
                columnNames.add("Hall number");
                columnNames.add("Capacity");
                columnNames.add("Number of screenings");

                fetchedData = statisticsQueryService.getMostPopularHalls(fromDatePicker.getValue(), toDatePicker.getValue());
                for (Object[] record : fetchedData){
                    Map.Entry<String, Number> chartEntry = new AbstractMap.SimpleEntry<>(record[0].toString(),
                            NumberFormat.getInstance().parse(record[2].toString()));
                    chartData.add(chartEntry);
                }
            }
            case "Earnings from tickets" -> {
                columnNames.add("Date");
                columnNames.add("Earnings from tickets");

                fetchedData = statisticsQueryService.getEarningsFromTickets(fromDatePicker.getValue(), toDatePicker.getValue());
                for (Object[] record : fetchedData){
                    Map.Entry<String, Number> chartEntry = new AbstractMap.SimpleEntry<>(record[0].toString(),
                            NumberFormat.getInstance().parse(record[1].toString()));
                    chartData.add(chartEntry);
                }
            }
            default -> throw new IllegalStateException("Unexpected value: " + categoryComboBox.getValue());
        }
        displayStatisticsData();
    }

    @FXML
    private void resetSelections(){
        categoryComboBox.getSelectionModel().selectFirst();
        fromDatePicker.setValue(LocalDate.now().minusDays(7));
        toDatePicker.setValue(LocalDate.now());
    }

}
