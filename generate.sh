#!/bin/bash

# Factory Pattern
cat << 'EOF' > FactoryPattern.java
// FactoryPattern.java
public interface Product {
    void display();
}

public class ConcreteProductA implements Product {
    public void display() {
        System.out.println("Product A");
    }
}

public class ConcreteProductB implements Product {
    public void display() {
        System.out.println("Product B");
    }
}

public class ProductFactory {
    public static Product createProduct(String type) {
        if ("A".equals(type)) {
            return new ConcreteProductA();
        } else if ("B".equals(type)) {
            return new ConcreteProductB();
        }
        return null;
    }
}
EOF

# Service Locator Pattern
cat << 'EOF' > ServiceLocatorPattern.java
// ServiceLocatorPattern.java
public interface Service {
    void execute();
}

public class ServiceA implements Service {
    public void execute() {
        System.out.println("Executing ServiceA");
    }
}

public class ServiceLocator {
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
EOF

# Singleton Pattern
cat << 'EOF' > SingletonPattern.java
// SingletonPattern.java
public class Singleton {
    private static Singleton instance;

    private Singleton() {}

    public static Singleton getInstance() {
        if (instance == null) {
            instance = new Singleton();
        }
        return instance;
    }
}
EOF

# Constructor Injection
cat << 'EOF' > ConstructorInjection.java
// ConstructorInjection.java
public class Client {
    private final Service service;

    public Client(Service service) {
        this.service = service;
    }

    public void executeService() {
        service.execute();
    }
}
EOF

# Setter Injection
cat << 'EOF' > SetterInjection.java
// SetterInjection.java
public class Client {
    private Service service;

    public void setService(Service service) {
        this.service = service;
    }

    public void executeService() {
        service.execute();
    }
}
EOF

# Interface Injection
cat << 'EOF' > InterfaceInjection.java
// InterfaceInjection.java
public interface ServiceInjector {
    Service getService();
}

public class Client {
    private Service service;

    public Client(ServiceInjector injector) {
        this.service = injector.getService();
    }

    public void executeService() {
        service.execute();
    }
}
EOF

# Convention vs Configuration
cat << 'EOF' > ConventionVsConfiguration.java
// ConventionVsConfiguration.java
// Convention: Naming conventions and defaults are used without explicit configuration.
public class ConventionConfig {
    // Implementation follows naming conventions and defaults.
}

// Configuration: Explicit settings are provided to customize behavior.
public class ExplicitConfig {
    // Explicit configuration settings provided here.
}
EOF

# Lazy Initialization
cat << 'EOF' > LazyInitialization.java
// LazyInitialization.java
public class LazyInitializedSingleton {
    private static LazyInitializedSingleton instance;

    private LazyInitializedSingleton() {}

    public static LazyInitializedSingleton getInstance() {
        if (instance == null) {
            instance = new LazyInitializedSingleton();
        }
        return instance;
    }
}
EOF

# Inversion of Control
cat << 'EOF' > InversionOfControl.java
// InversionOfControl.java
// IoC container manages the instantiation and wiring of components.
public class IoCContainer {
    public static void main(String[] args) {
        // IoC container initializes and injects dependencies.
        Client client = new Client(IoCContainer.getService());
        client.executeService();
    }

    public static Service getService() {
        // IoC container provides the necessary service implementation.
        return new ServiceA();
    }
}
EOF

echo "Java code files generated successfully."

