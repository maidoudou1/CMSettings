.class Lcom/android/stockssettings/blacklist/BlacklistSettings$BlacklistAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "BlacklistSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/stockssettings/blacklist/BlacklistSettings$BlacklistAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ViewHolder"
.end annotation


# instance fields
.field callStatus:Lcom/android/stockssettings/blacklist/ToggleImageView;

.field mainText:Landroid/widget/TextView;

.field messageStatus:Lcom/android/stockssettings/blacklist/ToggleImageView;

.field position:I

.field subText:Landroid/widget/TextView;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 388
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/stockssettings/blacklist/BlacklistSettings$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/stockssettings/blacklist/BlacklistSettings$1;

    .prologue
    .line 388
    invoke-direct {p0}, Lcom/android/stockssettings/blacklist/BlacklistSettings$BlacklistAdapter$ViewHolder;-><init>()V

    return-void
.end method
