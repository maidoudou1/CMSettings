.class public Lcom/android/stockssettings/vpn2/VpnSettings$LockdownConfigFragment;
.super Landroid/app/DialogFragment;
.source "VpnSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/stockssettings/vpn2/VpnSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LockdownConfigFragment"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/stockssettings/vpn2/VpnSettings$LockdownConfigFragment$TitleAdapter;
    }
.end annotation


# instance fields
.field private mCurrentIndex:I

.field private mProfiles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/net/VpnProfile;",
            ">;"
        }
    .end annotation
.end field

.field private mTitles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 488
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 493
    return-void
.end method

.method static synthetic access$100(Lcom/android/stockssettings/vpn2/VpnSettings$LockdownConfigFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/stockssettings/vpn2/VpnSettings$LockdownConfigFragment;

    .prologue
    .line 488
    iget v0, p0, Lcom/android/stockssettings/vpn2/VpnSettings$LockdownConfigFragment;->mCurrentIndex:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/stockssettings/vpn2/VpnSettings$LockdownConfigFragment;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/android/stockssettings/vpn2/VpnSettings$LockdownConfigFragment;

    .prologue
    .line 488
    iget-object v0, p0, Lcom/android/stockssettings/vpn2/VpnSettings$LockdownConfigFragment;->mProfiles:Ljava/util/List;

    return-object v0
.end method

.method private static getStringOrNull(Landroid/security/KeyStore;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "keyStore"    # Landroid/security/KeyStore;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 508
    const-string v1, "LOCKDOWN_VPN"

    invoke-virtual {p0, v1}, Landroid/security/KeyStore;->get(Ljava/lang/String;)[B

    move-result-object v0

    .line 509
    .local v0, "value":[B
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    goto :goto_0
.end method

.method private initProfiles(Landroid/security/KeyStore;Landroid/content/res/Resources;)V
    .locals 6
    .param p1, "keyStore"    # Landroid/security/KeyStore;
    .param p2, "res"    # Landroid/content/res/Resources;

    .prologue
    const/4 v5, 0x0

    .line 513
    const-string v3, "LOCKDOWN_VPN"

    invoke-static {p1, v3}, Lcom/android/stockssettings/vpn2/VpnSettings$LockdownConfigFragment;->getStringOrNull(Landroid/security/KeyStore;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 515
    .local v1, "lockdownKey":Ljava/lang/String;
    const/4 v3, 0x1

    new-array v3, v3, [I

    aput v5, v3, v5

    # invokes: Lcom/android/stockssettings/vpn2/VpnSettings;->loadVpnProfiles(Landroid/security/KeyStore;[I)Ljava/util/List;
    invoke-static {p1, v3}, Lcom/android/stockssettings/vpn2/VpnSettings;->access$000(Landroid/security/KeyStore;[I)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/android/stockssettings/vpn2/VpnSettings$LockdownConfigFragment;->mProfiles:Ljava/util/List;

    .line 516
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v3

    iput-object v3, p0, Lcom/android/stockssettings/vpn2/VpnSettings$LockdownConfigFragment;->mTitles:Ljava/util/List;

    .line 517
    iget-object v3, p0, Lcom/android/stockssettings/vpn2/VpnSettings$LockdownConfigFragment;->mTitles:Ljava/util/List;

    const v4, 0x7f090bed

    invoke-virtual {p2, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 518
    iput v5, p0, Lcom/android/stockssettings/vpn2/VpnSettings$LockdownConfigFragment;->mCurrentIndex:I

    .line 520
    iget-object v3, p0, Lcom/android/stockssettings/vpn2/VpnSettings$LockdownConfigFragment;->mProfiles:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/net/VpnProfile;

    .line 521
    .local v2, "profile":Lcom/android/internal/net/VpnProfile;
    iget-object v3, v2, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    invoke-static {v3, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 522
    iget-object v3, p0, Lcom/android/stockssettings/vpn2/VpnSettings$LockdownConfigFragment;->mTitles:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    iput v3, p0, Lcom/android/stockssettings/vpn2/VpnSettings$LockdownConfigFragment;->mCurrentIndex:I

    .line 524
    :cond_0
    iget-object v3, p0, Lcom/android/stockssettings/vpn2/VpnSettings$LockdownConfigFragment;->mTitles:Ljava/util/List;

    iget-object v4, v2, Lcom/android/internal/net/VpnProfile;->name:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 526
    .end local v2    # "profile":Lcom/android/internal/net/VpnProfile;
    :cond_1
    return-void
.end method

.method public static show(Lcom/android/stockssettings/vpn2/VpnSettings;)V
    .locals 3
    .param p0, "parent"    # Lcom/android/stockssettings/vpn2/VpnSettings;

    .prologue
    .line 501
    invoke-virtual {p0}, Lcom/android/stockssettings/vpn2/VpnSettings;->isAdded()Z

    move-result v1

    if-nez v1, :cond_0

    .line 505
    :goto_0
    return-void

    .line 503
    :cond_0
    new-instance v0, Lcom/android/stockssettings/vpn2/VpnSettings$LockdownConfigFragment;

    invoke-direct {v0}, Lcom/android/stockssettings/vpn2/VpnSettings$LockdownConfigFragment;-><init>()V

    .line 504
    .local v0, "dialog":Lcom/android/stockssettings/vpn2/VpnSettings$LockdownConfigFragment;
    invoke-virtual {p0}, Lcom/android/stockssettings/vpn2/VpnSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "lockdown"

    invoke-virtual {v0, v1, v2}, Lcom/android/stockssettings/vpn2/VpnSettings$LockdownConfigFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v9, 0x1

    .line 530
    invoke-virtual {p0}, Lcom/android/stockssettings/vpn2/VpnSettings$LockdownConfigFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 531
    .local v1, "context":Landroid/content/Context;
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v3

    .line 533
    .local v3, "keyStore":Landroid/security/KeyStore;
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-direct {p0, v3, v6}, Lcom/android/stockssettings/vpn2/VpnSettings$LockdownConfigFragment;->initProfiles(Landroid/security/KeyStore;Landroid/content/res/Resources;)V

    .line 535
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 536
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 538
    .local v2, "dialogInflater":Landroid/view/LayoutInflater;
    const v6, 0x7f090beb

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 540
    const v6, 0x7f04010c

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v2, v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    .line 541
    .local v5, "view":Landroid/view/View;
    const v6, 0x102000a

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ListView;

    .line 542
    .local v4, "listView":Landroid/widget/ListView;
    invoke-virtual {v4, v9}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 543
    new-instance v6, Lcom/android/stockssettings/vpn2/VpnSettings$LockdownConfigFragment$TitleAdapter;

    iget-object v7, p0, Lcom/android/stockssettings/vpn2/VpnSettings$LockdownConfigFragment;->mTitles:Ljava/util/List;

    invoke-direct {v6, v1, v7}, Lcom/android/stockssettings/vpn2/VpnSettings$LockdownConfigFragment$TitleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    invoke-virtual {v4, v6}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 544
    iget v6, p0, Lcom/android/stockssettings/vpn2/VpnSettings$LockdownConfigFragment;->mCurrentIndex:I

    invoke-virtual {v4, v6, v9}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 545
    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 547
    const v6, 0x104000a

    new-instance v7, Lcom/android/stockssettings/vpn2/VpnSettings$LockdownConfigFragment$1;

    invoke-direct {v7, p0, v4, v3, v1}, Lcom/android/stockssettings/vpn2/VpnSettings$LockdownConfigFragment$1;-><init>(Lcom/android/stockssettings/vpn2/VpnSettings$LockdownConfigFragment;Landroid/widget/ListView;Landroid/security/KeyStore;Landroid/content/Context;)V

    invoke-virtual {v0, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 572
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    return-object v6
.end method
