.class Lcom/android/stockssettings/wifi/p2p/WifiP2pSettings$2;
.super Ljava/lang/Object;
.source "WifiP2pSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/stockssettings/wifi/p2p/WifiP2pSettings;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/stockssettings/wifi/p2p/WifiP2pSettings;


# direct methods
.method constructor <init>(Lcom/android/stockssettings/wifi/p2p/WifiP2pSettings;)V
    .locals 0

    .prologue
    .line 194
    iput-object p1, p0, Lcom/android/stockssettings/wifi/p2p/WifiP2pSettings$2;->this$0:Lcom/android/stockssettings/wifi/p2p/WifiP2pSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 197
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 198
    iget-object v0, p0, Lcom/android/stockssettings/wifi/p2p/WifiP2pSettings$2;->this$0:Lcom/android/stockssettings/wifi/p2p/WifiP2pSettings;

    # getter for: Lcom/android/stockssettings/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;
    invoke-static {v0}, Lcom/android/stockssettings/wifi/p2p/WifiP2pSettings;->access$400(Lcom/android/stockssettings/wifi/p2p/WifiP2pSettings;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 199
    iget-object v0, p0, Lcom/android/stockssettings/wifi/p2p/WifiP2pSettings$2;->this$0:Lcom/android/stockssettings/wifi/p2p/WifiP2pSettings;

    # getter for: Lcom/android/stockssettings/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;
    invoke-static {v0}, Lcom/android/stockssettings/wifi/p2p/WifiP2pSettings;->access$400(Lcom/android/stockssettings/wifi/p2p/WifiP2pSettings;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/stockssettings/wifi/p2p/WifiP2pSettings$2;->this$0:Lcom/android/stockssettings/wifi/p2p/WifiP2pSettings;

    # getter for: Lcom/android/stockssettings/wifi/p2p/WifiP2pSettings;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    invoke-static {v1}, Lcom/android/stockssettings/wifi/p2p/WifiP2pSettings;->access$1000(Lcom/android/stockssettings/wifi/p2p/WifiP2pSettings;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v1

    iget-object v2, p0, Lcom/android/stockssettings/wifi/p2p/WifiP2pSettings$2;->this$0:Lcom/android/stockssettings/wifi/p2p/WifiP2pSettings;

    # getter for: Lcom/android/stockssettings/wifi/p2p/WifiP2pSettings;->mDeviceNameText:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/android/stockssettings/wifi/p2p/WifiP2pSettings;->access$1100(Lcom/android/stockssettings/wifi/p2p/WifiP2pSettings;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/android/stockssettings/wifi/p2p/WifiP2pSettings$2$1;

    invoke-direct {v3, p0}, Lcom/android/stockssettings/wifi/p2p/WifiP2pSettings$2$1;-><init>(Lcom/android/stockssettings/wifi/p2p/WifiP2pSettings$2;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/net/wifi/p2p/WifiP2pManager;->setDeviceName(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Ljava/lang/String;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 213
    :cond_0
    return-void
.end method
