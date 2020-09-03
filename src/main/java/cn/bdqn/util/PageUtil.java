package cn.bdqn.util;
import java.util.List;
/**
 * 分页工具类
 */
public class PageUtil {

//    当前页数
    private int curPage=1;
//    每页条数
    private int pageSize=4;
//    总页数
    private int pageCount;
//    总条数
    private Long totalCount;
//    集合
    private List<?> list;

    public int getCurPage() {
        return curPage;
    }

    public void setCurPage(int curPage) {
        this.curPage = curPage;
    }

    public int getPageSize() {
        return pageSize;
    }

    public void setPageSize(int pageSize) {
        this.pageSize = pageSize;
    }

    public int getPageCount() {
        return pageCount;
    }

    public void setPageCount(int pageCount) {
        this.pageCount = pageCount;
    }

    public Long getTotalCount() {
        return totalCount;
    }

    public void setTotalCount(Long totalCount) {
        this.totalCount = totalCount;
    }

    public List<?> getList() {
        return list;
    }

    public void setList(List<?> list) {
        this.list = list;
    }
}
