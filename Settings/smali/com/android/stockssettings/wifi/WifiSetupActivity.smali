.class public Lcom/android/stockssettings/wifi/WifiSetupActivity;
.super Lcom/android/stockssettings/wifi/WifiPickerActivity;
.source "WifiSetupActivity.java"

# interfaces
.implements Lcom/android/stockssettings/ButtonBarHandler;
.implements Lcom/android/setupwizard/navigationbar/SetupWizardNavBar$NavigationBarListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/stockssettings/wifi/WifiSetupActivity$WifiSkipDialog;
    }
.end annotation


# instance fields
.field private mAutoFinishOnConnection:Z

.field private mFilter:Landroid/content/IntentFilter;

.field private mIsNetworkRequired:Z

.field private mIsWifiRequired:Z

.field private mNavigationBar:Lcom/android/setupwizard/navigationbar/SetupWizardNavBar;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mUserSelectedNetwork:Z

.field private mWifiConnected:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/android/stockssettings/wifi/WifiPickerActivity;-><init>()V

    .line 77
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/stockssettings/wifi/WifiSetupActivity;->mFilter:Landroid/content/IntentFilter;

    .line 78
    new-instance v0, Lcom/android/stockssettings/wifi/WifiSetupActivity$1;

    invoke-direct {v0, p0}, Lcom/android/stockssettings/wifi/WifiSetupActivity$1;-><init>(Lcom/android/stockssettings/wifi/WifiSetupActivity;)V

    iput-object v0, p0, Lcom/android/stockssettings/wifi/WifiSetupActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 256
    return-void
.end method

.method static synthetic access$000(Lcom/android/stockssettings/wifi/WifiSetupActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/stockssettings/wifi/WifiSetupActivity;

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/android/stockssettings/wifi/WifiSetupActivity;->refreshConnectionState()V

    return-void
.end method

.method private isNetworkConnected()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 247
    const-string v3, "connectivity"

    invoke-virtual {p0, v3}, Lcom/android/stockssettings/wifi/WifiSetupActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 249
    .local v0, "connectivity":Landroid/net/ConnectivityManager;
    if-nez v0, :cond_1

    .line 253
    :cond_0
    :goto_0
    return v2

    .line 252
    :cond_1
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 253
    .local v1, "info":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0
.end method

.method private isWifiConnected()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 116
    const-string v2, "connectivity"

    invoke-virtual {p0, v2}, Lcom/android/stockssettings/wifi/WifiSetupActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 118
    .local v0, "connectivity":Landroid/net/ConnectivityManager;
    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 120
    .local v1, "wifiConnected":Z
    :goto_0
    iput-boolean v1, p0, Lcom/android/stockssettings/wifi/WifiSetupActivity;->mWifiConnected:Z

    .line 121
    return v1

    .line 118
    .end local v1    # "wifiConnected":Z
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private refreshConnectionState()V
    .locals 4

    .prologue
    const v1, 0x7f0904c4

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 125
    invoke-direct {p0}, Lcom/android/stockssettings/wifi/WifiSetupActivity;->isWifiConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 126
    iget-boolean v0, p0, Lcom/android/stockssettings/wifi/WifiSetupActivity;->mAutoFinishOnConnection:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/stockssettings/wifi/WifiSetupActivity;->mUserSelectedNetwork:Z

    if-eqz v0, :cond_0

    .line 127
    const-string v0, "WifiSetupActivity"

    const-string v1, "Auto-finishing with connection"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/stockssettings/wifi/WifiSetupActivity;->finishOrNext(I)V

    .line 131
    iput-boolean v2, p0, Lcom/android/stockssettings/wifi/WifiSetupActivity;->mUserSelectedNetwork:Z

    .line 133
    :cond_0
    const/high16 v0, 0x7f090000

    invoke-direct {p0, v0}, Lcom/android/stockssettings/wifi/WifiSetupActivity;->setNextButtonText(I)V

    .line 134
    invoke-direct {p0, v3}, Lcom/android/stockssettings/wifi/WifiSetupActivity;->setNextButtonEnabled(Z)V

    .line 149
    :goto_0
    return-void

    .line 135
    :cond_1
    iget-boolean v0, p0, Lcom/android/stockssettings/wifi/WifiSetupActivity;->mIsWifiRequired:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/stockssettings/wifi/WifiSetupActivity;->mIsNetworkRequired:Z

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/android/stockssettings/wifi/WifiSetupActivity;->isNetworkConnected()Z

    move-result v0

    if-nez v0, :cond_3

    .line 139
    :cond_2
    invoke-direct {p0, v1}, Lcom/android/stockssettings/wifi/WifiSetupActivity;->setNextButtonText(I)V

    .line 140
    invoke-direct {p0, v2}, Lcom/android/stockssettings/wifi/WifiSetupActivity;->setNextButtonEnabled(Z)V

    goto :goto_0

    .line 146
    :cond_3
    invoke-direct {p0, v1}, Lcom/android/stockssettings/wifi/WifiSetupActivity;->setNextButtonText(I)V

    .line 147
    invoke-direct {p0, v3}, Lcom/android/stockssettings/wifi/WifiSetupActivity;->setNextButtonEnabled(Z)V

    goto :goto_0
.end method

.method private setNextButtonEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 152
    iget-object v0, p0, Lcom/android/stockssettings/wifi/WifiSetupActivity;->mNavigationBar:Lcom/android/setupwizard/navigationbar/SetupWizardNavBar;

    if-eqz v0, :cond_0

    .line 153
    iget-object v0, p0, Lcom/android/stockssettings/wifi/WifiSetupActivity;->mNavigationBar:Lcom/android/setupwizard/navigationbar/SetupWizardNavBar;

    invoke-virtual {v0}, Lcom/android/setupwizard/navigationbar/SetupWizardNavBar;->getNextButton()Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 155
    :cond_0
    return-void
.end method

.method private setNextButtonText(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 158
    iget-object v0, p0, Lcom/android/stockssettings/wifi/WifiSetupActivity;->mNavigationBar:Lcom/android/setupwizard/navigationbar/SetupWizardNavBar;

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Lcom/android/stockssettings/wifi/WifiSetupActivity;->mNavigationBar:Lcom/android/setupwizard/navigationbar/SetupWizardNavBar;

    invoke-virtual {v0}, Lcom/android/setupwizard/navigationbar/SetupWizardNavBar;->getNextButton()Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(I)V

    .line 161
    :cond_0
    return-void
.end method


# virtual methods
.method public finish()V
    .locals 2

    .prologue
    .line 183
    invoke-super {p0}, Lcom/android/stockssettings/wifi/WifiPickerActivity;->finish()V

    .line 184
    const v0, 0x7f050005

    const v1, 0x7f050006

    invoke-virtual {p0, v0, v1}, Lcom/android/stockssettings/wifi/WifiSetupActivity;->overridePendingTransition(II)V

    .line 185
    return-void
.end method

.method public finishOrNext(I)V
    .locals 3
    .param p1, "resultCode"    # I

    .prologue
    .line 208
    const-string v0, "WifiSetupActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "finishOrNext resultCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " isUsingWizardManager="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Lcom/android/stockssettings/SetupWizardUtils;->isUsingWizardManager(Landroid/app/Activity;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    invoke-static {p0}, Lcom/android/stockssettings/SetupWizardUtils;->isUsingWizardManager(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 211
    invoke-static {p0, p1}, Lcom/android/stockssettings/SetupWizardUtils;->sendResultsToSetupWizard(Landroid/app/Activity;I)V

    .line 216
    :goto_0
    return-void

    .line 213
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/stockssettings/wifi/WifiSetupActivity;->setResult(I)V

    .line 214
    invoke-virtual {p0}, Lcom/android/stockssettings/wifi/WifiSetupActivity;->finish()V

    goto :goto_0
.end method

.method getWifiSettingsClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<+",
            "Landroid/preference/PreferenceFragment;",
            ">;"
        }
    .end annotation

    .prologue
    .line 200
    const-class v0, Lcom/android/stockssettings/wifi/WifiSettingsForSetupWizard;

    return-object v0
.end method

.method protected isValidFragment(Ljava/lang/String;)Z
    .locals 1
    .param p1, "fragmentName"    # Ljava/lang/String;

    .prologue
    .line 195
    const-class v0, Lcom/android/stockssettings/wifi/WifiSettingsForSetupWizard;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method networkSelected()V
    .locals 2

    .prologue
    .line 164
    const-string v0, "WifiSetupActivity"

    const-string v1, "Network selected by user"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/stockssettings/wifi/WifiSetupActivity;->mUserSelectedNetwork:Z

    .line 166
    return-void
.end method

.method protected onApplyThemeResource(Landroid/content/res/Resources$Theme;IZ)V
    .locals 1
    .param p1, "theme"    # Landroid/content/res/Resources$Theme;
    .param p2, "resid"    # I
    .param p3, "first"    # Z

    .prologue
    .line 189
    invoke-virtual {p0}, Lcom/android/stockssettings/wifi/WifiSetupActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/android/stockssettings/SetupWizardUtils;->getTheme(Landroid/content/Intent;I)I

    move-result p2

    .line 190
    invoke-super {p0, p1, p2, p3}, Lcom/android/stockssettings/wifi/WifiPickerActivity;->onApplyThemeResource(Landroid/content/res/Resources$Theme;IZ)V

    .line 191
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x0

    .line 90
    invoke-super {p0, p1}, Lcom/android/stockssettings/wifi/WifiPickerActivity;->onCreate(Landroid/os/Bundle;)V

    .line 92
    invoke-virtual {p0}, Lcom/android/stockssettings/wifi/WifiSetupActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 93
    .local v0, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/stockssettings/wifi/WifiSetupActivity;->mFilter:Landroid/content/IntentFilter;

    const-string v3, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 94
    iget-object v2, p0, Lcom/android/stockssettings/wifi/WifiSetupActivity;->mFilter:Landroid/content/IntentFilter;

    const-string v3, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 96
    const-string v2, "wifi_auto_finish_on_connect"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/stockssettings/wifi/WifiSetupActivity;->mAutoFinishOnConnection:Z

    .line 97
    const-string v2, "is_network_required"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/stockssettings/wifi/WifiSetupActivity;->mIsNetworkRequired:Z

    .line 98
    const-string v2, "is_wifi_required"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/stockssettings/wifi/WifiSetupActivity;->mIsWifiRequired:Z

    .line 100
    const-string v2, "wifi_require_user_network_selection"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    iput-boolean v1, p0, Lcom/android/stockssettings/wifi/WifiSetupActivity;->mUserSelectedNetwork:Z

    .line 101
    return-void
.end method

.method public onNavigateBack()V
    .locals 0

    .prologue
    .line 226
    invoke-virtual {p0}, Lcom/android/stockssettings/wifi/WifiSetupActivity;->onBackPressed()V

    .line 227
    return-void
.end method

.method public onNavigateNext()V
    .locals 4

    .prologue
    .line 231
    iget-boolean v1, p0, Lcom/android/stockssettings/wifi/WifiSetupActivity;->mWifiConnected:Z

    if-eqz v1, :cond_0

    .line 232
    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Lcom/android/stockssettings/wifi/WifiSetupActivity;->finishOrNext(I)V

    .line 240
    :goto_0
    return-void

    .line 236
    :cond_0
    invoke-direct {p0}, Lcom/android/stockssettings/wifi/WifiSetupActivity;->isNetworkConnected()Z

    move-result v1

    if-eqz v1, :cond_1

    const v0, 0x7f090669

    .line 238
    .local v0, "message":I
    :goto_1
    invoke-static {v0}, Lcom/android/stockssettings/wifi/WifiSetupActivity$WifiSkipDialog;->newInstance(I)Lcom/android/stockssettings/wifi/WifiSetupActivity$WifiSkipDialog;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/stockssettings/wifi/WifiSetupActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string v3, "dialog"

    invoke-virtual {v1, v2, v3}, Lcom/android/stockssettings/wifi/WifiSetupActivity$WifiSkipDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    .line 236
    .end local v0    # "message":I
    :cond_1
    const v0, 0x7f09066a

    goto :goto_1
.end method

.method public onNavigationBarCreated(Lcom/android/setupwizard/navigationbar/SetupWizardNavBar;)V
    .locals 0
    .param p1, "bar"    # Lcom/android/setupwizard/navigationbar/SetupWizardNavBar;

    .prologue
    .line 220
    iput-object p1, p0, Lcom/android/stockssettings/wifi/WifiSetupActivity;->mNavigationBar:Lcom/android/setupwizard/navigationbar/SetupWizardNavBar;

    .line 221
    invoke-static {p0, p1}, Lcom/android/stockssettings/SetupWizardUtils;->setImmersiveMode(Landroid/app/Activity;Lcom/android/setupwizard/navigationbar/SetupWizardNavBar;)V

    .line 222
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/android/stockssettings/wifi/WifiSetupActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/stockssettings/wifi/WifiSetupActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 178
    invoke-super {p0}, Lcom/android/stockssettings/wifi/WifiPickerActivity;->onPause()V

    .line 179
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 111
    invoke-super {p0, p1}, Lcom/android/stockssettings/wifi/WifiPickerActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 112
    const-string v0, "userSelectedNetwork"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/stockssettings/wifi/WifiSetupActivity;->mUserSelectedNetwork:Z

    .line 113
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 170
    invoke-super {p0}, Lcom/android/stockssettings/wifi/WifiPickerActivity;->onResume()V

    .line 171
    iget-object v0, p0, Lcom/android/stockssettings/wifi/WifiSetupActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lcom/android/stockssettings/wifi/WifiSetupActivity;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v0, v1}, Lcom/android/stockssettings/wifi/WifiSetupActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 172
    invoke-direct {p0}, Lcom/android/stockssettings/wifi/WifiSetupActivity;->refreshConnectionState()V

    .line 173
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 105
    invoke-super {p0, p1}, Lcom/android/stockssettings/wifi/WifiPickerActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 106
    const-string v0, "userSelectedNetwork"

    iget-boolean v1, p0, Lcom/android/stockssettings/wifi/WifiSetupActivity;->mUserSelectedNetwork:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 107
    return-void
.end method
