package com.rest.web.controller;

import com.rest.web.pojo.HouseArea;
import com.rest.web.pojo.HouseImage;
import com.rest.web.pojo.HouseInfo;
import com.rest.web.service.HouseAreaServie;
import com.rest.web.service.HouseImageService;
import com.rest.web.service.HouseInfoService;
import com.rest.web.util.SpiderUtil;
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



}
