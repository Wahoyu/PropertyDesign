package com.example.demo.service.impl;

import com.example.demo.eneity.Notice;
import com.example.demo.dao.NoticeDao;
import com.example.demo.service.NoticeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class NoticeServiceImpl implements NoticeService {
    @Autowired
    NoticeDao dao;
    public int getCount() {
        return dao.getCount();
    }

    public List<Notice> getAllNotices(int page, int limit) {
        return dao.getAllNotices(page,limit);
    }

    public int addNotice(Notice notice) {
        return dao.addNotice(notice);
    }

    public int updateNotice(Notice notice) {
        return dao.updateNotice(notice);
    }

    public int delNotice(int id) {
        return dao.delNotice(id);
    }

    public int getCount(String name) {
        return dao.getCount(name);
    }

    public List<Notice> findNotice(int page, int limit, String name) {
        return dao.findNotice(page,limit,name);
    }

    public Notice getNotice() {
        return dao.getNotice();
    }
}
