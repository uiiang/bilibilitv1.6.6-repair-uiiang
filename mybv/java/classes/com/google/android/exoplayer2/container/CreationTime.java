package com.google.android.exoplayer2.container;

import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.MediaMetadata;
import com.google.android.exoplayer2.metadata.Metadata;
import android.os.Parcel;
import android.os.Parcelable;

public final class CreationTime implements Metadata.Entry {

    public static final Parcelable.Creator<CreationTime> CREATOR = new Parcelable.Creator<CreationTime>() {
        @Override
        public CreationTime createFromParcel(Parcel in) {
            return new CreationTime(in.readLong());
        }

        @Override
        public CreationTime[] newArray(int size) {
            return new CreationTime[size];
        }
    };

    public final long unixTimestampMs;

    public CreationTime(long unixTimestampMs) {
        this.unixTimestampMs = unixTimestampMs;
    }

    @Override
    public int describeContents() {
        return 0;
    }

    @Override
    public void writeToParcel(Parcel dest, int flags) {
        dest.writeLong(unixTimestampMs);
    }

    @Override
    public byte[] getWrappedMetadataBytes() {
        return null;
    }

    @Override
    public Format getWrappedMetadataFormat() {
        return null;
    }

    @Override
    public void populateMediaMetadata(MediaMetadata.Builder builder) {
    }

    @Override
    public String toString() {
        return "CreationTime: " + unixTimestampMs;
    }

    @Override
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        CreationTime other = (CreationTime) obj;
        return unixTimestampMs == other.unixTimestampMs;
    }

    @Override
    public int hashCode() {
        return (int) (unixTimestampMs ^ (unixTimestampMs >>> 32));
    }
}
