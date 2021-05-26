package com.example.second.dao;


import com.example.second.entity.ForeigncourseCount;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Component;

@Mapper
@Component(value = "ForeigncourseCountDao")
public interface ForeigncourseCountDao {

    public void addCount(Integer count);

}
