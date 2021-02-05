package com.site.blog.my.core.util;

import lombok.Data;
import lombok.ToString;

import java.util.LinkedHashMap;
import java.util.Map;

/**
 *
 */
@Data
@ToString
public class PageQueryUtil extends LinkedHashMap<String, Object> {
    //当前页码
    private int page;
    //每页条数
    private int limit;

    public PageQueryUtil(Map<String, Object> params) {
        this.putAll(params);

        //分页参数
        this.page = Integer.parseInt(params.get("page").toString());
        this.limit = Integer.parseInt(params.get("limit").toString());
        // 每页数据的起始位置
        this.put("start", (page - 1) * limit);
        this.put("page", page);
        this.put("limit", limit);
    }



}
