package com.example.second.entity;

public class Score {

    private Long uid;
    private String name;
    private String coursename;
    private String coursenature;
    private String coursescore;
//    private Integer age;
//
//    private String sex;

    public Long getUid() {
        return uid;
    }

    public void setUid(Long uid) {
        this.uid = uid;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name == null ? null : name.trim();
    }


    public String getCoursename() {
        return coursename;
    }

    public void setCoursename(String coursename) {
        this.coursename = coursename;
    }

    public String getCoursenature() {
        return coursenature;
    }

    public void setCoursenature(String coursenature) {
        this.coursenature = coursenature;
    }

    public String getCoursescore() {
        return coursescore;
    }

    public void setCoursescore(String coursescore) {
        this.coursescore = coursescore;
    }


//    public Integer getAge() {
//        return age;
//    }
//
//    public void setAge(Integer age) {
//        this.age = age;
//    }
//
//    public String getSex() {
//        return sex;
//    }
//
//    public void setSex(String sex) {
//        this.sex = sex == null ? null : sex.trim();
//    }

}
