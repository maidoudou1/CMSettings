.class Lcom/android/stockssettings/applications/RunningState$ServiceProcessComparator;
.super Ljava/lang/Object;
.source "RunningState.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/stockssettings/applications/RunningState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ServiceProcessComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/android/stockssettings/applications/RunningState$ProcessItem;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/stockssettings/applications/RunningState;


# direct methods
.method constructor <init>(Lcom/android/stockssettings/applications/RunningState;)V
    .locals 0

    .prologue
    .line 691
    iput-object p1, p0, Lcom/android/stockssettings/applications/RunningState$ServiceProcessComparator;->this$0:Lcom/android/stockssettings/applications/RunningState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/stockssettings/applications/RunningState$ProcessItem;Lcom/android/stockssettings/applications/RunningState$ProcessItem;)I
    .locals 6
    .param p1, "object1"    # Lcom/android/stockssettings/applications/RunningState$ProcessItem;
    .param p2, "object2"    # Lcom/android/stockssettings/applications/RunningState$ProcessItem;

    .prologue
    const/4 v1, 0x1

    const/4 v0, -0x1

    .line 693
    iget v2, p1, Lcom/android/stockssettings/applications/RunningState$ProcessItem;->mUserId:I

    iget v3, p2, Lcom/android/stockssettings/applications/RunningState$ProcessItem;->mUserId:I

    if-eq v2, v3, :cond_3

    .line 694
    iget v2, p1, Lcom/android/stockssettings/applications/RunningState$ProcessItem;->mUserId:I

    iget-object v3, p0, Lcom/android/stockssettings/applications/RunningState$ServiceProcessComparator;->this$0:Lcom/android/stockssettings/applications/RunningState;

    iget v3, v3, Lcom/android/stockssettings/applications/RunningState;->mMyUserId:I

    if-ne v2, v3, :cond_1

    .line 711
    :cond_0
    :goto_0
    return v0

    .line 695
    :cond_1
    iget v2, p2, Lcom/android/stockssettings/applications/RunningState$ProcessItem;->mUserId:I

    iget-object v3, p0, Lcom/android/stockssettings/applications/RunningState$ServiceProcessComparator;->this$0:Lcom/android/stockssettings/applications/RunningState;

    iget v3, v3, Lcom/android/stockssettings/applications/RunningState;->mMyUserId:I

    if-ne v2, v3, :cond_2

    move v0, v1

    goto :goto_0

    .line 696
    :cond_2
    iget v2, p1, Lcom/android/stockssettings/applications/RunningState$ProcessItem;->mUserId:I

    iget v3, p2, Lcom/android/stockssettings/applications/RunningState$ProcessItem;->mUserId:I

    if-lt v2, v3, :cond_0

    move v0, v1

    goto :goto_0

    .line 698
    :cond_3
    iget-boolean v2, p1, Lcom/android/stockssettings/applications/RunningState$ProcessItem;->mIsStarted:Z

    iget-boolean v3, p2, Lcom/android/stockssettings/applications/RunningState$ProcessItem;->mIsStarted:Z

    if-eq v2, v3, :cond_4

    .line 700
    iget-boolean v2, p1, Lcom/android/stockssettings/applications/RunningState$ProcessItem;->mIsStarted:Z

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 702
    :cond_4
    iget-boolean v2, p1, Lcom/android/stockssettings/applications/RunningState$ProcessItem;->mIsSystem:Z

    iget-boolean v3, p2, Lcom/android/stockssettings/applications/RunningState$ProcessItem;->mIsSystem:Z

    if-eq v2, v3, :cond_6

    .line 704
    iget-boolean v2, p1, Lcom/android/stockssettings/applications/RunningState$ProcessItem;->mIsSystem:Z

    if-eqz v2, :cond_5

    :goto_1
    move v0, v1

    goto :goto_0

    :cond_5
    move v1, v0

    goto :goto_1

    .line 706
    :cond_6
    iget-wide v2, p1, Lcom/android/stockssettings/applications/RunningState$ProcessItem;->mActiveSince:J

    iget-wide v4, p2, Lcom/android/stockssettings/applications/RunningState$ProcessItem;->mActiveSince:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_7

    .line 709
    iget-wide v2, p1, Lcom/android/stockssettings/applications/RunningState$ProcessItem;->mActiveSince:J

    iget-wide v4, p2, Lcom/android/stockssettings/applications/RunningState$ProcessItem;->mActiveSince:J

    cmp-long v2, v2, v4

    if-gtz v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 711
    :cond_7
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 691
    check-cast p1, Lcom/android/stockssettings/applications/RunningState$ProcessItem;

    check-cast p2, Lcom/android/stockssettings/applications/RunningState$ProcessItem;

    invoke-virtual {p0, p1, p2}, Lcom/android/stockssettings/applications/RunningState$ServiceProcessComparator;->compare(Lcom/android/stockssettings/applications/RunningState$ProcessItem;Lcom/android/stockssettings/applications/RunningState$ProcessItem;)I

    move-result v0

    return v0
.end method
