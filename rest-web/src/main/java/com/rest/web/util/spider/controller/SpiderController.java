package com.rest.web.util.spider.controller;


import com.rest.web.util.spider.pojo.HouseArea;
import com.rest.web.util.spider.pojo.HouseImage;
import com.rest.web.util.spider.pojo.HouseInfo;
import com.rest.web.util.spider.service.HouseAreaServie;
import com.rest.web.util.spider.service.HouseImageService;
import com.rest.web.util.spider.service.HouseInfoService;
import com.rest.web.util.spider.util.GanJiSpiderUtil;
import com.rest.web.util.spider.util.SpiderUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import java.io.IOException;
import java.util.List;
import java.util.Map;

/**
 * Created by Administrator on 2017/7/8.
 */
@Controller
public class SpiderController {

    @Autowired
    private HouseInfoService houseInfoService;

    @Autowired
    private HouseAreaServie houseAreaServie;

    @Autowired
    private HouseImageService houseImageService;

    @RequestMapping("/init")
    public void init(){
        List<Map> mapList = null;
        List<HouseArea> houseAreas = houseAreaServie.select();
            mapList = SpiderUtil.getAllLink();
            for (Map<String,String> map: mapList){
                try {
                    HouseInfo houseInfo = SpiderUtil.getItem(map);
                    List<HouseImage> imageList = houseInfo.getImageList();
                    for (HouseArea houseArea : houseAreas){
                        if (houseInfo.getAddress().contains(houseArea.getAreaName())){
                            houseInfo.setAreaId(houseArea.getAreaId());
                        }
                    }
                    houseInfoService.saveHouseInfo(houseInfo);
                    for (HouseImage houseImage : imageList){
                        houseImageService.saveHouseImage(houseImage);
                    }
                }catch (Exception e){
                    e.printStackTrace();
                }

            }

    }

    @RequestMapping("/go")
    public void go(){
        List<String> urlList = null;
        List<HouseArea> houseAreas = houseAreaServie.select();
        urlList = GanJiSpiderUtil.getAllLink();
        for (String url: urlList){
            try {
                HouseInfo houseInfo = GanJiSpiderUtil.getItem(url);
                List<HouseImage> imageList = houseInfo.getImageList();
                for (HouseArea houseArea : houseAreas){
                    if (houseInfo.getAddress().contains(houseArea.getAreaName())){
                        houseInfo.setAreaId(houseArea.getAreaId());
                    }
                }
                houseInfoService.saveHouseInfo(houseInfo);
                for (HouseImage houseImage : imageList){
                    houseImageService.saveHouseImage(houseImage);
                }
            }catch (Exception e){
                e.printStackTrace();
            }

        }

    }

}
