package com.petland.controller;

import com.petland.entity.Pet;
import com.petland.service.Impl.PetServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

/**
 * @program: PetLand
 * @description:
 * @author: DY
 * @create: 2024-01-30 19:04
 **/

@Controller
public class PetController {
    @Autowired
//    这个注解叫自动注入
    private PetServiceImpl petService;

    @RequestMapping("/")
    //mvc专门用来跳转的对象
    public ModelAndView getPet(ModelAndView modelAndView){
        List<Pet> petList = petService.getPet();
        //将查询到的数据传输给前端
        modelAndView.addObject("petList",petList);
        modelAndView.setViewName("main");
        return modelAndView;
    }
    @RequestMapping("/getDetails")
    public  ModelAndView getDetails(@RequestParam int id, ModelAndView modelAndView){
        Pet pet=petService.getPetById(id);
        modelAndView.addObject("pet",pet);
        modelAndView.setViewName("details");
        return  modelAndView;
    }
}
