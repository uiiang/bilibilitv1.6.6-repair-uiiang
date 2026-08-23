package bl;

import java.net.URLEncoder;
import java.util.Map;
import java.util.TreeMap;

/* compiled from: BL */
/* loaded from: classes.dex */
/**
 * 自定义qf编码器：直接URL编码拼接query参数（按key排序），
 * 不经过 LibBili native 库，因此不会自动附加 ts 参数。
 * 用于 bsbsb.top/api/skipSegments 等第三方接口请求。
 */
public class QfNoTs implements qf {
    @Override // bl.qf
    public String a(Map<String, String> map) {
        if (map == null || map.size() == 0) {
            return "";
        }
        StringBuilder sb = new StringBuilder();
        TreeMap<String, String> sorted = new TreeMap<String, String>(map);
        boolean first = true;
        for (Map.Entry<String, String> entry : sorted.entrySet()) {
            if (!first) {
                sb.append("&");
            }
            first = false;
            sb.append(entry.getKey());
            sb.append("=");
            sb.append(encode(entry.getValue()));
        }
        return sb.toString();
    }

    private String encode(String value) {
        if (value == null) {
            return "";
        }
        try {
            return URLEncoder.encode(value, "UTF-8");
        } catch (Exception e) {
            return value;
        }
    }
}
