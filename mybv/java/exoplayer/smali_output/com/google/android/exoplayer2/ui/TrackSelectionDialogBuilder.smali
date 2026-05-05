.class public final Lcom/google/android/exoplayer2/ui/TrackSelectionDialogBuilder;
.super Ljava/lang/Object;
.source "TrackSelectionDialogBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/ui/TrackSelectionDialogBuilder$DialogCallback;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private allowAdaptiveSelections:Z

.field private allowMultipleOverrides:Z

.field private final callback:Lcom/google/android/exoplayer2/ui/TrackSelectionDialogBuilder$DialogCallback;

.field private final context:Landroid/content/Context;

.field private isDisabled:Z

.field private overrides:Lcom/google/common/collect/ImmutableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableMap<",
            "Lcom/google/android/exoplayer2/source/TrackGroup;",
            "Lcom/google/android/exoplayer2/trackselection/TrackSelectionOverride;",
            ">;"
        }
    .end annotation
.end field

.field private showDisableOption:Z

.field private themeResId:I

.field private final title:Ljava/lang/CharSequence;

.field private trackFormatComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/google/android/exoplayer2/Format;",
            ">;"
        }
    .end annotation
.end field

.field private final trackGroups:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/Tracks$Group;",
            ">;"
        }
    .end annotation
.end field

.field private trackNameProvider:Lcom/google/android/exoplayer2/ui/TrackNameProvider;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/CharSequence;Lcom/google/android/exoplayer2/Player;I)V
    .registers 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "title"    # Ljava/lang/CharSequence;
    .param p3, "player"    # Lcom/google/android/exoplayer2/Player;
    .param p4, "trackType"    # I

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionDialogBuilder;->context:Landroid/content/Context;

    .line 113
    iput-object p2, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionDialogBuilder;->title:Ljava/lang/CharSequence;

    .line 115
    const/16 v0, 0x1e

    invoke-interface {p3, v0}, Lcom/google/android/exoplayer2/Player;->isCommandAvailable(I)Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-interface {p3}, Lcom/google/android/exoplayer2/Player;->getCurrentTracks()Lcom/google/android/exoplayer2/Tracks;

    move-result-object v0

    goto :goto_16

    :cond_14
    sget-object v0, Lcom/google/android/exoplayer2/Tracks;->EMPTY:Lcom/google/android/exoplayer2/Tracks;

    .line 116
    .local v0, "tracks":Lcom/google/android/exoplayer2/Tracks;
    :goto_16
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/Tracks;->getGroups()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    .line 117
    .local v1, "allTrackGroups":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/Tracks$Group;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionDialogBuilder;->trackGroups:Ljava/util/List;

    .line 118
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_22
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_3c

    .line 119
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer2/Tracks$Group;

    .line 120
    .local v3, "trackGroup":Lcom/google/android/exoplayer2/Tracks$Group;
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/Tracks$Group;->getType()I

    move-result v4

    if-ne v4, p4, :cond_39

    .line 121
    iget-object v4, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionDialogBuilder;->trackGroups:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 118
    .end local v3    # "trackGroup":Lcom/google/android/exoplayer2/Tracks$Group;
    :cond_39
    add-int/lit8 v2, v2, 0x1

    goto :goto_22

    .line 124
    .end local v2    # "i":I
    :cond_3c
    invoke-interface {p3}, Lcom/google/android/exoplayer2/Player;->getTrackSelectionParameters()Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;->overrides:Lcom/google/common/collect/ImmutableMap;

    iput-object v2, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionDialogBuilder;->overrides:Lcom/google/common/collect/ImmutableMap;

    .line 125
    new-instance v2, Lcom/google/android/exoplayer2/ui/TrackSelectionDialogBuilder$$ExternalSyntheticLambda1;

    invoke-direct {v2, p3, p4}, Lcom/google/android/exoplayer2/ui/TrackSelectionDialogBuilder$$ExternalSyntheticLambda1;-><init>(Lcom/google/android/exoplayer2/Player;I)V

    iput-object v2, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionDialogBuilder;->callback:Lcom/google/android/exoplayer2/ui/TrackSelectionDialogBuilder$DialogCallback;

    .line 139
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/util/List;Lcom/google/android/exoplayer2/ui/TrackSelectionDialogBuilder$DialogCallback;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "title"    # Ljava/lang/CharSequence;
    .param p4, "callback"    # Lcom/google/android/exoplayer2/ui/TrackSelectionDialogBuilder$DialogCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/CharSequence;",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/Tracks$Group;",
            ">;",
            "Lcom/google/android/exoplayer2/ui/TrackSelectionDialogBuilder$DialogCallback;",
            ")V"
        }
    .end annotation

    .line 94
    .local p3, "trackGroups":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/Tracks$Group;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionDialogBuilder;->context:Landroid/content/Context;

    .line 96
    iput-object p2, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionDialogBuilder;->title:Ljava/lang/CharSequence;

    .line 97
    invoke-static {p3}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionDialogBuilder;->trackGroups:Ljava/util/List;

    .line 98
    iput-object p4, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionDialogBuilder;->callback:Lcom/google/android/exoplayer2/ui/TrackSelectionDialogBuilder$DialogCallback;

    .line 99
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->of()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionDialogBuilder;->overrides:Lcom/google/common/collect/ImmutableMap;

    .line 100
    return-void
.end method

.method private buildForAndroidX()Landroid/app/Dialog;
    .registers 15

    .line 280
    const/4 v0, 0x0

    :try_start_1
    const-string v1, "androidx.appcompat.app.AlertDialog$Builder"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 281
    .local v1, "builderClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Landroid/content/Context;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    .line 282
    .local v3, "builderConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    new-array v4, v2, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionDialogBuilder;->context:Landroid/content/Context;

    aput-object v7, v4, v5

    iget v7, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionDialogBuilder;->themeResId:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v4, v6

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 285
    .local v4, "builder":Ljava/lang/Object;
    const-string v7, "getContext"

    new-array v8, v5, [Ljava/lang/Class;

    invoke-virtual {v1, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    new-array v8, v5, [Ljava/lang/Object;

    invoke-virtual {v7, v4, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/Context;

    .line 286
    .local v7, "builderContext":Landroid/content/Context;
    invoke-static {v7}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v8

    .line 287
    .local v8, "dialogInflater":Landroid/view/LayoutInflater;
    sget v9, Lcom/google/android/exoplayer2/ui/R$layout;->exo_track_selection_dialog:I

    .line 288
    invoke-virtual {v8, v9, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v9

    .line 289
    .local v9, "dialogView":Landroid/view/View;
    invoke-direct {p0, v9}, Lcom/google/android/exoplayer2/ui/TrackSelectionDialogBuilder;->setUpDialogView(Landroid/view/View;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v10

    .line 291
    .local v10, "okClickListener":Landroid/content/DialogInterface$OnClickListener;
    const-string v11, "setTitle"

    new-array v12, v6, [Ljava/lang/Class;

    const-class v13, Ljava/lang/CharSequence;

    aput-object v13, v12, v5

    invoke-virtual {v1, v11, v12}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v11

    new-array v12, v6, [Ljava/lang/Object;

    iget-object v13, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionDialogBuilder;->title:Ljava/lang/CharSequence;

    aput-object v13, v12, v5

    invoke-virtual {v11, v4, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    const-string v11, "setView"

    new-array v12, v6, [Ljava/lang/Class;

    const-class v13, Landroid/view/View;

    aput-object v13, v12, v5

    invoke-virtual {v1, v11, v12}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v11

    new-array v12, v6, [Ljava/lang/Object;

    aput-object v9, v12, v5

    invoke-virtual {v11, v4, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    const-string v11, "setPositiveButton"

    new-array v12, v2, [Ljava/lang/Class;

    sget-object v13, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v13, v12, v5

    const-class v13, Landroid/content/DialogInterface$OnClickListener;

    aput-object v13, v12, v6

    .line 294
    invoke-virtual {v1, v11, v12}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v11

    new-array v12, v2, [Ljava/lang/Object;

    .line 295
    const v13, 0x104000a

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v12, v5

    aput-object v10, v12, v6

    invoke-virtual {v11, v4, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    const-string v11, "setNegativeButton"

    new-array v12, v2, [Ljava/lang/Class;

    sget-object v13, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v13, v12, v5

    const-class v13, Landroid/content/DialogInterface$OnClickListener;

    aput-object v13, v12, v6

    .line 297
    invoke-virtual {v1, v11, v12}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v11

    new-array v2, v2, [Ljava/lang/Object;

    .line 298
    const/high16 v12, 0x1040000

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v2, v5

    aput-object v0, v2, v6

    invoke-virtual {v11, v4, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    const-string v2, "create"

    new-array v6, v5, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v2, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Dialog;
    :try_end_bf
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_bf} :catch_c7
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_bf} :catch_c0

    return-object v2

    .line 303
    .end local v1    # "builderClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "builderConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v4    # "builder":Ljava/lang/Object;
    .end local v7    # "builderContext":Landroid/content/Context;
    .end local v8    # "dialogInflater":Landroid/view/LayoutInflater;
    .end local v9    # "dialogView":Landroid/view/View;
    .end local v10    # "okClickListener":Landroid/content/DialogInterface$OnClickListener;
    :catch_c0
    move-exception v0

    .line 304
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 300
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_c7
    move-exception v1

    .line 302
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    return-object v0
.end method

.method private buildForPlatform()Landroid/app/Dialog;
    .registers 8

    .line 258
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionDialogBuilder;->context:Landroid/content/Context;

    iget v2, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionDialogBuilder;->themeResId:I

    invoke-direct {v0, v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 261
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 262
    .local v1, "dialogInflater":Landroid/view/LayoutInflater;
    sget v2, Lcom/google/android/exoplayer2/ui/R$layout;->exo_track_selection_dialog:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 263
    .local v2, "dialogView":Landroid/view/View;
    invoke-direct {p0, v2}, Lcom/google/android/exoplayer2/ui/TrackSelectionDialogBuilder;->setUpDialogView(Landroid/view/View;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v4

    .line 265
    .local v4, "okClickListener":Landroid/content/DialogInterface$OnClickListener;
    iget-object v5, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionDialogBuilder;->title:Ljava/lang/CharSequence;

    .line 266
    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 267
    invoke-virtual {v5, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 268
    const v6, 0x104000a

    invoke-virtual {v5, v6, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 269
    const/high16 v6, 0x1040000

    invoke-virtual {v5, v6, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 270
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    .line 265
    return-object v3
.end method

.method static synthetic lambda$new$0(Lcom/google/android/exoplayer2/Player;IZLjava/util/Map;)V
    .registers 7
    .param p0, "player"    # Lcom/google/android/exoplayer2/Player;
    .param p1, "trackType"    # I
    .param p2, "isDisabled"    # Z
    .param p3, "overrides"    # Ljava/util/Map;

    .line 127
    const/16 v0, 0x1d

    invoke-interface {p0, v0}, Lcom/google/android/exoplayer2/Player;->isCommandAvailable(I)Z

    move-result v0

    if-nez v0, :cond_9

    .line 128
    return-void

    .line 130
    :cond_9
    nop

    .line 131
    invoke-interface {p0}, Lcom/google/android/exoplayer2/Player;->getTrackSelectionParameters()Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;->buildUpon()Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;

    move-result-object v0

    .line 132
    .local v0, "parametersBuilder":Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;
    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->setTrackTypeDisabled(IZ)Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;

    .line 133
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->clearOverridesOfType(I)Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;

    .line 134
    invoke-interface {p3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_20
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_30

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/trackselection/TrackSelectionOverride;

    .line 135
    .local v2, "override":Lcom/google/android/exoplayer2/trackselection/TrackSelectionOverride;
    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->addOverride(Lcom/google/android/exoplayer2/trackselection/TrackSelectionOverride;)Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;

    .line 136
    .end local v2    # "override":Lcom/google/android/exoplayer2/trackselection/TrackSelectionOverride;
    goto :goto_20

    .line 137
    :cond_30
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->build()Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;

    move-result-object v1

    invoke-interface {p0, v1}, Lcom/google/android/exoplayer2/Player;->setTrackSelectionParameters(Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;)V

    .line 138
    return-void
.end method

.method private setUpDialogView(Landroid/view/View;)Landroid/content/DialogInterface$OnClickListener;
    .registers 9
    .param p1, "dialogView"    # Landroid/view/View;

    .line 309
    sget v0, Lcom/google/android/exoplayer2/ui/R$id;->exo_track_selection_view:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;

    .line 310
    .local v0, "selectionView":Lcom/google/android/exoplayer2/ui/TrackSelectionView;
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionDialogBuilder;->allowMultipleOverrides:Z

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->setAllowMultipleOverrides(Z)V

    .line 311
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionDialogBuilder;->allowAdaptiveSelections:Z

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->setAllowAdaptiveSelections(Z)V

    .line 312
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionDialogBuilder;->showDisableOption:Z

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->setShowDisableOption(Z)V

    .line 313
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionDialogBuilder;->trackNameProvider:Lcom/google/android/exoplayer2/ui/TrackNameProvider;

    if-eqz v1, :cond_1e

    .line 314
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->setTrackNameProvider(Lcom/google/android/exoplayer2/ui/TrackNameProvider;)V

    .line 316
    :cond_1e
    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionDialogBuilder;->trackGroups:Ljava/util/List;

    iget-boolean v3, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionDialogBuilder;->isDisabled:Z

    iget-object v4, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionDialogBuilder;->overrides:Lcom/google/common/collect/ImmutableMap;

    iget-object v5, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionDialogBuilder;->trackFormatComparator:Ljava/util/Comparator;

    const/4 v6, 0x0

    move-object v1, v0

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->init(Ljava/util/List;ZLjava/util/Map;Ljava/util/Comparator;Lcom/google/android/exoplayer2/ui/TrackSelectionView$TrackSelectionListener;)V

    .line 318
    new-instance v1, Lcom/google/android/exoplayer2/ui/TrackSelectionDialogBuilder$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, v0}, Lcom/google/android/exoplayer2/ui/TrackSelectionDialogBuilder$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/exoplayer2/ui/TrackSelectionDialogBuilder;Lcom/google/android/exoplayer2/ui/TrackSelectionView;)V

    return-object v1
.end method


# virtual methods
.method public build()Landroid/app/Dialog;
    .registers 3

    .line 253
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/TrackSelectionDialogBuilder;->buildForAndroidX()Landroid/app/Dialog;

    move-result-object v0

    .line 254
    .local v0, "dialog":Landroid/app/Dialog;
    if-nez v0, :cond_b

    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/TrackSelectionDialogBuilder;->buildForPlatform()Landroid/app/Dialog;

    move-result-object v1

    goto :goto_c

    :cond_b
    move-object v1, v0

    :goto_c
    return-object v1
.end method

.method synthetic lambda$setUpDialogView$1$com-google-android-exoplayer2-ui-TrackSelectionDialogBuilder(Lcom/google/android/exoplayer2/ui/TrackSelectionView;Landroid/content/DialogInterface;I)V
    .registers 7
    .param p1, "selectionView"    # Lcom/google/android/exoplayer2/ui/TrackSelectionView;
    .param p2, "dialog"    # Landroid/content/DialogInterface;
    .param p3, "which"    # I

    .line 319
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionDialogBuilder;->callback:Lcom/google/android/exoplayer2/ui/TrackSelectionDialogBuilder$DialogCallback;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->getIsDisabled()Z

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->getOverrides()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/google/android/exoplayer2/ui/TrackSelectionDialogBuilder$DialogCallback;->onTracksSelected(ZLjava/util/Map;)V

    return-void
.end method

.method public setAllowAdaptiveSelections(Z)Lcom/google/android/exoplayer2/ui/TrackSelectionDialogBuilder;
    .registers 2
    .param p1, "allowAdaptiveSelections"    # Z

    .line 202
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionDialogBuilder;->allowAdaptiveSelections:Z

    .line 203
    return-object p0
.end method

.method public setAllowMultipleOverrides(Z)Lcom/google/android/exoplayer2/ui/TrackSelectionDialogBuilder;
    .registers 2
    .param p1, "allowMultipleOverrides"    # Z

    .line 214
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionDialogBuilder;->allowMultipleOverrides:Z

    .line 215
    return-object p0
.end method

.method public setIsDisabled(Z)Lcom/google/android/exoplayer2/ui/TrackSelectionDialogBuilder;
    .registers 2
    .param p1, "isDisabled"    # Z

    .line 159
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionDialogBuilder;->isDisabled:Z

    .line 160
    return-object p0
.end method

.method public setOverride(Lcom/google/android/exoplayer2/trackselection/TrackSelectionOverride;)Lcom/google/android/exoplayer2/ui/TrackSelectionDialogBuilder;
    .registers 3
    .param p1, "override"    # Lcom/google/android/exoplayer2/trackselection/TrackSelectionOverride;

    .line 170
    nop

    .line 171
    if-nez p1, :cond_8

    .line 172
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    goto :goto_e

    .line 173
    :cond_8
    iget-object v0, p1, Lcom/google/android/exoplayer2/trackselection/TrackSelectionOverride;->mediaTrackGroup:Lcom/google/android/exoplayer2/source/TrackGroup;

    invoke-static {v0, p1}, Lcom/google/common/collect/ImmutableMap;->of(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    .line 170
    :goto_e
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/ui/TrackSelectionDialogBuilder;->setOverrides(Ljava/util/Map;)Lcom/google/android/exoplayer2/ui/TrackSelectionDialogBuilder;

    move-result-object v0

    return-object v0
.end method

.method public setOverrides(Ljava/util/Map;)Lcom/google/android/exoplayer2/ui/TrackSelectionDialogBuilder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/google/android/exoplayer2/source/TrackGroup;",
            "Lcom/google/android/exoplayer2/trackselection/TrackSelectionOverride;",
            ">;)",
            "Lcom/google/android/exoplayer2/ui/TrackSelectionDialogBuilder;"
        }
    .end annotation

    .line 188
    .local p1, "overrides":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/android/exoplayer2/source/TrackGroup;Lcom/google/android/exoplayer2/trackselection/TrackSelectionOverride;>;"
    invoke-static {p1}, Lcom/google/common/collect/ImmutableMap;->copyOf(Ljava/util/Map;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionDialogBuilder;->overrides:Lcom/google/common/collect/ImmutableMap;

    .line 189
    return-object p0
.end method

.method public setShowDisableOption(Z)Lcom/google/android/exoplayer2/ui/TrackSelectionDialogBuilder;
    .registers 2
    .param p1, "showDisableOption"    # Z

    .line 225
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionDialogBuilder;->showDisableOption:Z

    .line 226
    return-object p0
.end method

.method public setTheme(I)Lcom/google/android/exoplayer2/ui/TrackSelectionDialogBuilder;
    .registers 2
    .param p1, "themeResId"    # I

    .line 148
    iput p1, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionDialogBuilder;->themeResId:I

    .line 149
    return-object p0
.end method

.method public setTrackFormatComparator(Ljava/util/Comparator;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "Lcom/google/android/exoplayer2/Format;",
            ">;)V"
        }
    .end annotation

    .line 236
    .local p1, "trackFormatComparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/google/android/exoplayer2/Format;>;"
    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionDialogBuilder;->trackFormatComparator:Ljava/util/Comparator;

    .line 237
    return-void
.end method

.method public setTrackNameProvider(Lcom/google/android/exoplayer2/ui/TrackNameProvider;)Lcom/google/android/exoplayer2/ui/TrackSelectionDialogBuilder;
    .registers 2
    .param p1, "trackNameProvider"    # Lcom/google/android/exoplayer2/ui/TrackNameProvider;

    .line 247
    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionDialogBuilder;->trackNameProvider:Lcom/google/android/exoplayer2/ui/TrackNameProvider;

    .line 248
    return-object p0
.end method
