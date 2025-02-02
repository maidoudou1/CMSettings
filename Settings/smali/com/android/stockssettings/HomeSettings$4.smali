.class final Lcom/android/stockssettings/HomeSettings$4;
.super Lcom/android/stockssettings/search/BaseSearchIndexProvider;
.source "HomeSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/stockssettings/HomeSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 383
    invoke-direct {p0}, Lcom/android/stockssettings/search/BaseSearchIndexProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getRawDataToIndex(Landroid/content/Context;Z)Ljava/util/List;
    .locals 16
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "enabled"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Lcom/android/stockssettings/search/SearchIndexableRaw;",
            ">;"
        }
    .end annotation

    .prologue
    .line 386
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 388
    .local v11, "result":Ljava/util/List;, "Ljava/util/List<Lcom/android/stockssettings/search/SearchIndexableRaw;>;"
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    .line 389
    .local v8, "pm":Landroid/content/pm/PackageManager;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 390
    .local v5, "homeActivities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ResolveInfo;>;"
    invoke-virtual {v8, v5}, Landroid/content/pm/PackageManager;->getHomeActivities(Ljava/util/List;)Landroid/content/ComponentName;

    .line 392
    const-string v13, "home_prefs"

    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v12

    .line 394
    .local v12, "sp":Landroid/content/SharedPreferences;
    const-string v13, "do_show"

    const/4 v14, 0x0

    invoke-interface {v12, v13, v14}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 398
    .local v3, "doShowHome":Z
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v13

    const/4 v14, 0x1

    if-gt v13, v14, :cond_0

    if-eqz v3, :cond_2

    .line 399
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    .line 402
    .local v9, "res":Landroid/content/res/Resources;
    new-instance v2, Lcom/android/stockssettings/search/SearchIndexableRaw;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Lcom/android/stockssettings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 403
    .local v2, "data":Lcom/android/stockssettings/search/SearchIndexableRaw;
    const v13, 0x7f0906bb

    invoke-virtual {v9, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v2, Lcom/android/stockssettings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 404
    const v13, 0x7f0906bb

    invoke-virtual {v9, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v2, Lcom/android/stockssettings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 405
    const v13, 0x7f090cc2

    invoke-virtual {v9, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v2, Lcom/android/stockssettings/search/SearchIndexableRaw;->keywords:Ljava/lang/String;

    .line 406
    invoke-interface {v11, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 408
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v6, v13, :cond_2

    .line 409
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/pm/ResolveInfo;

    .line 410
    .local v10, "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v1, v10, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 414
    .local v1, "activityInfo":Landroid/content/pm/ActivityInfo;
    :try_start_0
    invoke-virtual {v1, v8}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v7

    .line 415
    .local v7, "name":Ljava/lang/CharSequence;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v13

    if-eqz v13, :cond_1

    .line 408
    .end local v7    # "name":Ljava/lang/CharSequence;
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 418
    :catch_0
    move-exception v4

    .line 419
    .local v4, "e":Ljava/lang/Exception;
    const-string v13, "HomeSettings"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Problem dealing with Home "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget-object v15, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 423
    .end local v4    # "e":Ljava/lang/Exception;
    .restart local v7    # "name":Ljava/lang/CharSequence;
    :cond_1
    new-instance v2, Lcom/android/stockssettings/search/SearchIndexableRaw;

    .end local v2    # "data":Lcom/android/stockssettings/search/SearchIndexableRaw;
    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Lcom/android/stockssettings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 424
    .restart local v2    # "data":Lcom/android/stockssettings/search/SearchIndexableRaw;
    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v13

    iput-object v13, v2, Lcom/android/stockssettings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 425
    const v13, 0x7f0906bb

    invoke-virtual {v9, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v2, Lcom/android/stockssettings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 426
    invoke-interface {v11, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 430
    .end local v1    # "activityInfo":Landroid/content/pm/ActivityInfo;
    .end local v2    # "data":Lcom/android/stockssettings/search/SearchIndexableRaw;
    .end local v6    # "i":I
    .end local v7    # "name":Ljava/lang/CharSequence;
    .end local v9    # "res":Landroid/content/res/Resources;
    .end local v10    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_2
    return-object v11
.end method
