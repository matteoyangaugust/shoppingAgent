package com.matt.util;

import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;

public class MattUtil {
    public static <T> String[] getClassFieldsArray(T ref){
        List<String> fieldNames = new ArrayList<>();
        Class c = ref.getClass();
        Field[] fields = c.getDeclaredFields();
        for(Field field : fields) {
            if(!"sn".equals(field.getName())){
                fieldNames.add(field.getName());
            }
        }
        return fieldNames.toArray(new String[fieldNames.size()]);
    }

    public static String getDateTime(){
        Calendar cal = Calendar.getInstance();
        String year = String.valueOf(cal.get(Calendar.YEAR));
        String month = String.valueOf(cal.get(Calendar.MONTH) + 1 < 10 ? "0" + (cal.get(Calendar.MONTH) + 1) : cal.get(Calendar.MONTH) + 1);
        String date = String.valueOf(cal.get(Calendar.DATE) < 10 ? "0" + cal.get(Calendar.DATE) : cal.get(Calendar.DATE));
        String hour = String.valueOf(cal.get(Calendar.HOUR) < 10 ? "0" + cal.get(Calendar.HOUR) : cal.get(Calendar.HOUR));
        String minute = String.valueOf(cal.get(Calendar.MINUTE) < 10 ? "0" + cal.get(Calendar.MINUTE) : cal.get(Calendar.MINUTE));
        return year + month + date + hour + minute;
    }
}
