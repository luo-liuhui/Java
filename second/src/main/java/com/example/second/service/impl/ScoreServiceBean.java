package com.example.second.service.impl;

import com.example.second.dao.ScoreCopyDao;
import com.example.second.dao.ScoreCountDao;
import com.example.second.dao.ScoreDao;
import com.example.second.entity.Score;
import com.example.second.entity.ScoreCount;
import com.example.second.service.ScoreService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;


@Service
//@Transactional(rollbackFor = Exception.class)
public class ScoreServiceBean implements ScoreService {

    @Autowired
    private ScoreDao scoreDao;

    @Autowired
    private ScoreCountDao scoreCountDao;

    @Autowired
    ScoreCopyDao scoreCopyDao;

    public List<Score> findAllScores() {
        return this.scoreDao.findAllScores();
    }


    @Transactional
    public void addScore(Score score) {
        this.scoreDao.addScore(score);
//        this.scoreCopyDao.addScore(score);
        Integer count = this.scoreDao.getCountScores();
        //没有加@Transactional注解，万一出现错误，新增人数会成功，但是学生表的总人数没有改变，出现了数据的不一致。
        int x = 5 / 0;
        this.scoreCountDao.addCount(count);
    }

    public void deleteScoreById(Long uid) {
        this.scoreDao.deleteScoreById(uid);
        Integer count = this.scoreDao.getCountScores();
        this.scoreCountDao.addCount(count);
    }

    public void updateScore(Score score) {
        this.scoreDao.updateScore(score);
    }

    public List<Score> findScoreByName(String name) {
        return this.scoreDao.findScoreByName(name);
    }

    public Integer deleteScoresByIds(Integer[] ids) {
        return this.scoreDao.deleteScoresByIds(ids);
    }

}
