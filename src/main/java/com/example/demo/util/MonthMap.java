package com.example.demo.util;

import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.TreeMap;

public class MonthMap {
    public TreeMap<String, Integer> createMonthMap() {

        TreeMap<String, Integer> map = new TreeMap<>();

        //为避免js自动排序,添加了字母和下划线的组合
        map.put("x_01", 0);
        map.put("x_02", 0);
        map.put("x_03", 0);
        map.put("x_04", 0);
        map.put("x_05", 0);
        map.put("x_06", 0);
        map.put("x_07", 0);
        map.put("x_08", 0);
        map.put("x_09", 0);
        map.put("x_10", 0);
        map.put("x_11", 0);
        map.put("x_12", 0);

        return map;
    }
}
