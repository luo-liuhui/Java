package com.example.second.controller;


import com.example.second.entity.Foreigncourse;
import com.example.second.service.MenuService;
import com.example.second.service.ForeigncourseService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/foreigncourse")
@CrossOrigin(allowCredentials = "true")
public class ForeigncourseController {

    @Autowired
    private ForeigncourseService foreigncourseService;

    @Autowired
    MenuService menuService;

    /**
     * 查询所有学生
     */
    @GetMapping("/findAllForeigncourses")
    public List<Foreigncourse> findAllForeigncourses() {
        return this.foreigncourseService.findAllForeigncourses();
    }

    /**
     * 增加学生
     */
    @PostMapping("/addForeigncourse")
    public void addForeigncourse(@RequestBody Foreigncourse foreigncourse) {
        this.foreigncourseService.addForeigncourse(foreigncourse);
    }

    /**
     * 根据学生id删除学生
     */
    @PostMapping("/deleteForeigncourse")
    public void deleteForeigncourseById(@RequestParam Long uid) {
        this.foreigncourseService.deleteForeigncourseById(uid);
    }

    /**
     * 编辑学生
     */
    @PostMapping("/updateForeigncourse")
    public void updateForeigncourse(@RequestBody Foreigncourse foreigncourse) {
        this.foreigncourseService.updateForeigncourse(foreigncourse);
    }

    /**
     * 根据学生姓名查找学生
     */
    @GetMapping("/findForeigncourseByName")
    public List<Foreigncourse> findForeigncourseByName(@RequestParam String name) {
        return this.foreigncourseService.findForeigncourseByName(name);
    }

    /**
     * 批量删除学生
     */
    @PostMapping("/deleteForeigncoursesByIds")
    public Integer deleteForeigncoursesByIds(Integer[] ids) {
        return this.foreigncourseService.deleteForeigncoursesByIds(ids);
    }
}
