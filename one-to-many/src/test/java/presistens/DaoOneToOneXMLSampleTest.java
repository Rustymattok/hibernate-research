package presistens;
import models.Car;
import models.Engine;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;
import org.junit.Test;

/**
 * One to many xml.
 */
public class DaoOneToOneXMLSampleTest {
    private Car car = new Car();
    /**
     *Test One to many xml -> add new car with init properties(engine...).
     */
    @Test
    public void add() {
        /*
        This block for choose engine from DATABASE.
        */
        SessionFactory factory = new Configuration().configure().buildSessionFactory();
        Session session = factory.openSession();
        session.beginTransaction();
        Engine engine = session.get(Engine.class,5);
        session.getTransaction().commit();
        session.close();
        factory.close();
        /*
        This block to add car with engine to  DATABASE.
        */
        DaoOneToOneXMLSample dao = DaoOneToOneXMLSample.getINSTANCE();
        car.setName("Almera");
        car.setEngine(engine);
        dao.add(car);
    }
    /**
     *Test One to many xml -> remove car by Index.
     */
    @Test
    public void remove() {
        DaoOneToOneXMLSample dao = DaoOneToOneXMLSample.getINSTANCE();
        dao.remove(2);
    }
    /**
     *Test One to many xml -> update car by Index.
     */
    @Test
    public void update() {
        DaoOneToOneXMLSample dao = DaoOneToOneXMLSample.getINSTANCE();
        dao.update(1);
    }
}