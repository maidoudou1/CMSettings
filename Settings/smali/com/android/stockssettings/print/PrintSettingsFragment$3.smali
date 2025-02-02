.class final Lcom/android/stockssettings/print/PrintSettingsFragment$3;
.super Lcom/android/stockssettings/search/BaseSearchIndexProvider;
.source "PrintSettingsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/stockssettings/print/PrintSettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 561
    invoke-direct {p0}, Lcom/android/stockssettings/search/BaseSearchIndexProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getRawDataToIndex(Landroid/content/Context;Z)Ljava/util/List;
    .locals 12
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
    .line 564
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 566
    .local v3, "indexables":Ljava/util/List;, "Ljava/util/List<Lcom/android/stockssettings/search/SearchIndexableRaw;>;"
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 567
    .local v4, "packageManager":Landroid/content/pm/PackageManager;
    const-string v10, "print"

    invoke-virtual {p1, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/print/PrintManager;

    .line 570
    .local v5, "printManager":Landroid/print/PrintManager;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0909ba

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 571
    .local v6, "screenTitle":Ljava/lang/String;
    new-instance v1, Lcom/android/stockssettings/search/SearchIndexableRaw;

    invoke-direct {v1, p1}, Lcom/android/stockssettings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 572
    .local v1, "data":Lcom/android/stockssettings/search/SearchIndexableRaw;
    iput-object v6, v1, Lcom/android/stockssettings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 573
    iput-object v6, v1, Lcom/android/stockssettings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 574
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 577
    invoke-virtual {v5}, Landroid/print/PrintManager;->getInstalledPrintServices()Ljava/util/List;

    move-result-object v9

    .line 578
    .local v9, "services":Ljava/util/List;, "Ljava/util/List<Landroid/printservice/PrintServiceInfo;>;"
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v8

    .line 579
    .local v8, "serviceCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v8, :cond_0

    .line 580
    invoke-interface {v9, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/printservice/PrintServiceInfo;

    .line 582
    .local v7, "service":Landroid/printservice/PrintServiceInfo;
    new-instance v0, Landroid/content/ComponentName;

    invoke-virtual {v7}, Landroid/printservice/PrintServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v10

    iget-object v10, v10, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v10, v10, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7}, Landroid/printservice/PrintServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v11

    iget-object v11, v11, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v11, v11, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v10, v11}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 586
    .local v0, "componentName":Landroid/content/ComponentName;
    new-instance v1, Lcom/android/stockssettings/search/SearchIndexableRaw;

    .end local v1    # "data":Lcom/android/stockssettings/search/SearchIndexableRaw;
    invoke-direct {v1, p1}, Lcom/android/stockssettings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 587
    .restart local v1    # "data":Lcom/android/stockssettings/search/SearchIndexableRaw;
    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v1, Lcom/android/stockssettings/search/SearchIndexableRaw;->key:Ljava/lang/String;

    .line 588
    invoke-virtual {v7}, Landroid/printservice/PrintServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v10

    invoke-virtual {v10, v4}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v1, Lcom/android/stockssettings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 589
    const v10, 0x7f0909c2

    invoke-virtual {p1, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v1, Lcom/android/stockssettings/search/SearchIndexableRaw;->summaryOn:Ljava/lang/String;

    .line 590
    const v10, 0x7f0909c3

    invoke-virtual {p1, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v1, Lcom/android/stockssettings/search/SearchIndexableRaw;->summaryOff:Ljava/lang/String;

    .line 591
    iput-object v6, v1, Lcom/android/stockssettings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 592
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 579
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 595
    .end local v0    # "componentName":Landroid/content/ComponentName;
    .end local v7    # "service":Landroid/printservice/PrintServiceInfo;
    :cond_0
    return-object v3
.end method

.method public getXmlResourcesToIndex(Landroid/content/Context;Z)Ljava/util/List;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "enabled"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Landroid/provider/SearchIndexableResource;",
            ">;"
        }
    .end annotation

    .prologue
    .line 601
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 602
    .local v1, "indexables":Ljava/util/List;, "Ljava/util/List<Landroid/provider/SearchIndexableResource;>;"
    new-instance v0, Landroid/provider/SearchIndexableResource;

    invoke-direct {v0, p1}, Landroid/provider/SearchIndexableResource;-><init>(Landroid/content/Context;)V

    .line 603
    .local v0, "indexable":Landroid/provider/SearchIndexableResource;
    const v2, 0x7f060035

    iput v2, v0, Landroid/provider/SearchIndexableResource;->xmlResId:I

    .line 604
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 605
    return-object v1
.end method
