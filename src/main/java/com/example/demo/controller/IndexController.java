package com.example.demo.controller;


import com.example.demo.eneity.Admin;
import com.example.demo.eneity.Notice;
import com.example.demo.eneity.User;
import com.example.demo.service.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import javax.servlet.http.HttpSession;

@Controller
public class IndexController {
    @Autowired
    IndexService service;
    @Autowired
    NoticeService noticeService;
    @Autowired
    RepairService repairService;
    @Autowired
    ComplainService complainService;
    @Autowired
    UserService userService;
    @Autowired
    User_PaymentService user_paymentService;
    @Autowired
    RoomService roomService;
    @Autowired
    CarService carService;

    @Autowired
    User_RoomService userRoomService;

    @Autowired
    User_CarService userCarService;

    @GetMapping("/admin/login")
    public String login() {
        return "page/admin/adminLogin";
    }

    @GetMapping("/admin/index")
    public String index(HttpSession session) {

        //直接进入主页需要判断身份
        Admin admin = (Admin) session.getAttribute("admin");
        if(admin != null) return "page/admin/index";
        else return "page/admin/adminLogin";

    }

    @GetMapping("/adminConsole")
    public String console(Model model) {
        int noticeCount = noticeService.getCount();
        int repairCount = repairService.getCount();
        int complainCount = complainService.getCount();
        int userCount = userService.getCount();
        int roomCount = roomService.getCount();
        int roomFreeCount = roomService.getFreeCount();
        int carCount = carService.getCount();
        int carFreeCount = carService.getFreeCount();
        int paymentCount = user_paymentService.getCount();
        int paymentFreeCount = user_paymentService.getFreeCount();
        model.addAttribute("noticeCount",noticeCount);
        model.addAttribute("repairCount",repairCount);
        model.addAttribute("complainCount",complainCount);
        model.addAttribute("userCount",userCount);
        model.addAttribute("roomCount",roomCount);
        model.addAttribute("roomFreeCount",roomFreeCount);
        model.addAttribute("carCount",carCount);
        model.addAttribute("carFreeCount",carFreeCount);
        model.addAttribute("paymentCount",paymentCount);
        model.addAttribute("paymentFreeCount",paymentFreeCount);
        return "page/admin/console";
    }

    @GetMapping("/tpl-theme")
    public String tpl(){
        return "page/tpl/tpl-theme";
    }

    @GetMapping("/tpl-password")
    public String password(){
        return "page/tpl/tpl-password";
    }

    @GetMapping("/tpl-user-password")
    public String reader_password(){
        return "page/tpl/tpl-user-password";
    }

    @GetMapping("/tpl-note")
    public String note(){
        return "page/tpl/tpl-note";
    }

    //管理员用户信息
    @GetMapping("/user-info")
    public String userinfo(){
        return "page/admin/user-info";
    }

    //管理员用户信息
    @GetMapping("/true-user-info")
    public String trueUserinfo(){
        return "page/user/user-info";
    }

    @GetMapping("/building")
    public String building(){
        return "page/admin/building";
    }

    @GetMapping("/unit")
    public String unit(){
        return "page/admin/unit";
    }

    @GetMapping("/room")
    public String room(){
        return "page/admin/room";
    }

    @GetMapping("/notice")
    public String notice(){
        return "page/admin/notice";
    }

    @GetMapping("/repair")
    public String repair(){
        return "page/admin/repair";
    }

    @GetMapping("/complain")
    public String complain(){
        return "page/admin/complain";
    }

    @GetMapping("/userRepair")
    public String userRepair(){
        return "page/user/repair";
    }

    @GetMapping("/userComplain")
    public String userComplain(){
        return "page/user/complain";
    }
    @GetMapping("/userFreeRoom")
    public String userFreeRoom(){
        return "page/user/room";
    }
    @GetMapping("/userFreeCar")
    public String userFreeCar(){
        return "page/user/car";
    }

    @GetMapping("/payment")
    public String payment(){
        return "page/admin/payment";
    }

    @GetMapping("/car")
    public String car(){
        return "page/admin/car";
    }

    @GetMapping("/user")
    public String user(){
        return "page/admin/user";
    }

    @GetMapping("/user/login")
    public String userlogin(){
        return "page/user/userLogin";
    }

    @GetMapping("/user/index")
    public String userindex(HttpSession session){
        //直接进入主页需要判断身份
        User user = (User) session.getAttribute("user");
        if(user != null) return "page/user/index";
        else return "page/user/userLogin";
    }

    @GetMapping("/userConsole")
    public String userconsole(Model model,HttpSession session){
        User user = (User) session.getAttribute("user");
        Notice notice = noticeService.getNotice();
        int repairCount = repairService.getCount();
        int complainCount = complainService.getCount();
        int paymentCount = user_paymentService.getCount();
        int roomCount = roomService.getCount();
        int carCount = carService.getCount();
        int userRepair = repairService.getCountByUserId(user.getId());
        int userComplain = complainService.getCountByUserId(user.getId());
        int userPayment = user_paymentService.getCountByUserId(user.getId());
        int userRoomCount = userRoomService.getCountByUserId(user.getId());
        int userCarCount = userCarService.getCountByUserId(user.getId());
        model.addAttribute("userRoomCount", userRoomCount);
        model.addAttribute("carCount", carCount);
        model.addAttribute("userCarCount", userCarCount);
        model.addAttribute("roomCount", roomCount);
        model.addAttribute("notice",notice);
        model.addAttribute("userComplain",userComplain);
        model.addAttribute("userRepair",userRepair);
        model.addAttribute("userPayment",userPayment);
        model.addAttribute("repairCount",repairCount);
        model.addAttribute("complainCount",complainCount);
        model.addAttribute("paymentCount",paymentCount);
        return "page/user/console";
    }

    @GetMapping("/paymentDetail")
    public String paymentDetail(){
        return "page/admin/paymentDetail";
    }
}
