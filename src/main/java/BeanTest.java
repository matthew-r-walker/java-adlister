import java.util.ArrayList;

public class BeanTest {

    public static void main(String[] args) {

        Album homeWork = new Album(40,"Daft Punk", "Homework", 1997, 50, "Techno, House");
        Album testAlbum = new Album(41,"Test Artist", "Test Name", 1999, 9.9, "Test genre");

        Author jimBob = new Author(42,"Jim", "Bob");
        Author bilbo = new Author(43, "Bilbo", "Baggins");

        Quote jbQuote = new Quote(45,"\"Jimbob quote\"", jimBob);
        Quote bbQuote = new Quote(46,"\"I'm going on an adventure\"", bilbo);


        ArrayList<Quote> quoteArr = new ArrayList<>();
        quoteArr.add(jbQuote);
        quoteArr.add(bbQuote);
        quoteArr.add(new Quote(47,"\"It is what it is\"", new Author("Unknown", "-")));

        for (Quote quote : quoteArr) {
            System.out.println(quote.getContent() + " - " + quote.getAuthor().getFirstName() + " " + quote.getAuthor().getLastName());
        }
    }
}
