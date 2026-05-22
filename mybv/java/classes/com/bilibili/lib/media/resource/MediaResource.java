package com.bilibili.lib.media.resource;

import android.os.Parcel;
import android.os.Parcelable;
import bl.qr;
import bl.qt;
import org.json.JSONException;
import org.json.JSONObject;

import android.os.Bundle;
import mybl.VideoViewParams;

/* compiled from: BL */
/* loaded from: classes.dex */
public class MediaResource implements Parcelable, qr {
    public static final Parcelable.Creator<MediaResource> CREATOR = new Parcelable.Creator<MediaResource>() { // from class: com.bilibili.lib.media.resource.MediaResource.1
        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public MediaResource createFromParcel(Parcel parcel) {
            return new MediaResource(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public MediaResource[] newArray(int i) {
            return new MediaResource[i];
        }
    };
    public VodIndex a;
    public boolean b;
    public int c;
    private int d;

    public JSONObject dash;
    public int quality;
    public org.json.JSONArray clip_info_list;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public MediaResource() {
        this.c = -1;
        this.d = 0;
    }

    public final int a() {
        if (this.a == null || this.a.a == null) {
            return 0;
        }
        return this.a.a.size();
    }

    public final boolean c() {
        PlayIndex d = d();
        return d != null && d.e();
    }

    public PlayIndex d() {
        if (this.a == null || this.a.a()) {
            return null;
        }
        return this.a.a.get(this.d);
    }

    public void a(int i) {
        this.d = i;
    }

    public int e() {
        return this.d;
    }

    @Override // bl.qr
    public void a(JSONObject jSONObject) throws JSONException {
        this.d = jSONObject.optInt("resolved_index");
        this.a = (VodIndex) qt.a(jSONObject.optJSONObject("vod_index"), VodIndex.class);
        this.c = jSONObject.optInt("network_state");

        if(jSONObject.optInt("quality") != 0){
            this.dash = jSONObject.optJSONObject("dash");
            this.quality = jSONObject.optInt("quality");
        }
        
        this.clip_info_list = jSONObject.optJSONArray("clip_info_list");
    }

    @Override // bl.qr
    public JSONObject b() throws JSONException {
        JSONObject result = new JSONObject()
            .put("resolved_index", this.d)
            .put("vod_index", qt.a(this.a))
            .put("network_state", this.c)
            .put("dash", this.dash)
            .put("quality", this.quality);
        
        if (this.clip_info_list != null && this.clip_info_list.length() > 0) {
            result.put("clip_info_list", this.clip_info_list);
        }
        
        return result;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.d);
        parcel.writeParcelable(this.a, i);
        parcel.writeInt(this.c);

        parcel.writeString(this.dash != null ? this.dash.toString() : "");
        parcel.writeInt(this.quality);
        parcel.writeString(this.clip_info_list != null ? this.clip_info_list.toString() : "");
    }

    protected MediaResource(Parcel parcel) {
        this.c = -1;
        this.d = parcel.readInt();
        this.a = (VodIndex) parcel.readParcelable(VodIndex.class.getClassLoader());
        this.c = parcel.readInt();

        try{
            String dashStr = parcel.readString();
            if(dashStr != null && !dashStr.isEmpty()){
                this.dash = new JSONObject(dashStr);
            }
            this.quality = parcel.readInt();
        }catch(Exception e){}
        
        try{
            String clipInfoStr = parcel.readString();
            if(clipInfoStr != null && !clipInfoStr.isEmpty()){
                this.clip_info_list = new org.json.JSONArray(clipInfoStr);
            }
        }catch(Exception e){}
    }
}