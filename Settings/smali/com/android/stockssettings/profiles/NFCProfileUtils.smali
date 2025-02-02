.class public Lcom/android/stockssettings/profiles/NFCProfileUtils;
.super Ljava/lang/Object;
.source "NFCProfileUtils.java"


# static fields
.field private static final VIBRATION_PATTERN:[J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x3

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/stockssettings/profiles/NFCProfileUtils;->VIBRATION_PATTERN:[J

    return-void

    nop

    :array_0
    .array-data 8
        0x0
        0x64
        0x2710
    .end array-data
.end method

.method static asByteArray(Ljava/util/UUID;)[B
    .locals 9
    .param p0, "uuid"    # Ljava/util/UUID;

    .prologue
    const/16 v8, 0x10

    .line 106
    invoke-virtual {p0}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v4

    .line 107
    .local v4, "msb":J
    invoke-virtual {p0}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v2

    .line 108
    .local v2, "lsb":J
    new-array v0, v8, [B

    .line 110
    .local v0, "buffer":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/16 v6, 0x8

    if-ge v1, v6, :cond_0

    .line 111
    rsub-int/lit8 v6, v1, 0x7

    mul-int/lit8 v6, v6, 0x8

    ushr-long v6, v4, v6

    long-to-int v6, v6

    int-to-byte v6, v6

    aput-byte v6, v0, v1

    .line 110
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 113
    :cond_0
    const/16 v1, 0x8

    :goto_1
    if-ge v1, v8, :cond_1

    .line 114
    rsub-int/lit8 v6, v1, 0x7

    mul-int/lit8 v6, v6, 0x8

    ushr-long v6, v2, v6

    long-to-int v6, v6

    int-to-byte v6, v6

    aput-byte v6, v0, v1

    .line 113
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 117
    :cond_1
    return-object v0
.end method

.method public static getProfileAsNdef(Lcyanogenmod/app/Profile;)Landroid/nfc/NdefMessage;
    .locals 5
    .param p0, "profile"    # Lcyanogenmod/app/Profile;

    .prologue
    .line 125
    invoke-virtual {p0}, Lcyanogenmod/app/Profile;->getUuid()Ljava/util/UUID;

    move-result-object v2

    invoke-static {v2}, Lcom/android/stockssettings/profiles/NFCProfileUtils;->asByteArray(Ljava/util/UUID;)[B

    move-result-object v0

    .line 127
    .local v0, "profileBytes":[B
    const-string v2, "cm/profile"

    invoke-static {v2, v0}, Landroid/nfc/NdefRecord;->createMime(Ljava/lang/String;[B)Landroid/nfc/NdefRecord;

    move-result-object v1

    .line 128
    .local v1, "record":Landroid/nfc/NdefRecord;
    new-instance v2, Landroid/nfc/NdefMessage;

    const/4 v3, 0x1

    new-array v3, v3, [Landroid/nfc/NdefRecord;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-direct {v2, v3}, Landroid/nfc/NdefMessage;-><init>([Landroid/nfc/NdefRecord;)V

    return-object v2
.end method

.method static toUUID([B)Ljava/util/UUID;
    .locals 11
    .param p0, "byteArray"    # [B

    .prologue
    const/16 v10, 0x8

    .line 91
    const-wide/16 v4, 0x0

    .line 92
    .local v4, "msb":J
    const-wide/16 v2, 0x0

    .line 93
    .local v2, "lsb":J
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v10, :cond_0

    .line 94
    shl-long v6, v4, v10

    aget-byte v8, p0, v0

    and-int/lit16 v8, v8, 0xff

    int-to-long v8, v8

    or-long v4, v6, v8

    .line 93
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 96
    :cond_0
    const/16 v0, 0x8

    :goto_1
    const/16 v6, 0x10

    if-ge v0, v6, :cond_1

    .line 97
    shl-long v6, v2, v10

    aget-byte v8, p0, v0

    and-int/lit16 v8, v8, 0xff

    int-to-long v8, v8

    or-long v2, v6, v8

    .line 96
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 99
    :cond_1
    new-instance v1, Ljava/util/UUID;

    invoke-direct {v1, v4, v5, v2, v3}, Ljava/util/UUID;-><init>(JJ)V

    .line 101
    .local v1, "result":Ljava/util/UUID;
    return-object v1
.end method

.method public static vibrate(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 42
    const-string v1, "vibrator"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    .line 43
    .local v0, "vibrator":Landroid/os/Vibrator;
    sget-object v1, Lcom/android/stockssettings/profiles/NFCProfileUtils;->VIBRATION_PATTERN:[J

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate([JI)V

    .line 44
    return-void
.end method

.method public static writeTag(Landroid/nfc/NdefMessage;Landroid/nfc/Tag;)Z
    .locals 8
    .param p0, "message"    # Landroid/nfc/NdefMessage;
    .param p1, "tag"    # Landroid/nfc/Tag;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 50
    invoke-virtual {p0}, Landroid/nfc/NdefMessage;->toByteArray()[B

    move-result-object v6

    array-length v3, v6

    .line 52
    .local v3, "size":I
    :try_start_0
    invoke-static {p1}, Landroid/nfc/tech/Ndef;->get(Landroid/nfc/Tag;)Landroid/nfc/tech/Ndef;

    move-result-object v2

    .line 53
    .local v2, "ndef":Landroid/nfc/tech/Ndef;
    if-eqz v2, :cond_3

    .line 54
    invoke-virtual {v2}, Landroid/nfc/tech/Ndef;->connect()V

    .line 55
    invoke-virtual {v2}, Landroid/nfc/tech/Ndef;->isWritable()Z

    move-result v6

    if-nez v6, :cond_1

    .line 56
    const-string v5, "NFCUtils"

    const-string v6, "Tag is not writable!"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    .end local v2    # "ndef":Landroid/nfc/tech/Ndef;
    :cond_0
    :goto_0
    return v4

    .line 59
    .restart local v2    # "ndef":Landroid/nfc/tech/Ndef;
    :cond_1
    invoke-virtual {v2}, Landroid/nfc/tech/Ndef;->getMaxSize()I

    move-result v6

    if-ge v6, v3, :cond_2

    .line 60
    const-string v5, "NFCUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Tag exceeds max ndef message size! ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " > "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Landroid/nfc/tech/Ndef;->getMaxSize()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 82
    .end local v2    # "ndef":Landroid/nfc/tech/Ndef;
    :catch_0
    move-exception v0

    .line 83
    .local v0, "e":Ljava/lang/Exception;
    const-string v5, "NFCUtils"

    const-string v6, "Write error!"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 65
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v2    # "ndef":Landroid/nfc/tech/Ndef;
    :cond_2
    :try_start_1
    invoke-virtual {v2, p0}, Landroid/nfc/tech/Ndef;->writeNdefMessage(Landroid/nfc/NdefMessage;)V

    move v4, v5

    .line 66
    goto :goto_0

    .line 68
    :cond_3
    invoke-static {p1}, Landroid/nfc/tech/NdefFormatable;->get(Landroid/nfc/Tag;)Landroid/nfc/tech/NdefFormatable;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    .line 69
    .local v1, "format":Landroid/nfc/tech/NdefFormatable;
    if-eqz v1, :cond_0

    .line 71
    :try_start_2
    invoke-virtual {v1}, Landroid/nfc/tech/NdefFormatable;->connect()V

    .line 72
    invoke-virtual {v1, p0}, Landroid/nfc/tech/NdefFormatable;->format(Landroid/nfc/NdefMessage;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move v4, v5

    .line 73
    goto :goto_0

    .line 74
    :catch_1
    move-exception v0

    .line 75
    .local v0, "e":Ljava/io/IOException;
    :try_start_3
    const-string v5, "NFCUtils"

    const-string v6, "Write error!"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0
.end method
