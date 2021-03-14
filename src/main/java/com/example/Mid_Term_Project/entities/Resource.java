package com.example.Mid_Term_Project.entities;

import java.util.Date;

public class Resource {
    private int resourceID;
    private String resourceType;
    private String resourceOwner;
    private String title;
    private String content;
    private String courseName;
    private Date date;

    public int getResourceID() {
        return resourceID;
    }
    public void setResourceID(int resourceID) {
        this.resourceID = resourceID;
    }
    public String getResourceType() {
        return resourceType;
    }
    public void setResourceType(String resourceType) {
        this.resourceType = resourceType;
    }
    public String getResourceOwner() {
        return resourceOwner;
    }
    public void setResourceOwner(String resourceOwner) {
        this.resourceOwner = resourceOwner;
    }
    public String getTitle() {
        return title;
    }
    public void setTitle(String title) {
        this.title = title;
    }
    public String getContent() {
        return content;
    }
    public void setContent(String content) {
        this.content = content;
    }
    public String getCourseName() {
        return courseName;
    }
    public void setCourseName(String courseName) {
        this.courseName = courseName;
    }
    public Date getDate() {
        return date;
    }
    public void setDate(Date date) {
        this.date = date;
    }

    @Override
    public String toString() {
        return "Resource{" +
                "resourceID=" + resourceID +
                ", resourceType='" + resourceType + '\'' +
                ", resourceOwner='" + resourceOwner + '\'' +
                ", title='" + title + '\'' +
                ", content='" + content + '\'' +
                ", courseName='" + courseName + '\'' +
                ", date='" + date + '\'' +
                '}';
    }
}
