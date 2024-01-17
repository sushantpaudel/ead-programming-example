// InversionOfControl.java
// IoC container manages the instantiation and wiring of components.
class Client {
    private final Service service;

    public Client(Service service) {
        this.service = service;
    }

    public void executeService() {
        service.execute();
    }
}

public class InversionOfControl {
    public static void main(String[] args) {
        // IoC container initializes and injects dependencies.
        Client client = new Client(InversionOfControl.getService());
        client.executeService();
    }

    public static Service getService() {
        // IoC container provides the necessary service implementation.
        return new ServiceA();
    }
}
