package com.example.second.service;

import com.example.second.entity.Score;
import org.springframework.stereotype.Service;

import java.util.List;


public interface ScoreService {

    public List<Score> findAllScores();

    public void addScore(Score score);

    public void deleteScoreById(Long uid);

    public void updateScore(Score score);

    List<Score> findScoreByName(String name);

    public Integer deleteScoresByIds(Integer[] ids);
}
