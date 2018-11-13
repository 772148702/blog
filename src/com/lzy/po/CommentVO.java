package com.lzy.po;

import java.io.Serializable;

public class CommentVO  extends Comment implements Serializable {
    private static final long serialVersionUID = 9192186139010913437L;
    private User author;
    private CommentVO parent;
    private PostVO post;

    public CommentVO() {
    }

    public CommentVO(Comment comment)
    {
        this.author_id = comment.getAuthor_id();
        this.content = comment.getContent();
        this.id = comment.getId();
        this.pid = comment.getPid();
        this.post_id = comment.getPost_id();
    }

    public User getAuthor() {
        return author;
    }

    public void setAuthor(User author) {
        this.author = author;
    }

    public CommentVO getParent() {
        return parent;
    }

    public void setParent(CommentVO parent) {
        this.parent = parent;
    }

    public PostVO getPost() {
        return post;
    }

    public void setPost(PostVO post) {
        this.post = post;
    }
}
