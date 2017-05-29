package controller;

public class User {
	private int id;
    private String username;
    private String password;
    public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public int getId() {
        return id;
    }
    public void setId(int id) {
        this.id = id;
    }
    public String getName() {
        return username;
    }
    public void setName(String username) {
        this.username = username;
    }
}
