.class Lcom/android/stockssettings/fuelgauge/PowerUsageSummary$4;
.super Landroid/os/Handler;
.source "PowerUsageSummary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/stockssettings/fuelgauge/PowerUsageSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/stockssettings/fuelgauge/PowerUsageSummary;


# direct methods
.method constructor <init>(Lcom/android/stockssettings/fuelgauge/PowerUsageSummary;)V
    .locals 0

    .prologue
    .line 556
    iput-object p1, p0, Lcom/android/stockssettings/fuelgauge/PowerUsageSummary$4;->this$0:Lcom/android/stockssettings/fuelgauge/PowerUsageSummary;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 560
    iget v5, p1, Landroid/os/Message;->what:I

    sparse-switch v5, :sswitch_data_0

    .line 586
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 587
    return-void

    .line 562
    :sswitch_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/stockssettings/fuelgauge/BatteryEntry;

    .line 563
    .local v1, "entry":Lcom/android/stockssettings/fuelgauge/BatteryEntry;
    iget-object v5, p0, Lcom/android/stockssettings/fuelgauge/PowerUsageSummary$4;->this$0:Lcom/android/stockssettings/fuelgauge/PowerUsageSummary;

    iget-object v6, v1, Lcom/android/stockssettings/fuelgauge/BatteryEntry;->sipper:Lcom/android/internal/os/BatterySipper;

    iget-object v6, v6, Lcom/android/internal/os/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    invoke-virtual {v6}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/stockssettings/fuelgauge/PowerUsageSummary;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/android/stockssettings/fuelgauge/PowerGaugePreference;

    .line 566
    .local v2, "pgp":Lcom/android/stockssettings/fuelgauge/PowerGaugePreference;
    if-eqz v2, :cond_0

    .line 567
    iget-object v5, v1, Lcom/android/stockssettings/fuelgauge/BatteryEntry;->sipper:Lcom/android/internal/os/BatterySipper;

    invoke-virtual {v5}, Lcom/android/internal/os/BatterySipper;->getUid()I

    move-result v5

    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    .line 568
    .local v4, "userId":I
    new-instance v3, Landroid/os/UserHandle;

    invoke-direct {v3, v4}, Landroid/os/UserHandle;-><init>(I)V

    .line 569
    .local v3, "userHandle":Landroid/os/UserHandle;
    iget-object v5, p0, Lcom/android/stockssettings/fuelgauge/PowerUsageSummary$4;->this$0:Lcom/android/stockssettings/fuelgauge/PowerUsageSummary;

    # getter for: Lcom/android/stockssettings/fuelgauge/PowerUsageSummary;->mUm:Landroid/os/UserManager;
    invoke-static {v5}, Lcom/android/stockssettings/fuelgauge/PowerUsageSummary;->access$500(Lcom/android/stockssettings/fuelgauge/PowerUsageSummary;)Landroid/os/UserManager;

    move-result-object v5

    invoke-virtual {v1}, Lcom/android/stockssettings/fuelgauge/BatteryEntry;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v5, v6, v3}, Landroid/os/UserManager;->getBadgedIconForUser(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/android/stockssettings/fuelgauge/PowerGaugePreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 570
    iget-object v5, v1, Lcom/android/stockssettings/fuelgauge/BatteryEntry;->name:Ljava/lang/String;

    invoke-virtual {v2, v5}, Lcom/android/stockssettings/fuelgauge/PowerGaugePreference;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 574
    .end local v1    # "entry":Lcom/android/stockssettings/fuelgauge/BatteryEntry;
    .end local v2    # "pgp":Lcom/android/stockssettings/fuelgauge/PowerGaugePreference;
    .end local v3    # "userHandle":Landroid/os/UserHandle;
    .end local v4    # "userId":I
    :sswitch_1
    iget-object v5, p0, Lcom/android/stockssettings/fuelgauge/PowerUsageSummary$4;->this$0:Lcom/android/stockssettings/fuelgauge/PowerUsageSummary;

    invoke-virtual {v5}, Lcom/android/stockssettings/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 575
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 576
    invoke-virtual {v0}, Landroid/app/Activity;->reportFullyDrawn()V

    goto :goto_0

    .line 580
    .end local v0    # "activity":Landroid/app/Activity;
    :sswitch_2
    iget-object v5, p0, Lcom/android/stockssettings/fuelgauge/PowerUsageSummary$4;->this$0:Lcom/android/stockssettings/fuelgauge/PowerUsageSummary;

    # getter for: Lcom/android/stockssettings/fuelgauge/PowerUsageSummary;->mStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;
    invoke-static {v5}, Lcom/android/stockssettings/fuelgauge/PowerUsageSummary;->access$300(Lcom/android/stockssettings/fuelgauge/PowerUsageSummary;)Lcom/android/internal/os/BatteryStatsHelper;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/os/BatteryStatsHelper;->clearStats()V

    .line 581
    iget-object v5, p0, Lcom/android/stockssettings/fuelgauge/PowerUsageSummary$4;->this$0:Lcom/android/stockssettings/fuelgauge/PowerUsageSummary;

    # invokes: Lcom/android/stockssettings/fuelgauge/PowerUsageSummary;->refreshStats()V
    invoke-static {v5}, Lcom/android/stockssettings/fuelgauge/PowerUsageSummary;->access$400(Lcom/android/stockssettings/fuelgauge/PowerUsageSummary;)V

    .line 582
    iget-object v5, p0, Lcom/android/stockssettings/fuelgauge/PowerUsageSummary$4;->this$0:Lcom/android/stockssettings/fuelgauge/PowerUsageSummary;

    # getter for: Lcom/android/stockssettings/fuelgauge/PowerUsageSummary;->mBatterySaverPref:Landroid/preference/SwitchPreference;
    invoke-static {v5}, Lcom/android/stockssettings/fuelgauge/PowerUsageSummary;->access$600(Lcom/android/stockssettings/fuelgauge/PowerUsageSummary;)Landroid/preference/SwitchPreference;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 583
    iget-object v5, p0, Lcom/android/stockssettings/fuelgauge/PowerUsageSummary$4;->this$0:Lcom/android/stockssettings/fuelgauge/PowerUsageSummary;

    # invokes: Lcom/android/stockssettings/fuelgauge/PowerUsageSummary;->refreshBatterySaverOptions()V
    invoke-static {v5}, Lcom/android/stockssettings/fuelgauge/PowerUsageSummary;->access$700(Lcom/android/stockssettings/fuelgauge/PowerUsageSummary;)V

    goto :goto_0

    .line 560
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x64 -> :sswitch_2
    .end sparse-switch
.end method
