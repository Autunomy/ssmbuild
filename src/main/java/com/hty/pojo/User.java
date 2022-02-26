package com.hty.pojo;

public class User {
    private int userID;
    private String userName;
    private String userPassword;
    private int userAge;
    private String userGender;

    public User() {
    }

    public User(int userID, String userName, String userPassword, int userAge, String userGender) {
        this.userID = userID;
        this.userName = userName;
        this.userPassword = userPassword;
        this.userAge = userAge;
        this.userGender = userGender;
    }

    public int getUserID() {
        return userID;
    }

    public void setUserID(int userID) {
        this.userID = userID;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getUserPassword() {
        return userPassword;
    }

    public void setUserPassword(String userPassword) {
        this.userPassword = userPassword;
    }

    public int getUserAge() {
        return userAge;
    }

    public void setUserAge(int userAge) {
        this.userAge = userAge;
    }

    public String getUserGender() {
        return userGender;
    }

    public void setUserGender(String userGender) {
        this.userGender = userGender;
    }

    @Override
    public String toString() {
        return "User{" +
                "userID=" + userID +
                ", userName='" + userName + '\'' +
                ", userPassword='" + userPassword + '\'' +
                ", userAge=" + userAge +
                ", userGender='" + userGender + '\'' +
                '}';
    }
}
