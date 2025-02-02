.class Lcom/android/stockssettings/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;
.super Ljava/lang/Object;
.source "ButtonBacklightBrightness.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/stockssettings/cyanogenmod/ButtonBacklightBrightness;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BrightnessControl"
.end annotation


# instance fields
.field private mCheckBox:Landroid/widget/CheckBox;

.field private mDefaultBrightness:I

.field private mIsSingleValue:Z

.field private mSeekBar:Landroid/widget/SeekBar;

.field private mSetting:Ljava/lang/String;

.field private mValue:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/android/stockssettings/cyanogenmod/ButtonBacklightBrightness;


# direct methods
.method public constructor <init>(Lcom/android/stockssettings/cyanogenmod/ButtonBacklightBrightness;Ljava/lang/String;Z)V
    .locals 1
    .param p2, "setting"    # Ljava/lang/String;
    .param p3, "singleValue"    # Z

    .prologue
    .line 378
    const/16 v0, 0xff

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/stockssettings/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;-><init>(Lcom/android/stockssettings/cyanogenmod/ButtonBacklightBrightness;Ljava/lang/String;ZI)V

    .line 379
    return-void
.end method

.method public constructor <init>(Lcom/android/stockssettings/cyanogenmod/ButtonBacklightBrightness;Ljava/lang/String;ZI)V
    .locals 0
    .param p2, "setting"    # Ljava/lang/String;
    .param p3, "singleValue"    # Z
    .param p4, "defaultBrightness"    # I

    .prologue
    .line 371
    iput-object p1, p0, Lcom/android/stockssettings/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;->this$0:Lcom/android/stockssettings/cyanogenmod/ButtonBacklightBrightness;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 372
    iput-object p2, p0, Lcom/android/stockssettings/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;->mSetting:Ljava/lang/String;

    .line 373
    iput-boolean p3, p0, Lcom/android/stockssettings/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;->mIsSingleValue:Z

    .line 374
    iput p4, p0, Lcom/android/stockssettings/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;->mDefaultBrightness:I

    .line 375
    return-void
.end method

.method private handleBrightnessUpdate(I)V
    .locals 5
    .param p1, "brightness"    # I

    .prologue
    .line 452
    iget-object v0, p0, Lcom/android/stockssettings/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;->this$0:Lcom/android/stockssettings/cyanogenmod/ButtonBacklightBrightness;

    # invokes: Lcom/android/stockssettings/cyanogenmod/ButtonBacklightBrightness;->updateBrightnessPreview()V
    invoke-static {v0}, Lcom/android/stockssettings/cyanogenmod/ButtonBacklightBrightness;->access$500(Lcom/android/stockssettings/cyanogenmod/ButtonBacklightBrightness;)V

    .line 453
    iget-object v0, p0, Lcom/android/stockssettings/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;->mValue:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 454
    iget-object v0, p0, Lcom/android/stockssettings/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;->mValue:Landroid/widget/TextView;

    const-string v1, "%d%%"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    mul-int/lit8 v4, p1, 0x64

    div-int/lit16 v4, v4, 0xff

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 456
    :cond_0
    iget-object v0, p0, Lcom/android/stockssettings/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;->this$0:Lcom/android/stockssettings/cyanogenmod/ButtonBacklightBrightness;

    # invokes: Lcom/android/stockssettings/cyanogenmod/ButtonBacklightBrightness;->updateTimeoutEnabledState()V
    invoke-static {v0}, Lcom/android/stockssettings/cyanogenmod/ButtonBacklightBrightness;->access$600(Lcom/android/stockssettings/cyanogenmod/ButtonBacklightBrightness;)V

    .line 457
    return-void
.end method


# virtual methods
.method public applyBrightness()V
    .locals 3

    .prologue
    .line 412
    iget-object v0, p0, Lcom/android/stockssettings/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;->this$0:Lcom/android/stockssettings/cyanogenmod/ButtonBacklightBrightness;

    # getter for: Lcom/android/stockssettings/cyanogenmod/ButtonBacklightBrightness;->mResolver:Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/android/stockssettings/cyanogenmod/ButtonBacklightBrightness;->access$300(Lcom/android/stockssettings/cyanogenmod/ButtonBacklightBrightness;)Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/stockssettings/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;->mSetting:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/stockssettings/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;->getBrightness(Z)I

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 413
    return-void
.end method

.method public getBrightness(Z)I
    .locals 3
    .param p1, "persisted"    # Z

    .prologue
    .line 403
    iget-object v0, p0, Lcom/android/stockssettings/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;->mCheckBox:Landroid/widget/CheckBox;

    if-eqz v0, :cond_1

    if-nez p1, :cond_1

    .line 404
    iget-object v0, p0, Lcom/android/stockssettings/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/stockssettings/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;->mDefaultBrightness:I

    .line 408
    :goto_0
    return v0

    .line 404
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 405
    :cond_1
    iget-object v0, p0, Lcom/android/stockssettings/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;->mSeekBar:Landroid/widget/SeekBar;

    if-eqz v0, :cond_2

    if-nez p1, :cond_2

    .line 406
    iget-object v0, p0, Lcom/android/stockssettings/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    goto :goto_0

    .line 408
    :cond_2
    iget-object v0, p0, Lcom/android/stockssettings/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;->this$0:Lcom/android/stockssettings/cyanogenmod/ButtonBacklightBrightness;

    # getter for: Lcom/android/stockssettings/cyanogenmod/ButtonBacklightBrightness;->mResolver:Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/android/stockssettings/cyanogenmod/ButtonBacklightBrightness;->access$300(Lcom/android/stockssettings/cyanogenmod/ButtonBacklightBrightness;)Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/stockssettings/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;->mSetting:Ljava/lang/String;

    iget v2, p0, Lcom/android/stockssettings/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;->mDefaultBrightness:I

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method

.method public init(Landroid/view/ViewGroup;)V
    .locals 4
    .param p1, "container"    # Landroid/view/ViewGroup;

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x1

    .line 382
    invoke-virtual {p0, v2}, Lcom/android/stockssettings/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;->getBrightness(Z)I

    move-result v0

    .line 384
    .local v0, "brightness":I
    iget-boolean v1, p0, Lcom/android/stockssettings/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;->mIsSingleValue:Z

    if-eqz v1, :cond_1

    .line 385
    const v1, 0x7f100040

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 386
    const v1, 0x7f10003f

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/android/stockssettings/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;->mCheckBox:Landroid/widget/CheckBox;

    .line 387
    iget-object v3, p0, Lcom/android/stockssettings/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;->mCheckBox:Landroid/widget/CheckBox;

    if-eqz v0, :cond_0

    move v1, v2

    :goto_0
    invoke-virtual {v3, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 388
    iget-object v1, p0, Lcom/android/stockssettings/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v1, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 399
    :goto_1
    invoke-direct {p0, v0}, Lcom/android/stockssettings/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;->handleBrightnessUpdate(I)V

    .line 400
    return-void

    .line 387
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 390
    :cond_1
    const v1, 0x7f10003e

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 391
    const v1, 0x7f100042

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/SeekBar;

    iput-object v1, p0, Lcom/android/stockssettings/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;->mSeekBar:Landroid/widget/SeekBar;

    .line 392
    const v1, 0x7f100041

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/stockssettings/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;->mValue:Landroid/widget/TextView;

    .line 394
    iget-object v1, p0, Lcom/android/stockssettings/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;->mSeekBar:Landroid/widget/SeekBar;

    const/16 v2, 0xff

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setMax(I)V

    .line 395
    iget-object v1, p0, Lcom/android/stockssettings/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 396
    iget-object v1, p0, Lcom/android/stockssettings/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    goto :goto_1
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 434
    iget-object v0, p0, Lcom/android/stockssettings/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;->this$0:Lcom/android/stockssettings/cyanogenmod/ButtonBacklightBrightness;

    # setter for: Lcom/android/stockssettings/cyanogenmod/ButtonBacklightBrightness;->mActiveControl:Lcom/android/stockssettings/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;
    invoke-static {v0, p0}, Lcom/android/stockssettings/cyanogenmod/ButtonBacklightBrightness;->access$402(Lcom/android/stockssettings/cyanogenmod/ButtonBacklightBrightness;Lcom/android/stockssettings/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;)Lcom/android/stockssettings/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;

    .line 435
    iget-object v0, p0, Lcom/android/stockssettings/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;->this$0:Lcom/android/stockssettings/cyanogenmod/ButtonBacklightBrightness;

    # invokes: Lcom/android/stockssettings/cyanogenmod/ButtonBacklightBrightness;->updateBrightnessPreview()V
    invoke-static {v0}, Lcom/android/stockssettings/cyanogenmod/ButtonBacklightBrightness;->access$500(Lcom/android/stockssettings/cyanogenmod/ButtonBacklightBrightness;)V

    .line 436
    iget-object v0, p0, Lcom/android/stockssettings/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;->this$0:Lcom/android/stockssettings/cyanogenmod/ButtonBacklightBrightness;

    # invokes: Lcom/android/stockssettings/cyanogenmod/ButtonBacklightBrightness;->updateTimeoutEnabledState()V
    invoke-static {v0}, Lcom/android/stockssettings/cyanogenmod/ButtonBacklightBrightness;->access$600(Lcom/android/stockssettings/cyanogenmod/ButtonBacklightBrightness;)V

    .line 437
    return-void
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z

    .prologue
    .line 418
    invoke-direct {p0, p2}, Lcom/android/stockssettings/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;->handleBrightnessUpdate(I)V

    .line 419
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 423
    iget-object v0, p0, Lcom/android/stockssettings/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;->this$0:Lcom/android/stockssettings/cyanogenmod/ButtonBacklightBrightness;

    # setter for: Lcom/android/stockssettings/cyanogenmod/ButtonBacklightBrightness;->mActiveControl:Lcom/android/stockssettings/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;
    invoke-static {v0, p0}, Lcom/android/stockssettings/cyanogenmod/ButtonBacklightBrightness;->access$402(Lcom/android/stockssettings/cyanogenmod/ButtonBacklightBrightness;Lcom/android/stockssettings/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;)Lcom/android/stockssettings/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;

    .line 424
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 429
    return-void
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 448
    iget v0, p0, Lcom/android/stockssettings/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;->mDefaultBrightness:I

    invoke-virtual {p0, v0}, Lcom/android/stockssettings/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;->setBrightness(I)V

    .line 449
    return-void
.end method

.method public setBrightness(I)V
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 440
    iget-boolean v0, p0, Lcom/android/stockssettings/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;->mIsSingleValue:Z

    if-eqz v0, :cond_1

    .line 441
    iget-object v1, p0, Lcom/android/stockssettings/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;->mCheckBox:Landroid/widget/CheckBox;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 445
    :goto_1
    return-void

    .line 441
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 443
    :cond_1
    iget-object v0, p0, Lcom/android/stockssettings/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setProgress(I)V

    goto :goto_1
.end method
