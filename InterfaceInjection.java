// InterfaceInjection.java
interface ServiceInjector {
    Service getService();
}

public class InterfaceInjection {
    private Service service;

    public InterfaceInjection(ServiceInjector injector) {
        this.service = injector.getService();
    }

    public void executeService() {
        service.execute();
    }
}
