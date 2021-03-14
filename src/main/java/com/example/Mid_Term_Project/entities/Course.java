package com.example.Mid_Term_Project.entities;

public class Course {
    private String courseName;
    private String description;
    private int price;
    private int durationInWeeks;
    private String degreeCertificateOffered;

    public String getCourseName() {
        return courseName;
    }
    public void setCourseName(String courseName) {
        this.courseName = courseName;
    }
    public String getDescription() {
        return description;
    }
    public void setDescription(String description) {
        this.description = description;
    }
    public int getPrice() {
        return price;
    }
    public void setPrice(int price) {
        this.price = price;
    }
    public int getDurationInWeeks() {
        return durationInWeeks;
    }
    public void setDurationInWeeks(int durationInWeeks) {
        this.durationInWeeks = durationInWeeks;
    }
    public String getDegreeCertificateOffered() {
        return degreeCertificateOffered;
    }
    public void setDegreeCertificateOffered(String degreeCertificateOffered) {
        this.degreeCertificateOffered = degreeCertificateOffered;
    }

    @Override
    public String toString() {
        return "Courses [courseName=" + courseName + ", description=" + description + ", price="
                + price + ", durationInWeeks=" + durationInWeeks + ", degreeCertificateOffered="
                + degreeCertificateOffered + "]";
    }
}
