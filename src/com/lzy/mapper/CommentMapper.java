package com.lzy.mapper;

import com.lzy.po.Comment;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;

import java.util.List;

public interface CommentMapper {

   @Select("select * from tb_comment where post_id=#{id}")
    List<Comment> selByPostId(int id);

    @Select("select * from tb_comment where id=#{id}")
   Comment selByCommentId(int id);


//   这个地方的insert 用#{properties}的时候一直在失败。。。
    @Insert("insert into tb_comment(id,pid,post_id,content,author_id) " +
            " values(default,#{pid},#{post_id},#{content},#{author_id})")
    public int insComment(Comment comment);
}
