package com.rest.web.controller;



import com.rest.web.pojo.HouseInfo;
import com.rest.web.service.SearchService;
import org.apache.solr.client.solrj.SolrServerException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.util.List;

/**
 * Created by Administrator on 2017/7/3.
 */
@Controller
public class SearchController {

    @Autowired
    private SearchService searchService;

    @RequestMapping("/search")
    public String search(String q, Integer page, Model model) throws IOException, SolrServerException {
        try {
            q = new String(q.getBytes("iso8859-1"), "utf-8");
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
        }
        Integer rows = 20;
        List<HouseInfo> itemList = searchService.queryItemList(q, page, rows);
        model.addAttribute("itemList", itemList);
        model.addAttribute("query", q);
        return "search";
    }
}
