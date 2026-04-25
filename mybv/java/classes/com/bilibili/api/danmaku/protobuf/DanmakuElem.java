package com.bilibili.api.danmaku.protobuf;

import java.io.ByteArrayInputStream;
import java.io.DataInputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

public class DanmakuElem {
    private static final String TAG = "DanmakuElem";
    
    private int progress = 0;
    private int mode = 1;
    private int fontsize = 25;
    private int color = 0xFFFFFF;
    private String midHash = "";
    private String content = "";
    private int weight = 0;
    private int pool = 0;

    public int getProgress() {
        return progress;
    }

    public int getMode() {
        return mode;
    }

    public int getFontsize() {
        return fontsize;
    }

    public int getColor() {
        return color;
    }

    public String getMidHash() {
        return midHash;
    }

    public String getContent() {
        return content;
    }

    public int getWeight() {
        return weight;
    }

    public int getPool() {
        return pool;
    }

    public static DanmakuElem parseFrom(byte[] data, int offset, int length) throws IOException {
        DanmakuElem elem = new DanmakuElem();
        DataInputStream dis = new DataInputStream(new ByteArrayInputStream(data, offset, length));
        
        while (dis.available() > 0) {
            int tag = readVarint(dis);
            int fieldNumber = tag >>> 3;
            int wireType = tag & 0x7;
            
            switch (fieldNumber) {
                case 2:
                    if (wireType == 0) {
                        elem.progress = readVarint(dis);
                    } else {
                        skipField(dis, wireType);
                    }
                    break;
                case 3:
                    if (wireType == 0) {
                        elem.mode = readVarint(dis);
                    } else {
                        skipField(dis, wireType);
                    }
                    break;
                case 4:
                    if (wireType == 0) {
                        elem.fontsize = readVarint(dis);
                    } else {
                        skipField(dis, wireType);
                    }
                    break;
                case 5:
                    if (wireType == 0) {
                        elem.color = readVarint(dis);
                    } else {
                        skipField(dis, wireType);
                    }
                    break;
                case 6:
                    if (wireType == 2) {
                        int len = readVarint(dis);
                        byte[] strBytes = new byte[len];
                        dis.readFully(strBytes);
                        elem.midHash = new String(strBytes, "UTF-8");
                    } else {
                        skipField(dis, wireType);
                    }
                    break;
                case 7:
                    if (wireType == 2) {
                        int len = readVarint(dis);
                        byte[] strBytes = new byte[len];
                        dis.readFully(strBytes);
                        elem.content = new String(strBytes, "UTF-8");
                    } else {
                        skipField(dis, wireType);
                    }
                    break;
                case 9:
                    if (wireType == 0) {
                        elem.weight = readVarint(dis);
                    } else {
                        skipField(dis, wireType);
                    }
                    break;
                case 11:
                    if (wireType == 0) {
                        elem.pool = readVarint(dis);
                    } else {
                        skipField(dis, wireType);
                    }
                    break;
                default:
                    skipField(dis, wireType);
                    break;
            }
        }
        
        return elem;
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

    @Override
    public String toString() {
        return "DanmakuElem{progress=" + progress + ", mode=" + mode + 
               ", fontsize=" + fontsize + ", color=" + color + 
               ", content='" + content + "', pool=" + pool + "}";
    }
}
