package com.site.blog.my.core.controller.vo;

import lombok.Data;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

@Data
public class BlogDetailVO implements Serializable {
    private Long blogId;    // 文章id

    private String blogTitle;   // 文章标题

    private Integer blogCategoryId;   // 文章对应分类id

    private Integer commentCount;      // 评论数量

    private String blogCategoryIcon;   // 文章分类图标

    private String blogCategoryName;    // 文章分类名称

    private String blogCoverImage;

    private Long blogViews;

    private List<String> blogTags;

    private String blogContent;

    private Byte enableComment;

    private Date createTime;

}
