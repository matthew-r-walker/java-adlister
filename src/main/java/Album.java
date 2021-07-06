import java.io.Serializable;
import java.util.Date;

public class Album implements Serializable {
    private int id;
    private String artist;
    private String name;
    private int realeseDate;
    private double sales;
    private String genre;

    public Album() {
    }

    public Album(int id, String artist, String name, int realeseDate, double sales, String genre) {
        this.id = id;
        this.artist = artist;
        this.name = name;
        this.realeseDate = realeseDate;
        this.sales = sales;
        this.genre = genre;
    }

    public Album(String artist, String name, int realeseDate, double sales, String genre) {
        this.artist = artist;
        this.name = name;
        this.realeseDate = realeseDate;
        this.sales = sales;
        this.genre = genre;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getArtist() {
        return artist;
    }

    public void setArtist(String artist) {
        this.artist = artist;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getRealeseDate() {
        return realeseDate;
    }

    public void setRealeseDate(int realeseDate) {
        this.realeseDate = realeseDate;
    }

    public double getSales() {
        return sales;
    }

    public void setSales(double sales) {
        this.sales = sales;
    }

    public String getGenre() {
        return genre;
    }

    public void setGenre(String genre) {
        this.genre = genre;
    }
}
