package cn.bdqn.mapper;

import cn.bdqn.pojo.Person;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface personmapper {
    List<Person> getlist();
    int del(@Param(value = "id") Long id);
    int add(Person p);
    Person getview(@Param(value = "id") Long id);
    int upd(Person s);
}
