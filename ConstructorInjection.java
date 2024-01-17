// ConstructorInjection.java
public class ConstructorInjection {
    private final Service service;

    public ConstructorInjection(Service service) {
        this.service = service;
    }

    public void executeService() {
        service.execute();
    }
}
