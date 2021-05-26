package com.example.second.service.impl;


import com.example.second.dao.ScoreCountDao;
import com.example.second.entity.ScoreCount;
import com.example.second.service.ScoreCountService;
import org.springframework.stereotype.Service;

@Service
public class ScoreCountServiceBean implements ScoreCountService {
    public void addCount(ScoreCount scoreCount) {
        Integer count = scoreCount.getCount();

    }

    public void reduceCount(ScoreCount scoreCount) {
        Integer count = scoreCount.getCount();

    }
}
