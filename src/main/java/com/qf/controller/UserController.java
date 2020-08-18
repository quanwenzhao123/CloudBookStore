package com.qf.controller;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.qf.pojo.User;
import com.qf.service.UserService;
import com.qf.validate.UserValidate;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
public class UserController {

    @Resource
    private UserService userService;


    @RequestMapping("/Users")
    public String selectAllUser(HttpServletRequest req){//要存放session的话，参数定义为HttpSession

        String pageNumSta = req.getParameter("pageNum");
        int pageNum = pageNumSta == null?1:Integer.parseInt(pageNumSta);
        PageHelper.startPage(pageNum,3);
        List<User> list = userService.selectAllUser();
        PageInfo<User> pageInfo = new PageInfo<>(list);
        if(list!=null){
            req.setAttribute("pageInfo", pageInfo);
        }
        return "show.jsp";
    }

    @GetMapping("/selectUserByUid")
    public String selectUserByUid(HttpServletRequest req, Model model){
        String suid = req.getParameter("uid");
        int uid = suid == null ? 0 : Integer.parseInt(suid);
        User user = userService.selectUserByUid(uid);
        model.addAttribute("user", user);
        return "update.jsp";
    }
    @PostMapping("/update")
    public String update(User user){
        userService.update(user);
        return "redirect:/Users";
    }
    @GetMapping("/delete")
    public String delete(int uid){
        userService.delete(uid);
        return "redirect:/Users";
    }
    @RequestMapping("insertimport")
    public String insertImport(Model  model){
        model.addAttribute("user", new User());
        return "insert.jsp";
    }

    @PostMapping("insert")
    public String insert(User user, BindingResult errors,Model model){
        UserValidate uv = new UserValidate();
        uv.validate(user,errors);
        if(errors.hasErrors()){
            model.addAttribute("user", user);
            return "insert.jsp";
        }
        userService.insert(user);
        return "redirect:/Users";
    }
}
