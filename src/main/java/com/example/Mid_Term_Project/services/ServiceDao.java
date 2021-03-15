package com.example.Mid_Term_Project.services;

import com.example.Mid_Term_Project.database.DBConnection;
import com.example.Mid_Term_Project.entities.Course;
import com.example.Mid_Term_Project.entities.Resource;
import com.example.Mid_Term_Project.entities.User;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class ServiceDao implements Service {
    @Override
    public User login(String username, String password, String role) {
        User user = null;
        Connection con = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        try {
            Class.forName(DBConnection.DRIVERCLASS);
            con = DriverManager.getConnection(DBConnection.DBURL, DBConnection.USER, DBConnection.PASSWORD);
            pstmt = con.prepareStatement("select * from users where user_email = ? and user_password = ? and user_role = ?");
            pstmt.setString(1, username);
            pstmt.setString(2, password);
            pstmt.setString(3, role);
            rs = pstmt.executeQuery();
            if (rs.next()) {
                User u = new User();
                u.setUserID(rs.getInt(1));
                u.setFirstName(rs.getString(2));
                u.setLastName(rs.getString(3));
                u.setRole(rs.getString(4));
                u.setEmail(rs.getString(5));
                u.setPassword(rs.getString(6));
                u.setDateOfBirth(rs.getDate(7));
                u.setGender(rs.getString(8));
                user = u;
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            connectionClose(con, pstmt);
            if (rs != null) {
                try {
                    rs.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
        }
        return user;
    }

    private void connectionClose(Connection con, PreparedStatement pstmt) {
        if (con != null) {
            try {
                con.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        if (pstmt != null) {
            try {
                pstmt.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }

    @Override
    public boolean addUser(User user) {
        Connection con = null;
        PreparedStatement pstmt = null;
        boolean state = false;
        int count = 0;
        try {
            Class.forName(DBConnection.DRIVERCLASS);
            con = DriverManager.getConnection(DBConnection.DBURL, DBConnection.USER, DBConnection.PASSWORD);
            pstmt = con.prepareStatement("insert into users values (?,?,?,?,?,?,?,?)");
            pstmt.setInt(1, user.getUserID());
            pstmt.setString(2, user.getFirstName());
            pstmt.setString(3, user.getLastName());
            pstmt.setString(4, user.getRole());
            pstmt.setString(5, user.getEmail());
            pstmt.setString(6, user.getPassword());
            pstmt.setDate(7, (Date) user.getDateOfBirth());
            pstmt.setString(8, user.getGender());
            count = pstmt.executeUpdate();
            if (count >= 0) {
                state = true;
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            connectionClose(con, pstmt);
        }
        return state;
    }

    @Override
    public List<User> listAllStudents() {
        Connection con = null;
        PreparedStatement cal = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        boolean state = false;
        List<User> list = new ArrayList<>();
        try {
            Class.forName(DBConnection.DRIVERCLASS);
            con = DriverManager.getConnection(DBConnection.DBURL, DBConnection.USER, DBConnection.PASSWORD);
            cal = con.prepareStatement("SELECT * FROM users WHERE user_role = 'student';");
            state = cal.execute();
            if (state) {
                rs = cal.getResultSet();
                while (rs.next()) {
                    User u = new User();
                    u.setUserID(rs.getInt(1));
                    u.setFirstName(rs.getString(2));
                    u.setLastName(rs.getString(3));
                    u.setRole(rs.getString(4));
                    u.setEmail(rs.getString(5));
                    u.setPassword(rs.getString(6));
                    u.setDateOfBirth(rs.getDate(7));
                    u.setGender(rs.getString(8));
                    list.add(u);
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            connectionClose(con, pstmt);
        }
        return list;
    }

    @Override
    public List<User> listAllTeachers() {
        Connection con = null;
        PreparedStatement cal = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        boolean state = false;
        List<User> list = new ArrayList<>();
        try {
            Class.forName(DBConnection.DRIVERCLASS);
            con = DriverManager.getConnection(DBConnection.DBURL, DBConnection.USER, DBConnection.PASSWORD);
            cal = con.prepareStatement("SELECT * FROM users WHERE user_role = 'teacher';");
            state = cal.execute();
            if (state) {
                rs = cal.getResultSet();
                while (rs.next()) {
                    User u = new User();
                    u.setUserID(rs.getInt(1));
                    u.setFirstName(rs.getString(2));
                    u.setLastName(rs.getString(3));
                    u.setRole(rs.getString(4));
                    u.setEmail(rs.getString(5));
                    u.setPassword(rs.getString(6));
                    u.setDateOfBirth(rs.getDate(7));
                    u.setGender(rs.getString(8));
                    list.add(u);
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            connectionClose(con, pstmt);
        }
        return list;
    }

    @Override
    public boolean addCourse(Course course) {
        Connection con = null;
        PreparedStatement pstmt = null;
        boolean state = false;
        int count = 0;
        try {
            Class.forName(DBConnection.DRIVERCLASS);
            con = DriverManager.getConnection(DBConnection.DBURL, DBConnection.USER, DBConnection.PASSWORD);
            pstmt = con.prepareStatement("insert into courses values (?,?,?,?,?)");
            pstmt.setString(1, course.getCourseName());
            pstmt.setString(2, course.getDescription());
            pstmt.setInt(3, (int) course.getPrice());
            pstmt.setInt(4, course.getDurationInWeeks());
            pstmt.setString(5, course.getDegreeCertificateOffered());
            count = pstmt.executeUpdate();
            if (count >= 0) {
                state = true;
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            connectionClose(con, pstmt);
        }
        return state;
    }

    @Override
    public List<Course> listAllCourses() {
        Connection con = null;
        PreparedStatement cal = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        boolean state = false;
        List<Course> list = new ArrayList<>();
        try {
            Class.forName(DBConnection.DRIVERCLASS);
            con = DriverManager.getConnection(DBConnection.DBURL, DBConnection.USER, DBConnection.PASSWORD);
            cal = con.prepareStatement("SELECT * FROM courses;");
            state = cal.execute();
            if (state) {
                rs = cal.getResultSet();
                while (rs.next()) {
                    Course c = new Course();
                    c.setCourseName(rs.getString(1));
                    c.setDescription(rs.getString(2));
                    c.setPrice(rs.getInt(3));
                    c.setDurationInWeeks(rs.getInt(4));
                    c.setDegreeCertificateOffered(rs.getString(5));
                    list.add(c);
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            connectionClose(con, pstmt);
        }
        return list;
    }

    @Override
    public boolean createResource(Resource resource) {
        boolean state = false;
        Connection con = null;
        PreparedStatement pstmt = null;
        int count = 0;
        try {
            Class.forName(DBConnection.DRIVERCLASS);
            con = DriverManager.getConnection(DBConnection.DBURL, DBConnection.USER, DBConnection.PASSWORD);
            pstmt = con.prepareStatement("insert into resources values (?,?,?,?,?,?,?)");
            pstmt.setInt(1, resource.getResourceID());
            pstmt.setString(2, resource.getResourceType());
            pstmt.setString(3, resource.getResourceOwner());
            pstmt.setString(4, resource.getTitle());
            pstmt.setString(5, resource.getContent());
            pstmt.setString(6, resource.getCourseName());
            pstmt.setDate(7, (Date) resource.getDate());
            count = pstmt.executeUpdate();
            if (count >= 0) {
                state = true;
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            connectionClose(con, pstmt);
        }
        return state;
    }

    @Override
    public List<Resource> listAllResources() {
        Connection con = null;
        PreparedStatement cal = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        boolean state = false;
        List<Resource> list = new ArrayList<>();
        try {
            Class.forName(DBConnection.DRIVERCLASS);
            con = DriverManager.getConnection(DBConnection.DBURL, DBConnection.USER, DBConnection.PASSWORD);
            cal = con.prepareStatement("SELECT * FROM resources;");
            state = cal.execute();
            if (state) {
                rs = cal.getResultSet();
                while (rs.next()) {
                    Resource r = new Resource();
                    r.setResourceID(rs.getInt(1));
                    r.setResourceType(rs.getString(2));
                    r.setResourceOwner(rs.getString(3));
                    r.setTitle(rs.getString(4));
                    r.setContent(rs.getString(5));
                    r.setCourseName(rs.getString(6));
                    r.setDate(rs.getDate(7));
                    list.add(r);
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            connectionClose(con, pstmt);
        }
        return list;
    }

}
