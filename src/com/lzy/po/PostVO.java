package com.lzy.po;

import java.io.Serializable;

public class PostVO extends Post implements Serializable {

    User author;
    Channel channel;

    public User getAuthor() {
        return author;
    }

    public void setAuthor(User author) {
        this.author = author;
    }

    public Channel getChannel() {
        return channel;
    }

    public void setChannel(Channel channel) {
        this.channel = channel;
    }
}
