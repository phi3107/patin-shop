package vn.edu.hcmuaf.fit.entity;

public class Product {
    private String id, tensp, desc, detail, brand_id, type_id, bonus, main_img, sub_img;
    private int price, sale_price, remain, status;

    public Product() {
    }

    public Product(String id, String tensp, String desc, String detail, String brand_id, String type_id, String bonus, String main_img, String sub_img, int price, int sale_price, int remain, int status) {
        this.id = id;
        this.tensp = tensp;
        this.desc = desc;
        this.detail = detail;
        this.brand_id = brand_id;
        this.type_id = type_id;
        this.bonus = bonus;
        this.main_img = main_img;
        this.sub_img = sub_img;
        this.price = price;
        this.sale_price = sale_price;
        this.remain = remain;
        this.status = status;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getTensp() {
        return tensp;
    }

    public void setTensp(String tensp) {
        this.tensp = tensp;
    }

    public String getDesc() {
        return desc;
    }

    public void setDesc(String desc) {
        this.desc = desc;
    }

    public String getDetail() {
        return detail;
    }

    public void setDetail(String detail) {
        this.detail = detail;
    }

    public String getBrand_id() {
        return brand_id;
    }

    public void setBrand_id(String brand_id) {
        this.brand_id = brand_id;
    }

    public String getType_id() {
        return type_id;
    }

    public void setType_id(String type_id) {
        this.type_id = type_id;
    }

    public String getBonus() {
        return bonus;
    }

    public void setBonus(String bonus) {
        this.bonus = bonus;
    }

    public String getMain_img() {
        return main_img;
    }

    public void setMain_img(String main_img) {
        this.main_img = main_img;
    }

    public String getSub_img() {
        return sub_img;
    }

    public void setSub_img(String sub_img) {
        this.sub_img = sub_img;
    }

    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }

    public int getSale_price() {
        return sale_price;
    }

    public void setSale_price(int sale_price) {
        this.sale_price = sale_price;
    }

    public int getRemain() {
        return remain;
    }

    public void setRemain(int remain) {
        this.remain = remain;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }
}
