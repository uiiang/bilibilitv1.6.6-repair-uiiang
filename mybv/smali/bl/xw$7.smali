.class Lbl/xw$7;
.super Landroid/widget/ArrayAdapter;
.source "xw.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbl/xw;->showBookshelfInPanel()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/bilibili/tv/ebook/model/BookshelfItem;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lbl/xw;

.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lbl/xw;Landroid/content/Context;IILjava/util/List;Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 1087
    iput-object p1, p0, Lbl/xw$7;->this$0:Lbl/xw;

    iput-object p6, p0, Lbl/xw$7;->val$activity:Landroid/app/Activity;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;IILjava/util/List;)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12

    .prologue
    .line 1093
    if-nez p2, :cond_20d

    .line 1095
    new-instance p2, Landroid/widget/LinearLayout;

    iget-object v0, p0, Lbl/xw$7;->val$activity:Landroid/app/Activity;

    invoke-direct {p2, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1096
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1097
    const/16 v0, 0x18

    const/16 v1, 0x10

    const/16 v2, 0x18

    const/16 v3, 0x10

    invoke-virtual {p2, v0, v1, v2, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 1100
    new-instance v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lbl/xw$7;->val$activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 1101
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1106
    new-instance v1, Landroid/widget/TextView;

    iget-object v2, p0, Lbl/xw$7;->val$activity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1107
    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1108
    const/high16 v2, 0x41800000    # 16.0f

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1109
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 1110
    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 1111
    const v2, 0x1020014

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setId(I)V

    .line 1113
    new-instance v2, Landroid/widget/TextView;

    iget-object v3, p0, Lbl/xw$7;->val$activity:Landroid/app/Activity;

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1114
    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1115
    const/high16 v3, 0x41800000    # 16.0f

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1116
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 1117
    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 1118
    const v3, 0x1020015

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setId(I)V

    .line 1120
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v4, -0x2

    const/4 v5, -0x2

    const/16 v6, 0x13

    invoke-direct {v3, v4, v5, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v1, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1125
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x2

    const/4 v4, -0x2

    const/16 v5, 0x15

    invoke-direct {v1, v3, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v2, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1132
    new-instance v1, Landroid/widget/TextView;

    iget-object v2, p0, Lbl/xw$7;->val$activity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1133
    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1134
    const/high16 v2, 0x41400000    # 12.0f

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1135
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 1136
    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 1137
    const v2, 0x1020010

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setId(I)V

    .line 1138
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1144
    new-instance v2, Landroid/widget/TextView;

    iget-object v3, p0, Lbl/xw$7;->val$activity:Landroid/app/Activity;

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1145
    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1146
    const/high16 v3, 0x41400000    # 12.0f

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1147
    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 1148
    const v3, 0x1020005

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setId(I)V

    .line 1149
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-direct {v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1155
    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1156
    invoke-virtual {p2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1157
    invoke-virtual {p2, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1164
    :goto_d4
    const v0, 0x1020014

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1165
    const v1, 0x1020015

    invoke-virtual {p2, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 1166
    const v2, 0x1020010

    invoke-virtual {p2, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 1167
    const v3, 0x1020005

    invoke-virtual {p2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 1169
    iget-object v4, p0, Lbl/xw$7;->this$0:Lbl/xw;

    # getter for: Lbl/xw;->bookshelfItems:Ljava/util/List;
    invoke-static {v4}, Lbl/xw;->access$500(Lbl/xw;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/bilibili/tv/ebook/model/BookshelfItem;

    .line 1172
    invoke-virtual {v4}, Lcom/bilibili/tv/ebook/model/BookshelfItem;->getTitle()Ljava/lang/String;

    move-result-object v5

    .line 1173
    if-eqz v5, :cond_118

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_118

    const-string v6, "Unknown Title"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_13a

    .line 1175
    :cond_118
    invoke-virtual {v4}, Lcom/bilibili/tv/ebook/model/BookshelfItem;->getFilePath()Ljava/lang/String;

    move-result-object v5

    .line 1176
    if-eqz v5, :cond_21b

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_21b

    .line 1177
    const/16 v6, 0x2f

    invoke-virtual {v5, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v6

    .line 1178
    const/16 v7, 0x2e

    invoke-virtual {v5, v7}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v7

    .line 1179
    if-ltz v6, :cond_211

    if-le v7, v6, :cond_211

    .line 1180
    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 1192
    :cond_13a
    :goto_13a
    invoke-virtual {v4}, Lcom/bilibili/tv/ebook/model/BookshelfItem;->getAuthor()Ljava/lang/String;

    move-result-object v6

    .line 1193
    if-eqz v6, :cond_21f

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_21f

    const-string v7, "\u672a\u77e5"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_21f

    const-string v7, "Unknown"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_21f

    const-string v7, "Unknown Author"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_21f

    .line 1200
    :goto_15e
    const-string v7, ""

    .line 1201
    invoke-virtual {v4}, Lcom/bilibili/tv/ebook/model/BookshelfItem;->getLastReadTime()J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-lez v8, :cond_174

    .line 1202
    iget-object v7, p0, Lbl/xw$7;->this$0:Lbl/xw;

    invoke-virtual {v4}, Lcom/bilibili/tv/ebook/model/BookshelfItem;->getLastReadTime()J

    move-result-wide v8

    # invokes: Lbl/xw;->formatLastReadTime(J)Ljava/lang/String;
    invoke-static {v7, v8, v9}, Lbl/xw;->access$600(Lbl/xw;J)Ljava/lang/String;

    move-result-object v7

    .line 1206
    :cond_174
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1207
    if-eqz v6, :cond_222

    .line 1208
    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1209
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1215
    :goto_180
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1216
    const-string v1, "%.1f%%"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {v4}, Lcom/bilibili/tv/ebook/model/BookshelfItem;->getProgressPercentage()F

    move-result v8

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    aput-object v8, v5, v6

    invoke-static {v1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1218
    invoke-virtual {v4}, Lcom/bilibili/tv/ebook/model/BookshelfItem;->getChapterTitle()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1b9

    invoke-virtual {v4}, Lcom/bilibili/tv/ebook/model/BookshelfItem;->getChapterTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1b9

    .line 1219
    const-string v1, " | "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v4}, Lcom/bilibili/tv/ebook/model/BookshelfItem;->getChapterTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1222
    :cond_1b9
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1225
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1226
    invoke-virtual {v4}, Lcom/bilibili/tv/ebook/model/BookshelfItem;->getFileExtension()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1dc

    invoke-virtual {v4}, Lcom/bilibili/tv/ebook/model/BookshelfItem;->getFileExtension()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1dc

    .line 1227
    invoke-virtual {v4}, Lcom/bilibili/tv/ebook/model/BookshelfItem;->getFileExtension()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1230
    :cond_1dc
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1f0

    .line 1231
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_1ed

    .line 1232
    const-string v1, " | "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1234
    :cond_1ed
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1237
    :cond_1f0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1240
    instance-of v0, p3, Landroid/widget/ListView;

    if-eqz v0, :cond_20c

    .line 1241
    check-cast p3, Landroid/widget/ListView;

    .line 1242
    invoke-virtual {p3}, Landroid/widget/ListView;->getSelectedItemPosition()I

    move-result v0

    if-ne p1, v0, :cond_229

    .line 1243
    const-string v0, "#1E90FF"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 1249
    :cond_20c
    :goto_20c
    return-object p2

    .line 1160
    :cond_20d
    check-cast p2, Landroid/widget/LinearLayout;

    goto/16 :goto_d4

    .line 1181
    :cond_211
    if-ltz v6, :cond_13a

    .line 1182
    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_13a

    .line 1187
    :cond_21b
    const-string v5, "\u672a\u77e5\u4e66\u7c4d"

    goto/16 :goto_13a

    .line 1196
    :cond_21f
    const/4 v6, 0x0

    goto/16 :goto_15e

    .line 1211
    :cond_222
    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_180

    .line 1245
    :cond_229
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    goto :goto_20c
.end method
