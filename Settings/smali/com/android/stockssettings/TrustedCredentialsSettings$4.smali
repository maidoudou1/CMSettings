.class Lcom/android/stockssettings/TrustedCredentialsSettings$4;
.super Ljava/lang/Object;
.source "TrustedCredentialsSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/stockssettings/TrustedCredentialsSettings;->showCertDialog(Lcom/android/stockssettings/TrustedCredentialsSettings$CertHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/stockssettings/TrustedCredentialsSettings;


# direct methods
.method constructor <init>(Lcom/android/stockssettings/TrustedCredentialsSettings;)V
    .locals 0

    .prologue
    .line 674
    iput-object p1, p0, Lcom/android/stockssettings/TrustedCredentialsSettings$4;->this$0:Lcom/android/stockssettings/TrustedCredentialsSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 676
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 677
    return-void
.end method
