package com.example.second.dao;


import com.example.second.entity.ScoreCount;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Component;

@Mapper
@Component(value = "ScoreCountDao")
public interface ScoreCountDao {

    public void addCount(Integer count);

}
