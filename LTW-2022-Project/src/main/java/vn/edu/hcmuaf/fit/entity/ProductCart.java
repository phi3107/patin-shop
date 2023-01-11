package vn.edu.hcmuaf.fit.entity;

public class ProductCart {
    private long quantity;
    private Product product;

    public ProductCart() {
    }

    public ProductCart(long quantity, Product product) {
        this.quantity = quantity;
        this.product = product;
    }

    public long getQuantity() {
        return quantity;
    }

    public void setQuantity(long quantity) {
        this.quantity = quantity;
    }

    public Product getProduct() {
        return product;
    }

    public void setProduct(Product product) {
        this.product = product;
    }
    public long plus(long quantity){
        return this.quantity +quantity;
    }
}
