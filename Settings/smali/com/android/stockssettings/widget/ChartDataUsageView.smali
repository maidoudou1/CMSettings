.class public Lcom/android/stockssettings/widget/ChartDataUsageView;
.super Lcom/android/stockssettings/widget/ChartView;
.source "ChartDataUsageView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/stockssettings/widget/ChartDataUsageView$DataAxis;,
        Lcom/android/stockssettings/widget/ChartDataUsageView$TimeAxis;,
        Lcom/android/stockssettings/widget/ChartDataUsageView$DataUsageChartListener;
    }
.end annotation


# instance fields
.field private mDetailSeries:Lcom/android/stockssettings/widget/ChartNetworkSeriesView;

.field private mGrid:Lcom/android/stockssettings/widget/ChartGridView;

.field private mHandler:Landroid/os/Handler;

.field private mHistory:Landroid/net/NetworkStatsHistory;

.field private mInspectEnd:J

.field private mInspectStart:J

.field private mListener:Lcom/android/stockssettings/widget/ChartDataUsageView$DataUsageChartListener;

.field private mSeries:Lcom/android/stockssettings/widget/ChartNetworkSeriesView;

.field private mSweepLimit:Lcom/android/stockssettings/widget/ChartSweepView;

.field private mSweepWarning:Lcom/android/stockssettings/widget/ChartSweepView;

.field private mVertListener:Lcom/android/stockssettings/widget/ChartSweepView$OnSweepListener;

.field private mVertMax:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 80
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/stockssettings/widget/ChartDataUsageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 81
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 84
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/stockssettings/widget/ChartDataUsageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 85
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 88
    invoke-direct {p0, p1, p2, p3}, Lcom/android/stockssettings/widget/ChartView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 291
    new-instance v0, Lcom/android/stockssettings/widget/ChartDataUsageView$2;

    invoke-direct {v0, p0}, Lcom/android/stockssettings/widget/ChartDataUsageView$2;-><init>(Lcom/android/stockssettings/widget/ChartDataUsageView;)V

    iput-object v0, p0, Lcom/android/stockssettings/widget/ChartDataUsageView;->mVertListener:Lcom/android/stockssettings/widget/ChartSweepView$OnSweepListener;

    .line 89
    new-instance v0, Lcom/android/stockssettings/widget/ChartDataUsageView$TimeAxis;

    invoke-direct {v0}, Lcom/android/stockssettings/widget/ChartDataUsageView$TimeAxis;-><init>()V

    new-instance v1, Lcom/android/stockssettings/widget/InvertedChartAxis;

    new-instance v2, Lcom/android/stockssettings/widget/ChartDataUsageView$DataAxis;

    invoke-direct {v2}, Lcom/android/stockssettings/widget/ChartDataUsageView$DataAxis;-><init>()V

    invoke-direct {v1, v2}, Lcom/android/stockssettings/widget/InvertedChartAxis;-><init>(Lcom/android/stockssettings/widget/ChartAxis;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/stockssettings/widget/ChartDataUsageView;->init(Lcom/android/stockssettings/widget/ChartAxis;Lcom/android/stockssettings/widget/ChartAxis;)V

    .line 91
    new-instance v0, Lcom/android/stockssettings/widget/ChartDataUsageView$1;

    invoke-direct {v0, p0}, Lcom/android/stockssettings/widget/ChartDataUsageView$1;-><init>(Lcom/android/stockssettings/widget/ChartDataUsageView;)V

    iput-object v0, p0, Lcom/android/stockssettings/widget/ChartDataUsageView;->mHandler:Landroid/os/Handler;

    .line 102
    return-void
.end method

.method static synthetic access$000(Lcom/android/stockssettings/widget/ChartDataUsageView;Lcom/android/stockssettings/widget/ChartSweepView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/stockssettings/widget/ChartDataUsageView;
    .param p1, "x1"    # Lcom/android/stockssettings/widget/ChartSweepView;

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/android/stockssettings/widget/ChartDataUsageView;->updateVertAxisBounds(Lcom/android/stockssettings/widget/ChartSweepView;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/stockssettings/widget/ChartDataUsageView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/stockssettings/widget/ChartDataUsageView;

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/android/stockssettings/widget/ChartDataUsageView;->updateEstimateVisible()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/stockssettings/widget/ChartDataUsageView;Lcom/android/stockssettings/widget/ChartSweepView;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/stockssettings/widget/ChartDataUsageView;
    .param p1, "x1"    # Lcom/android/stockssettings/widget/ChartSweepView;
    .param p2, "x2"    # Z

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Lcom/android/stockssettings/widget/ChartDataUsageView;->sendUpdateAxisDelayed(Lcom/android/stockssettings/widget/ChartSweepView;Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/stockssettings/widget/ChartDataUsageView;Lcom/android/stockssettings/widget/ChartSweepView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/stockssettings/widget/ChartDataUsageView;
    .param p1, "x1"    # Lcom/android/stockssettings/widget/ChartSweepView;

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/android/stockssettings/widget/ChartDataUsageView;->clearUpdateAxisDelayed(Lcom/android/stockssettings/widget/ChartSweepView;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/stockssettings/widget/ChartDataUsageView;)Lcom/android/stockssettings/widget/ChartSweepView;
    .locals 1
    .param p0, "x0"    # Lcom/android/stockssettings/widget/ChartDataUsageView;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/stockssettings/widget/ChartDataUsageView;->mSweepWarning:Lcom/android/stockssettings/widget/ChartSweepView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/stockssettings/widget/ChartDataUsageView;)Lcom/android/stockssettings/widget/ChartDataUsageView$DataUsageChartListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/stockssettings/widget/ChartDataUsageView;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/stockssettings/widget/ChartDataUsageView;->mListener:Lcom/android/stockssettings/widget/ChartDataUsageView$DataUsageChartListener;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/stockssettings/widget/ChartDataUsageView;)Lcom/android/stockssettings/widget/ChartSweepView;
    .locals 1
    .param p0, "x0"    # Lcom/android/stockssettings/widget/ChartDataUsageView;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/stockssettings/widget/ChartDataUsageView;->mSweepLimit:Lcom/android/stockssettings/widget/ChartSweepView;

    return-object v0
.end method

.method static synthetic access$700(Landroid/text/SpannableStringBuilder;Ljava/lang/Object;Ljava/lang/CharSequence;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/text/SpannableStringBuilder;
    .param p1, "x1"    # Ljava/lang/Object;
    .param p2, "x2"    # Ljava/lang/CharSequence;
    .param p3, "x3"    # Ljava/lang/String;

    .prologue
    .line 48
    invoke-static {p0, p1, p2, p3}, Lcom/android/stockssettings/widget/ChartDataUsageView;->setText(Landroid/text/SpannableStringBuilder;Ljava/lang/Object;Ljava/lang/CharSequence;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(J)J
    .locals 2
    .param p0, "x0"    # J

    .prologue
    .line 48
    invoke-static {p0, p1}, Lcom/android/stockssettings/widget/ChartDataUsageView;->roundUpToPowerOfTwo(J)J

    move-result-wide v0

    return-wide v0
.end method

.method private clearUpdateAxisDelayed(Lcom/android/stockssettings/widget/ChartSweepView;)V
    .locals 2
    .param p1, "sweep"    # Lcom/android/stockssettings/widget/ChartSweepView;

    .prologue
    .line 288
    iget-object v0, p0, Lcom/android/stockssettings/widget/ChartDataUsageView;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 289
    return-void
.end method

.method private static roundUpToPowerOfTwo(J)J
    .locals 4
    .param p0, "i"    # J

    .prologue
    const-wide/16 v2, 0x1

    .line 610
    sub-long/2addr p0, v2

    .line 613
    const/4 v0, 0x1

    ushr-long v0, p0, v0

    or-long/2addr p0, v0

    .line 614
    const/4 v0, 0x2

    ushr-long v0, p0, v0

    or-long/2addr p0, v0

    .line 615
    const/4 v0, 0x4

    ushr-long v0, p0, v0

    or-long/2addr p0, v0

    .line 616
    const/16 v0, 0x8

    ushr-long v0, p0, v0

    or-long/2addr p0, v0

    .line 617
    const/16 v0, 0x10

    ushr-long v0, p0, v0

    or-long/2addr p0, v0

    .line 618
    const/16 v0, 0x20

    ushr-long v0, p0, v0

    or-long/2addr p0, v0

    .line 620
    add-long/2addr p0, v2

    .line 622
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-lez v0, :cond_0

    .end local p0    # "i":J
    :goto_0
    return-wide p0

    .restart local p0    # "i":J
    :cond_0
    const-wide p0, 0x7fffffffffffffffL

    goto :goto_0
.end method

.method private sendUpdateAxisDelayed(Lcom/android/stockssettings/widget/ChartSweepView;Z)V
    .locals 4
    .param p1, "sweep"    # Lcom/android/stockssettings/widget/ChartSweepView;
    .param p2, "force"    # Z

    .prologue
    const/16 v2, 0x64

    .line 281
    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/android/stockssettings/widget/ChartDataUsageView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2, p1}, Landroid/os/Handler;->hasMessages(ILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 282
    :cond_0
    iget-object v0, p0, Lcom/android/stockssettings/widget/ChartDataUsageView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/stockssettings/widget/ChartDataUsageView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 285
    :cond_1
    return-void
.end method

.method private static setText(Landroid/text/SpannableStringBuilder;Ljava/lang/Object;Ljava/lang/CharSequence;Ljava/lang/String;)V
    .locals 3
    .param p0, "builder"    # Landroid/text/SpannableStringBuilder;
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "bootstrap"    # Ljava/lang/String;

    .prologue
    .line 597
    invoke-virtual {p0, p1}, Landroid/text/SpannableStringBuilder;->getSpanStart(Ljava/lang/Object;)I

    move-result v1

    .line 598
    .local v1, "start":I
    invoke-virtual {p0, p1}, Landroid/text/SpannableStringBuilder;->getSpanEnd(Ljava/lang/Object;)I

    move-result v0

    .line 599
    .local v0, "end":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 600
    invoke-static {p0, p3}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result v1

    .line 601
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v2

    add-int v0, v1, v2

    .line 602
    const/16 v2, 0x12

    invoke-virtual {p0, p1, v1, v0, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 604
    :cond_0
    invoke-virtual {p0, v1, v0, p2}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 605
    return-void
.end method

.method private updateEstimateVisible()V
    .locals 10

    .prologue
    .line 262
    iget-object v1, p0, Lcom/android/stockssettings/widget/ChartDataUsageView;->mSeries:Lcom/android/stockssettings/widget/ChartNetworkSeriesView;

    invoke-virtual {v1}, Lcom/android/stockssettings/widget/ChartNetworkSeriesView;->getMaxEstimate()J

    move-result-wide v4

    .line 265
    .local v4, "maxEstimate":J
    const-wide v2, 0x7fffffffffffffffL

    .line 266
    .local v2, "interestLine":J
    iget-object v1, p0, Lcom/android/stockssettings/widget/ChartDataUsageView;->mSweepWarning:Lcom/android/stockssettings/widget/ChartSweepView;

    invoke-virtual {v1}, Lcom/android/stockssettings/widget/ChartSweepView;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 267
    iget-object v1, p0, Lcom/android/stockssettings/widget/ChartDataUsageView;->mSweepWarning:Lcom/android/stockssettings/widget/ChartSweepView;

    invoke-virtual {v1}, Lcom/android/stockssettings/widget/ChartSweepView;->getValue()J

    move-result-wide v2

    .line 272
    :cond_0
    :goto_0
    const-wide/16 v6, 0x0

    cmp-long v1, v2, v6

    if-gez v1, :cond_1

    .line 273
    const-wide v2, 0x7fffffffffffffffL

    .line 276
    :cond_1
    const-wide/16 v6, 0x7

    mul-long/2addr v6, v2

    const-wide/16 v8, 0xa

    div-long/2addr v6, v8

    cmp-long v1, v4, v6

    if-ltz v1, :cond_3

    const/4 v0, 0x1

    .line 277
    .local v0, "estimateVisible":Z
    :goto_1
    iget-object v1, p0, Lcom/android/stockssettings/widget/ChartDataUsageView;->mSeries:Lcom/android/stockssettings/widget/ChartNetworkSeriesView;

    invoke-virtual {v1, v0}, Lcom/android/stockssettings/widget/ChartNetworkSeriesView;->setEstimateVisible(Z)V

    .line 278
    return-void

    .line 268
    .end local v0    # "estimateVisible":Z
    :cond_2
    iget-object v1, p0, Lcom/android/stockssettings/widget/ChartDataUsageView;->mSweepLimit:Lcom/android/stockssettings/widget/ChartSweepView;

    invoke-virtual {v1}, Lcom/android/stockssettings/widget/ChartSweepView;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 269
    iget-object v1, p0, Lcom/android/stockssettings/widget/ChartDataUsageView;->mSweepLimit:Lcom/android/stockssettings/widget/ChartSweepView;

    invoke-virtual {v1}, Lcom/android/stockssettings/widget/ChartSweepView;->getValue()J

    move-result-wide v2

    goto :goto_0

    .line 276
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private updatePrimaryRange()V
    .locals 2

    .prologue
    .line 379
    iget-object v0, p0, Lcom/android/stockssettings/widget/ChartDataUsageView;->mDetailSeries:Lcom/android/stockssettings/widget/ChartNetworkSeriesView;

    invoke-virtual {v0}, Lcom/android/stockssettings/widget/ChartNetworkSeriesView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 380
    iget-object v0, p0, Lcom/android/stockssettings/widget/ChartDataUsageView;->mSeries:Lcom/android/stockssettings/widget/ChartNetworkSeriesView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/stockssettings/widget/ChartNetworkSeriesView;->setSecondary(Z)V

    .line 384
    :goto_0
    return-void

    .line 382
    :cond_0
    iget-object v0, p0, Lcom/android/stockssettings/widget/ChartDataUsageView;->mSeries:Lcom/android/stockssettings/widget/ChartNetworkSeriesView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/stockssettings/widget/ChartNetworkSeriesView;->setSecondary(Z)V

    goto :goto_0
.end method

.method private updateVertAxisBounds(Lcom/android/stockssettings/widget/ChartSweepView;)V
    .locals 24
    .param p1, "activeSweep"    # Lcom/android/stockssettings/widget/ChartSweepView;

    .prologue
    .line 202
    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/stockssettings/widget/ChartDataUsageView;->mVertMax:J

    .line 204
    .local v8, "max":J
    const-wide/16 v18, 0x0

    .line 205
    .local v18, "newMax":J
    if-eqz p1, :cond_0

    .line 206
    invoke-virtual/range {p1 .. p1}, Lcom/android/stockssettings/widget/ChartSweepView;->shouldAdjustAxis()I

    move-result v6

    .line 207
    .local v6, "adjustAxis":I
    if-lez v6, :cond_5

    .line 209
    const-wide/16 v20, 0xb

    mul-long v20, v20, v8

    const-wide/16 v22, 0xa

    div-long v18, v20, v22

    .line 219
    .end local v6    # "adjustAxis":I
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/stockssettings/widget/ChartDataUsageView;->mSweepWarning:Lcom/android/stockssettings/widget/ChartSweepView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/stockssettings/widget/ChartSweepView;->getValue()J

    move-result-wide v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/stockssettings/widget/ChartDataUsageView;->mSweepLimit:Lcom/android/stockssettings/widget/ChartSweepView;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/stockssettings/widget/ChartSweepView;->getValue()J

    move-result-wide v22

    invoke-static/range {v20 .. v23}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v14

    .line 220
    .local v14, "maxSweep":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/stockssettings/widget/ChartDataUsageView;->mSeries:Lcom/android/stockssettings/widget/ChartNetworkSeriesView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/stockssettings/widget/ChartNetworkSeriesView;->getMaxVisible()J

    move-result-wide v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/stockssettings/widget/ChartDataUsageView;->mDetailSeries:Lcom/android/stockssettings/widget/ChartNetworkSeriesView;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/stockssettings/widget/ChartNetworkSeriesView;->getMaxVisible()J

    move-result-wide v22

    invoke-static/range {v20 .. v23}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v12

    .line 221
    .local v12, "maxSeries":J
    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v20

    const-wide/16 v22, 0xc

    mul-long v20, v20, v22

    const-wide/16 v22, 0xa

    div-long v16, v20, v22

    .line 222
    .local v16, "maxVisible":J
    const-wide/32 v20, 0x3200000

    move-wide/from16 v0, v16

    move-wide/from16 v2, v20

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v10

    .line 223
    .local v10, "maxDefault":J
    move-wide/from16 v0, v18

    invoke-static {v10, v11, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v18

    .line 226
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/stockssettings/widget/ChartDataUsageView;->mVertMax:J

    move-wide/from16 v20, v0

    cmp-long v20, v18, v20

    if-eqz v20, :cond_4

    .line 227
    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/stockssettings/widget/ChartDataUsageView;->mVertMax:J

    .line 229
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/stockssettings/widget/ChartDataUsageView;->mVert:Lcom/android/stockssettings/widget/ChartAxis;

    move-object/from16 v20, v0

    const-wide/16 v22, 0x0

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    move-wide/from16 v3, v18

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/android/stockssettings/widget/ChartAxis;->setBounds(JJ)Z

    move-result v7

    .line 230
    .local v7, "changed":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/stockssettings/widget/ChartDataUsageView;->mSweepWarning:Lcom/android/stockssettings/widget/ChartSweepView;

    move-object/from16 v20, v0

    const-wide/16 v22, 0x0

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    move-wide/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/stockssettings/widget/ChartSweepView;->setValidRange(JJ)V

    .line 231
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/stockssettings/widget/ChartDataUsageView;->mSweepLimit:Lcom/android/stockssettings/widget/ChartSweepView;

    move-object/from16 v20, v0

    const-wide/16 v22, 0x0

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    move-wide/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/stockssettings/widget/ChartSweepView;->setValidRange(JJ)V

    .line 233
    if-eqz v7, :cond_1

    .line 234
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/stockssettings/widget/ChartDataUsageView;->mSeries:Lcom/android/stockssettings/widget/ChartNetworkSeriesView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/stockssettings/widget/ChartNetworkSeriesView;->invalidatePath()V

    .line 235
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/stockssettings/widget/ChartDataUsageView;->mDetailSeries:Lcom/android/stockssettings/widget/ChartNetworkSeriesView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/stockssettings/widget/ChartNetworkSeriesView;->invalidatePath()V

    .line 238
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/stockssettings/widget/ChartDataUsageView;->mGrid:Lcom/android/stockssettings/widget/ChartGridView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/stockssettings/widget/ChartGridView;->invalidate()V

    .line 241
    if-eqz p1, :cond_2

    .line 242
    invoke-virtual/range {p1 .. p1}, Lcom/android/stockssettings/widget/ChartSweepView;->updateValueFromPosition()V

    .line 248
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/stockssettings/widget/ChartDataUsageView;->mSweepLimit:Lcom/android/stockssettings/widget/ChartSweepView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    if-eq v0, v1, :cond_3

    .line 249
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/stockssettings/widget/ChartDataUsageView;->mSweepLimit:Lcom/android/stockssettings/widget/ChartSweepView;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/stockssettings/widget/ChartDataUsageView;->layoutSweep(Lcom/android/stockssettings/widget/ChartSweepView;)V

    .line 251
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/stockssettings/widget/ChartDataUsageView;->mSweepWarning:Lcom/android/stockssettings/widget/ChartSweepView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    if-eq v0, v1, :cond_4

    .line 252
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/stockssettings/widget/ChartDataUsageView;->mSweepWarning:Lcom/android/stockssettings/widget/ChartSweepView;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/stockssettings/widget/ChartDataUsageView;->layoutSweep(Lcom/android/stockssettings/widget/ChartSweepView;)V

    .line 255
    .end local v7    # "changed":Z
    :cond_4
    return-void

    .line 210
    .end local v10    # "maxDefault":J
    .end local v12    # "maxSeries":J
    .end local v14    # "maxSweep":J
    .end local v16    # "maxVisible":J
    .restart local v6    # "adjustAxis":I
    :cond_5
    if-gez v6, :cond_6

    .line 212
    const-wide/16 v20, 0x9

    mul-long v20, v20, v8

    const-wide/16 v22, 0xa

    div-long v18, v20, v22

    goto/16 :goto_0

    .line 214
    :cond_6
    move-wide/from16 v18, v8

    goto/16 :goto_0
.end method


# virtual methods
.method public bindDetailNetworkStats(Landroid/net/NetworkStatsHistory;)V
    .locals 4
    .param p1, "stats"    # Landroid/net/NetworkStatsHistory;

    .prologue
    .line 154
    iget-object v0, p0, Lcom/android/stockssettings/widget/ChartDataUsageView;->mDetailSeries:Lcom/android/stockssettings/widget/ChartNetworkSeriesView;

    invoke-virtual {v0, p1}, Lcom/android/stockssettings/widget/ChartNetworkSeriesView;->bindNetworkStats(Landroid/net/NetworkStatsHistory;)V

    .line 155
    iget-object v1, p0, Lcom/android/stockssettings/widget/ChartDataUsageView;->mDetailSeries:Lcom/android/stockssettings/widget/ChartNetworkSeriesView;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/stockssettings/widget/ChartNetworkSeriesView;->setVisibility(I)V

    .line 156
    iget-object v0, p0, Lcom/android/stockssettings/widget/ChartDataUsageView;->mHistory:Landroid/net/NetworkStatsHistory;

    if-eqz v0, :cond_0

    .line 157
    iget-object v0, p0, Lcom/android/stockssettings/widget/ChartDataUsageView;->mDetailSeries:Lcom/android/stockssettings/widget/ChartNetworkSeriesView;

    iget-object v1, p0, Lcom/android/stockssettings/widget/ChartDataUsageView;->mHistory:Landroid/net/NetworkStatsHistory;

    invoke-virtual {v1}, Landroid/net/NetworkStatsHistory;->getEnd()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/android/stockssettings/widget/ChartNetworkSeriesView;->setEndTime(J)V

    .line 159
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/stockssettings/widget/ChartDataUsageView;->updateVertAxisBounds(Lcom/android/stockssettings/widget/ChartSweepView;)V

    .line 160
    invoke-direct {p0}, Lcom/android/stockssettings/widget/ChartDataUsageView;->updateEstimateVisible()V

    .line 161
    invoke-direct {p0}, Lcom/android/stockssettings/widget/ChartDataUsageView;->updatePrimaryRange()V

    .line 162
    invoke-virtual {p0}, Lcom/android/stockssettings/widget/ChartDataUsageView;->requestLayout()V

    .line 163
    return-void

    .line 155
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public bindNetworkPolicy(Landroid/net/NetworkPolicy;)V
    .locals 8
    .param p1, "policy"    # Landroid/net/NetworkPolicy;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x4

    const-wide/16 v4, -0x1

    .line 166
    if-nez p1, :cond_0

    .line 167
    iget-object v0, p0, Lcom/android/stockssettings/widget/ChartDataUsageView;->mSweepLimit:Lcom/android/stockssettings/widget/ChartSweepView;

    invoke-virtual {v0, v6}, Lcom/android/stockssettings/widget/ChartSweepView;->setVisibility(I)V

    .line 168
    iget-object v0, p0, Lcom/android/stockssettings/widget/ChartDataUsageView;->mSweepLimit:Lcom/android/stockssettings/widget/ChartSweepView;

    invoke-virtual {v0, v4, v5}, Lcom/android/stockssettings/widget/ChartSweepView;->setValue(J)V

    .line 169
    iget-object v0, p0, Lcom/android/stockssettings/widget/ChartDataUsageView;->mSweepWarning:Lcom/android/stockssettings/widget/ChartSweepView;

    invoke-virtual {v0, v6}, Lcom/android/stockssettings/widget/ChartSweepView;->setVisibility(I)V

    .line 170
    iget-object v0, p0, Lcom/android/stockssettings/widget/ChartDataUsageView;->mSweepWarning:Lcom/android/stockssettings/widget/ChartSweepView;

    invoke-virtual {v0, v4, v5}, Lcom/android/stockssettings/widget/ChartSweepView;->setValue(J)V

    .line 195
    :goto_0
    return-void

    .line 174
    :cond_0
    iget-wide v0, p1, Landroid/net/NetworkPolicy;->limitBytes:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_1

    .line 175
    iget-object v0, p0, Lcom/android/stockssettings/widget/ChartDataUsageView;->mSweepLimit:Lcom/android/stockssettings/widget/ChartSweepView;

    invoke-virtual {v0, v7}, Lcom/android/stockssettings/widget/ChartSweepView;->setVisibility(I)V

    .line 176
    iget-object v0, p0, Lcom/android/stockssettings/widget/ChartDataUsageView;->mSweepLimit:Lcom/android/stockssettings/widget/ChartSweepView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/stockssettings/widget/ChartSweepView;->setEnabled(Z)V

    .line 177
    iget-object v0, p0, Lcom/android/stockssettings/widget/ChartDataUsageView;->mSweepLimit:Lcom/android/stockssettings/widget/ChartSweepView;

    iget-wide v2, p1, Landroid/net/NetworkPolicy;->limitBytes:J

    invoke-virtual {v0, v2, v3}, Lcom/android/stockssettings/widget/ChartSweepView;->setValue(J)V

    .line 184
    :goto_1
    iget-wide v0, p1, Landroid/net/NetworkPolicy;->warningBytes:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_2

    .line 185
    iget-object v0, p0, Lcom/android/stockssettings/widget/ChartDataUsageView;->mSweepWarning:Lcom/android/stockssettings/widget/ChartSweepView;

    invoke-virtual {v0, v7}, Lcom/android/stockssettings/widget/ChartSweepView;->setVisibility(I)V

    .line 186
    iget-object v0, p0, Lcom/android/stockssettings/widget/ChartDataUsageView;->mSweepWarning:Lcom/android/stockssettings/widget/ChartSweepView;

    iget-wide v2, p1, Landroid/net/NetworkPolicy;->warningBytes:J

    invoke-virtual {v0, v2, v3}, Lcom/android/stockssettings/widget/ChartSweepView;->setValue(J)V

    .line 192
    :goto_2
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/stockssettings/widget/ChartDataUsageView;->updateVertAxisBounds(Lcom/android/stockssettings/widget/ChartSweepView;)V

    .line 193
    invoke-virtual {p0}, Lcom/android/stockssettings/widget/ChartDataUsageView;->requestLayout()V

    .line 194
    invoke-virtual {p0}, Lcom/android/stockssettings/widget/ChartDataUsageView;->invalidate()V

    goto :goto_0

    .line 179
    :cond_1
    iget-object v0, p0, Lcom/android/stockssettings/widget/ChartDataUsageView;->mSweepLimit:Lcom/android/stockssettings/widget/ChartSweepView;

    invoke-virtual {v0, v6}, Lcom/android/stockssettings/widget/ChartSweepView;->setVisibility(I)V

    .line 180
    iget-object v0, p0, Lcom/android/stockssettings/widget/ChartDataUsageView;->mSweepLimit:Lcom/android/stockssettings/widget/ChartSweepView;

    invoke-virtual {v0, v7}, Lcom/android/stockssettings/widget/ChartSweepView;->setEnabled(Z)V

    .line 181
    iget-object v0, p0, Lcom/android/stockssettings/widget/ChartDataUsageView;->mSweepLimit:Lcom/android/stockssettings/widget/ChartSweepView;

    invoke-virtual {v0, v4, v5}, Lcom/android/stockssettings/widget/ChartSweepView;->setValue(J)V

    goto :goto_1

    .line 188
    :cond_2
    iget-object v0, p0, Lcom/android/stockssettings/widget/ChartDataUsageView;->mSweepWarning:Lcom/android/stockssettings/widget/ChartSweepView;

    invoke-virtual {v0, v6}, Lcom/android/stockssettings/widget/ChartSweepView;->setVisibility(I)V

    .line 189
    iget-object v0, p0, Lcom/android/stockssettings/widget/ChartDataUsageView;->mSweepWarning:Lcom/android/stockssettings/widget/ChartSweepView;

    invoke-virtual {v0, v4, v5}, Lcom/android/stockssettings/widget/ChartSweepView;->setValue(J)V

    goto :goto_2
.end method

.method public bindNetworkStats(Landroid/net/NetworkStatsHistory;)V
    .locals 1
    .param p1, "stats"    # Landroid/net/NetworkStatsHistory;

    .prologue
    .line 145
    iget-object v0, p0, Lcom/android/stockssettings/widget/ChartDataUsageView;->mSeries:Lcom/android/stockssettings/widget/ChartNetworkSeriesView;

    invoke-virtual {v0, p1}, Lcom/android/stockssettings/widget/ChartNetworkSeriesView;->bindNetworkStats(Landroid/net/NetworkStatsHistory;)V

    .line 146
    iput-object p1, p0, Lcom/android/stockssettings/widget/ChartDataUsageView;->mHistory:Landroid/net/NetworkStatsHistory;

    .line 147
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/stockssettings/widget/ChartDataUsageView;->updateVertAxisBounds(Lcom/android/stockssettings/widget/ChartSweepView;)V

    .line 148
    invoke-direct {p0}, Lcom/android/stockssettings/widget/ChartDataUsageView;->updateEstimateVisible()V

    .line 149
    invoke-direct {p0}, Lcom/android/stockssettings/widget/ChartDataUsageView;->updatePrimaryRange()V

    .line 150
    invoke-virtual {p0}, Lcom/android/stockssettings/widget/ChartDataUsageView;->requestLayout()V

    .line 151
    return-void
.end method

.method public getInspectEnd()J
    .locals 2

    .prologue
    .line 341
    iget-wide v0, p0, Lcom/android/stockssettings/widget/ChartDataUsageView;->mInspectEnd:J

    return-wide v0
.end method

.method public getInspectStart()J
    .locals 2

    .prologue
    .line 337
    iget-wide v0, p0, Lcom/android/stockssettings/widget/ChartDataUsageView;->mInspectStart:J

    return-wide v0
.end method

.method public getLimitBytes()J
    .locals 2

    .prologue
    .line 349
    iget-object v0, p0, Lcom/android/stockssettings/widget/ChartDataUsageView;->mSweepLimit:Lcom/android/stockssettings/widget/ChartSweepView;

    invoke-virtual {v0}, Lcom/android/stockssettings/widget/ChartSweepView;->getLabelValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getWarningBytes()J
    .locals 2

    .prologue
    .line 345
    iget-object v0, p0, Lcom/android/stockssettings/widget/ChartDataUsageView;->mSweepWarning:Lcom/android/stockssettings/widget/ChartSweepView;

    invoke-virtual {v0}, Lcom/android/stockssettings/widget/ChartSweepView;->getLabelValue()J

    move-result-wide v0

    return-wide v0
.end method

.method protected onFinishInflate()V
    .locals 8

    .prologue
    const-wide/32 v6, 0x500000

    const/4 v2, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 106
    invoke-super {p0}, Lcom/android/stockssettings/widget/ChartView;->onFinishInflate()V

    .line 108
    const v0, 0x7f10009e

    invoke-virtual {p0, v0}, Lcom/android/stockssettings/widget/ChartDataUsageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/stockssettings/widget/ChartGridView;

    iput-object v0, p0, Lcom/android/stockssettings/widget/ChartDataUsageView;->mGrid:Lcom/android/stockssettings/widget/ChartGridView;

    .line 109
    const v0, 0x7f10009f

    invoke-virtual {p0, v0}, Lcom/android/stockssettings/widget/ChartDataUsageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/stockssettings/widget/ChartNetworkSeriesView;

    iput-object v0, p0, Lcom/android/stockssettings/widget/ChartDataUsageView;->mSeries:Lcom/android/stockssettings/widget/ChartNetworkSeriesView;

    .line 110
    const v0, 0x7f1000a0

    invoke-virtual {p0, v0}, Lcom/android/stockssettings/widget/ChartDataUsageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/stockssettings/widget/ChartNetworkSeriesView;

    iput-object v0, p0, Lcom/android/stockssettings/widget/ChartDataUsageView;->mDetailSeries:Lcom/android/stockssettings/widget/ChartNetworkSeriesView;

    .line 111
    iget-object v0, p0, Lcom/android/stockssettings/widget/ChartDataUsageView;->mDetailSeries:Lcom/android/stockssettings/widget/ChartNetworkSeriesView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/stockssettings/widget/ChartNetworkSeriesView;->setVisibility(I)V

    .line 113
    const v0, 0x7f1000a2

    invoke-virtual {p0, v0}, Lcom/android/stockssettings/widget/ChartDataUsageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/stockssettings/widget/ChartSweepView;

    iput-object v0, p0, Lcom/android/stockssettings/widget/ChartDataUsageView;->mSweepLimit:Lcom/android/stockssettings/widget/ChartSweepView;

    .line 114
    const v0, 0x7f1000a1

    invoke-virtual {p0, v0}, Lcom/android/stockssettings/widget/ChartDataUsageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/stockssettings/widget/ChartSweepView;

    iput-object v0, p0, Lcom/android/stockssettings/widget/ChartDataUsageView;->mSweepWarning:Lcom/android/stockssettings/widget/ChartSweepView;

    .line 117
    iget-object v0, p0, Lcom/android/stockssettings/widget/ChartDataUsageView;->mSweepWarning:Lcom/android/stockssettings/widget/ChartSweepView;

    iget-object v1, p0, Lcom/android/stockssettings/widget/ChartDataUsageView;->mSweepLimit:Lcom/android/stockssettings/widget/ChartSweepView;

    invoke-virtual {v0, v2, v1}, Lcom/android/stockssettings/widget/ChartSweepView;->setValidRangeDynamic(Lcom/android/stockssettings/widget/ChartSweepView;Lcom/android/stockssettings/widget/ChartSweepView;)V

    .line 118
    iget-object v0, p0, Lcom/android/stockssettings/widget/ChartDataUsageView;->mSweepLimit:Lcom/android/stockssettings/widget/ChartSweepView;

    iget-object v1, p0, Lcom/android/stockssettings/widget/ChartDataUsageView;->mSweepWarning:Lcom/android/stockssettings/widget/ChartSweepView;

    invoke-virtual {v0, v1, v2}, Lcom/android/stockssettings/widget/ChartSweepView;->setValidRangeDynamic(Lcom/android/stockssettings/widget/ChartSweepView;Lcom/android/stockssettings/widget/ChartSweepView;)V

    .line 121
    iget-object v0, p0, Lcom/android/stockssettings/widget/ChartDataUsageView;->mSweepLimit:Lcom/android/stockssettings/widget/ChartSweepView;

    new-array v1, v4, [Lcom/android/stockssettings/widget/ChartSweepView;

    iget-object v2, p0, Lcom/android/stockssettings/widget/ChartDataUsageView;->mSweepWarning:Lcom/android/stockssettings/widget/ChartSweepView;

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/android/stockssettings/widget/ChartSweepView;->setNeighbors([Lcom/android/stockssettings/widget/ChartSweepView;)V

    .line 122
    iget-object v0, p0, Lcom/android/stockssettings/widget/ChartDataUsageView;->mSweepWarning:Lcom/android/stockssettings/widget/ChartSweepView;

    new-array v1, v4, [Lcom/android/stockssettings/widget/ChartSweepView;

    iget-object v2, p0, Lcom/android/stockssettings/widget/ChartDataUsageView;->mSweepLimit:Lcom/android/stockssettings/widget/ChartSweepView;

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/android/stockssettings/widget/ChartSweepView;->setNeighbors([Lcom/android/stockssettings/widget/ChartSweepView;)V

    .line 124
    iget-object v0, p0, Lcom/android/stockssettings/widget/ChartDataUsageView;->mSweepWarning:Lcom/android/stockssettings/widget/ChartSweepView;

    iget-object v1, p0, Lcom/android/stockssettings/widget/ChartDataUsageView;->mVertListener:Lcom/android/stockssettings/widget/ChartSweepView$OnSweepListener;

    invoke-virtual {v0, v1}, Lcom/android/stockssettings/widget/ChartSweepView;->addOnSweepListener(Lcom/android/stockssettings/widget/ChartSweepView$OnSweepListener;)V

    .line 125
    iget-object v0, p0, Lcom/android/stockssettings/widget/ChartDataUsageView;->mSweepLimit:Lcom/android/stockssettings/widget/ChartSweepView;

    iget-object v1, p0, Lcom/android/stockssettings/widget/ChartDataUsageView;->mVertListener:Lcom/android/stockssettings/widget/ChartSweepView$OnSweepListener;

    invoke-virtual {v0, v1}, Lcom/android/stockssettings/widget/ChartSweepView;->addOnSweepListener(Lcom/android/stockssettings/widget/ChartSweepView$OnSweepListener;)V

    .line 127
    iget-object v0, p0, Lcom/android/stockssettings/widget/ChartDataUsageView;->mSweepWarning:Lcom/android/stockssettings/widget/ChartSweepView;

    invoke-virtual {v0, v6, v7}, Lcom/android/stockssettings/widget/ChartSweepView;->setDragInterval(J)V

    .line 128
    iget-object v0, p0, Lcom/android/stockssettings/widget/ChartDataUsageView;->mSweepLimit:Lcom/android/stockssettings/widget/ChartSweepView;

    invoke-virtual {v0, v6, v7}, Lcom/android/stockssettings/widget/ChartSweepView;->setDragInterval(J)V

    .line 131
    iget-object v0, p0, Lcom/android/stockssettings/widget/ChartDataUsageView;->mGrid:Lcom/android/stockssettings/widget/ChartGridView;

    iget-object v1, p0, Lcom/android/stockssettings/widget/ChartDataUsageView;->mHoriz:Lcom/android/stockssettings/widget/ChartAxis;

    iget-object v2, p0, Lcom/android/stockssettings/widget/ChartDataUsageView;->mVert:Lcom/android/stockssettings/widget/ChartAxis;

    invoke-virtual {v0, v1, v2}, Lcom/android/stockssettings/widget/ChartGridView;->init(Lcom/android/stockssettings/widget/ChartAxis;Lcom/android/stockssettings/widget/ChartAxis;)V

    .line 132
    iget-object v0, p0, Lcom/android/stockssettings/widget/ChartDataUsageView;->mSeries:Lcom/android/stockssettings/widget/ChartNetworkSeriesView;

    iget-object v1, p0, Lcom/android/stockssettings/widget/ChartDataUsageView;->mHoriz:Lcom/android/stockssettings/widget/ChartAxis;

    iget-object v2, p0, Lcom/android/stockssettings/widget/ChartDataUsageView;->mVert:Lcom/android/stockssettings/widget/ChartAxis;

    invoke-virtual {v0, v1, v2}, Lcom/android/stockssettings/widget/ChartNetworkSeriesView;->init(Lcom/android/stockssettings/widget/ChartAxis;Lcom/android/stockssettings/widget/ChartAxis;)V

    .line 133
    iget-object v0, p0, Lcom/android/stockssettings/widget/ChartDataUsageView;->mDetailSeries:Lcom/android/stockssettings/widget/ChartNetworkSeriesView;

    iget-object v1, p0, Lcom/android/stockssettings/widget/ChartDataUsageView;->mHoriz:Lcom/android/stockssettings/widget/ChartAxis;

    iget-object v2, p0, Lcom/android/stockssettings/widget/ChartDataUsageView;->mVert:Lcom/android/stockssettings/widget/ChartAxis;

    invoke-virtual {v0, v1, v2}, Lcom/android/stockssettings/widget/ChartNetworkSeriesView;->init(Lcom/android/stockssettings/widget/ChartAxis;Lcom/android/stockssettings/widget/ChartAxis;)V

    .line 134
    iget-object v0, p0, Lcom/android/stockssettings/widget/ChartDataUsageView;->mSweepWarning:Lcom/android/stockssettings/widget/ChartSweepView;

    iget-object v1, p0, Lcom/android/stockssettings/widget/ChartDataUsageView;->mVert:Lcom/android/stockssettings/widget/ChartAxis;

    invoke-virtual {v0, v1}, Lcom/android/stockssettings/widget/ChartSweepView;->init(Lcom/android/stockssettings/widget/ChartAxis;)V

    .line 135
    iget-object v0, p0, Lcom/android/stockssettings/widget/ChartDataUsageView;->mSweepLimit:Lcom/android/stockssettings/widget/ChartSweepView;

    iget-object v1, p0, Lcom/android/stockssettings/widget/ChartDataUsageView;->mVert:Lcom/android/stockssettings/widget/ChartAxis;

    invoke-virtual {v0, v1}, Lcom/android/stockssettings/widget/ChartSweepView;->init(Lcom/android/stockssettings/widget/ChartAxis;)V

    .line 137
    invoke-virtual {p0, v3}, Lcom/android/stockssettings/widget/ChartDataUsageView;->setActivated(Z)V

    .line 138
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 321
    invoke-virtual {p0}, Lcom/android/stockssettings/widget/ChartDataUsageView;->isActivated()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 331
    :goto_0
    return v0

    .line 322
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    move v0, v1

    .line 324
    goto :goto_0

    .line 327
    :pswitch_1
    invoke-virtual {p0, v1}, Lcom/android/stockssettings/widget/ChartDataUsageView;->setActivated(Z)V

    move v0, v1

    .line 328
    goto :goto_0

    .line 322
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setListener(Lcom/android/stockssettings/widget/ChartDataUsageView$DataUsageChartListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/stockssettings/widget/ChartDataUsageView$DataUsageChartListener;

    .prologue
    .line 141
    iput-object p1, p0, Lcom/android/stockssettings/widget/ChartDataUsageView;->mListener:Lcom/android/stockssettings/widget/ChartDataUsageView$DataUsageChartListener;

    .line 142
    return-void
.end method

.method public setVisibleRange(JJ)V
    .locals 3
    .param p1, "visibleStart"    # J
    .param p3, "visibleEnd"    # J

    .prologue
    .line 358
    iget-object v1, p0, Lcom/android/stockssettings/widget/ChartDataUsageView;->mHoriz:Lcom/android/stockssettings/widget/ChartAxis;

    invoke-interface {v1, p1, p2, p3, p4}, Lcom/android/stockssettings/widget/ChartAxis;->setBounds(JJ)Z

    move-result v0

    .line 359
    .local v0, "changed":Z
    iget-object v1, p0, Lcom/android/stockssettings/widget/ChartDataUsageView;->mGrid:Lcom/android/stockssettings/widget/ChartGridView;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/android/stockssettings/widget/ChartGridView;->setBounds(JJ)V

    .line 360
    iget-object v1, p0, Lcom/android/stockssettings/widget/ChartDataUsageView;->mSeries:Lcom/android/stockssettings/widget/ChartNetworkSeriesView;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/android/stockssettings/widget/ChartNetworkSeriesView;->setBounds(JJ)V

    .line 361
    iget-object v1, p0, Lcom/android/stockssettings/widget/ChartDataUsageView;->mDetailSeries:Lcom/android/stockssettings/widget/ChartNetworkSeriesView;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/android/stockssettings/widget/ChartNetworkSeriesView;->setBounds(JJ)V

    .line 363
    iput-wide p1, p0, Lcom/android/stockssettings/widget/ChartDataUsageView;->mInspectStart:J

    .line 364
    iput-wide p3, p0, Lcom/android/stockssettings/widget/ChartDataUsageView;->mInspectEnd:J

    .line 366
    invoke-virtual {p0}, Lcom/android/stockssettings/widget/ChartDataUsageView;->requestLayout()V

    .line 367
    if-eqz v0, :cond_0

    .line 368
    iget-object v1, p0, Lcom/android/stockssettings/widget/ChartDataUsageView;->mSeries:Lcom/android/stockssettings/widget/ChartNetworkSeriesView;

    invoke-virtual {v1}, Lcom/android/stockssettings/widget/ChartNetworkSeriesView;->invalidatePath()V

    .line 369
    iget-object v1, p0, Lcom/android/stockssettings/widget/ChartDataUsageView;->mDetailSeries:Lcom/android/stockssettings/widget/ChartNetworkSeriesView;

    invoke-virtual {v1}, Lcom/android/stockssettings/widget/ChartNetworkSeriesView;->invalidatePath()V

    .line 372
    :cond_0
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/stockssettings/widget/ChartDataUsageView;->updateVertAxisBounds(Lcom/android/stockssettings/widget/ChartSweepView;)V

    .line 373
    invoke-direct {p0}, Lcom/android/stockssettings/widget/ChartDataUsageView;->updateEstimateVisible()V

    .line 374
    invoke-direct {p0}, Lcom/android/stockssettings/widget/ChartDataUsageView;->updatePrimaryRange()V

    .line 375
    return-void
.end method
