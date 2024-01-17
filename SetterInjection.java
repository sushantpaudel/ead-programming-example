// SetterInjection.java
public class SetterInjection {
    private Service service;

    public void setService(Service service) {
        this.service = service;
    }

    public void executeService() {
        service.execute();
    }
}
