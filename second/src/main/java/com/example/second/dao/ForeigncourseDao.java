package com.example.second.dao;

import com.example.second.entity.Foreigncourse;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Component;

import java.util.List;


@Mapper
@Component(value = "ForeigncourseDao")
public interface ForeigncourseDao {

    List<Foreigncourse> findAllForeigncourses();

    int deleteForeigncourseById(Long uid);

    int insert(Foreigncourse foreigncourse);

    int addForeigncourse(Foreigncourse foreigncourse);

    Foreigncourse selectByPrimaryKey(Long uid);

    int updateForeigncourse(Foreigncourse foreigncourse);

    int updateByPrimaryKey(Foreigncourse foreigncourse);

    List<Foreigncourse> findForeigncourseByName(String name);

    Integer deleteForeigncoursesByIds(@Param("ids") Integer[] ids);

    int getCountForeigncourses();
}
