.class final Lbl/afa$c;
.super Landroid/support/v7/widget/RecyclerView$a;
.source "afa.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbl/afa;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$a",
        "<",
        "Lbl/adv;",
        ">;",
        "Landroid/view/View$OnClickListener;",
        "Landroid/view/View$OnFocusChangeListener;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lbl/afa;",
            ">;"
        }
    .end annotation
.end field

.field private final b:[I

.field private final c:Z

.field private final d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/bilibili/tv/api/category/CategoryMeta;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lbl/afa;)V
    .locals 8

    .prologue
    const v7, 0x10068

    const/4 v3, 0x1

    const v6, 0x10001

    const/4 v2, 0x0

    .line 209
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$a;-><init>()V

    .line 210
    const-string v0, "mainAreaFragment"

    invoke-static {p1, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 211
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lbl/afa$c;->a:Ljava/lang/ref/WeakReference;

    .line 212
    const/16 v0, 0x18

    new-array v0, v0, [I

    fill-array-data v0, :array_f0

    iput-object v0, p0, Lbl/afa$c;->b:[I

    .line 213
    sget-object v0, Lbl/adl;->a:Lbl/adl;

    invoke-virtual {v0}, Lbl/adl;->e()Z

    move-result v0

    iput-boolean v0, p0, Lbl/afa$c;->c:Z

    .line 214
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lbl/afa$c;->d:Ljava/util/ArrayList;

    .line 215
    invoke-virtual {p1}, Lbl/afa;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/bilibili/tv/api/category/CategoryManager;->getRootCategory(Landroid/content/Context;)Lcom/bilibili/tv/api/category/CategoryMeta;

    move-result-object v1

    .line 216
    if-eqz v1, :cond_da

    .line 217
    invoke-virtual {v1}, Lcom/bilibili/tv/api/category/CategoryMeta;->getChildren()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 218
    :cond_43
    :goto_43
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5d

    .line 219
    sget-object v5, Lcom/bilibili/tv/api/category/CategoryManager;->sIconsArray:Landroid/util/SparseIntArray;

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/api/category/CategoryMeta;

    iget v0, v0, Lcom/bilibili/tv/api/category/CategoryMeta;->mTid:I

    invoke-virtual {v5, v0}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    if-nez v0, :cond_43

    .line 220
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    goto :goto_43

    .line 224
    :cond_5d
    invoke-virtual {v1}, Lcom/bilibili/tv/api/category/CategoryMeta;->getChildren()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v2

    :goto_66
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7e

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/api/category/CategoryMeta;

    .line 225
    iget-object v5, p0, Lbl/afa$c;->d:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 226
    iget v0, v0, Lcom/bilibili/tv/api/category/CategoryMeta;->mTid:I

    if-ne v0, v6, :cond_ee

    move v0, v3

    :goto_7c
    move v1, v0

    .line 229
    goto :goto_66

    .line 230
    :cond_7e
    if-nez v1, :cond_91

    .line 231
    iget-object v0, p0, Lbl/afa$c;->d:Ljava/util/ArrayList;

    new-instance v1, Lcom/bilibili/tv/api/category/CategoryMeta;

    const v4, 0x7f0c00b4

    invoke-static {v4}, Lbl/adl;->e(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v6, v4, v2}, Lcom/bilibili/tv/api/category/CategoryMeta;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v2, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 233
    :cond_91
    iget-object v0, p0, Lbl/afa$c;->d:Ljava/util/ArrayList;

    new-instance v1, Lcom/bilibili/tv/api/category/CategoryMeta;

    const v4, 0x10066

    const v5, 0x7f0c00f5

    invoke-static {v5}, Lbl/adl;->e(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v4, v5, v2}, Lcom/bilibili/tv/api/category/CategoryMeta;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v2, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 234
    const/4 v4, -0x1

    move v1, v2

    .line 235
    :goto_a7
    iget-object v0, p0, Lbl/afa$c;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_ec

    .line 236
    iget-object v0, p0, Lbl/afa$c;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/api/category/CategoryMeta;

    iget v0, v0, Lcom/bilibili/tv/api/category/CategoryMeta;->mTid:I

    if-ne v0, v6, :cond_db

    .line 241
    :goto_bb
    if-ltz v1, :cond_df

    .line 242
    iget-object v0, p0, Lbl/afa$c;->d:Ljava/util/ArrayList;

    add-int/lit8 v1, v1, 0x1

    new-instance v3, Lcom/bilibili/tv/api/category/CategoryMeta;

    const-string v4, "\u6bcf\u5468\u5fc5\u770b"

    invoke-direct {v3, v7, v4, v2}, Lcom/bilibili/tv/api/category/CategoryMeta;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 246
    :goto_cb
    iget-object v0, p0, Lbl/afa$c;->d:Ljava/util/ArrayList;

    new-instance v1, Lcom/bilibili/tv/api/category/CategoryMeta;

    const v3, 0x10067

    const-string v4, "\u5176\u5b83"

    invoke-direct {v1, v3, v4, v2}, Lcom/bilibili/tv/api/category/CategoryMeta;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 248
    :cond_da
    return-void

    .line 235
    :cond_db
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_a7

    .line 244
    :cond_df
    iget-object v0, p0, Lbl/afa$c;->d:Ljava/util/ArrayList;

    new-instance v1, Lcom/bilibili/tv/api/category/CategoryMeta;

    const-string v4, "\u6bcf\u5468\u5fc5\u770b"

    invoke-direct {v1, v7, v4, v2}, Lcom/bilibili/tv/api/category/CategoryMeta;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v3, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_cb

    :cond_ec
    move v1, v4

    goto :goto_bb

    :cond_ee
    move v0, v1

    goto :goto_7c

    .line 212
    :array_f0
    .array-data 4
        0x7f050038
        0x7f050039
        0x7f05003c
        0x7f05003d
        0x7f05003f
        0x7f05003b
        0x7f05003e
        0x7f05003a
        0x7f050039
        0x7f050038
        0x7f05003c
        0x7f05003d
        0x7f05003b
        0x7f05003f
        0x7f05003a
        0x7f05003e
        0x7f05003d
        0x7f050039
        0x7f05003c
        0x7f050038
        0x7f05003a
        0x7f05003b
        0x7f05003e
        0x7f05003f
    .end array-data
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 285
    iget-object v0, p0, Lbl/afa$c;->d:Ljava/util/ArrayList;

    .line 286
    if-eqz v0, :cond_11

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_c
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public bridge synthetic a(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$v;
    .locals 1

    .prologue
    .line 203
    invoke-virtual {p0, p1, p2}, Lbl/afa$c;->a(Landroid/view/ViewGroup;I)Lbl/adv;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/view/ViewGroup;I)Lbl/adv;
    .locals 1

    .prologue
    .line 254
    const-string v0, "parent"

    invoke-static {p1, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 255
    const/4 v0, 0x0

    check-cast v0, Lbl/afa$b;

    sget-object v0, Lbl/afa$b;->Companion:Lbl/afa$b$a;

    invoke-virtual {v0, p1}, Lbl/afa$b$a;->a(Landroid/view/ViewGroup;)Lbl/afa$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic a(Landroid/support/v7/widget/RecyclerView$v;I)V
    .locals 0

    .prologue
    .line 203
    check-cast p1, Lbl/adv;

    invoke-virtual {p0, p1, p2}, Lbl/afa$c;->a(Lbl/adv;I)V

    return-void
.end method

.method public a(Lbl/adv;I)V
    .locals 4

    .prologue
    .line 261
    const-string v0, "viewHolder"

    invoke-static {p1, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 262
    instance-of v0, p1, Lbl/afa$b;

    if-eqz v0, :cond_77

    .line 263
    iget-object v0, p0, Lbl/afa$c;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bilibili/tv/api/category/CategoryMeta;

    .line 264
    const-string v1, "mCategoryMetas[position]"

    invoke-static {v0, v1}, Lbl/bbi;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 266
    iget-object v1, p1, Lbl/adv;->a:Landroid/view/View;

    .line 267
    const-string v2, "viewHolder.itemView"

    invoke-static {v1, v2}, Lbl/bbi;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 268
    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 269
    iget-object v1, p1, Lbl/adv;->a:Landroid/view/View;

    const v2, 0x7f0800ac

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    move-object v1, p1

    .line 270
    check-cast v1, Lbl/afa$b;

    .line 271
    invoke-virtual {v1}, Lbl/afa$b;->z()Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, v0, Lcom/bilibili/tv/api/category/CategoryMeta;->mTypeName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 272
    invoke-virtual {v1}, Lbl/afa$b;->A()Landroid/widget/ImageView;

    move-result-object v1

    sget-object v2, Lbl/adl;->a:Lbl/adl;

    sget-object v3, Lcom/bilibili/tv/api/category/CategoryManager;->sIconsArray:Landroid/util/SparseIntArray;

    iget v0, v0, Lcom/bilibili/tv/api/category/CategoryMeta;->mTid:I

    invoke-virtual {v3, v0}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    invoke-virtual {v2, v0}, Lbl/adl;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 273
    sget-object v0, Lbl/adl;->a:Lbl/adl;

    const v1, 0x7f070054

    invoke-virtual {v0, v1}, Lbl/adl;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 274
    iget-object v1, p0, Lbl/afa$c;->b:[I

    aget v1, v1, p2

    invoke-static {v1}, Lbl/adl;->d(I)I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 275
    iget-object v1, p1, Lbl/adv;->a:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 276
    iget-object v0, p1, Lbl/adv;->a:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 277
    iget-object v0, p1, Lbl/adv;->a:Landroid/view/View;

    .line 278
    const-string v1, "viewHolder.itemView"

    invoke-static {v0, v1}, Lbl/bbi;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 279
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 281
    :cond_77
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5

    .prologue
    .line 291
    const-string v0, "v"

    invoke-static {p1, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 292
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 293
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 294
    const-string v2, "v.context"

    invoke-static {v1, v2}, Lbl/bbi;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 295
    invoke-static {v1}, Lbl/adl;->a(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v1

    .line 296
    if-eqz v1, :cond_1c

    instance-of v2, v0, Lcom/bilibili/tv/api/category/CategoryMeta;

    if-nez v2, :cond_1d

    .line 315
    :cond_1c
    :goto_1c
    return-void

    .line 299
    :cond_1d
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 300
    check-cast v0, Lcom/bilibili/tv/api/category/CategoryMeta;

    .line 301
    const-string v3, "page"

    iget v4, v0, Lcom/bilibili/tv/api/category/CategoryMeta;->mTid:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 302
    sget-object v3, Lbl/abl;->a:Lbl/abl;

    const-string v4, "ott-platform.area.whole.0.click"

    invoke-virtual {v3, v4, v2}, Lbl/abl;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 303
    iget v0, v0, Lcom/bilibili/tv/api/category/CategoryMeta;->mTid:I

    .line 304
    const v2, 0x10001

    if-ne v0, v2, :cond_41

    .line 305
    invoke-static {v1}, Lcom/bilibili/tv/ui/live/LiveActivity;->a(Landroid/content/Context;)V

    goto :goto_1c

    .line 306
    :cond_41
    const v2, 0x10066

    if-ne v0, v2, :cond_4c

    .line 307
    sget-object v0, Lcom/bilibili/tv/ui/ranking/RankingActivity;->Companion:Lcom/bilibili/tv/ui/ranking/RankingActivity$a;

    invoke-virtual {v0, v1}, Lcom/bilibili/tv/ui/ranking/RankingActivity$a;->a(Landroid/content/Context;)V

    goto :goto_1c

    .line 308
    :cond_4c
    const v2, 0x10067

    if-ne v0, v2, :cond_55

    .line 309
    invoke-static {v1}, Lcom/bilibili/tv/ui/ranking/ElseActivity;->a(Landroid/content/Context;)V

    goto :goto_1c

    .line 310
    :cond_55
    const v2, 0x10068

    if-ne v0, v2, :cond_5e

    .line 311
    invoke-static {v1}, Lcom/bilibili/tv/ui/weekly/WeeklyActivity;->a(Landroid/content/Context;)V

    goto :goto_1c

    .line 313
    :cond_5e
    sget-object v2, Lcom/bilibili/tv/ui/area/AreaActivity;->Companion:Lcom/bilibili/tv/ui/area/AreaActivity$a;

    invoke-virtual {v2, v1, v0}, Lcom/bilibili/tv/ui/area/AreaActivity$a;->a(Landroid/content/Context;I)V

    goto :goto_1c
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2

    .prologue
    .line 321
    const-string v0, "v"

    invoke-static {p1, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 322
    iget-object v0, p0, Lbl/afa$c;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbl/afa;

    .line 323
    if-eqz v0, :cond_30

    .line 324
    const-string v1, "mMainAreaFragmentWeakReference.get() ?: return"

    invoke-static {v0, v1}, Lbl/bbi;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 325
    const v1, 0x7f0800ac

    invoke-virtual {p1, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    .line 326
    if-eqz v1, :cond_30

    .line 327
    if-eqz v1, :cond_31

    .line 328
    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    # setter for: Lbl/afa;->c:I
    invoke-static {v0, v1}, Lbl/afa;->access$002(Lbl/afa;I)I

    .line 329
    invoke-static {p1, p2}, Lbl/adj;->a(Landroid/view/View;Z)V

    .line 330
    check-cast p1, Lbl/afz;

    invoke-interface {p1, p2}, Lbl/afz;->setUpEnabled(Z)V

    .line 336
    :cond_30
    return-void

    .line 333
    :cond_31
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type kotlin.Int"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
