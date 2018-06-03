package org.kim.utils;

import java.util.UUID;

/**
 * 随机生成id
 * Created by ABEL on 2017/4/17.
 */
public class GetId {
    public static String getUUID() {
        UUID uuid = UUID.randomUUID();
        String str = uuid.toString();
        String uuidstr = str.replace("-", "");
        return uuidstr;
    }
}
