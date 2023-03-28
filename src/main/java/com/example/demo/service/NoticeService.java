package com.example.demo.service;

import com.example.demo.eneity.Notice;

import java.util.List;

public interface NoticeService {

    public int getCount();

    public List<Notice> getAllNotices(int page, int limit);

    public int addNotice(Notice notice);

    public int updateNotice(Notice notice);

    public int delNotice(int id);

    public int getCount(String name);

    public List<Notice> findNotice(int page, int limit, String name);

    public Notice getNotice();
}
