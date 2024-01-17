// FactoryPattern.java
interface Product {
    void display();
}

class ConcreteProductA implements Product {
    public void display() {
        System.out.println("Product A");
    }
}

class ConcreteProductB implements Product {
    public void display() {
        System.out.println("Product B");
    }
}

public class FactoryPattern {
    public static Product createProduct(String type) {
        if ("A".equals(type)) {
            return new ConcreteProductA();
        } else if ("B".equals(type)) {
            return new ConcreteProductB();
        }
        return null;
    }
}
