package com.example.second.controller;


import com.example.second.entity.Score;
import com.example.second.service.MenuService;
import com.example.second.service.ScoreService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/score")
@CrossOrigin(allowCredentials = "true")
public class ScoreController {

    @Autowired
    private ScoreService scoreService;

    @Autowired
    MenuService menuService;

    /**
     * 查询所有学生
     */
    @GetMapping("/findAllScores")
    public List<Score> findAllScores() {
        return this.scoreService.findAllScores();
    }

    /**
     * 增加学生
     */
    @PostMapping("/addScore")
    public void addScore(@RequestBody Score score) {
        this.scoreService.addScore(score);
    }

    /**
     * 根据学生id删除学生
     */
    @PostMapping("/deleteScore")
    public void deleteScoreById(@RequestParam Long uid) {
        this.scoreService.deleteScoreById(uid);
    }

    /**
     * 编辑学生
     */
    @PostMapping("/updateScore")
    public void updateScore(@RequestBody Score score) {
        this.scoreService.updateScore(score);
    }

    /**
     * 根据学生姓名查找学生
     */
    @GetMapping("/findScoreByName")
    public List<Score> findScoreByName(@RequestParam String name) {
        return this.scoreService.findScoreByName(name);
    }

    /**
     * 批量删除学生
     */
    @PostMapping("/deleteScoresByIds")
    public Integer deleteScoresByIds(Integer[] ids) {
        return this.scoreService.deleteScoresByIds(ids);
    }
}
