.class public Lcyanogenmod/app/CustomTile$GridExpandedStyle;
.super Lcyanogenmod/app/CustomTile$ExpandedStyle;
.source "CustomTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcyanogenmod/app/CustomTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GridExpandedStyle"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 521
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcyanogenmod/app/CustomTile$ExpandedStyle;-><init>(Lcyanogenmod/app/CustomTile$1;)V

    .line 522
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcyanogenmod/app/CustomTile$GridExpandedStyle;->internalStyleId(I)V

    .line 523
    return-void
.end method
