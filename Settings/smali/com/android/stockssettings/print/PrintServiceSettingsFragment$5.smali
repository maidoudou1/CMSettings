.class Lcom/android/stockssettings/print/PrintServiceSettingsFragment$5;
.super Ljava/lang/Object;
.source "PrintServiceSettingsFragment.java"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/stockssettings/print/PrintServiceSettingsFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/stockssettings/print/PrintServiceSettingsFragment;


# direct methods
.method constructor <init>(Lcom/android/stockssettings/print/PrintServiceSettingsFragment;)V
    .locals 0

    .prologue
    .line 429
    iput-object p1, p0, Lcom/android/stockssettings/print/PrintServiceSettingsFragment$5;->this$0:Lcom/android/stockssettings/print/PrintServiceSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 432
    iget-object v0, p0, Lcom/android/stockssettings/print/PrintServiceSettingsFragment$5;->this$0:Lcom/android/stockssettings/print/PrintServiceSettingsFragment;

    invoke-virtual {v0}, Lcom/android/stockssettings/print/PrintServiceSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 433
    iget-object v0, p0, Lcom/android/stockssettings/print/PrintServiceSettingsFragment$5;->this$0:Lcom/android/stockssettings/print/PrintServiceSettingsFragment;

    const v1, 0x7f0909d2

    invoke-virtual {v0, v1}, Lcom/android/stockssettings/print/PrintServiceSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 436
    :cond_0
    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 439
    iget-object v1, p0, Lcom/android/stockssettings/print/PrintServiceSettingsFragment$5;->this$0:Lcom/android/stockssettings/print/PrintServiceSettingsFragment;

    invoke-virtual {v1}, Lcom/android/stockssettings/print/PrintServiceSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 440
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 442
    iget-object v1, p0, Lcom/android/stockssettings/print/PrintServiceSettingsFragment$5;->this$0:Lcom/android/stockssettings/print/PrintServiceSettingsFragment;

    const v2, 0x7f0909d3

    invoke-virtual {v1, v2}, Lcom/android/stockssettings/print/PrintServiceSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/View;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 445
    :cond_0
    return-void
.end method
