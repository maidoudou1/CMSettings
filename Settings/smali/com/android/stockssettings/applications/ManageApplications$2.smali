.class Lcom/android/stockssettings/applications/ManageApplications$2;
.super Ljava/lang/Object;
.source "ManageApplications.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/stockssettings/applications/ManageApplications;->showAppInstallLocationSettingDlg()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/stockssettings/applications/ManageApplications;


# direct methods
.method constructor <init>(Lcom/android/stockssettings/applications/ManageApplications;)V
    .locals 0

    .prologue
    .line 1348
    iput-object p1, p0, Lcom/android/stockssettings/applications/ManageApplications$2;->this$0:Lcom/android/stockssettings/applications/ManageApplications;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "item"    # I

    .prologue
    const/4 v3, 0x0

    .line 1350
    iget-object v1, p0, Lcom/android/stockssettings/applications/ManageApplications$2;->this$0:Lcom/android/stockssettings/applications/ManageApplications;

    invoke-virtual {v1}, Lcom/android/stockssettings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c002e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 1353
    .local v0, "itemValues":[Ljava/lang/String;
    const-string v1, "device"

    aget-object v2, v0, p2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1354
    iget-object v1, p0, Lcom/android/stockssettings/applications/ManageApplications$2;->this$0:Lcom/android/stockssettings/applications/ManageApplications;

    invoke-virtual {v1}, Lcom/android/stockssettings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "default_install_location"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1371
    :goto_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 1372
    return-void

    .line 1357
    :cond_0
    const-string v1, "sdcard"

    aget-object v2, v0, p2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1358
    iget-object v1, p0, Lcom/android/stockssettings/applications/ManageApplications$2;->this$0:Lcom/android/stockssettings/applications/ManageApplications;

    invoke-virtual {v1}, Lcom/android/stockssettings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "default_install_location"

    const/4 v3, 0x2

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 1361
    :cond_1
    const-string v1, "auto"

    aget-object v2, v0, p2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1362
    iget-object v1, p0, Lcom/android/stockssettings/applications/ManageApplications$2;->this$0:Lcom/android/stockssettings/applications/ManageApplications;

    invoke-virtual {v1}, Lcom/android/stockssettings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "default_install_location"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 1367
    :cond_2
    iget-object v1, p0, Lcom/android/stockssettings/applications/ManageApplications$2;->this$0:Lcom/android/stockssettings/applications/ManageApplications;

    invoke-virtual {v1}, Lcom/android/stockssettings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "default_install_location"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method
