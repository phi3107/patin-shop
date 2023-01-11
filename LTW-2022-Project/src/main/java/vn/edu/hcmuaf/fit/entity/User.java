package vn.edu.hcmuaf.fit.entity;

public class User {
    private String email, pass, fullName, phone, address;
    private int id, role, isactive;

    public User() {
    }

    public User(int id, String email, String pass, String fullName, String phone, String address, int role, int isactive) {
        this.id = id;
        this.email = email;
        this.pass = pass;
        this.fullName = fullName;
        this.phone = phone;
        this.address = address;
        this.role = role;
        this.isactive = isactive;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPass() {
        return pass;
    }

    public void setPass(String pass) {
        this.pass = pass;
    }

    public String getFullName() {
        return fullName;
    }

    public void setFullName(String fullName) {
        this.fullName = fullName;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public int getRole() {
        return role;
    }

    public void setRole(int role) {
        this.role = role;
    }

    public int getIsactive() {
        return isactive;
    }

    public void setIsactive(int isactive) {
        this.isactive = isactive;
    }
}
