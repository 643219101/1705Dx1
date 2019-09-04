package com.bw.controller;

import java.io.Serializable;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.print.attribute.HashAttributeSet;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.bw.entity.Dianying;
import com.bw.entity.Fenlei;
import com.bw.service.Myservice;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

@Controller
public class Mycontroller {
  @Autowired
   private Myservice myservice;
  
  @RequestMapping("list.do")
  public Object list(Model model,String name,@RequestParam(defaultValue="1")Integer cpage){
	  PageHelper.startPage(cpage,2);
	 List<Dianying> list= myservice.list(name);
	 PageInfo pi=new PageInfo<>(list);
	
	 model.addAttribute("pi",pi);
	 model.addAttribute("list",list);
	 model.addAttribute("name", name);
	return "list";
	  
  }
  @RequestMapping("duoxuan.do")
  @ResponseBody
  public Object duoxuan(){
       List<Fenlei> list= myservice.duoxuan();
      
	  return list;
	  
  }
  @RequestMapping("add.do")
  @ResponseBody
  public Object duoxuan(Dianying dianying,String [] did){

	  int i=  myservice.add(dianying);
	  Map map=new HashMap<>();
	 
	   int  id=dianying.getId();

	  i+=myservice.addmid(id,did);
	  return i;
	  
  }
  @RequestMapping("show.do")
  @ResponseBody
  public Object show(String id){
	  Map map=myservice.show(id);
	  System.out.println(map);
	  return map;
  }
  @RequestMapping("update.do")
  @ResponseBody
  public Object update(Dianying dianying,String [] did){

	      int id=dianying.getId();
	    int i= myservice.delmid(id);
	i+= myservice.update(dianying);
	 i+=myservice.addmid(id,did);
	  return i;
  }
  @RequestMapping("dels.do")
  @ResponseBody
  public Object dels(String id){
	   int i=myservice.dels(id);
	   i+=myservice.delss(id);
	  return i;
  }
  
  
}
