.class public Lcom/android/stockssettings/accounts/ChooseAccountActivity;
.super Landroid/preference/PreferenceActivity;
.source "ChooseAccountActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/stockssettings/accounts/ChooseAccountActivity$ProviderEntry;
    }
.end annotation


# instance fields
.field private mAccountTypeToAuthorities:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field public mAccountTypesFilter:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mAddAccountGroup:Landroid/preference/PreferenceGroup;

.field private mAuthDescs:[Landroid/accounts/AuthenticatorDescription;

.field private mAuthorities:[Ljava/lang/String;

.field private final mProviderList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/stockssettings/accounts/ChooseAccountActivity$ProviderEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mTypeToAuthDescription:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/accounts/AuthenticatorDescription;",
            ">;"
        }
    .end annotation
.end field

.field private mUm:Landroid/os/UserManager;

.field private mUserHandle:Landroid/os/UserHandle;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 59
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/stockssettings/accounts/ChooseAccountActivity;->mProviderList:Ljava/util/ArrayList;

    .line 67
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/stockssettings/accounts/ChooseAccountActivity;->mAccountTypeToAuthorities:Ljava/util/HashMap;

    .line 68
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/stockssettings/accounts/ChooseAccountActivity;->mTypeToAuthDescription:Ljava/util/Map;

    .line 74
    return-void
.end method

.method private finishWithAccountType(Ljava/lang/String;)V
    .locals 3
    .param p1, "accountType"    # Ljava/lang/String;

    .prologue
    .line 281
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 282
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "selected_account"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 283
    const-string v1, "android.intent.extra.USER"

    iget-object v2, p0, Lcom/android/stockssettings/accounts/ChooseAccountActivity;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 284
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/android/stockssettings/accounts/ChooseAccountActivity;->setResult(ILandroid/content/Intent;)V

    .line 285
    invoke-virtual {p0}, Lcom/android/stockssettings/accounts/ChooseAccountActivity;->finish()V

    .line 286
    return-void
.end method

.method private onAuthDescriptionsUpdated()V
    .locals 20

    .prologue
    .line 145
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/stockssettings/accounts/ChooseAccountActivity;->mAuthDescs:[Landroid/accounts/AuthenticatorDescription;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v10, v0, :cond_5

    .line 146
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/stockssettings/accounts/ChooseAccountActivity;->mAuthDescs:[Landroid/accounts/AuthenticatorDescription;

    move-object/from16 v17, v0

    aget-object v17, v17, v10

    move-object/from16 v0, v17

    iget-object v5, v0, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    .line 147
    .local v5, "accountType":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/stockssettings/accounts/ChooseAccountActivity;->getLabelForType(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v16

    .line 151
    .local v16, "providerName":Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/stockssettings/accounts/ChooseAccountActivity;->getAuthoritiesForAccountType(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 152
    .local v4, "accountAuths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v6, 0x1

    .line 153
    .local v6, "addAccountPref":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/stockssettings/accounts/ChooseAccountActivity;->mAuthorities:[Ljava/lang/String;

    move-object/from16 v17, v0

    if-eqz v17, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/stockssettings/accounts/ChooseAccountActivity;->mAuthorities:[Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v17, v0

    if-lez v17, :cond_0

    if-eqz v4, :cond_0

    .line 154
    const/4 v6, 0x0

    .line 155
    const/4 v12, 0x0

    .local v12, "k":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/stockssettings/accounts/ChooseAccountActivity;->mAuthorities:[Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v12, v0, :cond_0

    .line 156
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/stockssettings/accounts/ChooseAccountActivity;->mAuthorities:[Ljava/lang/String;

    move-object/from16 v17, v0

    aget-object v17, v17, v12

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_3

    .line 157
    const/4 v6, 0x1

    .line 162
    .end local v12    # "k":I
    :cond_0
    if-eqz v6, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/stockssettings/accounts/ChooseAccountActivity;->mAccountTypesFilter:Ljava/util/HashSet;

    move-object/from16 v17, v0

    if-eqz v17, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/stockssettings/accounts/ChooseAccountActivity;->mAccountTypesFilter:Ljava/util/HashSet;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_1

    .line 164
    const/4 v6, 0x0

    .line 166
    :cond_1
    if-eqz v6, :cond_4

    .line 167
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/stockssettings/accounts/ChooseAccountActivity;->mProviderList:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    new-instance v18, Lcom/android/stockssettings/accounts/ChooseAccountActivity$ProviderEntry;

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-direct {v0, v1, v5}, Lcom/android/stockssettings/accounts/ChooseAccountActivity$ProviderEntry;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;)V

    invoke-virtual/range {v17 .. v18}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 145
    :cond_2
    :goto_2
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_0

    .line 155
    .restart local v12    # "k":I
    :cond_3
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 169
    .end local v12    # "k":I
    :cond_4
    const-string v17, "ChooseAccountActivity"

    const/16 v18, 0x2

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v17

    if-eqz v17, :cond_2

    .line 170
    const-string v17, "ChooseAccountActivity"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Skipped pref "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ": has no authority we need"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 175
    .end local v4    # "accountAuths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v5    # "accountType":Ljava/lang/String;
    .end local v6    # "addAccountPref":Z
    .end local v16    # "providerName":Ljava/lang/CharSequence;
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/stockssettings/accounts/ChooseAccountActivity;->mProviderList:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_7

    .line 177
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/stockssettings/accounts/ChooseAccountActivity;->mProviderList:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/stockssettings/accounts/ChooseAccountActivity$ProviderEntry;

    # getter for: Lcom/android/stockssettings/accounts/ChooseAccountActivity$ProviderEntry;->type:Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Lcom/android/stockssettings/accounts/ChooseAccountActivity$ProviderEntry;->access$000(Lcom/android/stockssettings/accounts/ChooseAccountActivity$ProviderEntry;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/stockssettings/accounts/ChooseAccountActivity;->finishWithAccountType(Ljava/lang/String;)V

    .line 199
    :cond_6
    :goto_3
    return-void

    .line 178
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/stockssettings/accounts/ChooseAccountActivity;->mProviderList:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v17

    if-lez v17, :cond_8

    .line 179
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/stockssettings/accounts/ChooseAccountActivity;->mProviderList:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 180
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/stockssettings/accounts/ChooseAccountActivity;->mAddAccountGroup:Landroid/preference/PreferenceGroup;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 181
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/stockssettings/accounts/ChooseAccountActivity;->mProviderList:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "i$":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_6

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/stockssettings/accounts/ChooseAccountActivity$ProviderEntry;

    .line 182
    .local v15, "pref":Lcom/android/stockssettings/accounts/ChooseAccountActivity$ProviderEntry;
    # getter for: Lcom/android/stockssettings/accounts/ChooseAccountActivity$ProviderEntry;->type:Ljava/lang/String;
    invoke-static {v15}, Lcom/android/stockssettings/accounts/ChooseAccountActivity$ProviderEntry;->access$000(Lcom/android/stockssettings/accounts/ChooseAccountActivity$ProviderEntry;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/stockssettings/accounts/ChooseAccountActivity;->getDrawableForType(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    .line 183
    .local v9, "drawable":Landroid/graphics/drawable/Drawable;
    new-instance v14, Lcom/android/stockssettings/accounts/ProviderPreference;

    # getter for: Lcom/android/stockssettings/accounts/ChooseAccountActivity$ProviderEntry;->type:Ljava/lang/String;
    invoke-static {v15}, Lcom/android/stockssettings/accounts/ChooseAccountActivity$ProviderEntry;->access$000(Lcom/android/stockssettings/accounts/ChooseAccountActivity$ProviderEntry;)Ljava/lang/String;

    move-result-object v17

    # getter for: Lcom/android/stockssettings/accounts/ChooseAccountActivity$ProviderEntry;->name:Ljava/lang/CharSequence;
    invoke-static {v15}, Lcom/android/stockssettings/accounts/ChooseAccountActivity$ProviderEntry;->access$100(Lcom/android/stockssettings/accounts/ChooseAccountActivity$ProviderEntry;)Ljava/lang/CharSequence;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-direct {v14, v0, v1, v9, v2}, Lcom/android/stockssettings/accounts/ProviderPreference;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;)V

    .line 185
    .local v14, "p":Lcom/android/stockssettings/accounts/ProviderPreference;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/stockssettings/accounts/ChooseAccountActivity;->mAddAccountGroup:Landroid/preference/PreferenceGroup;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_4

    .line 188
    .end local v9    # "drawable":Landroid/graphics/drawable/Drawable;
    .end local v11    # "i$":Ljava/util/Iterator;
    .end local v14    # "p":Lcom/android/stockssettings/accounts/ProviderPreference;
    .end local v15    # "pref":Lcom/android/stockssettings/accounts/ChooseAccountActivity$ProviderEntry;
    :cond_8
    const-string v17, "ChooseAccountActivity"

    const/16 v18, 0x2

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v17

    if-eqz v17, :cond_a

    .line 189
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 190
    .local v8, "auths":Ljava/lang/StringBuilder;
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/stockssettings/accounts/ChooseAccountActivity;->mAuthorities:[Ljava/lang/String;

    .local v7, "arr$":[Ljava/lang/String;
    array-length v13, v7

    .local v13, "len$":I
    const/4 v11, 0x0

    .local v11, "i$":I
    :goto_5
    if-ge v11, v13, :cond_9

    aget-object v3, v7, v11

    .line 191
    .local v3, "a":Ljava/lang/String;
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    const/16 v17, 0x20

    move/from16 v0, v17

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 190
    add-int/lit8 v11, v11, 0x1

    goto :goto_5

    .line 194
    .end local v3    # "a":Ljava/lang/String;
    :cond_9
    const-string v17, "ChooseAccountActivity"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "No providers found for authorities: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    .end local v7    # "arr$":[Ljava/lang/String;
    .end local v8    # "auths":Ljava/lang/StringBuilder;
    .end local v11    # "i$":I
    .end local v13    # "len$":I
    :cond_a
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/stockssettings/accounts/ChooseAccountActivity;->setResult(I)V

    .line 197
    invoke-virtual/range {p0 .. p0}, Lcom/android/stockssettings/accounts/ChooseAccountActivity;->finish()V

    goto/16 :goto_3
.end method

.method private updateAuthDescriptions()V
    .locals 4

    .prologue
    .line 135
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/stockssettings/accounts/ChooseAccountActivity;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/accounts/AccountManager;->getAuthenticatorTypesAsUser(I)[Landroid/accounts/AuthenticatorDescription;

    move-result-object v1

    iput-object v1, p0, Lcom/android/stockssettings/accounts/ChooseAccountActivity;->mAuthDescs:[Landroid/accounts/AuthenticatorDescription;

    .line 137
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/stockssettings/accounts/ChooseAccountActivity;->mAuthDescs:[Landroid/accounts/AuthenticatorDescription;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 138
    iget-object v1, p0, Lcom/android/stockssettings/accounts/ChooseAccountActivity;->mTypeToAuthDescription:Ljava/util/Map;

    iget-object v2, p0, Lcom/android/stockssettings/accounts/ChooseAccountActivity;->mAuthDescs:[Landroid/accounts/AuthenticatorDescription;

    aget-object v2, v2, v0

    iget-object v2, v2, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/stockssettings/accounts/ChooseAccountActivity;->mAuthDescs:[Landroid/accounts/AuthenticatorDescription;

    aget-object v3, v3, v0

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 140
    :cond_0
    invoke-direct {p0}, Lcom/android/stockssettings/accounts/ChooseAccountActivity;->onAuthDescriptionsUpdated()V

    .line 141
    return-void
.end method


# virtual methods
.method public getAuthoritiesForAccountType(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 8
    .param p1, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 202
    iget-object v5, p0, Lcom/android/stockssettings/accounts/ChooseAccountActivity;->mAccountTypeToAuthorities:Ljava/util/HashMap;

    if-nez v5, :cond_2

    .line 203
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v5

    iput-object v5, p0, Lcom/android/stockssettings/accounts/ChooseAccountActivity;->mAccountTypeToAuthorities:Ljava/util/HashMap;

    .line 204
    iget-object v5, p0, Lcom/android/stockssettings/accounts/ChooseAccountActivity;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v5}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v5

    invoke-static {v5}, Landroid/content/ContentResolver;->getSyncAdapterTypesAsUser(I)[Landroid/content/SyncAdapterType;

    move-result-object v4

    .line 206
    .local v4, "syncAdapters":[Landroid/content/SyncAdapterType;
    const/4 v1, 0x0

    .local v1, "i":I
    array-length v2, v4

    .local v2, "n":I
    :goto_0
    if-ge v1, v2, :cond_2

    .line 207
    aget-object v3, v4, v1

    .line 208
    .local v3, "sa":Landroid/content/SyncAdapterType;
    iget-object v5, p0, Lcom/android/stockssettings/accounts/ChooseAccountActivity;->mAccountTypeToAuthorities:Ljava/util/HashMap;

    iget-object v6, v3, Landroid/content/SyncAdapterType;->accountType:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 209
    .local v0, "authorities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez v0, :cond_0

    .line 210
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "authorities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 211
    .restart local v0    # "authorities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v5, p0, Lcom/android/stockssettings/accounts/ChooseAccountActivity;->mAccountTypeToAuthorities:Ljava/util/HashMap;

    iget-object v6, v3, Landroid/content/SyncAdapterType;->accountType:Ljava/lang/String;

    invoke-virtual {v5, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    :cond_0
    const-string v5, "ChooseAccountActivity"

    const/4 v6, 0x2

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 214
    const-string v5, "ChooseAccountActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "added authority "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v3, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " to accountType "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v3, Landroid/content/SyncAdapterType;->accountType:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    :cond_1
    iget-object v5, v3, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 206
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 220
    .end local v0    # "authorities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v1    # "i":I
    .end local v2    # "n":I
    .end local v3    # "sa":Landroid/content/SyncAdapterType;
    .end local v4    # "syncAdapters":[Landroid/content/SyncAdapterType;
    :cond_2
    iget-object v5, p0, Lcom/android/stockssettings/accounts/ChooseAccountActivity;->mAccountTypeToAuthorities:Ljava/util/HashMap;

    invoke-virtual {v5, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    return-object v5
.end method

.method protected getDrawableForType(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 7
    .param p1, "accountType"    # Ljava/lang/String;

    .prologue
    .line 229
    const/4 v3, 0x0

    .line 230
    .local v3, "icon":Landroid/graphics/drawable/Drawable;
    iget-object v4, p0, Lcom/android/stockssettings/accounts/ChooseAccountActivity;->mTypeToAuthDescription:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 232
    :try_start_0
    iget-object v4, p0, Lcom/android/stockssettings/accounts/ChooseAccountActivity;->mTypeToAuthDescription:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/accounts/AuthenticatorDescription;

    .line 233
    .local v1, "desc":Landroid/accounts/AuthenticatorDescription;
    iget-object v4, v1, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/stockssettings/accounts/ChooseAccountActivity;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {p0, v4, v5, v6}, Lcom/android/stockssettings/accounts/ChooseAccountActivity;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v0

    .line 234
    .local v0, "authContext":Landroid/content/Context;
    invoke-virtual {p0}, Lcom/android/stockssettings/accounts/ChooseAccountActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    iget v5, v1, Landroid/accounts/AuthenticatorDescription;->iconId:I

    invoke-virtual {v0, v5}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iget-object v6, p0, Lcom/android/stockssettings/accounts/ChooseAccountActivity;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getUserBadgedIcon(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    .line 244
    .end local v0    # "authContext":Landroid/content/Context;
    .end local v1    # "desc":Landroid/accounts/AuthenticatorDescription;
    :cond_0
    :goto_0
    return-object v3

    .line 236
    :catch_0
    move-exception v2

    .line 238
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v4, "ChooseAccountActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "No icon name for account type "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 239
    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v2

    .line 241
    .local v2, "e":Landroid/content/res/Resources$NotFoundException;
    const-string v4, "ChooseAccountActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "No icon resource for account type "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected getLabelForType(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 7
    .param p1, "accountType"    # Ljava/lang/String;

    .prologue
    .line 253
    const/4 v3, 0x0

    .line 254
    .local v3, "label":Ljava/lang/CharSequence;
    iget-object v4, p0, Lcom/android/stockssettings/accounts/ChooseAccountActivity;->mTypeToAuthDescription:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 256
    :try_start_0
    iget-object v4, p0, Lcom/android/stockssettings/accounts/ChooseAccountActivity;->mTypeToAuthDescription:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/accounts/AuthenticatorDescription;

    .line 257
    .local v1, "desc":Landroid/accounts/AuthenticatorDescription;
    iget-object v4, v1, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/stockssettings/accounts/ChooseAccountActivity;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {p0, v4, v5, v6}, Lcom/android/stockssettings/accounts/ChooseAccountActivity;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v0

    .line 258
    .local v0, "authContext":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget v5, v1, Landroid/accounts/AuthenticatorDescription;->labelId:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    .line 265
    .end local v0    # "authContext":Landroid/content/Context;
    .end local v1    # "desc":Landroid/accounts/AuthenticatorDescription;
    :cond_0
    :goto_0
    return-object v3

    .line 259
    :catch_0
    move-exception v2

    .line 260
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v4, "ChooseAccountActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "No label name for account type "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 261
    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v2

    .line 262
    .local v2, "e":Landroid/content/res/Resources$NotFoundException;
    const-string v4, "ChooseAccountActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "No label resource for account type "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 95
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 97
    invoke-virtual {p0}, Lcom/android/stockssettings/accounts/ChooseAccountActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v5

    .line 98
    .local v5, "mActionBar":Landroid/app/ActionBar;
    if-eqz v5, :cond_0

    .line 99
    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 102
    :cond_0
    const v6, 0x7f040004

    invoke-virtual {p0, v6}, Lcom/android/stockssettings/accounts/ChooseAccountActivity;->setContentView(I)V

    .line 103
    const v6, 0x7f060004

    invoke-virtual {p0, v6}, Lcom/android/stockssettings/accounts/ChooseAccountActivity;->addPreferencesFromResource(I)V

    .line 104
    invoke-virtual {p0}, Lcom/android/stockssettings/accounts/ChooseAccountActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v7, "authorities"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/stockssettings/accounts/ChooseAccountActivity;->mAuthorities:[Ljava/lang/String;

    .line 106
    invoke-virtual {p0}, Lcom/android/stockssettings/accounts/ChooseAccountActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v7, "account_types"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 108
    .local v1, "accountTypesFilter":[Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 109
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    iput-object v6, p0, Lcom/android/stockssettings/accounts/ChooseAccountActivity;->mAccountTypesFilter:Ljava/util/HashSet;

    .line 110
    move-object v2, v1

    .local v2, "arr$":[Ljava/lang/String;
    array-length v4, v2

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v0, v2, v3

    .line 111
    .local v0, "accountType":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/stockssettings/accounts/ChooseAccountActivity;->mAccountTypesFilter:Ljava/util/HashSet;

    invoke-virtual {v6, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 110
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 114
    .end local v0    # "accountType":Ljava/lang/String;
    .end local v2    # "arr$":[Ljava/lang/String;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    :cond_1
    invoke-virtual {p0}, Lcom/android/stockssettings/accounts/ChooseAccountActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    iput-object v6, p0, Lcom/android/stockssettings/accounts/ChooseAccountActivity;->mAddAccountGroup:Landroid/preference/PreferenceGroup;

    .line 115
    invoke-static {p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v6

    iput-object v6, p0, Lcom/android/stockssettings/accounts/ChooseAccountActivity;->mUm:Landroid/os/UserManager;

    .line 116
    invoke-virtual {p0}, Lcom/android/stockssettings/accounts/ChooseAccountActivity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/stockssettings/accounts/ChooseAccountActivity;->mUm:Landroid/os/UserManager;

    const/4 v8, 0x0

    invoke-virtual {p0}, Lcom/android/stockssettings/accounts/ChooseAccountActivity;->getIntent()Landroid/content/Intent;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v9

    invoke-static {v6, v7, v8, v9}, Lcom/android/stockssettings/Utils;->getSecureTargetUser(Landroid/os/IBinder;Landroid/os/UserManager;Landroid/os/Bundle;Landroid/os/Bundle;)Landroid/os/UserHandle;

    move-result-object v6

    iput-object v6, p0, Lcom/android/stockssettings/accounts/ChooseAccountActivity;->mUserHandle:Landroid/os/UserHandle;

    .line 118
    invoke-direct {p0}, Lcom/android/stockssettings/accounts/ChooseAccountActivity;->updateAuthDescriptions()V

    .line 119
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 123
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 124
    invoke-virtual {p0}, Lcom/android/stockssettings/accounts/ChooseAccountActivity;->finish()V

    .line 125
    const/4 v0, 0x1

    .line 127
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 4
    .param p1, "preferences"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 270
    instance-of v1, p2, Lcom/android/stockssettings/accounts/ProviderPreference;

    if-eqz v1, :cond_1

    move-object v0, p2

    .line 271
    check-cast v0, Lcom/android/stockssettings/accounts/ProviderPreference;

    .line 272
    .local v0, "pref":Lcom/android/stockssettings/accounts/ProviderPreference;
    const-string v1, "ChooseAccountActivity"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 273
    const-string v1, "ChooseAccountActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attempting to add account of type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/stockssettings/accounts/ProviderPreference;->getAccountType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    :cond_0
    invoke-virtual {v0}, Lcom/android/stockssettings/accounts/ProviderPreference;->getAccountType()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/stockssettings/accounts/ChooseAccountActivity;->finishWithAccountType(Ljava/lang/String;)V

    .line 277
    .end local v0    # "pref":Lcom/android/stockssettings/accounts/ProviderPreference;
    :cond_1
    const/4 v1, 0x1

    return v1
.end method
