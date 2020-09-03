package cn.bdqn.service;

import cn.bdqn.pojo.Person;
import cn.bdqn.util.PageUtil;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface personService {
    List<Person> getlist();
    int del(@Param(value = "id") Long id);
    int insert(Person p);
    Person getview(@Param(value = "id") Long id);
    int upd(Person s);
    PageUtil getlist(Integer curPage);
}
