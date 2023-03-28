package com.example.demo.controller;

import com.example.demo.eneity.ResBody;
import com.example.demo.eneity.Complain;
import com.example.demo.eneity.User;
import com.example.demo.service.ComplainService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;

@RestController
public class ComplainController {
    @Autowired
    ComplainService service;

    @GetMapping("/api/getAllComplains")
    public ResBody getAllComplains(@RequestParam int page,
                                   @RequestParam int limit) {
        ResBody resBody = new ResBody();
        int count = service.getCount();
        List<Complain> list= service.getAllComplains(page, limit);
        resBody.setCount(count);
        resBody.setData(list);
        resBody.setCode(0);
        return resBody;
    }

    @GetMapping("/api/getAllComplainsByUser")
    public ResBody getAllComplainsByUser(@RequestParam int page,
                                      @RequestParam int limit, HttpSession session){
        ResBody resBody = new ResBody();
        User user = (User) session.getAttribute("user");
        int count = service.getCount(user.getId());
        List<Complain> list= service.getAllComplainsByUser(page, limit,user.getId());
        resBody.setCount(count);
        resBody.setData(list);
        resBody.setCode(0);
        return resBody;
    }

    @PostMapping("/api/addComplain")
    public ResBody addComplain(@RequestBody Complain complain,HttpSession session) {
        ResBody resBody = new ResBody();
        User user = (User) session.getAttribute("user");
        if (user!=null){
            complain.setUser_id(user.getId());
        }
        int i = service.addComplain(complain);
        if (i == 1){
            resBody.setCode(200);
            resBody.setMsg("添加成功");
        }else{
            resBody.setCode(500);
            resBody.setMsg("添加失败");
        }
        return resBody;
    }

    @PostMapping("/api/updateComplain")
    public ResBody updateComplain(@RequestBody Complain complain) {
        ResBody resBody = new ResBody();
        int i = service.updateComplain(complain);
        if (i == 1){
            resBody.setCode(200);
            resBody.setMsg("修改成功");
        }else{
            resBody.setCode(500);
            resBody.setMsg("修改失败");
        }
        return resBody;
    }

    @GetMapping("/api/delComplain")
    public ResBody delComplain(@RequestParam int id) {
        ResBody resBody = new ResBody();
        int i = service.delComplain(id);
        if (i == 1){
            resBody.setCode(200);
            resBody.setMsg("删除成功");
        }else{
            resBody.setCode(500);
            resBody.setMsg("删除失败");
        }
        return resBody;
    }

    @GetMapping("/api/findComplain")
    public ResBody findComplain(@RequestParam int page,
                                @RequestParam int limit,
                                @RequestParam String name) {
        ResBody resBody = new ResBody();
        int count = 0;
        List<Complain> list= new ArrayList<>();
        if (name.isEmpty()){
            count = service.getCount();
            list= service.getAllComplains(page, limit);
        }else {
            count = service.getCount(name);
            list= service.findComplain(page, limit,name);
        }
        resBody.setCount(count);
        resBody.setData(list);
        resBody.setCode(0);
        return resBody;
    }

}
