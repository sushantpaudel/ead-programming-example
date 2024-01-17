// ServiceLocatorPattern.java
interface Service {
    void execute();
}

class ServiceA implements Service {
    public void execute() {
        System.out.println("Executing ServiceA");
    }
}

public class ServiceLocatorPattern {
    private static Service service;

    public static Service getService(String serviceName) {
        if (service == null) {
            if ("A".equals(serviceName)) {
                service = new ServiceA();
            }
        }
        return service;
    }
}
