.class Lcom/android/stockssettings/wifi/WifiStatusTest$1;
.super Landroid/content/BroadcastReceiver;
.source "WifiStatusTest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/stockssettings/wifi/WifiStatusTest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/stockssettings/wifi/WifiStatusTest;


# direct methods
.method constructor <init>(Lcom/android/stockssettings/wifi/WifiStatusTest;)V
    .locals 0

    .prologue
    .line 93
    iput-object p1, p0, Lcom/android/stockssettings/wifi/WifiStatusTest$1;->this$0:Lcom/android/stockssettings/wifi/WifiStatusTest;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x0

    .line 96
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 97
    iget-object v0, p0, Lcom/android/stockssettings/wifi/WifiStatusTest$1;->this$0:Lcom/android/stockssettings/wifi/WifiStatusTest;

    const-string v1, "wifi_state"

    const/4 v2, 0x4

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    # invokes: Lcom/android/stockssettings/wifi/WifiStatusTest;->handleWifiStateChanged(I)V
    invoke-static {v0, v1}, Lcom/android/stockssettings/wifi/WifiStatusTest;->access$000(Lcom/android/stockssettings/wifi/WifiStatusTest;I)V

    .line 118
    :cond_0
    :goto_0
    return-void

    .line 99
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 100
    iget-object v1, p0, Lcom/android/stockssettings/wifi/WifiStatusTest$1;->this$0:Lcom/android/stockssettings/wifi/WifiStatusTest;

    const-string v0, "networkInfo"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkInfo;

    # invokes: Lcom/android/stockssettings/wifi/WifiStatusTest;->handleNetworkStateChanged(Landroid/net/NetworkInfo;)V
    invoke-static {v1, v0}, Lcom/android/stockssettings/wifi/WifiStatusTest;->access$100(Lcom/android/stockssettings/wifi/WifiStatusTest;Landroid/net/NetworkInfo;)V

    goto :goto_0

    .line 102
    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 103
    iget-object v0, p0, Lcom/android/stockssettings/wifi/WifiStatusTest$1;->this$0:Lcom/android/stockssettings/wifi/WifiStatusTest;

    # invokes: Lcom/android/stockssettings/wifi/WifiStatusTest;->handleScanResultsAvailable()V
    invoke-static {v0}, Lcom/android/stockssettings/wifi/WifiStatusTest;->access$200(Lcom/android/stockssettings/wifi/WifiStatusTest;)V

    goto :goto_0

    .line 104
    :cond_3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.net.wifi.supplicant.CONNECTION_CHANGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 106
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.net.wifi.supplicant.STATE_CHANGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 107
    iget-object v1, p0, Lcom/android/stockssettings/wifi/WifiStatusTest$1;->this$0:Lcom/android/stockssettings/wifi/WifiStatusTest;

    const-string v0, "newState"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/SupplicantState;

    const-string v2, "supplicantError"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    const-string v3, "supplicantError"

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    # invokes: Lcom/android/stockssettings/wifi/WifiStatusTest;->handleSupplicantStateChanged(Landroid/net/wifi/SupplicantState;ZI)V
    invoke-static {v1, v0, v2, v3}, Lcom/android/stockssettings/wifi/WifiStatusTest;->access$300(Lcom/android/stockssettings/wifi/WifiStatusTest;Landroid/net/wifi/SupplicantState;ZI)V

    goto :goto_0

    .line 111
    :cond_4
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.net.wifi.RSSI_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 112
    iget-object v0, p0, Lcom/android/stockssettings/wifi/WifiStatusTest$1;->this$0:Lcom/android/stockssettings/wifi/WifiStatusTest;

    const-string v1, "newRssi"

    invoke-virtual {p2, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    # invokes: Lcom/android/stockssettings/wifi/WifiStatusTest;->handleSignalChanged(I)V
    invoke-static {v0, v1}, Lcom/android/stockssettings/wifi/WifiStatusTest;->access$400(Lcom/android/stockssettings/wifi/WifiStatusTest;I)V

    goto :goto_0

    .line 113
    :cond_5
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.net.wifi.NETWORK_IDS_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 116
    const-string v0, "WifiStatusTest"

    const-string v1, "Received an unknown Wifi Intent"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method
