package ch.informatik.spring_mvc_app.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class BookModel {

    private String title;
    private Integer year;

    public BookModel(String title, int year) {
        this.title = title;
        this.year = year;
    }

    public int getYear() {
        return year;
    }
}
