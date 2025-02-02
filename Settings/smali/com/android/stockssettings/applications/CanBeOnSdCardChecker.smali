.class final Lcom/android/stockssettings/applications/CanBeOnSdCardChecker;
.super Ljava/lang/Object;
.source "ManageApplications.java"


# instance fields
.field mInstallLocation:I

.field final mPm:Landroid/content/pm/IPackageManager;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    const-string v0, "package"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/stockssettings/applications/CanBeOnSdCardChecker;->mPm:Landroid/content/pm/IPackageManager;

    .line 92
    return-void
.end method


# virtual methods
.method check(Landroid/content/pm/PackageInfo;)Z
    .locals 3
    .param p1, "info"    # Landroid/content/pm/PackageInfo;

    .prologue
    .line 104
    const/4 v0, 0x0

    .line 105
    .local v0, "canBe":Z
    iget-boolean v1, p1, Landroid/content/pm/PackageInfo;->isThemeApk:Z

    if-nez v1, :cond_0

    invoke-static {}, Lcom/android/internal/content/PackageHelper;->isExternalInstallPossible()Z

    move-result v1

    if-nez v1, :cond_1

    .line 125
    :cond_0
    :goto_0
    return v0

    .line 107
    :cond_1
    iget-object v1, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v2, 0x40000

    and-int/2addr v1, v2

    if-eqz v1, :cond_2

    .line 108
    const/4 v0, 0x1

    goto :goto_0

    .line 110
    :cond_2
    iget-object v1, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_0

    .line 111
    iget v1, p1, Landroid/content/pm/PackageInfo;->installLocation:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_3

    iget v1, p1, Landroid/content/pm/PackageInfo;->installLocation:I

    if-nez v1, :cond_4

    .line 113
    :cond_3
    const/4 v0, 0x1

    goto :goto_0

    .line 114
    :cond_4
    iget v1, p1, Landroid/content/pm/PackageInfo;->installLocation:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 116
    iget v1, p0, Lcom/android/stockssettings/applications/CanBeOnSdCardChecker;->mInstallLocation:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    .line 120
    const/4 v0, 0x1

    goto :goto_0
.end method

.method init()V
    .locals 3

    .prologue
    .line 96
    :try_start_0
    iget-object v1, p0, Lcom/android/stockssettings/applications/CanBeOnSdCardChecker;->mPm:Landroid/content/pm/IPackageManager;

    invoke-interface {v1}, Landroid/content/pm/IPackageManager;->getInstallLocation()I

    move-result v1

    iput v1, p0, Lcom/android/stockssettings/applications/CanBeOnSdCardChecker;->mInstallLocation:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    :goto_0
    return-void

    .line 97
    :catch_0
    move-exception v0

    .line 98
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "CanBeOnSdCardChecker"

    const-string v2, "Is Package Manager running?"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
