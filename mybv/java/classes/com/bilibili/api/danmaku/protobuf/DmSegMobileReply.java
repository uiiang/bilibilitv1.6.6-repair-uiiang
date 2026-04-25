package com.bilibili.api.danmaku.protobuf;

import android.util.Log;

import java.io.ByteArrayInputStream;
import java.io.DataInputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public class DmSegMobileReply {
    private static final String TAG = "DmSegMobileReply";
    
    private List<DanmakuElem> elems = new ArrayList<>();
    private int state = 0;

    public List<DanmakuElem> getElems() {
        return elems;
    }

    public int getElemsCount() {
        return elems.size();
    }

    public int getState() {
        return state;
    }

    public static DmSegMobileReply parseFrom(byte[] data) throws IOException {
        DmSegMobileReply reply = new DmSegMobileReply();
        DataInputStream dis = new DataInputStream(new ByteArrayInputStream(data));
        
        try {
            while (dis.available() > 0) {
                int tag = readVarint(dis);
                int fieldNumber = tag >>> 3;
                int wireType = tag & 0x7;
                
                switch (fieldNumber) {
                    case 1:
                        if (wireType == 2) {
                            int len = readVarint(dis);
                            int startOffset = data.length - dis.available();
                            try {
                                DanmakuElem elem = DanmakuElem.parseFrom(data, startOffset, len);
                                reply.elems.add(elem);
                            } catch (Exception e) {
                                Log.w(TAG, "parse danmaku elem error: " + e.getMessage());
                            }
                            dis.skipBytes(len);
                        } else {
                            skipField(dis, wireType);
                        }
                        break;
                    case 2:
                        if (wireType == 0) {
                            reply.state = readVarint(dis);
                        } else {
                            skipField(dis, wireType);
                        }
                        break;
                    default:
                        skipField(dis, wireType);
                        break;
                }
            }
        } catch (Exception e) {
            Log.e(TAG, "parse DmSegMobileReply error: " + e.getMessage());
        }
        
        Log.i(TAG, "[解析完成] count=" + reply.elems.size() + " state=" + reply.state);
        return reply;
    }

    private static int readVarint(DataInputStream dis) throws IOException {
        int result = 0;
        int shift = 0;
        int b;
        do {
            b = dis.readByte() & 0xFF;
            result |= (b & 0x7F) << shift;
            shift += 7;
        } while ((b & 0x80) != 0);
        return result;
    }

    private static void skipField(DataInputStream dis, int wireType) throws IOException {
        switch (wireType) {
            case 0:
                readVarint(dis);
                break;
            case 1:
                dis.skipBytes(8);
                break;
            case 2:
                int len = readVarint(dis);
                dis.skipBytes(len);
                break;
            case 5:
                dis.skipBytes(4);
                break;
            default:
                throw new IOException("Unknown wire type: " + wireType);
        }
    }
}
