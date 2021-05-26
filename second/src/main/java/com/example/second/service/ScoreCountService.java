package com.example.second.service;

import com.example.second.entity.ScoreCount;

public interface ScoreCountService {
    public void addCount(ScoreCount scoreCount);

    public void reduceCount(ScoreCount scoreCount);
}
