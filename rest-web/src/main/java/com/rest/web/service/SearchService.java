package com.rest.web.service;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.rest.web.pojo.HouseInfo;
import org.apache.solr.client.solrj.SolrQuery;
import org.apache.solr.client.solrj.SolrServerException;
import org.apache.solr.client.solrj.impl.HttpSolrClient;
import org.apache.solr.client.solrj.response.QueryResponse;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;



@Service
public class SearchService {
	@Autowired
	private HttpSolrClient httpSolrClient;

	public List<HouseInfo> queryItemList(String q, Integer page, Integer rows) throws IOException, SolrServerException {
		if (null == page){
			page = 1;
		}
		Integer startPos = (Math.max(page, 1)-1) * rows;

		SolrQuery query = new SolrQuery();
		if (!"".equals(q)){
			query.setQuery("title:" + q);
		}else {
			query.setQuery("title:杭州" );
		}

		query.setStart(startPos);
		query.setRows(rows);


		QueryResponse response = httpSolrClient.query(query);
		List<HouseInfo> itemList = response.getBeans(HouseInfo.class);
		return itemList;
	}

}
