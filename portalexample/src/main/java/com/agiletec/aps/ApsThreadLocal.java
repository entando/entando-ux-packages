package com.agiletec.aps;

import java.util.HashMap;
import java.util.Map;

public class ApsThreadLocal {
    
    private static final ThreadLocal<Map<String, Object>> apsThreadLocal = new ThreadLocal<Map<String, Object>>();
    
    public static void init() {
        Map<String, Object> map = apsThreadLocal.get();
        if (null != map) {
            map.clear();
        } else {
            apsThreadLocal.set(new HashMap<>());
            //map = apsThreadLocal.get();
        }
    }
    
    public static void destroy() {
		Map<String, Object> map = apsThreadLocal.get();
		if (null != map) {
			map.clear();
		}
	}
    
    public static void set(String key, Object value) {
		Map<String, Object> map = apsThreadLocal.get();
		if (null == map) {
			apsThreadLocal.set(new HashMap<>());
			map = apsThreadLocal.get();
		}
		map.put(key, value);
	}

	public static Object get(String key) {
		Map<String, Object> map = apsThreadLocal.get();
		if (null != map) {
			return map.get(key);
		}
		return null;
	}
    
	public static void remove(String key) {
		Map<String, Object> map = apsThreadLocal.get();
		if (null != map) {
			map.remove(key);
		}
	}
    
}
