package com.example.second.dao;


import com.example.second.entity.TeacherCount;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Component;

@Mapper
@Component(value = "TeacherCountDao")
public interface TeacherCountDao {

    public void addCount(Integer count);

}
