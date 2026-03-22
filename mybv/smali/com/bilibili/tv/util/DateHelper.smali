.class public Lcom/bilibili/tv/util/DateHelper;
.super Ljava/lang/Object;
.source "DateHelper.java"


# static fields
.field private static final DAY:J = 0x5265c00L

.field private static final FORMAT_FULL:Ljava/text/SimpleDateFormat;

.field private static final FORMAT_THIS_YEAR:Ljava/text/SimpleDateFormat;

.field private static final HOUR:J = 0x36ee80L

.field private static final MINUTE:J = 0xea60L

.field private static final WEEK:J = 0x240c8400L


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 11
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MM-dd"

    sget-object v2, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/bilibili/tv/util/DateHelper;->FORMAT_THIS_YEAR:Ljava/text/SimpleDateFormat;

    .line 12
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd"

    sget-object v2, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/bilibili/tv/util/DateHelper;->FORMAT_FULL:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static formatDate(J)Ljava/lang/String;
    .locals 2

    .prologue
    .line 20
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p0, p1, v0, v1}, Lcom/bilibili/tv/util/DateHelper;->formatDate(JJ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static formatDate(JJ)Ljava/lang/String;
    .locals 8

    .prologue
    const-wide/16 v2, 0x0

    const/4 v7, 0x1

    .line 24
    const-wide/16 v0, 0x3e8

    mul-long/2addr v0, p0

    .line 26
    sub-long v4, p2, v0

    .line 28
    cmp-long v6, v4, v2

    if-gez v6, :cond_52

    .line 32
    :goto_c
    const-wide/32 v4, 0x240c8400

    cmp-long v2, v2, v4

    if-gez v2, :cond_22

    .line 33
    const-wide/32 v4, 0xea60

    const/high16 v6, 0x40000

    move-wide v2, p2

    invoke-static/range {v0 .. v6}, Landroid/text/format/DateUtils;->getRelativeTimeSpanString(JJJI)Ljava/lang/CharSequence;

    move-result-object v0

    .line 38
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 50
    :goto_21
    return-object v0

    .line 41
    :cond_22
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 42
    invoke-virtual {v2, p2, p3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 44
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    .line 45
    invoke-virtual {v3, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 47
    invoke-virtual {v2, v7}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v3, v7}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-ne v2, v3, :cond_46

    .line 48
    sget-object v2, Lcom/bilibili/tv/util/DateHelper;->FORMAT_THIS_YEAR:Ljava/text/SimpleDateFormat;

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    goto :goto_21

    .line 50
    :cond_46
    sget-object v2, Lcom/bilibili/tv/util/DateHelper;->FORMAT_FULL:Ljava/text/SimpleDateFormat;

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    goto :goto_21

    :cond_52
    move-wide v2, v4

    goto :goto_c
.end method
