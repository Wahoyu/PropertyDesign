package com.example.demo.controller;

import com.example.demo.eneity.ResBody;
import com.example.demo.eneity.Unit;
import com.example.demo.service.UnitService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
public class UnitController {
    @Autowired
    UnitService service;

    @GetMapping("/api/getAllUnits")
    public ResBody getAllUnits(@RequestParam int page,
                                   @RequestParam int limit) {
        ResBody resBody = new ResBody();
        int count = service.getCount();
        List<Unit> list= service.getAllUnits(page, limit);
        resBody.setCount(count);
        resBody.setData(list);
        resBody.setCode(0);
        return resBody;
    }

    @PostMapping("/api/addUnit")
    public ResBody addUnit(@RequestBody Unit unit) {
        ResBody resBody = new ResBody();
        int i = service.addUnit(unit);
        if (i == 1){
            resBody.setCode(200);
            resBody.setMsg("添加成功");
        }else{
            resBody.setCode(500);
            resBody.setMsg("添加失败");
        }
        return resBody;
    }

    @PostMapping("/api/updateUnit")
    public ResBody updateUnit(@RequestBody Unit unit) {
        ResBody resBody = new ResBody();
        int i = service.updateUnit(unit);
        if (i == 1){
            resBody.setCode(200);
            resBody.setMsg("修改成功");
        }else{
            resBody.setCode(500);
            resBody.setMsg("修改失败");
        }
        return resBody;
    }

    @GetMapping("/api/delUnit")
    public ResBody delUnit(@RequestParam int id) {
        ResBody resBody = new ResBody();
        int i = service.delUnit(id);
        if (i == 1){
            resBody.setCode(200);
            resBody.setMsg("删除成功");
        }else{
            resBody.setCode(500);
            resBody.setMsg("删除失败");
        }
        return resBody;
    }

    @GetMapping("/api/findUnit")
    public ResBody findBuilding(@RequestParam int page,
                                @RequestParam int limit,
                                @RequestParam String name) {
        ResBody resBody = new ResBody();
        int count = service.getCount(name);
        List<Unit> list= service.findUnit(page, limit,name);
        resBody.setCount(count);
        resBody.setData(list);
        resBody.setCode(0);
        return resBody;
    }

    @GetMapping("/ajax/getAllUnits")
    public ResBody getAllUnits() {
        ResBody resBody = new ResBody();
        List<Unit> list= service.getAllUnits();
        resBody.setData(list);
        resBody.setCode(0);
        return resBody;
    }
}
