package com.example.second.service;

import com.example.second.entity.Foreigncourse;
import org.springframework.stereotype.Service;

import java.util.List;


public interface ForeigncourseService {

    public List<Foreigncourse> findAllForeigncourses();

    public void addForeigncourse(Foreigncourse foreigncourse);

    public void deleteForeigncourseById(Long uid);

    public void updateForeigncourse(Foreigncourse foreigncourse);

    List<Foreigncourse> findForeigncourseByName(String name);

    public Integer deleteForeigncoursesByIds(Integer[] ids);
}
