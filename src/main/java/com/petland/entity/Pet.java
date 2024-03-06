package com.petland.entity;

/**
 * @program: PetLand
 * @description:
 * @author: DY
 * @create: 2024-01-30 15:36
 **/
public class Pet {
    private int id;
    private String name;
    private String age;
    private String gender;
    private String type;
    private String size;
    private String breed;
    private String image;
    private String notice;

    public Pet(int id, String name, String age, String gender, String type, String size, String breed, String image, String notice) {
        this.id = id;
        this.name = name;
        this.age = age;
        this.gender = gender;
        this.type = type;
        this.size = size;
        this.breed = breed;
        this.image = image;
        this.notice = notice;
    }

    @Override
    public String toString() {
        return "Pet{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", age='" + age + '\'' +
                ", gender='" + gender + '\'' +
                ", type='" + type + '\'' +
                ", size='" + size + '\'' +
                ", breed='" + breed + '\'' +
                ", image='" + image + '\'' +
                ", notice='" + notice + '\'' +
                '}';
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

    public String getAge() {
        return age;
    }

    public void setAge(String age) {
        this.age = age;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getSize() {
        return size;
    }

    public void setSize(String size) {
        this.size = size;
    }

    public String getBreed() {
        return breed;
    }

    public void setBreed(String breed) {
        this.breed = breed;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public String getNotice() {
        return notice;
    }

    public void setNotice(String notice) {
        this.notice = notice;
    }
}
