.class public Lcom/bilibili/lib/media/resource/MediaResource;
.super Ljava/lang/Object;
.source "MediaResource.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Lbl/qr;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/bilibili/lib/media/resource/MediaResource;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public a:Lcom/bilibili/lib/media/resource/VodIndex;

.field public b:Z

.field public c:I

.field public clip_info_list:Lorg/json/JSONArray;

.field private d:I

.field public dash:Lorg/json/JSONObject;

.field public quality:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    new-instance v0, Lcom/bilibili/lib/media/resource/MediaResource$1;

    invoke-direct {v0}, Lcom/bilibili/lib/media/resource/MediaResource$1;-><init>()V

    sput-object v0, Lcom/bilibili/lib/media/resource/MediaResource;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const/4 v0, -0x1

    iput v0, p0, Lcom/bilibili/lib/media/resource/MediaResource;->c:I

    .line 45
    const/4 v0, 0x0

    iput v0, p0, Lcom/bilibili/lib/media/resource/MediaResource;->d:I

    .line 46
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .prologue
    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    const/4 v0, -0x1

    iput v0, p0, Lcom/bilibili/lib/media/resource/MediaResource;->c:I

    .line 118
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/bilibili/lib/media/resource/MediaResource;->d:I

    .line 119
    const-class v0, Lcom/bilibili/lib/media/resource/VodIndex;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/bilibili/lib/media/resource/VodIndex;

    iput-object v0, p0, Lcom/bilibili/lib/media/resource/MediaResource;->a:Lcom/bilibili/lib/media/resource/VodIndex;

    .line 120
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/bilibili/lib/media/resource/MediaResource;->c:I

    .line 123
    :try_start_20
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 124
    if-eqz v0, :cond_33

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_33

    .line 125
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/bilibili/lib/media/resource/MediaResource;->dash:Lorg/json/JSONObject;

    .line 127
    :cond_33
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/bilibili/lib/media/resource/MediaResource;->quality:I
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_39} :catch_4f

    .line 131
    :goto_39
    :try_start_39
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 132
    if-eqz v0, :cond_4c

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4c

    .line 133
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/bilibili/lib/media/resource/MediaResource;->clip_info_list:Lorg/json/JSONArray;
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_4c} :catch_4d

    .line 136
    :cond_4c
    :goto_4c
    return-void

    .line 135
    :catch_4d
    move-exception v0

    goto :goto_4c

    .line 128
    :catch_4f
    move-exception v0

    goto :goto_39
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/bilibili/lib/media/resource/MediaResource;->a:Lcom/bilibili/lib/media/resource/VodIndex;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/bilibili/lib/media/resource/MediaResource;->a:Lcom/bilibili/lib/media/resource/VodIndex;

    iget-object v0, v0, Lcom/bilibili/lib/media/resource/VodIndex;->a:Ljava/util/ArrayList;

    if-nez v0, :cond_c

    .line 50
    :cond_a
    const/4 v0, 0x0

    .line 52
    :goto_b
    return v0

    :cond_c
    iget-object v0, p0, Lcom/bilibili/lib/media/resource/MediaResource;->a:Lcom/bilibili/lib/media/resource/VodIndex;

    iget-object v0, v0, Lcom/bilibili/lib/media/resource/VodIndex;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_b
.end method

.method public a(I)V
    .locals 0

    .prologue
    .line 68
    iput p1, p0, Lcom/bilibili/lib/media/resource/MediaResource;->d:I

    .line 69
    return-void
.end method

.method public a(Lorg/json/JSONObject;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 77
    const-string v0, "resolved_index"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/bilibili/lib/media/resource/MediaResource;->d:I

    .line 78
    const-string v0, "vod_index"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-class v1, Lcom/bilibili/lib/media/resource/VodIndex;

    invoke-static {v0, v1}, Lbl/qt;->a(Lorg/json/JSONObject;Ljava/lang/Class;)Lbl/qr;

    move-result-object v0

    check-cast v0, Lcom/bilibili/lib/media/resource/VodIndex;

    iput-object v0, p0, Lcom/bilibili/lib/media/resource/MediaResource;->a:Lcom/bilibili/lib/media/resource/VodIndex;

    .line 79
    const-string v0, "network_state"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/bilibili/lib/media/resource/MediaResource;->c:I

    .line 81
    const-string v0, "quality"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_38

    .line 82
    const-string v0, "dash"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lcom/bilibili/lib/media/resource/MediaResource;->dash:Lorg/json/JSONObject;

    .line 83
    const-string v0, "quality"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/bilibili/lib/media/resource/MediaResource;->quality:I

    .line 86
    :cond_38
    const-string v0, "clip_info_list"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    iput-object v0, p0, Lcom/bilibili/lib/media/resource/MediaResource;->clip_info_list:Lorg/json/JSONArray;

    .line 87
    return-void
.end method

.method public b()Lorg/json/JSONObject;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 91
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "resolved_index"

    iget v2, p0, Lcom/bilibili/lib/media/resource/MediaResource;->d:I

    .line 92
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "vod_index"

    iget-object v2, p0, Lcom/bilibili/lib/media/resource/MediaResource;->a:Lcom/bilibili/lib/media/resource/VodIndex;

    .line 93
    invoke-static {v2}, Lbl/qt;->a(Lbl/qr;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "network_state"

    iget v2, p0, Lcom/bilibili/lib/media/resource/MediaResource;->c:I

    .line 94
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "dash"

    iget-object v2, p0, Lcom/bilibili/lib/media/resource/MediaResource;->dash:Lorg/json/JSONObject;

    .line 95
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "quality"

    iget v2, p0, Lcom/bilibili/lib/media/resource/MediaResource;->quality:I

    .line 96
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v0

    .line 98
    iget-object v1, p0, Lcom/bilibili/lib/media/resource/MediaResource;->clip_info_list:Lorg/json/JSONArray;

    if-eqz v1, :cond_44

    iget-object v1, p0, Lcom/bilibili/lib/media/resource/MediaResource;->clip_info_list:Lorg/json/JSONArray;

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_44

    .line 99
    const-string v1, "clip_info_list"

    iget-object v2, p0, Lcom/bilibili/lib/media/resource/MediaResource;->clip_info_list:Lorg/json/JSONArray;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 102
    :cond_44
    return-object v0
.end method

.method public final c()Z
    .locals 1

    .prologue
    .line 56
    invoke-virtual {p0}, Lcom/bilibili/lib/media/resource/MediaResource;->d()Lcom/bilibili/lib/media/resource/PlayIndex;

    move-result-object v0

    .line 57
    if-eqz v0, :cond_e

    invoke-virtual {v0}, Lcom/bilibili/lib/media/resource/PlayIndex;->e()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public d()Lcom/bilibili/lib/media/resource/PlayIndex;
    .locals 2

    .prologue
    .line 61
    iget-object v0, p0, Lcom/bilibili/lib/media/resource/MediaResource;->a:Lcom/bilibili/lib/media/resource/VodIndex;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/bilibili/lib/media/resource/MediaResource;->a:Lcom/bilibili/lib/media/resource/VodIndex;

    invoke-virtual {v0}, Lcom/bilibili/lib/media/resource/VodIndex;->a()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 62
    :cond_c
    const/4 v0, 0x0

    .line 64
    :goto_d
    return-object v0

    :cond_e
    iget-object v0, p0, Lcom/bilibili/lib/media/resource/MediaResource;->a:Lcom/bilibili/lib/media/resource/VodIndex;

    iget-object v0, v0, Lcom/bilibili/lib/media/resource/VodIndex;->a:Ljava/util/ArrayList;

    iget v1, p0, Lcom/bilibili/lib/media/resource/MediaResource;->d:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/lib/media/resource/PlayIndex;

    goto :goto_d
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 40
    const/4 v0, 0x0

    return v0
.end method

.method public e()I
    .locals 1

    .prologue
    .line 72
    iget v0, p0, Lcom/bilibili/lib/media/resource/MediaResource;->d:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 107
    iget v0, p0, Lcom/bilibili/lib/media/resource/MediaResource;->d:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 108
    iget-object v0, p0, Lcom/bilibili/lib/media/resource/MediaResource;->a:Lcom/bilibili/lib/media/resource/VodIndex;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 109
    iget v0, p0, Lcom/bilibili/lib/media/resource/MediaResource;->c:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 111
    iget-object v0, p0, Lcom/bilibili/lib/media/resource/MediaResource;->dash:Lorg/json/JSONObject;

    if-eqz v0, :cond_2f

    iget-object v0, p0, Lcom/bilibili/lib/media/resource/MediaResource;->dash:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_19
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 112
    iget v0, p0, Lcom/bilibili/lib/media/resource/MediaResource;->quality:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 113
    iget-object v0, p0, Lcom/bilibili/lib/media/resource/MediaResource;->clip_info_list:Lorg/json/JSONArray;

    if-eqz v0, :cond_32

    iget-object v0, p0, Lcom/bilibili/lib/media/resource/MediaResource;->clip_info_list:Lorg/json/JSONArray;

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_2b
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 114
    return-void

    .line 111
    :cond_2f
    const-string v0, ""

    goto :goto_19

    .line 113
    :cond_32
    const-string v0, ""

    goto :goto_2b
.end method
