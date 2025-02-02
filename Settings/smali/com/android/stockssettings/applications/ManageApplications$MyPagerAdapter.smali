.class Lcom/android/stockssettings/applications/ManageApplications$MyPagerAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "ManageApplications.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/stockssettings/applications/ManageApplications;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyPagerAdapter"
.end annotation


# instance fields
.field mCurPos:I

.field final synthetic this$0:Lcom/android/stockssettings/applications/ManageApplications;


# direct methods
.method constructor <init>(Lcom/android/stockssettings/applications/ManageApplications;)V
    .locals 1

    .prologue
    .line 499
    iput-object p1, p0, Lcom/android/stockssettings/applications/ManageApplications$MyPagerAdapter;->this$0:Lcom/android/stockssettings/applications/ManageApplications;

    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    .line 501
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/stockssettings/applications/ManageApplications$MyPagerAdapter;->mCurPos:I

    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I
    .param p3, "object"    # Ljava/lang/Object;

    .prologue
    .line 519
    check-cast p3, Landroid/view/View;

    .end local p3    # "object":Ljava/lang/Object;
    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 520
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 505
    iget-object v0, p0, Lcom/android/stockssettings/applications/ManageApplications$MyPagerAdapter;->this$0:Lcom/android/stockssettings/applications/ManageApplications;

    # getter for: Lcom/android/stockssettings/applications/ManageApplications;->mNumTabs:I
    invoke-static {v0}, Lcom/android/stockssettings/applications/ManageApplications;->access$000(Lcom/android/stockssettings/applications/ManageApplications;)I

    move-result v0

    return v0
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 529
    invoke-super {p0, p1}, Landroid/support/v4/view/PagerAdapter;->getItemPosition(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public getPageTitle(I)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 535
    iget-object v0, p0, Lcom/android/stockssettings/applications/ManageApplications$MyPagerAdapter;->this$0:Lcom/android/stockssettings/applications/ManageApplications;

    # getter for: Lcom/android/stockssettings/applications/ManageApplications;->mTabs:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/stockssettings/applications/ManageApplications;->access$100(Lcom/android/stockssettings/applications/ManageApplications;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/stockssettings/applications/ManageApplications$TabInfo;

    iget-object v0, v0, Lcom/android/stockssettings/applications/ManageApplications$TabInfo;->mLabel:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 5
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I

    .prologue
    .line 510
    iget-object v2, p0, Lcom/android/stockssettings/applications/ManageApplications$MyPagerAdapter;->this$0:Lcom/android/stockssettings/applications/ManageApplications;

    # getter for: Lcom/android/stockssettings/applications/ManageApplications;->mTabs:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/stockssettings/applications/ManageApplications;->access$100(Lcom/android/stockssettings/applications/ManageApplications;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/stockssettings/applications/ManageApplications$TabInfo;

    .line 511
    .local v1, "tab":Lcom/android/stockssettings/applications/ManageApplications$TabInfo;
    iget-object v2, p0, Lcom/android/stockssettings/applications/ManageApplications$MyPagerAdapter;->this$0:Lcom/android/stockssettings/applications/ManageApplications;

    # getter for: Lcom/android/stockssettings/applications/ManageApplications;->mInflater:Landroid/view/LayoutInflater;
    invoke-static {v2}, Lcom/android/stockssettings/applications/ManageApplications;->access$200(Lcom/android/stockssettings/applications/ManageApplications;)Landroid/view/LayoutInflater;

    move-result-object v2

    iget-object v3, p0, Lcom/android/stockssettings/applications/ManageApplications$MyPagerAdapter;->this$0:Lcom/android/stockssettings/applications/ManageApplications;

    # getter for: Lcom/android/stockssettings/applications/ManageApplications;->mContentContainer:Landroid/view/ViewGroup;
    invoke-static {v3}, Lcom/android/stockssettings/applications/ManageApplications;->access$300(Lcom/android/stockssettings/applications/ManageApplications;)Landroid/view/ViewGroup;

    move-result-object v3

    iget-object v4, p0, Lcom/android/stockssettings/applications/ManageApplications$MyPagerAdapter;->this$0:Lcom/android/stockssettings/applications/ManageApplications;

    # getter for: Lcom/android/stockssettings/applications/ManageApplications;->mRootView:Landroid/view/View;
    invoke-static {v4}, Lcom/android/stockssettings/applications/ManageApplications;->access$400(Lcom/android/stockssettings/applications/ManageApplications;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/stockssettings/applications/ManageApplications$TabInfo;->build(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    .line 512
    .local v0, "root":Landroid/view/View;
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 513
    const v2, 0x7f10002d

    invoke-virtual {v0, v2, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 514
    return-object v0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "object"    # Ljava/lang/Object;

    .prologue
    .line 524
    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPageScrollStateChanged(I)V
    .locals 2
    .param p1, "state"    # I

    .prologue
    .line 549
    if-nez p1, :cond_0

    .line 550
    iget-object v0, p0, Lcom/android/stockssettings/applications/ManageApplications$MyPagerAdapter;->this$0:Lcom/android/stockssettings/applications/ManageApplications;

    iget v1, p0, Lcom/android/stockssettings/applications/ManageApplications$MyPagerAdapter;->mCurPos:I

    invoke-virtual {v0, v1}, Lcom/android/stockssettings/applications/ManageApplications;->updateCurrentTab(I)V

    .line 552
    :cond_0
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F
    .param p3, "positionOffsetPixels"    # I

    .prologue
    .line 540
    return-void
.end method

.method public onPageSelected(I)V
    .locals 0
    .param p1, "position"    # I

    .prologue
    .line 544
    iput p1, p0, Lcom/android/stockssettings/applications/ManageApplications$MyPagerAdapter;->mCurPos:I

    .line 545
    return-void
.end method
