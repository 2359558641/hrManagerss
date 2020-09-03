package cn.bdqn.service;

import cn.bdqn.mapper.personmapper;
import cn.bdqn.pojo.Person;
import cn.bdqn.util.PageUtil;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service("personService")
public class personServiceImpl implements personService{
    @Autowired
    private personmapper personmapper;
    @Override
    public List<Person> getlist() {
        List<Person> getlist = personmapper.getlist();
        return getlist;
    }

    @Override
    public int del(Long id) {
        int del = personmapper.del(id);
        return del;
    }

    @Override
    public int insert(Person p) {
        int add = personmapper.add(p);
        return add;
    }

    @Override
    public Person getview(Long id) {

        Person getview = personmapper.getview(id);
        return getview;
    }

    @Override
    public int upd(Person s) {
        int upd = personmapper.upd(s);
        return upd;
    }

    @Override
    public PageUtil getlist(Integer curPage) {
        PageUtil p=new PageUtil();
        p.setPageSize(5);
        //设置当前页面和页面容量（从工具类获取）
        PageHelper.startPage(curPage,p.getPageSize());
        List<Person> list=personmapper.getlist();
        PageInfo<Person> info=new PageInfo<>(list);
        //获取最后一行行号
        Long row=info.getEndRow();
        //获取取当前页面容量
        int pageSize=info.getPageSize();
        //获取当前页数
        int pageNum=info.getPageNum();
        //获取总页数
        int pages=info.getPages();
        //获取总条数
        Long infoTotal=info.getTotal();
        //将集合 ，等数据放入PageUtil
        p.setList(list);
        p.setPageSize(pageSize)
        ;
        p.setCurPage(curPage);
        p.setPageCount(pages);
        p.setTotalCount(infoTotal);

        return p;
    }
}
