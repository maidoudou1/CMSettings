.class Lcom/android/stockssettings/CryptKeeper$2;
.super Ljava/lang/Object;
.source "CryptKeeper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/stockssettings/CryptKeeper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/stockssettings/CryptKeeper;


# direct methods
.method constructor <init>(Lcom/android/stockssettings/CryptKeeper;)V
    .locals 0

    .prologue
    .line 163
    iput-object p1, p0, Lcom/android/stockssettings/CryptKeeper$2;->this$0:Lcom/android/stockssettings/CryptKeeper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/android/stockssettings/CryptKeeper$2;->this$0:Lcom/android/stockssettings/CryptKeeper;

    # getter for: Lcom/android/stockssettings/CryptKeeper;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;
    invoke-static {v0}, Lcom/android/stockssettings/CryptKeeper;->access$100(Lcom/android/stockssettings/CryptKeeper;)Lcom/android/internal/widget/LockPatternView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView;->clearPattern()V

    .line 167
    return-void
.end method
