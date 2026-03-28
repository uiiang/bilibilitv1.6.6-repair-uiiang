package com.bilibili.tv.api.video;

import android.os.Parcel;
import android.os.Parcelable;
import android.support.annotation.Keep;
import com.alibaba.fastjson.annotation.JSONField;

@Keep
public class BiliUser implements Parcelable {
    public static final Creator<BiliUser> CREATOR = new Creator<BiliUser>() {
        @Override
        public BiliUser createFromParcel(Parcel parcel) {
            return new BiliUser(parcel);
        }

        @Override
        public BiliUser[] newArray(int i) {
            return new BiliUser[i];
        }
    };

    public static final BiliUser NULL = new BiliUser();

    @JSONField(name = "face")
    public String face;

    @JSONField(name = "mid")
    public long mid;

    @JSONField(name = "name")
    public String name;

    public BiliUser() {}

    protected BiliUser(Parcel parcel) {
        this.face = parcel.readString();
        this.mid = parcel.readLong();
        this.name = parcel.readString();
    }

    @Override
    public int describeContents() {
        return 0;
    }

    @Override
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.face);
        parcel.writeLong(this.mid);
        parcel.writeString(this.name);
    }
}
