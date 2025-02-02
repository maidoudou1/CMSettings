.class final Lcom/android/stockssettings/bluetooth/BluetoothEventManager;
.super Ljava/lang/Object;
.source "BluetoothEventManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/stockssettings/bluetooth/BluetoothEventManager$DockEventHandler;,
        Lcom/android/stockssettings/bluetooth/BluetoothEventManager$PairingCancelHandler;,
        Lcom/android/stockssettings/bluetooth/BluetoothEventManager$UuidChangedHandler;,
        Lcom/android/stockssettings/bluetooth/BluetoothEventManager$ClassChangedHandler;,
        Lcom/android/stockssettings/bluetooth/BluetoothEventManager$BondStateChangedHandler;,
        Lcom/android/stockssettings/bluetooth/BluetoothEventManager$NameChangedHandler;,
        Lcom/android/stockssettings/bluetooth/BluetoothEventManager$DeviceDisappearedHandler;,
        Lcom/android/stockssettings/bluetooth/BluetoothEventManager$DeviceFoundHandler;,
        Lcom/android/stockssettings/bluetooth/BluetoothEventManager$ScanningStateChangedHandler;,
        Lcom/android/stockssettings/bluetooth/BluetoothEventManager$AdapterStateChangedHandler;,
        Lcom/android/stockssettings/bluetooth/BluetoothEventManager$Handler;
    }
.end annotation


# instance fields
.field private final mAdapterIntentFilter:Landroid/content/IntentFilter;

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mCallbacks:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lcom/android/stockssettings/bluetooth/BluetoothCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private final mDeviceManager:Lcom/android/stockssettings/bluetooth/CachedBluetoothDeviceManager;

.field private final mHandlerMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/stockssettings/bluetooth/BluetoothEventManager$Handler;",
            ">;"
        }
    .end annotation
.end field

.field private final mLocalAdapter:Lcom/android/stockssettings/bluetooth/LocalBluetoothAdapter;

.field private final mProfileIntentFilter:Landroid/content/IntentFilter;

.field private mProfileManager:Lcom/android/stockssettings/bluetooth/LocalBluetoothProfileManager;


# direct methods
.method constructor <init>(Lcom/android/stockssettings/bluetooth/LocalBluetoothAdapter;Lcom/android/stockssettings/bluetooth/CachedBluetoothDeviceManager;Landroid/content/Context;)V
    .locals 4
    .param p1, "adapter"    # Lcom/android/stockssettings/bluetooth/LocalBluetoothAdapter;
    .param p2, "deviceManager"    # Lcom/android/stockssettings/bluetooth/CachedBluetoothDeviceManager;
    .param p3, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/stockssettings/bluetooth/BluetoothEventManager;->mCallbacks:Ljava/util/Collection;

    .line 141
    new-instance v0, Lcom/android/stockssettings/bluetooth/BluetoothEventManager$1;

    invoke-direct {v0, p0}, Lcom/android/stockssettings/bluetooth/BluetoothEventManager$1;-><init>(Lcom/android/stockssettings/bluetooth/BluetoothEventManager;)V

    iput-object v0, p0, Lcom/android/stockssettings/bluetooth/BluetoothEventManager;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 76
    iput-object p1, p0, Lcom/android/stockssettings/bluetooth/BluetoothEventManager;->mLocalAdapter:Lcom/android/stockssettings/bluetooth/LocalBluetoothAdapter;

    .line 77
    iput-object p2, p0, Lcom/android/stockssettings/bluetooth/BluetoothEventManager;->mDeviceManager:Lcom/android/stockssettings/bluetooth/CachedBluetoothDeviceManager;

    .line 78
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/stockssettings/bluetooth/BluetoothEventManager;->mAdapterIntentFilter:Landroid/content/IntentFilter;

    .line 79
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/stockssettings/bluetooth/BluetoothEventManager;->mProfileIntentFilter:Landroid/content/IntentFilter;

    .line 80
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/stockssettings/bluetooth/BluetoothEventManager;->mHandlerMap:Ljava/util/Map;

    .line 81
    iput-object p3, p0, Lcom/android/stockssettings/bluetooth/BluetoothEventManager;->mContext:Landroid/content/Context;

    .line 84
    const-string v0, "android.bluetooth.adapter.action.STATE_CHANGED"

    new-instance v1, Lcom/android/stockssettings/bluetooth/BluetoothEventManager$AdapterStateChangedHandler;

    invoke-direct {v1, p0, v3}, Lcom/android/stockssettings/bluetooth/BluetoothEventManager$AdapterStateChangedHandler;-><init>(Lcom/android/stockssettings/bluetooth/BluetoothEventManager;Lcom/android/stockssettings/bluetooth/BluetoothEventManager$1;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/stockssettings/bluetooth/BluetoothEventManager;->addHandler(Ljava/lang/String;Lcom/android/stockssettings/bluetooth/BluetoothEventManager$Handler;)V

    .line 87
    const-string v0, "android.bluetooth.adapter.action.DISCOVERY_STARTED"

    new-instance v1, Lcom/android/stockssettings/bluetooth/BluetoothEventManager$ScanningStateChangedHandler;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/android/stockssettings/bluetooth/BluetoothEventManager$ScanningStateChangedHandler;-><init>(Lcom/android/stockssettings/bluetooth/BluetoothEventManager;Z)V

    invoke-virtual {p0, v0, v1}, Lcom/android/stockssettings/bluetooth/BluetoothEventManager;->addHandler(Ljava/lang/String;Lcom/android/stockssettings/bluetooth/BluetoothEventManager$Handler;)V

    .line 88
    const-string v0, "android.bluetooth.adapter.action.DISCOVERY_FINISHED"

    new-instance v1, Lcom/android/stockssettings/bluetooth/BluetoothEventManager$ScanningStateChangedHandler;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/stockssettings/bluetooth/BluetoothEventManager$ScanningStateChangedHandler;-><init>(Lcom/android/stockssettings/bluetooth/BluetoothEventManager;Z)V

    invoke-virtual {p0, v0, v1}, Lcom/android/stockssettings/bluetooth/BluetoothEventManager;->addHandler(Ljava/lang/String;Lcom/android/stockssettings/bluetooth/BluetoothEventManager$Handler;)V

    .line 89
    const-string v0, "android.bluetooth.device.action.FOUND"

    new-instance v1, Lcom/android/stockssettings/bluetooth/BluetoothEventManager$DeviceFoundHandler;

    invoke-direct {v1, p0, v3}, Lcom/android/stockssettings/bluetooth/BluetoothEventManager$DeviceFoundHandler;-><init>(Lcom/android/stockssettings/bluetooth/BluetoothEventManager;Lcom/android/stockssettings/bluetooth/BluetoothEventManager$1;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/stockssettings/bluetooth/BluetoothEventManager;->addHandler(Ljava/lang/String;Lcom/android/stockssettings/bluetooth/BluetoothEventManager$Handler;)V

    .line 90
    const-string v0, "android.bluetooth.device.action.DISAPPEARED"

    new-instance v1, Lcom/android/stockssettings/bluetooth/BluetoothEventManager$DeviceDisappearedHandler;

    invoke-direct {v1, p0, v3}, Lcom/android/stockssettings/bluetooth/BluetoothEventManager$DeviceDisappearedHandler;-><init>(Lcom/android/stockssettings/bluetooth/BluetoothEventManager;Lcom/android/stockssettings/bluetooth/BluetoothEventManager$1;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/stockssettings/bluetooth/BluetoothEventManager;->addHandler(Ljava/lang/String;Lcom/android/stockssettings/bluetooth/BluetoothEventManager$Handler;)V

    .line 91
    const-string v0, "android.bluetooth.device.action.NAME_CHANGED"

    new-instance v1, Lcom/android/stockssettings/bluetooth/BluetoothEventManager$NameChangedHandler;

    invoke-direct {v1, p0, v3}, Lcom/android/stockssettings/bluetooth/BluetoothEventManager$NameChangedHandler;-><init>(Lcom/android/stockssettings/bluetooth/BluetoothEventManager;Lcom/android/stockssettings/bluetooth/BluetoothEventManager$1;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/stockssettings/bluetooth/BluetoothEventManager;->addHandler(Ljava/lang/String;Lcom/android/stockssettings/bluetooth/BluetoothEventManager$Handler;)V

    .line 94
    const-string v0, "android.bluetooth.device.action.BOND_STATE_CHANGED"

    new-instance v1, Lcom/android/stockssettings/bluetooth/BluetoothEventManager$BondStateChangedHandler;

    invoke-direct {v1, p0, v3}, Lcom/android/stockssettings/bluetooth/BluetoothEventManager$BondStateChangedHandler;-><init>(Lcom/android/stockssettings/bluetooth/BluetoothEventManager;Lcom/android/stockssettings/bluetooth/BluetoothEventManager$1;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/stockssettings/bluetooth/BluetoothEventManager;->addHandler(Ljava/lang/String;Lcom/android/stockssettings/bluetooth/BluetoothEventManager$Handler;)V

    .line 95
    const-string v0, "android.bluetooth.device.action.PAIRING_CANCEL"

    new-instance v1, Lcom/android/stockssettings/bluetooth/BluetoothEventManager$PairingCancelHandler;

    invoke-direct {v1, p0, v3}, Lcom/android/stockssettings/bluetooth/BluetoothEventManager$PairingCancelHandler;-><init>(Lcom/android/stockssettings/bluetooth/BluetoothEventManager;Lcom/android/stockssettings/bluetooth/BluetoothEventManager$1;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/stockssettings/bluetooth/BluetoothEventManager;->addHandler(Ljava/lang/String;Lcom/android/stockssettings/bluetooth/BluetoothEventManager$Handler;)V

    .line 98
    const-string v0, "android.bluetooth.device.action.CLASS_CHANGED"

    new-instance v1, Lcom/android/stockssettings/bluetooth/BluetoothEventManager$ClassChangedHandler;

    invoke-direct {v1, p0, v3}, Lcom/android/stockssettings/bluetooth/BluetoothEventManager$ClassChangedHandler;-><init>(Lcom/android/stockssettings/bluetooth/BluetoothEventManager;Lcom/android/stockssettings/bluetooth/BluetoothEventManager$1;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/stockssettings/bluetooth/BluetoothEventManager;->addHandler(Ljava/lang/String;Lcom/android/stockssettings/bluetooth/BluetoothEventManager$Handler;)V

    .line 99
    const-string v0, "android.bluetooth.device.action.UUID"

    new-instance v1, Lcom/android/stockssettings/bluetooth/BluetoothEventManager$UuidChangedHandler;

    invoke-direct {v1, p0, v3}, Lcom/android/stockssettings/bluetooth/BluetoothEventManager$UuidChangedHandler;-><init>(Lcom/android/stockssettings/bluetooth/BluetoothEventManager;Lcom/android/stockssettings/bluetooth/BluetoothEventManager$1;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/stockssettings/bluetooth/BluetoothEventManager;->addHandler(Ljava/lang/String;Lcom/android/stockssettings/bluetooth/BluetoothEventManager$Handler;)V

    .line 102
    const-string v0, "android.intent.action.DOCK_EVENT"

    new-instance v1, Lcom/android/stockssettings/bluetooth/BluetoothEventManager$DockEventHandler;

    invoke-direct {v1, p0, v3}, Lcom/android/stockssettings/bluetooth/BluetoothEventManager$DockEventHandler;-><init>(Lcom/android/stockssettings/bluetooth/BluetoothEventManager;Lcom/android/stockssettings/bluetooth/BluetoothEventManager$1;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/stockssettings/bluetooth/BluetoothEventManager;->addHandler(Ljava/lang/String;Lcom/android/stockssettings/bluetooth/BluetoothEventManager$Handler;)V

    .line 104
    iget-object v0, p0, Lcom/android/stockssettings/bluetooth/BluetoothEventManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/stockssettings/bluetooth/BluetoothEventManager;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/stockssettings/bluetooth/BluetoothEventManager;->mAdapterIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 105
    return-void
.end method

.method static synthetic access$1000(Lcom/android/stockssettings/bluetooth/BluetoothEventManager;)Lcom/android/stockssettings/bluetooth/LocalBluetoothAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/android/stockssettings/bluetooth/BluetoothEventManager;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/stockssettings/bluetooth/BluetoothEventManager;->mLocalAdapter:Lcom/android/stockssettings/bluetooth/LocalBluetoothAdapter;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/stockssettings/bluetooth/BluetoothEventManager;)Ljava/util/Collection;
    .locals 1
    .param p0, "x0"    # Lcom/android/stockssettings/bluetooth/BluetoothEventManager;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/stockssettings/bluetooth/BluetoothEventManager;->mCallbacks:Ljava/util/Collection;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/stockssettings/bluetooth/BluetoothEventManager;)Lcom/android/stockssettings/bluetooth/CachedBluetoothDeviceManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/stockssettings/bluetooth/BluetoothEventManager;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/stockssettings/bluetooth/BluetoothEventManager;->mDeviceManager:Lcom/android/stockssettings/bluetooth/CachedBluetoothDeviceManager;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/stockssettings/bluetooth/BluetoothEventManager;)Lcom/android/stockssettings/bluetooth/LocalBluetoothProfileManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/stockssettings/bluetooth/BluetoothEventManager;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/stockssettings/bluetooth/BluetoothEventManager;->mProfileManager:Lcom/android/stockssettings/bluetooth/LocalBluetoothProfileManager;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/stockssettings/bluetooth/BluetoothEventManager;Lcom/android/stockssettings/bluetooth/CachedBluetoothDevice;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/stockssettings/bluetooth/BluetoothEventManager;
    .param p1, "x1"    # Lcom/android/stockssettings/bluetooth/CachedBluetoothDevice;

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/android/stockssettings/bluetooth/BluetoothEventManager;->dispatchDeviceAdded(Lcom/android/stockssettings/bluetooth/CachedBluetoothDevice;)V

    return-void
.end method

.method static synthetic access$1500(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroid/content/Context;

    .prologue
    .line 42
    invoke-static {p0}, Lcom/android/stockssettings/bluetooth/BluetoothEventManager;->getDockedDeviceAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/stockssettings/bluetooth/BluetoothEventManager;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/android/stockssettings/bluetooth/BluetoothEventManager;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/stockssettings/bluetooth/BluetoothEventManager;->mHandlerMap:Ljava/util/Map;

    return-object v0
.end method

.method private dispatchDeviceAdded(Lcom/android/stockssettings/bluetooth/CachedBluetoothDevice;)V
    .locals 4
    .param p1, "cachedDevice"    # Lcom/android/stockssettings/bluetooth/CachedBluetoothDevice;

    .prologue
    .line 215
    iget-object v3, p0, Lcom/android/stockssettings/bluetooth/BluetoothEventManager;->mCallbacks:Ljava/util/Collection;

    monitor-enter v3

    .line 216
    :try_start_0
    iget-object v2, p0, Lcom/android/stockssettings/bluetooth/BluetoothEventManager;->mCallbacks:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/stockssettings/bluetooth/BluetoothCallback;

    .line 217
    .local v0, "callback":Lcom/android/stockssettings/bluetooth/BluetoothCallback;
    invoke-interface {v0, p1}, Lcom/android/stockssettings/bluetooth/BluetoothCallback;->onDeviceAdded(Lcom/android/stockssettings/bluetooth/CachedBluetoothDevice;)V

    goto :goto_0

    .line 219
    .end local v0    # "callback":Lcom/android/stockssettings/bluetooth/BluetoothCallback;
    .end local v1    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 220
    return-void
.end method

.method private static getDockedDeviceAddress(Landroid/content/Context;)Ljava/lang/String;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 128
    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "android.intent.action.DOCK_EVENT"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v1

    .line 129
    .local v1, "i":Landroid/content/Intent;
    if-eqz v1, :cond_0

    .line 130
    const-string v4, "android.intent.extra.DOCK_STATE"

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 131
    .local v2, "state":I
    if-eqz v2, :cond_0

    .line 132
    const-string v4, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 133
    .local v0, "device":Landroid/bluetooth/BluetoothDevice;
    if-eqz v0, :cond_0

    .line 134
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    .line 138
    .end local v0    # "device":Landroid/bluetooth/BluetoothDevice;
    .end local v2    # "state":I
    :cond_0
    return-object v3
.end method


# virtual methods
.method addHandler(Ljava/lang/String;Lcom/android/stockssettings/bluetooth/BluetoothEventManager$Handler;)V
    .locals 1
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "handler"    # Lcom/android/stockssettings/bluetooth/BluetoothEventManager$Handler;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/stockssettings/bluetooth/BluetoothEventManager;->mHandlerMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    iget-object v0, p0, Lcom/android/stockssettings/bluetooth/BluetoothEventManager;->mAdapterIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 62
    return-void
.end method

.method addProfileHandler(Ljava/lang/String;Lcom/android/stockssettings/bluetooth/BluetoothEventManager$Handler;)V
    .locals 1
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "handler"    # Lcom/android/stockssettings/bluetooth/BluetoothEventManager$Handler;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/stockssettings/bluetooth/BluetoothEventManager;->mHandlerMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    iget-object v0, p0, Lcom/android/stockssettings/bluetooth/BluetoothEventManager;->mProfileIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 67
    return-void
.end method

.method readPairedDevices()Z
    .locals 8

    .prologue
    .line 384
    iget-object v5, p0, Lcom/android/stockssettings/bluetooth/BluetoothEventManager;->mLocalAdapter:Lcom/android/stockssettings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v5}, Lcom/android/stockssettings/bluetooth/LocalBluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v0

    .line 385
    .local v0, "bondedDevices":Ljava/util/Set;, "Ljava/util/Set<Landroid/bluetooth/BluetoothDevice;>;"
    if-nez v0, :cond_1

    .line 386
    const/4 v3, 0x0

    .line 399
    :cond_0
    return v3

    .line 389
    :cond_1
    const/4 v3, 0x0

    .line 390
    .local v3, "deviceAdded":Z
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 391
    .local v2, "device":Landroid/bluetooth/BluetoothDevice;
    iget-object v5, p0, Lcom/android/stockssettings/bluetooth/BluetoothEventManager;->mDeviceManager:Lcom/android/stockssettings/bluetooth/CachedBluetoothDeviceManager;

    invoke-virtual {v5, v2}, Lcom/android/stockssettings/bluetooth/CachedBluetoothDeviceManager;->findDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/stockssettings/bluetooth/CachedBluetoothDevice;

    move-result-object v1

    .line 392
    .local v1, "cachedDevice":Lcom/android/stockssettings/bluetooth/CachedBluetoothDevice;
    if-nez v1, :cond_2

    .line 393
    iget-object v5, p0, Lcom/android/stockssettings/bluetooth/BluetoothEventManager;->mDeviceManager:Lcom/android/stockssettings/bluetooth/CachedBluetoothDeviceManager;

    iget-object v6, p0, Lcom/android/stockssettings/bluetooth/BluetoothEventManager;->mLocalAdapter:Lcom/android/stockssettings/bluetooth/LocalBluetoothAdapter;

    iget-object v7, p0, Lcom/android/stockssettings/bluetooth/BluetoothEventManager;->mProfileManager:Lcom/android/stockssettings/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {v5, v6, v7, v2}, Lcom/android/stockssettings/bluetooth/CachedBluetoothDeviceManager;->addDevice(Lcom/android/stockssettings/bluetooth/LocalBluetoothAdapter;Lcom/android/stockssettings/bluetooth/LocalBluetoothProfileManager;Landroid/bluetooth/BluetoothDevice;)Lcom/android/stockssettings/bluetooth/CachedBluetoothDevice;

    move-result-object v1

    .line 394
    invoke-direct {p0, v1}, Lcom/android/stockssettings/bluetooth/BluetoothEventManager;->dispatchDeviceAdded(Lcom/android/stockssettings/bluetooth/CachedBluetoothDevice;)V

    .line 395
    const/4 v3, 0x1

    goto :goto_0
.end method

.method registerCallback(Lcom/android/stockssettings/bluetooth/BluetoothCallback;)V
    .locals 2
    .param p1, "callback"    # Lcom/android/stockssettings/bluetooth/BluetoothCallback;

    .prologue
    .line 113
    iget-object v1, p0, Lcom/android/stockssettings/bluetooth/BluetoothEventManager;->mCallbacks:Ljava/util/Collection;

    monitor-enter v1

    .line 114
    :try_start_0
    iget-object v0, p0, Lcom/android/stockssettings/bluetooth/BluetoothEventManager;->mCallbacks:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 115
    monitor-exit v1

    .line 116
    return-void

    .line 115
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method registerProfileIntentReceiver()V
    .locals 3

    .prologue
    .line 108
    iget-object v0, p0, Lcom/android/stockssettings/bluetooth/BluetoothEventManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/stockssettings/bluetooth/BluetoothEventManager;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/stockssettings/bluetooth/BluetoothEventManager;->mProfileIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 109
    return-void
.end method

.method setProfileManager(Lcom/android/stockssettings/bluetooth/LocalBluetoothProfileManager;)V
    .locals 0
    .param p1, "manager"    # Lcom/android/stockssettings/bluetooth/LocalBluetoothProfileManager;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/android/stockssettings/bluetooth/BluetoothEventManager;->mProfileManager:Lcom/android/stockssettings/bluetooth/LocalBluetoothProfileManager;

    .line 72
    return-void
.end method

.method unregisterCallback(Lcom/android/stockssettings/bluetooth/BluetoothCallback;)V
    .locals 2
    .param p1, "callback"    # Lcom/android/stockssettings/bluetooth/BluetoothCallback;

    .prologue
    .line 120
    iget-object v1, p0, Lcom/android/stockssettings/bluetooth/BluetoothEventManager;->mCallbacks:Ljava/util/Collection;

    monitor-enter v1

    .line 121
    :try_start_0
    iget-object v0, p0, Lcom/android/stockssettings/bluetooth/BluetoothEventManager;->mCallbacks:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 122
    monitor-exit v1

    .line 123
    return-void

    .line 122
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
