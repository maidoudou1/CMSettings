.class Lcom/android/stockssettings/HomeSettings$HomeAppPreference;
.super Landroid/preference/Preference;
.source "HomeSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/stockssettings/HomeSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HomeAppPreference"
.end annotation


# instance fields
.field activityName:Landroid/content/ComponentName;

.field fragment:Lcom/android/stockssettings/HomeSettings;

.field final grayscaleFilter:Landroid/graphics/ColorFilter;

.field index:I

.field isChecked:Z

.field isSystem:Z

.field final synthetic this$0:Lcom/android/stockssettings/HomeSettings;

.field uninstallTarget:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/stockssettings/HomeSettings;Landroid/content/Context;Landroid/content/ComponentName;ILandroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Lcom/android/stockssettings/HomeSettings;Landroid/content/pm/ActivityInfo;ZLjava/lang/CharSequence;)V
    .locals 4
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "activity"    # Landroid/content/ComponentName;
    .param p4, "i"    # I
    .param p5, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p6, "title"    # Ljava/lang/CharSequence;
    .param p7, "parent"    # Lcom/android/stockssettings/HomeSettings;
    .param p8, "info"    # Landroid/content/pm/ActivityInfo;
    .param p9, "enabled"    # Z
    .param p10, "summary"    # Ljava/lang/CharSequence;

    .prologue
    .line 299
    iput-object p1, p0, Lcom/android/stockssettings/HomeSettings$HomeAppPreference;->this$0:Lcom/android/stockssettings/HomeSettings;

    .line 300
    invoke-direct {p0, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 301
    const v2, 0x7f0400a6

    invoke-virtual {p0, v2}, Lcom/android/stockssettings/HomeSettings$HomeAppPreference;->setLayoutResource(I)V

    .line 302
    invoke-virtual {p0, p5}, Lcom/android/stockssettings/HomeSettings$HomeAppPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 303
    invoke-virtual {p0, p6}, Lcom/android/stockssettings/HomeSettings$HomeAppPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 304
    invoke-virtual {p0, p9}, Lcom/android/stockssettings/HomeSettings$HomeAppPreference;->setEnabled(Z)V

    .line 305
    invoke-virtual {p0, p10}, Lcom/android/stockssettings/HomeSettings$HomeAppPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 306
    iput-object p3, p0, Lcom/android/stockssettings/HomeSettings$HomeAppPreference;->activityName:Landroid/content/ComponentName;

    .line 307
    iput-object p7, p0, Lcom/android/stockssettings/HomeSettings$HomeAppPreference;->fragment:Lcom/android/stockssettings/HomeSettings;

    .line 308
    iput p4, p0, Lcom/android/stockssettings/HomeSettings$HomeAppPreference;->index:I

    .line 310
    new-instance v0, Landroid/graphics/ColorMatrix;

    invoke-direct {v0}, Landroid/graphics/ColorMatrix;-><init>()V

    .line 311
    .local v0, "colorMatrix":Landroid/graphics/ColorMatrix;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/graphics/ColorMatrix;->setSaturation(F)V

    .line 312
    invoke-virtual {v0}, Landroid/graphics/ColorMatrix;->getArray()[F

    move-result-object v1

    .line 313
    .local v1, "matrix":[F
    const/16 v2, 0x12

    const/high16 v3, 0x3f000000    # 0.5f

    aput v3, v1, v2

    .line 314
    new-instance v2, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v2, v0}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    iput-object v2, p0, Lcom/android/stockssettings/HomeSettings$HomeAppPreference;->grayscaleFilter:Landroid/graphics/ColorFilter;

    .line 316
    invoke-direct {p0, p8}, Lcom/android/stockssettings/HomeSettings$HomeAppPreference;->determineTargets(Landroid/content/pm/ActivityInfo;)V

    .line 317
    return-void
.end method

.method private determineTargets(Landroid/content/pm/ActivityInfo;)V
    .locals 10
    .param p1, "info"    # Landroid/content/pm/ActivityInfo;

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 322
    iget-object v5, p1, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    .line 323
    .local v5, "meta":Landroid/os/Bundle;
    if-eqz v5, :cond_1

    .line 324
    const-string v8, "android.app.home.alternate"

    invoke-virtual {v5, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 325
    .local v1, "altHomePackage":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 327
    :try_start_0
    iget-object v8, p0, Lcom/android/stockssettings/HomeSettings$HomeAppPreference;->this$0:Lcom/android/stockssettings/HomeSettings;

    # getter for: Lcom/android/stockssettings/HomeSettings;->mPm:Landroid/content/pm/PackageManager;
    invoke-static {v8}, Lcom/android/stockssettings/HomeSettings;->access$400(Lcom/android/stockssettings/HomeSettings;)Landroid/content/pm/PackageManager;

    move-result-object v8

    iget-object v9, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9, v1}, Landroid/content/pm/PackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 328
    .local v4, "match":I
    if-ltz v4, :cond_1

    .line 329
    iget-object v8, p0, Lcom/android/stockssettings/HomeSettings$HomeAppPreference;->this$0:Lcom/android/stockssettings/HomeSettings;

    # getter for: Lcom/android/stockssettings/HomeSettings;->mPm:Landroid/content/pm/PackageManager;
    invoke-static {v8}, Lcom/android/stockssettings/HomeSettings;->access$400(Lcom/android/stockssettings/HomeSettings;)Landroid/content/pm/PackageManager;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v1, v9}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 330
    .local v2, "altInfo":Landroid/content/pm/PackageInfo;
    iget-object v8, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v8, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 331
    .local v0, "altFlags":I
    and-int/lit8 v8, v0, 0x1

    if-eqz v8, :cond_0

    move v8, v6

    :goto_0
    iput-boolean v8, p0, Lcom/android/stockssettings/HomeSettings$HomeAppPreference;->isSystem:Z

    .line 332
    iget-object v8, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iput-object v8, p0, Lcom/android/stockssettings/HomeSettings$HomeAppPreference;->uninstallTarget:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 344
    .end local v0    # "altFlags":I
    .end local v1    # "altHomePackage":Ljava/lang/String;
    .end local v2    # "altInfo":Landroid/content/pm/PackageInfo;
    .end local v4    # "match":I
    :goto_1
    return-void

    .restart local v0    # "altFlags":I
    .restart local v1    # "altHomePackage":Ljava/lang/String;
    .restart local v2    # "altInfo":Landroid/content/pm/PackageInfo;
    .restart local v4    # "match":I
    :cond_0
    move v8, v7

    .line 331
    goto :goto_0

    .line 335
    .end local v0    # "altFlags":I
    .end local v2    # "altInfo":Landroid/content/pm/PackageInfo;
    .end local v4    # "match":I
    :catch_0
    move-exception v3

    .line 337
    .local v3, "e":Ljava/lang/Exception;
    const-string v8, "HomeSettings"

    const-string v9, "Unable to compare/resolve alternate"

    invoke-static {v8, v9, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 342
    .end local v1    # "altHomePackage":Ljava/lang/String;
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_1
    iget-object v8, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v8, v8, 0x1

    if-eqz v8, :cond_2

    :goto_2
    iput-boolean v6, p0, Lcom/android/stockssettings/HomeSettings$HomeAppPreference;->isSystem:Z

    .line 343
    iget-object v6, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iput-object v6, p0, Lcom/android/stockssettings/HomeSettings$HomeAppPreference;->uninstallTarget:Ljava/lang/String;

    goto :goto_1

    :cond_2
    move v6, v7

    .line 342
    goto :goto_2
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 348
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 350
    const v4, 0x7f1001a6

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioButton;

    .line 351
    .local v2, "radio":Landroid/widget/RadioButton;
    iget-boolean v4, p0, Lcom/android/stockssettings/HomeSettings$HomeAppPreference;->isChecked:Z

    invoke-virtual {v2, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 353
    new-instance v1, Ljava/lang/Integer;

    iget v4, p0, Lcom/android/stockssettings/HomeSettings$HomeAppPreference;->index:I

    invoke-direct {v1, v4}, Ljava/lang/Integer;-><init>(I)V

    .line 355
    .local v1, "indexObj":Ljava/lang/Integer;
    const v4, 0x7f1001a8

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 356
    .local v0, "icon":Landroid/widget/ImageView;
    iget-boolean v4, p0, Lcom/android/stockssettings/HomeSettings$HomeAppPreference;->isSystem:Z

    if-eqz v4, :cond_0

    .line 357
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 358
    iget-object v4, p0, Lcom/android/stockssettings/HomeSettings$HomeAppPreference;->grayscaleFilter:Landroid/graphics/ColorFilter;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 365
    :goto_0
    const v4, 0x7f1001a5

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 366
    .local v3, "v":Landroid/view/View;
    invoke-virtual {v3, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 368
    iget-object v4, p0, Lcom/android/stockssettings/HomeSettings$HomeAppPreference;->this$0:Lcom/android/stockssettings/HomeSettings;

    iget-object v4, v4, Lcom/android/stockssettings/HomeSettings;->mHomeClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 369
    return-void

    .line 360
    .end local v3    # "v":Landroid/view/View;
    :cond_0
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 361
    iget-object v4, p0, Lcom/android/stockssettings/HomeSettings$HomeAppPreference;->this$0:Lcom/android/stockssettings/HomeSettings;

    iget-object v4, v4, Lcom/android/stockssettings/HomeSettings;->mDeleteClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 362
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method setChecked(Z)V
    .locals 1
    .param p1, "state"    # Z

    .prologue
    .line 372
    iget-boolean v0, p0, Lcom/android/stockssettings/HomeSettings$HomeAppPreference;->isChecked:Z

    if-eq p1, v0, :cond_0

    .line 373
    iput-boolean p1, p0, Lcom/android/stockssettings/HomeSettings$HomeAppPreference;->isChecked:Z

    .line 374
    invoke-virtual {p0}, Lcom/android/stockssettings/HomeSettings$HomeAppPreference;->notifyChanged()V

    .line 376
    :cond_0
    return-void
.end method
