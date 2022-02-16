package web;
public class UserModel {
    private String username;
    private String email;
    private String phone;
    private String password;
    private String job;

    public UserModel(String username, String email, String phone, String job, String password) {
        this.username = username;
        this.email = email;
        this.phone = phone;
        this.password = password;
        this.job = job;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getJob() {
        return job;
    }

    public void setJob(String job) {
        this.job = job;
    }


}