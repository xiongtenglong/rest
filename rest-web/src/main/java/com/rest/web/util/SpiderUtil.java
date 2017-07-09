package com.rest.web.util;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.rest.web.mapper.HouseAreaMapper;
import com.rest.web.mapper.HouseInfoMapper;
import com.rest.web.pojo.HouseArea;
import com.rest.web.pojo.HouseImage;
import com.rest.web.pojo.HouseInfo;
import org.apache.log4j.Logger;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import javax.swing.*;
import java.io.IOException;
import java.util.*;

/**
 * Created by Administrator on 2017/7/4.
 */
public class SpiderUtil {

    private static final Logger log = Logger.getLogger(SpiderUtil.class);

    static  final ObjectMapper MAPPER = new ObjectMapper();


    @Autowired
    private static HouseInfoMapper houseInfoMapper;

    @Test
    public void onePage() throws IOException {
        String url = "https://www.tujia.com/hangzhou_gongyu/tonglu_110221.htm";
        String html = Jsoup.connect(url).execute().body();
        System.out.println(html);
    }


    //1,获取杭州公寓连接下的页面数
    private static Integer getPages() throws IOException {
        try {
            String url = "https://www.tujia.com/hangzhou_gongyu";
            Elements elements = Jsoup.connect(url).get().select("#pages .pages a");
            Element element = elements.get(elements.size()-1);
            url = element.attr("href");
            String count = url.split("/")[2];
            System.out.println(count);
            return Integer.parseInt(count);
        }catch (Exception e){
            e.printStackTrace();
            return 0;
        }
    }

    //2,抓取杭州所有房源连接
//    public static List<String> getAllLink() throws IOException {
//        ArrayList<String> houseList = new ArrayList<>();
//        Integer pageNum = getPages();
//        String catUrl = "https://www.tujia.com/hangzhou_gongyu";
//        String url = "";
//        for (int i = 1;i <= pageNum; i++){
//            url = catUrl + "/" + i;
//            Document document = Jsoup.connect(url).get();
//            Elements elements = document.select(".house-content .title-box a");
//            for (Element element : elements){
//                String name = element.text();
//                url = element.attr("href");
//                if (url.startsWith("/hangzhou_gongyu/")){
//                    houseList.add("https://www.tujia.com" + url);
//                    System.out.println(url);
//                }
//    //            log.debug(name + " - " + url);
//        }
//        }
//        log.debug("三级分类总数:" + houseList.size());
//        return houseList;
//    }



    //2,抓取杭州所有房源连接
    public static List<Map> getAllLink() {
        ArrayList<Map> houseList = new ArrayList<Map>();
        try {
            Integer pageNum = getPages();
            String catUrl = "https://www.tujia.com/hangzhou_gongyu";
            String url = "";
            String price = null;
            for (int i = 1;i <= pageNum; i++){
                url = catUrl + "/" + i;
                Document document = Jsoup.connect(url).get();
                Elements elements = document.select(".house-info");
                for (Element element : elements){
                    Elements elements1 = element.select(".sid-box .price-cont a");
                    url = elements1.attr("href");
                    price = elements1.select(".price-value").text();
                    if (url.startsWith("/hangzhou_gongyu/")){
                        HashMap<String, String> map = new HashMap<String, String>();
                        map.put("url" , "https://www.tujia.com" + url);
                        map.put("price", price);
                        houseList.add(map);
                        System.out.println(map);
                    }
                }
            }
            log.debug("三级分类总数:" + houseList.size());
            return houseList;
        }catch (Exception e){

        }
        return houseList;
    }




    //3获取某个房源的标题
    private static String getTitle(String itemUrl){
        Document document = null;
        String title = null;
        try {
            document = Jsoup.connect(itemUrl).get();
            title = document.select(".hotel-cont .room-info h1").get(0).text();
            title = title.substring(0, title.indexOf(" "));
            System.out.println(title);
            return title;
        }catch (Exception e){
            return title;
        }
    }


    //3,获取某个房源的描述
    private static String getDesc(String itemUrl){
        Document document = null;
        String desc = null;
        try {
            document = Jsoup.connect(itemUrl).get();
            desc = document.select(".desc-info").get(0).text();
            System.out.println(desc);
            return desc;
        }catch (Exception e){
            return desc;
        }
    }


    //4,获取某个房源的评分
    private static String getEvaluate(String itemUrl){
        Document document = null;
        String evaluate = null;
        try {
            document = Jsoup.connect(itemUrl).get();
            evaluate = document.select(".lab-text-vb .num").get(0).text() + "分";
            System.out.println(evaluate);
            return evaluate;
        }catch (Exception e){
            return evaluate;
        }
    }


    //5,获取某个房源的告示信息
    private static String getNotice(String itemUrl){
        Document document = null;
        String notice = "";
        try {
            document = Jsoup.connect(itemUrl).get();
            Elements elements = document.select(".t-key-list p");
            for (Element element:elements){
                notice += element.text();
            }
            System.out.println(notice);
            return notice;
        }catch (Exception e){
            return notice;
        }
    }

    //6,获取某个房源的地址
    private static String getAddress(String itemUrl){
        Document document = null;
        String adress = "";
        try {
            document = Jsoup.connect(itemUrl).get();
            adress = document.select(".district-info .lab-text").get(0).text();
            System.out.println(adress);
            return adress;
        }catch (Exception e){
            return adress;
        }
    }

    //7,获取某个房源的图片
    private static List<HouseImage> getImage(String itemUrl){
        ArrayList<HouseImage> list = new ArrayList<HouseImage>();
        Document document = null;
        String src = "";
        try {
            document = Jsoup.connect(itemUrl).get();
            Elements elements = document.select(".item img");
            for (Element element:elements){
//                src += "," + element.attr("src").substring(2);
                HouseImage houseImage = new HouseImage();
                houseImage.setHouseId(Long.parseLong(itemUrl.substring(itemUrl.lastIndexOf("_") + 1, itemUrl.lastIndexOf("."))));
                houseImage.setImageUrl(element.attr("src").substring(2));
                list.add(houseImage);
            }
            return list;
        }catch (Exception e){
            return list;
        }
    }


    //8,获取房源信息,并封装成对象
    public static HouseInfo getItem(Map<String,String> map){
        String price = map.get("price");
        String url = map.get("url");
        HouseInfo houseInfo = new HouseInfo();
        try {
            houseInfo.setHouseId(Long.parseLong(url.substring(url.lastIndexOf("_") + 1, url.lastIndexOf("."))));
            houseInfo.setPrice(Long.parseLong(price));
            houseInfo.setTitle(SpiderUtil.getTitle(url));
            houseInfo.setHouseDesc(SpiderUtil.getDesc(url));
            houseInfo.setAddress(SpiderUtil.getAddress(url));
            houseInfo.setEvaluate(SpiderUtil.getEvaluate(url));
            houseInfo.setNotice(SpiderUtil.getNotice(url));
//            houseInfo.setImagePath(SpiderUtil.getImage(url));
            houseInfo.setImageList(SpiderUtil.getImage(url));
            Date date = new Date();
            houseInfo.setCreated(date);
            houseInfo.setUpdated(date);
            houseInfo.setUserId((long) (new Random().nextInt(9) + 1));
            houseInfo.setStatus(1);
            houseInfo.setStatusAuth(3);
        }catch (Exception e){

        }

        return houseInfo;
    }

    @Test
    public void run() throws IOException {
        SpiderUtil.getImage("https://www.tujia.com/hangzhou_gongyu/binjiangqu_296431.htm#index=24");
//        String url = "https://www.tujia.com/hangzhou_gongyu/tonglu_110221.htm";
//        System.out.println(Long.parseLong(url.substring(url.lastIndexOf("_") + 1, url.lastIndexOf("."))));
//        RestUtil.getAllLink();
//        RestUtil.getPages();
//        RestUtil.getTitle("https://www.tujia.com/hangzhou_gongyu/tonglu_110221.htm");
//        RestUtil.getDesc("https://www.tujia.com/hangzhou_gongyu/binjiangqu_296431.htm#index=24");
//        RestUtil.getPrice("https://www.tujia.com/hangzhou_gongyu/tonglu_110221.htm");
//    RestUtil.getEvaluate("https://www.tujia.com/hangzhou_gongyu/binjiangqu_296431.htm#index=24");
//        RestUtil.getNotice("https://www.tujia.com/hangzhou_gongyu/binjiangqu_296431.htm#index=24");
//    SpiderUtil.getAddress("https://www.tujia.com/hangzhou_gongyu/binjiangqu_296431.htm#index=24");
    }


    @Test
    public void test3(){
        String str1 = "中华人民共和国";
        String str2 = "人民";
        System.out.println(str1.contains(str2));
    }

}
