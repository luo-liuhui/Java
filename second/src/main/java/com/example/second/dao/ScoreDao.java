package com.example.second.dao;

import com.example.second.entity.Score;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Component;

import java.util.List;


@Mapper
@Component(value = "ScoreDao")
public interface ScoreDao {

    List<Score> findAllScores();

    int deleteScoreById(Long uid);

    int insert(Score score);

    int addScore(Score score);

    Score selectByPrimaryKey(Long uid);

    int updateScore(Score score);

    int updateByPrimaryKey(Score score);

    List<Score> findScoreByName(String name);

    Integer deleteScoresByIds(@Param("ids") Integer[] ids);

    int getCountScores();
}
