package com.site.blog.my.core.entity;

import lombok.Data;

import java.io.Serializable;

@Data
public class BlogTagCount implements Serializable {
    private Integer tagId;

    private String tagName;

    private Integer tagCount;
}
