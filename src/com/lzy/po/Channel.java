package com.lzy.po;

public class Channel {
   int id;
   String ch_key;
   String ch_name;
   int statu;

    public Channel() {
    }

    @Override
    public String toString() {
        return "Channel{" +
                "id=" + id +
                ", ch_key='" + ch_key + '\'' +
                ", ch_name='" + ch_name + '\'' +
                ", statu=" + statu +
                '}';
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getCh_key() {
        return ch_key;
    }

    public void setCh_key(String ch_key) {
        this.ch_key = ch_key;
    }

    public String getCh_name() {
        return ch_name;
    }

    public void setCh_name(String ch_name) {
        this.ch_name = ch_name;
    }

    public int getStatu() {
        return statu;
    }

    public void setStatu(int statu) {
        this.statu = statu;
    }
}
