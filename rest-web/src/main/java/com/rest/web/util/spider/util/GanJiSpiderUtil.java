package com.rest.web.util.spider.util;

import com.fasterxml.jackson.databind.ObjectMapper;

import com.rest.web.util.spider.mapper.HouseInfoMapper;
import com.rest.web.util.spider.pojo.HouseImage;
import com.rest.web.util.spider.pojo.HouseInfo;
import org.apache.log4j.Logger;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.*;

/**
 * Created by Administrator on 2017/7/9.
 */
public class GanJiSpiderUtil {
    private static final Logger log = Logger.getLogger(SpiderUtil.class);

    static  final ObjectMapper MAPPER = new ObjectMapper();


    @Autowired
    private static HouseInfoMapper houseInfoMapper;
    //2,抓取杭州所有房源连接
    public static List<String> getAllLink() {
        ArrayList<String> urlList = new ArrayList<String>();
            Integer pageNum = 250;
            String pageUrl = "https://hz.ganji.com/fang1";
            String url = "";
            String price = null;
            for (int i = 1;i <= pageNum; i++){
                try {
                    url = pageUrl + "/o" + i;
                    System.out.println(url);
                    Document document = Jsoup.connect(url).get();
                    Elements elements = document.select(".title a");
                    for (Element element : elements){
                        url = "https://hz.ganji.com" + element.attr("href");
                        if (url.startsWith("https://hz.ganji.com/fang1")){
                            urlList.add(url);
                            System.out.println(url);
                        }
                    }
                }catch (Exception e){
                    e.printStackTrace();
                }

            }
            return urlList;

    }


    //3获取某个房源的标题
    private static String getTitle(String itemUrl){
        Document document = null;
        String title = null;
        try {
            document = Jsoup.connect(itemUrl).get();
            title = document.select(".card-title i").get(0).text();
            title = title.substring(0, title.indexOf(" "));
            System.out.println(title);
            return title;
        }catch (Exception e){
            return title;
        }
    }

    //3获取某个房源的价格
    private static String getPrice(String itemUrl){
        Document document = null;
        String price = null;
        try {
            document = Jsoup.connect(itemUrl).get();
            price = document.select(".price .num").get(0).text();
            System.out.println(price);
            return price;
        }catch (Exception e){
            return price;
        }
    }


    //3,获取某个房源的描述
    private static String getDesc(String itemUrl){
        Document document = null;
        String desc = "";
        try {
            document = Jsoup.connect(itemUrl).get();
            Elements elements = document.select(".describe .item p span");
            for (Element element : elements){
                desc += element.text();
            }
            System.out.println(desc);
            return desc;
        }catch (Exception e){
            return desc;
        }
    }


    //6,获取某个房源的地址
    private static String getAddress(String itemUrl){
        Document document = null;
        String adress = "";
        try {
            document = Jsoup.connect(itemUrl).get();
            Elements elements = document.select(".item-con span a");
            for (Element element : elements){
                adress += element.text();
            }
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
            Elements elements = document.select(".small-item a img");
            for (Element element:elements){
//                src += "," + element.attr("src").substring(2);
                HouseImage houseImage = new HouseImage();
                houseImage.setHouseId(Long.parseLong("200" + itemUrl.substring(itemUrl.lastIndexOf("/") + 1, itemUrl.lastIndexOf(".") - 1)));
                houseImage.setImageUrl(element.attr("src"));
                list.add(houseImage);
            }
            System.out.println(list);
            return list;
        }catch (Exception e){
            return list;
        }
    }


    //8,获取房源信息,并封装成对象
    public static HouseInfo getItem(String url){
        HouseInfo houseInfo = new HouseInfo();
        try {
//            System.out.println(url.substring(url.lastIndexOf("/") + 1, url.lastIndexOf(".") - 1));
            houseInfo.setHouseId(Long.parseLong("200" + url.substring(url.lastIndexOf("/") + 1, url.lastIndexOf(".") - 1)));
            houseInfo.setPrice(Long.parseLong(GanJiSpiderUtil.getPrice(url)));
            houseInfo.setTitle(GanJiSpiderUtil.getTitle(url));
            houseInfo.setHouseDesc(GanJiSpiderUtil.getDesc(url));
            houseInfo.setAddress(GanJiSpiderUtil.getAddress(url));
            Random random = new Random();
            houseInfo.setEvaluate((random.nextInt(40) + 10) / 10.0 + "分");
            houseInfo.setNotice("暂无");
            houseInfo.setImageList(GanJiSpiderUtil.getImage(url));
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
    public void run(){
//        GanJiSpiderUtil.getAllLink();
//        GanJiSpiderUtil.getTitle("http://hz.ganji.com/fang1/2709065469x.htm");
//   GanJiSpiderUtil.getPrice("http://hz.ganji.com/fang1/2709065469x.htm");
//   GanJiSpiderUtil.getDesc("http://hz.ganji.com/fang1/2709065469x.htm");
//    GanJiSpiderUtil.getAddress("http://hz.ganji.com/fang1/2709065469x.htm");
//    GanJiSpiderUtil.getImage("http://hz.ganji.com/fang1/2709065469x.htm");
//        Random random = new Random();
//        System.out.println((random.nextInt(40) + 10) / 10.0);
        HouseInfo item = GanJiSpiderUtil.getItem("https://hz.ganji.com/fang1/2726382123x.htm?jingxuan=INKicKZPP1X6Hu04910OelFm4eEH5-ItRHrOUqNgEmS-EcJCVcYGnoXy7mjIzbs4mk2-hXZ9BIuQUc6hx4JL6aJ2Fbncv_aX2CdAyBmmPmWidhW53L_2l2zf6nbWJEzb&trackkey=4dfa26f953a017ad17fac7c52045a6c1");
//        System.out.println(item);
    }
}
