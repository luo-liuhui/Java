package com.example.second.service.impl;

import com.example.second.dao.ForeigncourseCopyDao;
import com.example.second.dao.ForeigncourseCountDao;
import com.example.second.dao.ForeigncourseDao;
import com.example.second.entity.Foreigncourse;
import com.example.second.entity.ForeigncourseCount;
import com.example.second.service.ForeigncourseService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;


@Service
//@Transactional(rollbackFor = Exception.class)
public class ForeigncourseServiceBean implements ForeigncourseService {

    @Autowired
    private ForeigncourseDao foreigncourseDao;

    @Autowired
    private ForeigncourseCountDao foreigncourseCountDao;

    @Autowired
    ForeigncourseCopyDao foreigncourseCopyDao;

    public List<Foreigncourse> findAllForeigncourses() {
        return this.foreigncourseDao.findAllForeigncourses();
    }


    @Transactional
    public void addForeigncourse(Foreigncourse foreigncourse) {
        this.foreigncourseDao.addForeigncourse(foreigncourse);
//        this.foreigncourseCopyDao.addForeigncourse(foreigncourse);
        Integer count = this.foreigncourseDao.getCountForeigncourses();
        //没有加@Transactional注解，万一出现错误，新增人数会成功，但是学生表的总人数没有改变，出现了数据的不一致。
      //  int x = 5 / 0;
        this.foreigncourseCountDao.addCount(count);
    }

    public void deleteForeigncourseById(Long uid) {
        this.foreigncourseDao.deleteForeigncourseById(uid);
        Integer count = this.foreigncourseDao.getCountForeigncourses();
        this.foreigncourseCountDao.addCount(count);
    }

    public void updateForeigncourse(Foreigncourse foreigncourse) {
        this.foreigncourseDao.updateForeigncourse(foreigncourse);
    }

    public List<Foreigncourse> findForeigncourseByName(String name) {
        return this.foreigncourseDao.findForeigncourseByName(name);
    }

    public Integer deleteForeigncoursesByIds(Integer[] ids) {
        return this.foreigncourseDao.deleteForeigncoursesByIds(ids);
    }

}
