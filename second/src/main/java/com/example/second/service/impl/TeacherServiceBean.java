package com.example.second.service.impl;

import com.example.second.dao.TeacherCopyDao;
import com.example.second.dao.TeacherCountDao;
import com.example.second.dao.TeacherDao;
import com.example.second.entity.Teacher;
import com.example.second.entity.TeacherCount;
import com.example.second.service.TeacherService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;


@Service
//@Transactional(rollbackFor = Exception.class)
public class TeacherServiceBean implements TeacherService {

    @Autowired
    private TeacherDao teacherDao;

    @Autowired
    private TeacherCountDao teacherCountDao;

    @Autowired
    TeacherCopyDao teacherCopyDao;

    public List<Teacher> findAllTeachers() {
        return this.teacherDao.findAllTeachers();
    }


    @Transactional
    public void addTeacher(Teacher teacher) {
        this.teacherDao.addTeacher(teacher);
//        this.teacherCopyDao.addTeacher(teacher);
        Integer count = this.teacherDao.getCountTeachers();
        //没有加@Transactional注解，万一出现错误，新增人数会成功，但是课程表的总人数没有改变，出现了数据的不一致。
       // int x = 5 / 0;
        this.teacherCountDao.addCount(count);
    }

    public void deleteTeacherById(Long uid) {
        this.teacherDao.deleteTeacherById(uid);
        Integer count = this.teacherDao.getCountTeachers();
        this.teacherCountDao.addCount(count);
    }

    public void updateTeacher(Teacher teacher) {
        this.teacherDao.updateTeacher(teacher);
    }

    public List<Teacher> findTeacherByName(String name) {
        return this.teacherDao.findTeacherByName(name);
    }

    public Integer deleteTeachersByIds(Integer[] ids) {
        return this.teacherDao.deleteTeachersByIds(ids);
    }

}
