.class Lcom/android/stockssettings/ManageFingerprints$FingerprintListFragment$2;
.super Landroid/service/fingerprint/FingerprintManagerReceiver;
.source "ManageFingerprints.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/stockssettings/ManageFingerprints$FingerprintListFragment;->startListening()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/stockssettings/ManageFingerprints$FingerprintListFragment;


# direct methods
.method constructor <init>(Lcom/android/stockssettings/ManageFingerprints$FingerprintListFragment;)V
    .locals 0

    .prologue
    .line 232
    iput-object p1, p0, Lcom/android/stockssettings/ManageFingerprints$FingerprintListFragment$2;->this$0:Lcom/android/stockssettings/ManageFingerprints$FingerprintListFragment;

    invoke-direct {p0}, Landroid/service/fingerprint/FingerprintManagerReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onEnrollResult(II)V
    .locals 1
    .param p1, "fingerprintId"    # I
    .param p2, "remaining"    # I

    .prologue
    .line 244
    invoke-super {p0, p1, p2}, Landroid/service/fingerprint/FingerprintManagerReceiver;->onEnrollResult(II)V

    .line 245
    iget-object v0, p0, Lcom/android/stockssettings/ManageFingerprints$FingerprintListFragment$2;->this$0:Lcom/android/stockssettings/ManageFingerprints$FingerprintListFragment;

    # getter for: Lcom/android/stockssettings/ManageFingerprints$FingerprintListFragment;->mAdapter:Lcom/android/stockssettings/ManageFingerprints$FingerprintAdapter;
    invoke-static {v0}, Lcom/android/stockssettings/ManageFingerprints$FingerprintListFragment;->access$000(Lcom/android/stockssettings/ManageFingerprints$FingerprintListFragment;)Lcom/android/stockssettings/ManageFingerprints$FingerprintAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    if-nez p2, :cond_0

    .line 246
    iget-object v0, p0, Lcom/android/stockssettings/ManageFingerprints$FingerprintListFragment$2;->this$0:Lcom/android/stockssettings/ManageFingerprints$FingerprintListFragment;

    # getter for: Lcom/android/stockssettings/ManageFingerprints$FingerprintListFragment;->mAdapter:Lcom/android/stockssettings/ManageFingerprints$FingerprintAdapter;
    invoke-static {v0}, Lcom/android/stockssettings/ManageFingerprints$FingerprintListFragment;->access$000(Lcom/android/stockssettings/ManageFingerprints$FingerprintListFragment;)Lcom/android/stockssettings/ManageFingerprints$FingerprintAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/stockssettings/ManageFingerprints$FingerprintAdapter;->notifyDataSetChanged()V

    .line 247
    iget-object v0, p0, Lcom/android/stockssettings/ManageFingerprints$FingerprintListFragment$2;->this$0:Lcom/android/stockssettings/ManageFingerprints$FingerprintListFragment;

    # invokes: Lcom/android/stockssettings/ManageFingerprints$FingerprintListFragment;->updateTitle()V
    invoke-static {v0}, Lcom/android/stockssettings/ManageFingerprints$FingerprintListFragment;->access$300(Lcom/android/stockssettings/ManageFingerprints$FingerprintListFragment;)V

    .line 249
    :cond_0
    return-void
.end method

.method public onRemoved(I)V
    .locals 1
    .param p1, "fingerprintId"    # I

    .prologue
    .line 235
    invoke-super {p0, p1}, Landroid/service/fingerprint/FingerprintManagerReceiver;->onRemoved(I)V

    .line 236
    iget-object v0, p0, Lcom/android/stockssettings/ManageFingerprints$FingerprintListFragment$2;->this$0:Lcom/android/stockssettings/ManageFingerprints$FingerprintListFragment;

    # getter for: Lcom/android/stockssettings/ManageFingerprints$FingerprintListFragment;->mAdapter:Lcom/android/stockssettings/ManageFingerprints$FingerprintAdapter;
    invoke-static {v0}, Lcom/android/stockssettings/ManageFingerprints$FingerprintListFragment;->access$000(Lcom/android/stockssettings/ManageFingerprints$FingerprintListFragment;)Lcom/android/stockssettings/ManageFingerprints$FingerprintAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 237
    iget-object v0, p0, Lcom/android/stockssettings/ManageFingerprints$FingerprintListFragment$2;->this$0:Lcom/android/stockssettings/ManageFingerprints$FingerprintListFragment;

    # getter for: Lcom/android/stockssettings/ManageFingerprints$FingerprintListFragment;->mAdapter:Lcom/android/stockssettings/ManageFingerprints$FingerprintAdapter;
    invoke-static {v0}, Lcom/android/stockssettings/ManageFingerprints$FingerprintListFragment;->access$000(Lcom/android/stockssettings/ManageFingerprints$FingerprintListFragment;)Lcom/android/stockssettings/ManageFingerprints$FingerprintAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/stockssettings/ManageFingerprints$FingerprintAdapter;->notifyDataSetChanged()V

    .line 238
    iget-object v0, p0, Lcom/android/stockssettings/ManageFingerprints$FingerprintListFragment$2;->this$0:Lcom/android/stockssettings/ManageFingerprints$FingerprintListFragment;

    # invokes: Lcom/android/stockssettings/ManageFingerprints$FingerprintListFragment;->updateTitle()V
    invoke-static {v0}, Lcom/android/stockssettings/ManageFingerprints$FingerprintListFragment;->access$300(Lcom/android/stockssettings/ManageFingerprints$FingerprintListFragment;)V

    .line 240
    :cond_0
    return-void
.end method
