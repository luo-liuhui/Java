package com.example.second.dao;


import com.example.second.entity.Foreigncourse;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Component;

@Mapper
@Component(value = "ForeigncourseCopyDao")
public interface ForeigncourseCopyDao {

    int addForeigncourse(Foreigncourse foreigncourseCopy);

}
