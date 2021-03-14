package com.example.Mid_Term_Project.services;

import com.example.Mid_Term_Project.entities.Resource;

import java.util.List;

public class ResourceService {
    ServiceDao dao = new ServiceDao();
    public boolean addResource(Resource resource) {
        return dao.createResource(resource);
    }
    public List<Resource> getResources() {
        return dao.listAllResources();
    }
}
