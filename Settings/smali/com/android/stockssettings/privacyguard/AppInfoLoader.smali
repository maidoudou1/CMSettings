.class Lcom/android/stockssettings/privacyguard/AppInfoLoader;
.super Landroid/content/AsyncTaskLoader;
.source "AppInfoLoader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/content/AsyncTaskLoader",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/android/stockssettings/privacyguard/PrivacyGuardManager$AppInfo;",
        ">;>;"
    }
.end annotation


# static fields
.field private static final BLACKLISTED_PACKAGES:[Ljava/lang/String;


# instance fields
.field private mAppOps:Landroid/app/AppOpsManager;

.field private mPm:Landroid/content/pm/PackageManager;

.field private mShowSystemApps:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 39
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "com.android.systemui"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/stockssettings/privacyguard/AppInfoLoader;->BLACKLISTED_PACKAGES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "showSystemApps"    # Z

    .prologue
    .line 44
    invoke-direct {p0, p1}, Landroid/content/AsyncTaskLoader;-><init>(Landroid/content/Context;)V

    .line 45
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/stockssettings/privacyguard/AppInfoLoader;->mPm:Landroid/content/pm/PackageManager;

    .line 46
    const-string v0, "appops"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Lcom/android/stockssettings/privacyguard/AppInfoLoader;->mAppOps:Landroid/app/AppOpsManager;

    .line 47
    iput-boolean p2, p0, Lcom/android/stockssettings/privacyguard/AppInfoLoader;->mShowSystemApps:Z

    .line 48
    return-void
.end method

.method private isBlacklisted(Ljava/lang/String;)Z
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 71
    sget-object v0, Lcom/android/stockssettings/privacyguard/AppInfoLoader;->BLACKLISTED_PACKAGES:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 72
    .local v3, "pkg":Ljava/lang/String;
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 73
    const/4 v4, 0x1

    .line 76
    .end local v3    # "pkg":Ljava/lang/String;
    :goto_1
    return v4

    .line 71
    .restart local v3    # "pkg":Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 76
    .end local v3    # "pkg":Ljava/lang/String;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private loadInstalledApps()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/stockssettings/privacyguard/PrivacyGuardManager$AppInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 86
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 87
    .local v2, "apps":Ljava/util/List;, "Ljava/util/List<Lcom/android/stockssettings/privacyguard/PrivacyGuardManager$AppInfo;>;"
    iget-object v6, p0, Lcom/android/stockssettings/privacyguard/AppInfoLoader;->mPm:Landroid/content/pm/PackageManager;

    const/16 v7, 0x1040

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v5

    .line 90
    .local v5, "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/PackageInfo;

    .line 91
    .local v4, "info":Landroid/content/pm/PackageInfo;
    iget-object v1, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 94
    .local v1, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget-boolean v6, p0, Lcom/android/stockssettings/privacyguard/AppInfoLoader;->mShowSystemApps:Z

    if-nez v6, :cond_1

    iget v6, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v6, v6, 0x1

    if-nez v6, :cond_0

    :cond_1
    iget v6, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    const/16 v7, 0x3e8

    if-eq v6, v7, :cond_0

    iget-object v6, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v6}, Lcom/android/stockssettings/privacyguard/AppInfoLoader;->isBlacklisted(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 100
    new-instance v0, Lcom/android/stockssettings/privacyguard/PrivacyGuardManager$AppInfo;

    invoke-direct {v0}, Lcom/android/stockssettings/privacyguard/PrivacyGuardManager$AppInfo;-><init>()V

    .line 101
    .local v0, "app":Lcom/android/stockssettings/privacyguard/PrivacyGuardManager$AppInfo;
    iget-object v6, p0, Lcom/android/stockssettings/privacyguard/AppInfoLoader;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, v6}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lcom/android/stockssettings/privacyguard/PrivacyGuardManager$AppInfo;->title:Ljava/lang/String;

    .line 102
    iget-object v6, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iput-object v6, v0, Lcom/android/stockssettings/privacyguard/PrivacyGuardManager$AppInfo;->packageName:Ljava/lang/String;

    .line 103
    iget-boolean v6, v1, Landroid/content/pm/ApplicationInfo;->enabled:Z

    iput-boolean v6, v0, Lcom/android/stockssettings/privacyguard/PrivacyGuardManager$AppInfo;->enabled:Z

    .line 104
    iget-object v6, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    iput v6, v0, Lcom/android/stockssettings/privacyguard/PrivacyGuardManager$AppInfo;->uid:I

    .line 105
    iget-object v6, p0, Lcom/android/stockssettings/privacyguard/AppInfoLoader;->mAppOps:Landroid/app/AppOpsManager;

    iget v7, v0, Lcom/android/stockssettings/privacyguard/PrivacyGuardManager$AppInfo;->uid:I

    iget-object v8, v0, Lcom/android/stockssettings/privacyguard/PrivacyGuardManager$AppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7, v8}, Landroid/app/AppOpsManager;->getPrivacyGuardSettingForPackage(ILjava/lang/String;)Z

    move-result v6

    iput-boolean v6, v0, Lcom/android/stockssettings/privacyguard/PrivacyGuardManager$AppInfo;->privacyGuardEnabled:Z

    .line 107
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 111
    .end local v0    # "app":Lcom/android/stockssettings/privacyguard/PrivacyGuardManager$AppInfo;
    .end local v1    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v4    # "info":Landroid/content/pm/PackageInfo;
    :cond_2
    new-instance v6, Lcom/android/stockssettings/privacyguard/AppInfoLoader$1;

    invoke-direct {v6, p0}, Lcom/android/stockssettings/privacyguard/AppInfoLoader$1;-><init>(Lcom/android/stockssettings/privacyguard/AppInfoLoader;)V

    invoke-static {v2, v6}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 121
    return-object v2
.end method


# virtual methods
.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 35
    invoke-virtual {p0}, Lcom/android/stockssettings/privacyguard/AppInfoLoader;->loadInBackground()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public loadInBackground()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/stockssettings/privacyguard/PrivacyGuardManager$AppInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/android/stockssettings/privacyguard/AppInfoLoader;->loadInstalledApps()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected onReset()V
    .locals 0

    .prologue
    .line 67
    invoke-virtual {p0}, Lcom/android/stockssettings/privacyguard/AppInfoLoader;->cancelLoad()Z

    .line 68
    return-void
.end method

.method public onStartLoading()V
    .locals 0

    .prologue
    .line 57
    invoke-virtual {p0}, Lcom/android/stockssettings/privacyguard/AppInfoLoader;->forceLoad()V

    .line 58
    return-void
.end method

.method public onStopLoading()V
    .locals 0

    .prologue
    .line 62
    invoke-virtual {p0}, Lcom/android/stockssettings/privacyguard/AppInfoLoader;->cancelLoad()Z

    .line 63
    return-void
.end method
