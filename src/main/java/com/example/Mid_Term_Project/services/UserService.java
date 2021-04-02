package com.example.Mid_Term_Project.services;

import com.example.Mid_Term_Project.entities.*;

import java.util.List;

public class UserService {
    ServiceDao dao = new ServiceDao();
    public User userLogin(String username, String password, String role) {
        return dao.login(username, password, role);
    }
    public boolean addUser(User user) {
        return dao.addUser(user);
    }
    public boolean updateUser(User user) {
        return dao.updateUser(user);
    }
    public List<User> getStudents() {
        return dao.listAllStudents();
    }
    public List<User> getTeachers() {
        return dao.listAllTeachers();
    }
    public List<User> getUsers() {
        return dao.listAllUsers();
    }
}
