package com.lzy.po;

import java.io.BufferedReader;
import java.util.ArrayList;

public class Data {
    public static int CODE_SUCCESS=0;
    public static int CODE_FAILURED=-1;
    String message;
    int code;
    Object data;
    ArrayList<Button> links = new ArrayList<>();

    public static final Data success(){
        return success(null);
    }
    public static final Data success(Object data){
        return success("操作成功", data);
    }

    public static final Data success(String message, Object data){
        return new Data(Data.CODE_SUCCESS, message, data);
    }

    public static  final Data failure(String message)
    {
        return failure(Data.CODE_FAILURED,message);
    }

    public static  final Data failure(int code ,String message)
    {
        return new Data(code,message,null);
    }

    public ArrayList<Button> getLinks() {
        return links;
    }

    public void setLinks(ArrayList<Button> links) {
        this.links = links;
    }

    public Data() {
    }

    private Data(int code, String message, Object data){
        this.code = code;
        this.message = message;
        this.data = data;
    }
    public void addLink(String link,String text)
    {
        Button bt = new Button(link,text);
        links.add(bt);
    }
    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }

    public int getCode() {
        return code;
    }

    public void setCode(int code) {
        this.code = code;
    }

    public Object getData() {
        return data;
    }

    public void setData(Object data) {
        this.data = data;
    }


    @Override
    public String toString() {
        return "Data{" +
                "message='" + message + '\'' +
                ", code=" + code +
                ", data=" + data +
                ", links=" + links +
                '}';
    }

    public class Button {
         private String text;
         private String link;

        public Button() {
        }

        public Button(String link, String text) {
            this.text = text;
            this.link = link;
        }

        public String getText() {
            return text;
        }

        public void setText(String text) {
            this.text = text;
        }

        public String getLink() {
            return link;
        }

        public void setLink(String link) {
            this.link = link;
        }

        @Override
        public String toString() {
            return super.toString();
        }
    }

}

