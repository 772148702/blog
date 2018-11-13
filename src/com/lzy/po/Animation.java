package com.lzy.po;

public class Animation {
    int id;
    String name;
    String image_id;
    String description;

    public Animation() {
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getImage_id() {
        return image_id;
    }

    public void setImage_id(String image_id) {
        this.image_id = image_id;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    @Override
    public String toString() {
        return "Animation{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", image_id='" + image_id + '\'' +
                ", description='" + description + '\'' +
                '}';
    }
}
