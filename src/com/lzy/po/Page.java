package com.lzy.po;

public class Page {
    int pageSize;
    int curPage;
    int totNumPage;
    int sqlStart;

    public int getSqlStart() {
       return (curPage-1)*pageSize;
    }

    public void setSqlStart(int sqlStart) {
        this.sqlStart = sqlStart;
    }

    public int getPageSize() {
        return pageSize;
    }

    public void setPageSize(int pageSize) {
        this.pageSize = pageSize;
    }

    public int getCurPage() {
        return curPage;
    }

    public void setCurPage(int curPage) {
        this.curPage = curPage;
    }

    public int getTotNumPage() {
        return totNumPage;
    }

    public void setTotNumPage(int totNumPage) {
        this.totNumPage = totNumPage;
    }
}
