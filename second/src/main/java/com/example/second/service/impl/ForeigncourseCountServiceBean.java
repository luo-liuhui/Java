package com.example.second.service.impl;


import com.example.second.dao.ForeigncourseCountDao;
import com.example.second.entity.ForeigncourseCount;
import com.example.second.service.ForeigncourseCountService;
import org.springframework.stereotype.Service;

@Service
public class ForeigncourseCountServiceBean implements ForeigncourseCountService {
    public void addCount(ForeigncourseCount foreigncourseCount) {
        Integer count = foreigncourseCount.getCount();

    }

    public void reduceCount(ForeigncourseCount foreigncourseCount) {
        Integer count = foreigncourseCount.getCount();

    }
}
