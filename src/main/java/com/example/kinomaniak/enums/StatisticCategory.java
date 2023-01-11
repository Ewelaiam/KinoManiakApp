package com.example.kinomaniak.enums;

public enum StatisticCategory {
    BEST_CASHIER("Best cashier"),
    BEST_MOVIE_TICKETS("Most watched movies"),
    BEST_MOVIE_EARNINGS("Most profitable movies"),
    BEST_HALL("Most popular halls"),
    EARNINGS_BY_DAY("Earnings from tickets");

    private final String label;

    public String getLabel()
    {
        return this.label;
    }

    private StatisticCategory(String label)
    {
        this.label = label;
    }


}
