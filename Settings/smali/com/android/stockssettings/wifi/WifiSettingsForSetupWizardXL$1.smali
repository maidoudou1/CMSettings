.class Lcom/android/stockssettings/wifi/WifiSettingsForSetupWizardXL$1;
.super Ljava/lang/Object;
.source "WifiSettingsForSetupWizardXL.java"

# interfaces
.implements Landroid/net/wifi/WifiManager$ActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/stockssettings/wifi/WifiSettingsForSetupWizardXL;->onBackButtonPressed()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/stockssettings/wifi/WifiSettingsForSetupWizardXL;


# direct methods
.method constructor <init>(Lcom/android/stockssettings/wifi/WifiSettingsForSetupWizardXL;)V
    .locals 0

    .prologue
    .line 596
    iput-object p1, p0, Lcom/android/stockssettings/wifi/WifiSettingsForSetupWizardXL$1;->this$0:Lcom/android/stockssettings/wifi/WifiSettingsForSetupWizardXL;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(I)V
    .locals 0
    .param p1, "reason"    # I

    .prologue
    .line 601
    return-void
.end method

.method public onSuccess()V
    .locals 0

    .prologue
    .line 598
    return-void
.end method
