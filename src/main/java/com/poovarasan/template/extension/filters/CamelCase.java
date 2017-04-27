package com.poovarasan.template.extension.filters;


import com.mitchellbosecke.pebble.extension.Filter;

import java.util.List;
import java.util.Map;

/**
 * Created by poovarasanv on 18/4/17.
 * Project : mobiledashboard
 */

public class CamelCase implements Filter {
    @Override
    public Object apply(Object o, Map<String, Object> map) {
        if (o == null) {
            return null;
        }
        String str = (String) o;
        return toCamelCase(str);
    }

    @Override
    public List<String> getArgumentNames() {
        return null;
    }


    static String toCamelCase(String s) {
        String[] parts = s.split("_");
        String camelCaseString = "";
        for (String part : parts) {
            camelCaseString = camelCaseString + toProperCase(part);
        }
        return camelCaseString;
    }

    static String toProperCase(String s) {
        return s.substring(0, 1).toUpperCase() +
                s.substring(1).toLowerCase();
    }
}
