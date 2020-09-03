package cn.bdqn.controller;

import cn.bdqn.pojo.Person;
import cn.bdqn.service.personService;
import cn.bdqn.util.PageUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import javax.crypto.interfaces.PBEKey;
import java.util.List;

@Controller
@RequestMapping("hr")


public class personcontroller {
    @Autowired
    private personService personService;
@RequestMapping(value = "getlist")
    public String getlist(Model model,@RequestParam(value = "curPage",required = false) Integer curPage){
    if(curPage==null){
        curPage=1;
    }
    if(curPage==0){
curPage=1;
    }
    //返回pageutil对象
    PageUtil p=personService.getlist(curPage);
    if(curPage>=p.getPageCount()){
        curPage=p.getPageCount();
        p=personService.getlist(curPage);
    }
    List<Person> getlist = personService.getlist();
    model.addAttribute("getlist",getlist);
    model.addAttribute("curPage",curPage);
    model.addAttribute("getlist",p.getList());
    model.addAttribute("pages",p.getPageCount());
    model.addAttribute("totalCount",p.getTotalCount());
    model.addAttribute("p",p);

    return "list";
}
@RequestMapping(value = "del")
    public  String del(@RequestParam(value = "id",required = false) Long id,Model model){
    int del = personService.del(id);
    if(del>0){
        model.addAttribute("del",del);

        return "redirect:getlist";
    }
    return "";
}
@RequestMapping(value = "listadd")
    public String listadd(){
    return "add";
}
@RequestMapping(value = "add",method = RequestMethod.POST)
    public String add(Model model,Person p){
    int insert = personService.insert(p);

    if(insert>0){
        model.addAttribute("insert",insert);
        return "redirect:getlist";
    }

    return "";
}
@RequestMapping(value = "view")
    public String view(Model model,@RequestParam(value = "id",required = false) Long id){
    Person getview = personService.getview(id);
    model.addAttribute("id",id);
    model.addAttribute("del",getview);
    return "upd";
}
@RequestMapping(value = "upd",method = RequestMethod.POST)
    public String upd(Model model,Person person){
    int upd = personService.upd(person);
    if(upd>0){
        model.addAttribute("upd",upd);
        return "redirect:getlist";
    }
    return "";
}
}
