.class Lcom/android/stockssettings/notification/ZenModeSettings$11;
.super Ljava/lang/Object;
.source "ZenModeSettings.java"

# interfaces
.implements Lcom/android/stockssettings/notification/DropDownPreference$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/stockssettings/notification/ZenModeSettings;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/stockssettings/notification/ZenModeSettings;


# direct methods
.method constructor <init>(Lcom/android/stockssettings/notification/ZenModeSettings;)V
    .locals 0

    .prologue
    .line 334
    iput-object p1, p0, Lcom/android/stockssettings/notification/ZenModeSettings$11;->this$0:Lcom/android/stockssettings/notification/ZenModeSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(ILjava/lang/Object;)Z
    .locals 5
    .param p1, "pos"    # I
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x0

    .line 337
    iget-object v3, p0, Lcom/android/stockssettings/notification/ZenModeSettings$11;->this$0:Lcom/android/stockssettings/notification/ZenModeSettings;

    # getter for: Lcom/android/stockssettings/notification/ZenModeSettings;->mDisableListeners:Z
    invoke-static {v3}, Lcom/android/stockssettings/notification/ZenModeSettings;->access$000(Lcom/android/stockssettings/notification/ZenModeSettings;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x1

    .line 343
    .end local p2    # "value":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v2

    .line 338
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_1
    instance-of v3, p2, Ljava/lang/Boolean;

    if-eqz v3, :cond_3

    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 339
    .local v1, "sleepNone":Z
    :goto_1
    iget-object v3, p0, Lcom/android/stockssettings/notification/ZenModeSettings$11;->this$0:Lcom/android/stockssettings/notification/ZenModeSettings;

    # getter for: Lcom/android/stockssettings/notification/ZenModeSettings;->mConfig:Landroid/service/notification/ZenModeConfig;
    invoke-static {v3}, Lcom/android/stockssettings/notification/ZenModeSettings;->access$100(Lcom/android/stockssettings/notification/ZenModeSettings;)Landroid/service/notification/ZenModeConfig;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/stockssettings/notification/ZenModeSettings$11;->this$0:Lcom/android/stockssettings/notification/ZenModeSettings;

    # getter for: Lcom/android/stockssettings/notification/ZenModeSettings;->mConfig:Landroid/service/notification/ZenModeConfig;
    invoke-static {v3}, Lcom/android/stockssettings/notification/ZenModeSettings;->access$100(Lcom/android/stockssettings/notification/ZenModeSettings;)Landroid/service/notification/ZenModeConfig;

    move-result-object v3

    iget-boolean v3, v3, Landroid/service/notification/ZenModeConfig;->sleepNone:Z

    if-eq v3, v1, :cond_0

    .line 340
    iget-object v2, p0, Lcom/android/stockssettings/notification/ZenModeSettings$11;->this$0:Lcom/android/stockssettings/notification/ZenModeSettings;

    # getter for: Lcom/android/stockssettings/notification/ZenModeSettings;->mConfig:Landroid/service/notification/ZenModeConfig;
    invoke-static {v2}, Lcom/android/stockssettings/notification/ZenModeSettings;->access$100(Lcom/android/stockssettings/notification/ZenModeSettings;)Landroid/service/notification/ZenModeConfig;

    move-result-object v2

    invoke-virtual {v2}, Landroid/service/notification/ZenModeConfig;->copy()Landroid/service/notification/ZenModeConfig;

    move-result-object v0

    .line 341
    .local v0, "newConfig":Landroid/service/notification/ZenModeConfig;
    iput-boolean v1, v0, Landroid/service/notification/ZenModeConfig;->sleepNone:Z

    .line 342
    # getter for: Lcom/android/stockssettings/notification/ZenModeSettings;->DEBUG:Z
    invoke-static {}, Lcom/android/stockssettings/notification/ZenModeSettings;->access$200()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "ZenModeSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onPrefChange sleepNone="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    :cond_2
    iget-object v2, p0, Lcom/android/stockssettings/notification/ZenModeSettings$11;->this$0:Lcom/android/stockssettings/notification/ZenModeSettings;

    # invokes: Lcom/android/stockssettings/notification/ZenModeSettings;->setZenModeConfig(Landroid/service/notification/ZenModeConfig;)Z
    invoke-static {v2, v0}, Lcom/android/stockssettings/notification/ZenModeSettings;->access$300(Lcom/android/stockssettings/notification/ZenModeSettings;Landroid/service/notification/ZenModeConfig;)Z

    move-result v2

    goto :goto_0

    .end local v0    # "newConfig":Landroid/service/notification/ZenModeConfig;
    .end local v1    # "sleepNone":Z
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_3
    move v1, v2

    .line 338
    goto :goto_1
.end method
