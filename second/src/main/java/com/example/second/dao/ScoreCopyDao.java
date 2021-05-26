package com.example.second.dao;


import com.example.second.entity.Score;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Component;

@Mapper
@Component(value = "ScoreCopyDao")
public interface ScoreCopyDao {

    int addScore(Score scoreCopy);

}
