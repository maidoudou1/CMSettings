.class Lcom/android/stockssettings/CryptKeeperConfirm$Blank$1;
.super Ljava/lang/Object;
.source "CryptKeeperConfirm.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/stockssettings/CryptKeeperConfirm$Blank;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/stockssettings/CryptKeeperConfirm$Blank;


# direct methods
.method constructor <init>(Lcom/android/stockssettings/CryptKeeperConfirm$Blank;)V
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Lcom/android/stockssettings/CryptKeeperConfirm$Blank$1;->this$0:Lcom/android/stockssettings/CryptKeeperConfirm$Blank;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 72
    const-string v4, "mount"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    .line 73
    .local v3, "service":Landroid/os/IBinder;
    if-nez v3, :cond_0

    .line 74
    const-string v4, "CryptKeeper"

    const-string v5, "Failed to find the mount service"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    iget-object v4, p0, Lcom/android/stockssettings/CryptKeeperConfirm$Blank$1;->this$0:Lcom/android/stockssettings/CryptKeeperConfirm$Blank;

    invoke-virtual {v4}, Lcom/android/stockssettings/CryptKeeperConfirm$Blank;->finish()V

    .line 86
    :goto_0
    return-void

    .line 79
    :cond_0
    invoke-static {v3}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v2

    .line 81
    .local v2, "mountService":Landroid/os/storage/IMountService;
    :try_start_0
    iget-object v4, p0, Lcom/android/stockssettings/CryptKeeperConfirm$Blank$1;->this$0:Lcom/android/stockssettings/CryptKeeperConfirm$Blank;

    invoke-virtual {v4}, Lcom/android/stockssettings/CryptKeeperConfirm$Blank;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 82
    .local v0, "args":Landroid/os/Bundle;
    const-string v4, "type"

    const/4 v5, -0x1

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    const-string v5, "password"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Landroid/os/storage/IMountService;->encryptStorage(ILjava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 83
    .end local v0    # "args":Landroid/os/Bundle;
    :catch_0
    move-exception v1

    .line 84
    .local v1, "e":Ljava/lang/Exception;
    const-string v4, "CryptKeeper"

    const-string v5, "Error while encrypting..."

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
