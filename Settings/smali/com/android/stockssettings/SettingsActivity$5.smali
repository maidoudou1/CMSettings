.class Lcom/android/stockssettings/SettingsActivity$5;
.super Ljava/lang/Object;
.source "SettingsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/stockssettings/SettingsActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/stockssettings/SettingsActivity;


# direct methods
.method constructor <init>(Lcom/android/stockssettings/SettingsActivity;)V
    .locals 0

    .prologue
    .line 643
    iput-object p1, p0, Lcom/android/stockssettings/SettingsActivity$5;->this$0:Lcom/android/stockssettings/SettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 645
    iget-object v0, p0, Lcom/android/stockssettings/SettingsActivity$5;->this$0:Lcom/android/stockssettings/SettingsActivity;

    const/4 v1, -0x1

    iget-object v2, p0, Lcom/android/stockssettings/SettingsActivity$5;->this$0:Lcom/android/stockssettings/SettingsActivity;

    invoke-virtual {v2}, Lcom/android/stockssettings/SettingsActivity;->getResultIntentData()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/stockssettings/SettingsActivity;->setResult(ILandroid/content/Intent;)V

    .line 646
    iget-object v0, p0, Lcom/android/stockssettings/SettingsActivity$5;->this$0:Lcom/android/stockssettings/SettingsActivity;

    invoke-virtual {v0}, Lcom/android/stockssettings/SettingsActivity;->finish()V

    .line 647
    return-void
.end method
