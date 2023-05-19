package com.example.demo.controller;

import com.example.demo.eneity.Admin;
import com.example.demo.eneity.Notice;
import com.example.demo.eneity.ResBody;
import com.example.demo.service.NoticeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpSession;
import java.util.Date;
import java.util.List;

@RestController
public class NoticeController {
    @Autowired
    NoticeService service;

    @GetMapping("/api/getAllNotices")
    public ResBody getAllNotices(@RequestParam int page,
                                   @RequestParam int limit) {
        ResBody resBody = new ResBody();
        int count = service.getCount();
        List<Notice> list= service.getAllNotices(page, limit);
        resBody.setCount(count);
        resBody.setData(list);
        resBody.setCode(0);
        return resBody;
    }

    @GetMapping("/api/showUserAdmin")
    public ResBody showUserAdmin() {
        ResBody resBody = new ResBody();
        List<Notice> list= service.showUserAdmin();
        resBody.setData(list);
        resBody.setCode(0);
        return resBody;
    }

    @PostMapping("/api/addNotice")
    public ResBody addNotice(@RequestBody Notice notice, HttpSession session) {
        ResBody resBody = new ResBody();
        Admin admin = (Admin) session.getAttribute("admin");
        notice.setCreateTime(new Date());
        notice.setCreateBy(admin.getId());
        int i = service.addNotice(notice);
        if (i == 1){
            resBody.setCode(200);
            resBody.setMsg("添加成功");
        }else{
            resBody.setCode(500);
            resBody.setMsg("添加失败");
        }
        return resBody;
    }

    @PostMapping("/api/updateNotice")
    public ResBody updateNotice(@RequestBody Notice notice, HttpSession session) {
        ResBody resBody = new ResBody();
        Admin admin = (Admin) session.getAttribute("admin");
        notice.setUpdateTime(new Date());
        notice.setUpdateBy(admin.getId());
        int i = service.updateNotice(notice);
        if (i == 1){
            resBody.setCode(200);
            resBody.setMsg("修改成功");
        }else{
            resBody.setCode(500);
            resBody.setMsg("修改失败");
        }
        return resBody;
    }

    @GetMapping("/api/delNotice")
    public ResBody delBuilding(@RequestParam int id) {
        ResBody resBody = new ResBody();
        int i = service.delNotice(id);
        if (i == 1){
            resBody.setCode(200);
            resBody.setMsg("删除成功");
        }else{
            resBody.setCode(500);
            resBody.setMsg("删除失败");
        }
        return resBody;
    }

    @GetMapping("/api/findNotice")
    public ResBody findBuilding(@RequestParam int page,
                                @RequestParam int limit,
                                @RequestParam String name) {
        ResBody resBody = new ResBody();
        int count = service.getCount(name);
        List<Notice> list= service.findNotice(page, limit,name);
        resBody.setCount(count);
        resBody.setData(list);
        resBody.setCode(0);
        return resBody;
    }
}
