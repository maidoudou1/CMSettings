.class Lcom/android/stockssettings/RadioInfo$20;
.super Ljava/lang/Object;
.source "RadioInfo.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/stockssettings/RadioInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/stockssettings/RadioInfo;


# direct methods
.method constructor <init>(Lcom/android/stockssettings/RadioInfo;)V
    .locals 0

    .prologue
    .line 1118
    iput-object p1, p0, Lcom/android/stockssettings/RadioInfo$20;->this$0:Lcom/android/stockssettings/RadioInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1120
    iget-object v0, p0, Lcom/android/stockssettings/RadioInfo$20;->this$0:Lcom/android/stockssettings/RadioInfo;

    # invokes: Lcom/android/stockssettings/RadioInfo;->updatePingState()V
    invoke-static {v0}, Lcom/android/stockssettings/RadioInfo;->access$4500(Lcom/android/stockssettings/RadioInfo;)V

    .line 1121
    return-void
.end method
