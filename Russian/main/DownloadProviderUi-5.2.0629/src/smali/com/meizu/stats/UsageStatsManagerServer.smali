.class public Lcom/meizu/stats/UsageStatsManagerServer;
.super Lcom/meizu/stats/IUsageStatsManager$Stub;
.source "UsageStatsManagerServer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/stats/UsageStatsManagerServer$ConnectionReceiver;,
        Lcom/meizu/stats/UsageStatsManagerServer$Page;,
        Lcom/meizu/stats/UsageStatsManagerServer$SettingsObserver;,
        Lcom/meizu/stats/UsageStatsManagerServer$RecordHandler;
    }
.end annotation


# static fields
.field public static SOURCE:Ljava/lang/String;

.field public static UMID:Ljava/lang/String;

.field private static sLock:Ljava/lang/Object;

.field private static volatile sUsageStatsManagerServer:Lcom/meizu/stats/UsageStatsManagerServer;


# instance fields
.field private mChannelNum:I

.field private mClearPackageSessionTask:Ljava/lang/Runnable;

.field private mContext:Landroid/content/Context;

.field private mHandler:Lcom/meizu/stats/UsageStatsManagerServer$RecordHandler;

.field private mLastSwitchToBackground:J

.field private mNetworkStatus:Ljava/lang/String;

.field private mOnline:Z

.field private mPackageSession:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPages:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/meizu/stats/UsageStatsManagerServer$Page;",
            ">;"
        }
    .end annotation
.end field

.field private mPendingSetSessionEvents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/meizu/stats/UsageStatsProxy$Event;",
            ">;"
        }
    .end annotation
.end field

.field private mRecordEventThread:Landroid/os/HandlerThread;

.field private volatile mRecording:Z

.field private mSettingsObserver:Lcom/meizu/stats/UsageStatsManagerServer$SettingsObserver;

.field private mSharedPreferences:Landroid/content/SharedPreferences;

.field private mUpload:Z

.field private mUsageStatsProviderHelper:Lcom/meizu/stats/UsageStatsProviderHelper;

.field private mUsageStatsUploader:Lcom/meizu/stats/UsageStatsUploader;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    const-string v0, "00000000000000000000000000000000000"

    sput-object v0, Lcom/meizu/stats/UsageStatsManagerServer;->UMID:Ljava/lang/String;

    .line 53
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/meizu/stats/UsageStatsManagerServer;->sLock:Ljava/lang/Object;

    .line 71
    const/4 v0, 0x0

    sput-object v0, Lcom/meizu/stats/UsageStatsManagerServer;->SOURCE:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;ZZ)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "online"    # Z
    .param p3, "upload"    # Z

    .prologue
    const/4 v2, 0x0

    .line 85
    invoke-direct {p0}, Lcom/meizu/stats/IUsageStatsManager$Stub;-><init>()V

    .line 61
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "RecordEventThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/meizu/stats/UsageStatsManagerServer;->mRecordEventThread:Landroid/os/HandlerThread;

    .line 63
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/meizu/stats/UsageStatsManagerServer;->mPackageSession:Ljava/util/Map;

    .line 65
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/meizu/stats/UsageStatsManagerServer;->mRecording:Z

    .line 66
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/meizu/stats/UsageStatsManagerServer;->mPages:Ljava/util/LinkedList;

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/meizu/stats/UsageStatsManagerServer;->mPendingSetSessionEvents:Ljava/util/List;

    .line 69
    const/4 v0, 0x0

    iput v0, p0, Lcom/meizu/stats/UsageStatsManagerServer;->mChannelNum:I

    .line 70
    iput-object v2, p0, Lcom/meizu/stats/UsageStatsManagerServer;->mNetworkStatus:Ljava/lang/String;

    .line 72
    iput-object v2, p0, Lcom/meizu/stats/UsageStatsManagerServer;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 75
    new-instance v0, Lcom/meizu/stats/UsageStatsManagerServer$1;

    invoke-direct {v0, p0}, Lcom/meizu/stats/UsageStatsManagerServer$1;-><init>(Lcom/meizu/stats/UsageStatsManagerServer;)V

    iput-object v0, p0, Lcom/meizu/stats/UsageStatsManagerServer;->mClearPackageSessionTask:Ljava/lang/Runnable;

    .line 86
    iput-object p1, p0, Lcom/meizu/stats/UsageStatsManagerServer;->mContext:Landroid/content/Context;

    .line 87
    iput-boolean p2, p0, Lcom/meizu/stats/UsageStatsManagerServer;->mOnline:Z

    .line 88
    iput-boolean p3, p0, Lcom/meizu/stats/UsageStatsManagerServer;->mUpload:Z

    .line 89
    iget-object v0, p0, Lcom/meizu/stats/UsageStatsManagerServer;->mRecordEventThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 90
    new-instance v0, Lcom/meizu/stats/UsageStatsManagerServer$RecordHandler;

    iget-object v1, p0, Lcom/meizu/stats/UsageStatsManagerServer;->mRecordEventThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/meizu/stats/UsageStatsManagerServer$RecordHandler;-><init>(Lcom/meizu/stats/UsageStatsManagerServer;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/meizu/stats/UsageStatsManagerServer;->mHandler:Lcom/meizu/stats/UsageStatsManagerServer$RecordHandler;

    .line 91
    invoke-direct {p0}, Lcom/meizu/stats/UsageStatsManagerServer;->init()V

    .line 92
    return-void
.end method

.method static synthetic access$000(Lcom/meizu/stats/UsageStatsManagerServer;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/stats/UsageStatsManagerServer;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/meizu/stats/UsageStatsManagerServer;->mPackageSession:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$100(Lcom/meizu/stats/UsageStatsManagerServer;)Z
    .locals 1
    .param p0, "x0"    # Lcom/meizu/stats/UsageStatsManagerServer;

    .prologue
    .line 42
    iget-boolean v0, p0, Lcom/meizu/stats/UsageStatsManagerServer;->mRecording:Z

    return v0
.end method

.method static synthetic access$102(Lcom/meizu/stats/UsageStatsManagerServer;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/meizu/stats/UsageStatsManagerServer;
    .param p1, "x1"    # Z

    .prologue
    .line 42
    iput-boolean p1, p0, Lcom/meizu/stats/UsageStatsManagerServer;->mRecording:Z

    return p1
.end method

.method static synthetic access$1102(Lcom/meizu/stats/UsageStatsManagerServer;J)J
    .locals 1
    .param p0, "x0"    # Lcom/meizu/stats/UsageStatsManagerServer;
    .param p1, "x1"    # J

    .prologue
    .line 42
    iput-wide p1, p0, Lcom/meizu/stats/UsageStatsManagerServer;->mLastSwitchToBackground:J

    return-wide p1
.end method

.method static synthetic access$1200(Lcom/meizu/stats/UsageStatsManagerServer;)Lcom/meizu/stats/UsageStatsProviderHelper;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/stats/UsageStatsManagerServer;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/meizu/stats/UsageStatsManagerServer;->mUsageStatsProviderHelper:Lcom/meizu/stats/UsageStatsProviderHelper;

    return-object v0
.end method

.method static synthetic access$200(Lcom/meizu/stats/UsageStatsManagerServer;)I
    .locals 1
    .param p0, "x0"    # Lcom/meizu/stats/UsageStatsManagerServer;

    .prologue
    .line 42
    iget v0, p0, Lcom/meizu/stats/UsageStatsManagerServer;->mChannelNum:I

    return v0
.end method

.method static synthetic access$300(Lcom/meizu/stats/UsageStatsManagerServer;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/stats/UsageStatsManagerServer;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/meizu/stats/UsageStatsManagerServer;->mNetworkStatus:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$302(Lcom/meizu/stats/UsageStatsManagerServer;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/meizu/stats/UsageStatsManagerServer;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 42
    iput-object p1, p0, Lcom/meizu/stats/UsageStatsManagerServer;->mNetworkStatus:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$400(Lcom/meizu/stats/UsageStatsManagerServer;)Z
    .locals 1
    .param p0, "x0"    # Lcom/meizu/stats/UsageStatsManagerServer;

    .prologue
    .line 42
    iget-boolean v0, p0, Lcom/meizu/stats/UsageStatsManagerServer;->mOnline:Z

    return v0
.end method

.method static synthetic access$500(Lcom/meizu/stats/UsageStatsManagerServer;)Lcom/meizu/stats/UsageStatsUploader;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/stats/UsageStatsManagerServer;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/meizu/stats/UsageStatsManagerServer;->mUsageStatsUploader:Lcom/meizu/stats/UsageStatsUploader;

    return-object v0
.end method

.method static synthetic access$600(Lcom/meizu/stats/UsageStatsManagerServer;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/stats/UsageStatsManagerServer;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/meizu/stats/UsageStatsManagerServer;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$700(Lcom/meizu/stats/UsageStatsManagerServer;)Ljava/util/LinkedList;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/stats/UsageStatsManagerServer;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/meizu/stats/UsageStatsManagerServer;->mPages:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic access$800(Lcom/meizu/stats/UsageStatsManagerServer;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/stats/UsageStatsManagerServer;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/meizu/stats/UsageStatsManagerServer;->mClearPackageSessionTask:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$900(Lcom/meizu/stats/UsageStatsManagerServer;)Lcom/meizu/stats/UsageStatsManagerServer$RecordHandler;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/stats/UsageStatsManagerServer;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/meizu/stats/UsageStatsManagerServer;->mHandler:Lcom/meizu/stats/UsageStatsManagerServer$RecordHandler;

    return-object v0
.end method

.method static getInstance(Landroid/content/Context;ZZ)Lcom/meizu/stats/UsageStatsManagerServer;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "online"    # Z
    .param p2, "upload"    # Z

    .prologue
    .line 95
    sget-object v0, Lcom/meizu/stats/UsageStatsManagerServer;->sUsageStatsManagerServer:Lcom/meizu/stats/UsageStatsManagerServer;

    if-nez v0, :cond_1

    .line 96
    sget-object v1, Lcom/meizu/stats/UsageStatsManagerServer;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 97
    :try_start_0
    sget-object v0, Lcom/meizu/stats/UsageStatsManagerServer;->sUsageStatsManagerServer:Lcom/meizu/stats/UsageStatsManagerServer;

    if-nez v0, :cond_0

    .line 98
    new-instance v0, Lcom/meizu/stats/UsageStatsManagerServer;

    invoke-direct {v0, p0, p1, p2}, Lcom/meizu/stats/UsageStatsManagerServer;-><init>(Landroid/content/Context;ZZ)V

    sput-object v0, Lcom/meizu/stats/UsageStatsManagerServer;->sUsageStatsManagerServer:Lcom/meizu/stats/UsageStatsManagerServer;

    .line 100
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 102
    :cond_1
    sget-object v0, Lcom/meizu/stats/UsageStatsManagerServer;->sUsageStatsManagerServer:Lcom/meizu/stats/UsageStatsManagerServer;

    return-object v0

    .line 100
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private init()V
    .locals 9

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 106
    invoke-static {}, Lcom/meizu/stats/UsageStatusLog;->initLog()V

    .line 107
    iget-object v6, p0, Lcom/meizu/stats/UsageStatsManagerServer;->mContext:Landroid/content/Context;

    invoke-direct {p0, v6}, Lcom/meizu/stats/UsageStatsManagerServer;->initChannelNum(Landroid/content/Context;)V

    .line 108
    iget-object v6, p0, Lcom/meizu/stats/UsageStatsManagerServer;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/meizu/experiencedatasync/util/Utils;->getNetworkType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/meizu/stats/UsageStatsManagerServer;->mNetworkStatus:Ljava/lang/String;

    .line 109
    iget-object v6, p0, Lcom/meizu/stats/UsageStatsManagerServer;->mContext:Landroid/content/Context;

    const-string v7, "com.meizu.stats"

    invoke-virtual {v6, v7, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    iput-object v6, p0, Lcom/meizu/stats/UsageStatsManagerServer;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 110
    iget-object v6, p0, Lcom/meizu/stats/UsageStatsManagerServer;->mSharedPreferences:Landroid/content/SharedPreferences;

    sget-object v7, Lcom/meizu/experiencedatasync/UsageStatsConstants;->PREFERENCES_UMID:Ljava/lang/String;

    const-string v8, "00000000000000000000000000000000000"

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lcom/meizu/stats/UsageStatsManagerServer;->UMID:Ljava/lang/String;

    .line 112
    new-instance v0, Lcom/meizu/stats/UsageStatsManagerServer$ConnectionReceiver;

    invoke-direct {v0, p0}, Lcom/meizu/stats/UsageStatsManagerServer$ConnectionReceiver;-><init>(Lcom/meizu/stats/UsageStatsManagerServer;)V

    .line 113
    .local v0, "connReceiver":Lcom/meizu/stats/UsageStatsManagerServer$ConnectionReceiver;
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 114
    .local v3, "filter":Landroid/content/IntentFilter;
    const-string v6, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v3, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 117
    :try_start_0
    iget-object v6, p0, Lcom/meizu/stats/UsageStatsManagerServer;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 121
    :goto_0
    :try_start_1
    iget-object v6, p0, Lcom/meizu/stats/UsageStatsManagerServer;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v0, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 126
    :goto_1
    iget-object v6, p0, Lcom/meizu/stats/UsageStatsManagerServer;->mContext:Landroid/content/Context;

    iget-boolean v7, p0, Lcom/meizu/stats/UsageStatsManagerServer;->mOnline:Z

    invoke-static {v6, v7}, Lcom/meizu/stats/UsageStatsProviderHelper;->getInstance(Landroid/content/Context;Z)Lcom/meizu/stats/UsageStatsProviderHelper;

    move-result-object v6

    iput-object v6, p0, Lcom/meizu/stats/UsageStatsManagerServer;->mUsageStatsProviderHelper:Lcom/meizu/stats/UsageStatsProviderHelper;

    .line 127
    iget-boolean v6, p0, Lcom/meizu/stats/UsageStatsManagerServer;->mOnline:Z

    if-eqz v6, :cond_0

    .line 128
    iget-object v6, p0, Lcom/meizu/stats/UsageStatsManagerServer;->mContext:Landroid/content/Context;

    iget-boolean v7, p0, Lcom/meizu/stats/UsageStatsManagerServer;->mOnline:Z

    iget-boolean v8, p0, Lcom/meizu/stats/UsageStatsManagerServer;->mUpload:Z

    invoke-static {v6, v7, v8}, Lcom/meizu/stats/UsageStatsUploader;->getInstance(Landroid/content/Context;ZZ)Lcom/meizu/stats/UsageStatsUploader;

    move-result-object v6

    iput-object v6, p0, Lcom/meizu/stats/UsageStatsManagerServer;->mUsageStatsUploader:Lcom/meizu/stats/UsageStatsUploader;

    .line 130
    :cond_0
    iget-boolean v6, p0, Lcom/meizu/stats/UsageStatsManagerServer;->mOnline:Z

    if-nez v6, :cond_2

    .line 132
    iget-object v6, p0, Lcom/meizu/stats/UsageStatsManagerServer;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "meizu_data_collection"

    invoke-static {v6, v7, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_1

    move v4, v5

    :cond_1
    iput-boolean v4, p0, Lcom/meizu/stats/UsageStatsManagerServer;->mRecording:Z

    .line 133
    new-instance v4, Lcom/meizu/stats/UsageStatsManagerServer$SettingsObserver;

    iget-object v6, p0, Lcom/meizu/stats/UsageStatsManagerServer;->mHandler:Lcom/meizu/stats/UsageStatsManagerServer$RecordHandler;

    invoke-direct {v4, p0, v6}, Lcom/meizu/stats/UsageStatsManagerServer$SettingsObserver;-><init>(Lcom/meizu/stats/UsageStatsManagerServer;Landroid/os/Handler;)V

    iput-object v4, p0, Lcom/meizu/stats/UsageStatsManagerServer;->mSettingsObserver:Lcom/meizu/stats/UsageStatsManagerServer$SettingsObserver;

    .line 134
    iget-object v4, p0, Lcom/meizu/stats/UsageStatsManagerServer;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v6, "meizu_data_collection"

    invoke-static {v6}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    iget-object v7, p0, Lcom/meizu/stats/UsageStatsManagerServer;->mSettingsObserver:Lcom/meizu/stats/UsageStatsManagerServer$SettingsObserver;

    invoke-virtual {v4, v6, v5, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 140
    :cond_2
    :try_start_2
    sget-object v4, Lcom/meizu/stats/UsageStatsManagerServer;->UMID:Ljava/lang/String;

    if-eqz v4, :cond_4

    const-string v4, "00000000000000000000000000000000000"

    sget-object v5, Lcom/meizu/stats/UsageStatsManagerServer;->UMID:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 141
    sget-object v4, Lcom/meizu/stats/UsageStatsManagerServer;->UMID:Ljava/lang/String;

    iget-object v5, p0, Lcom/meizu/stats/UsageStatsManagerServer;->mContext:Landroid/content/Context;

    invoke-static {v4, v5}, Lcom/meizu/experiencedatasync/util/Utils;->checkUmid(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 142
    invoke-direct {p0}, Lcom/meizu/stats/UsageStatsManagerServer;->requestUmid()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 150
    :cond_3
    :goto_2
    return-void

    .line 122
    :catch_0
    move-exception v2

    .line 123
    .local v2, "ex":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 145
    .end local v2    # "ex":Ljava/lang/Exception;
    :cond_4
    :try_start_3
    invoke-direct {p0}, Lcom/meizu/stats/UsageStatsManagerServer;->requestUmid()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    .line 147
    :catch_1
    move-exception v1

    .line 148
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 118
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v6

    goto :goto_0
.end method

.method private initChannelNum(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 345
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 346
    .local v2, "pm":Landroid/content/pm/PackageManager;
    if-eqz v2, :cond_0

    .line 348
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x80

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 349
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_0

    iget-object v3, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v3, :cond_0

    .line 350
    iget-object v3, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v4, "uxip_channel_num"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_1

    const/4 v3, 0x0

    :goto_0
    iput v3, p0, Lcom/meizu/stats/UsageStatsManagerServer;->mChannelNum:I

    .line 356
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :cond_0
    :goto_1
    return-void

    .line 350
    .restart local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :cond_1
    iget-object v3, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v4, "uxip_channel_num"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    goto :goto_0

    .line 352
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v1

    .line 353
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_1
.end method

.method private requestUmid()V
    .locals 1

    .prologue
    .line 359
    iget-boolean v0, p0, Lcom/meizu/stats/UsageStatsManagerServer;->mOnline:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/meizu/stats/UsageStatsManagerServer;->mUpload:Z

    if-eqz v0, :cond_0

    .line 360
    iget-object v0, p0, Lcom/meizu/stats/UsageStatsManagerServer;->mUsageStatsUploader:Lcom/meizu/stats/UsageStatsUploader;

    invoke-virtual {v0}, Lcom/meizu/stats/UsageStatsUploader;->postRequestUmid()V

    .line 362
    :cond_0
    return-void
.end method


# virtual methods
.method public getSessionId(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 421
    iget-object v1, p0, Lcom/meizu/stats/UsageStatsManagerServer;->mPackageSession:Ljava/util/Map;

    if-nez v1, :cond_0

    .line 422
    const-string v1, "UsageStatsManagerServer"

    const-string v2, "null == mPackageSession, getSessionId will return null!"

    invoke-static {v1, v2}, Lcom/meizu/stats/UsageStatusLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 423
    const/4 v0, 0x0

    .line 427
    :goto_0
    return-object v0

    .line 425
    :cond_0
    iget-object v1, p0, Lcom/meizu/stats/UsageStatsManagerServer;->mPackageSession:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 426
    .local v0, "sessionId":Ljava/lang/String;
    const-string v1, "UsageStatsManagerServer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSessionId success, sessionId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/meizu/stats/UsageStatusLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onEvent(Lcom/meizu/stats/UsageStatsProxy$Event;)V
    .locals 3
    .param p1, "event"    # Lcom/meizu/stats/UsageStatsProxy$Event;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 167
    iget-object v1, p0, Lcom/meizu/stats/UsageStatsManagerServer;->mHandler:Lcom/meizu/stats/UsageStatsManagerServer$RecordHandler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, p1}, Lcom/meizu/stats/UsageStatsManagerServer$RecordHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 168
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/meizu/stats/UsageStatsManagerServer;->mHandler:Lcom/meizu/stats/UsageStatsManagerServer$RecordHandler;

    invoke-virtual {v1, v0}, Lcom/meizu/stats/UsageStatsManagerServer$RecordHandler;->sendMessage(Landroid/os/Message;)Z

    .line 169
    return-void
.end method

.method public onEventRealtime(Lcom/meizu/stats/UsageStatsProxy$Event;)V
    .locals 3
    .param p1, "event"    # Lcom/meizu/stats/UsageStatsProxy$Event;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 172
    iget-object v1, p0, Lcom/meizu/stats/UsageStatsManagerServer;->mHandler:Lcom/meizu/stats/UsageStatsManagerServer$RecordHandler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, p1}, Lcom/meizu/stats/UsageStatsManagerServer$RecordHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 173
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/meizu/stats/UsageStatsManagerServer;->mHandler:Lcom/meizu/stats/UsageStatsManagerServer$RecordHandler;

    invoke-virtual {v1, v0}, Lcom/meizu/stats/UsageStatsManagerServer$RecordHandler;->sendMessage(Landroid/os/Message;)Z

    .line 174
    return-void
.end method

.method public onPage(Ljava/lang/String;ZLjava/lang/String;J)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "start"    # Z
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "time"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 153
    invoke-static {p3}, Lcom/meizu/experiencedatasync/util/Utils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 164
    :goto_0
    return-void

    .line 156
    :cond_0
    const/4 v0, 0x0

    .line 157
    .local v0, "msg":Landroid/os/Message;
    new-instance v1, Lcom/meizu/stats/UsageStatsManagerServer$Page;

    invoke-direct {v1, p1, p3, p4, p5}, Lcom/meizu/stats/UsageStatsManagerServer$Page;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    .line 158
    .local v1, "page":Lcom/meizu/stats/UsageStatsManagerServer$Page;
    if-eqz p2, :cond_1

    .line 159
    iget-object v2, p0, Lcom/meizu/stats/UsageStatsManagerServer;->mHandler:Lcom/meizu/stats/UsageStatsManagerServer$RecordHandler;

    const/4 v3, 0x3

    invoke-virtual {v2, v3, v1}, Lcom/meizu/stats/UsageStatsManagerServer$RecordHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 163
    :goto_1
    iget-object v2, p0, Lcom/meizu/stats/UsageStatsManagerServer;->mHandler:Lcom/meizu/stats/UsageStatsManagerServer$RecordHandler;

    invoke-virtual {v2, v0}, Lcom/meizu/stats/UsageStatsManagerServer$RecordHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 161
    :cond_1
    iget-object v2, p0, Lcom/meizu/stats/UsageStatsManagerServer;->mHandler:Lcom/meizu/stats/UsageStatsManagerServer$RecordHandler;

    const/4 v3, 0x4

    invoke-virtual {v2, v3, v1}, Lcom/meizu/stats/UsageStatsManagerServer$RecordHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    goto :goto_1
.end method

.method public setSource(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "source"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 431
    sget-object v1, Lcom/meizu/stats/UsageStatsManagerServer;->SOURCE:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 432
    sput-object p1, Lcom/meizu/stats/UsageStatsManagerServer;->SOURCE:Ljava/lang/String;

    .line 433
    iget-object v1, p0, Lcom/meizu/stats/UsageStatsManagerServer;->mPackageSession:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 434
    .local v0, "sessionId":Ljava/lang/String;
    iget-object v1, p0, Lcom/meizu/stats/UsageStatsManagerServer;->mUsageStatsProviderHelper:Lcom/meizu/stats/UsageStatsProviderHelper;

    invoke-virtual {v1, p1, v0}, Lcom/meizu/stats/UsageStatsProviderHelper;->updateSource(Ljava/lang/String;Ljava/lang/String;)V

    .line 436
    .end local v0    # "sessionId":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public setUploaded(Z)V
    .locals 2
    .param p1, "upload"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 413
    iget-boolean v0, p0, Lcom/meizu/stats/UsageStatsManagerServer;->mOnline:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/meizu/stats/UsageStatsManagerServer;->mUpload:Z

    if-eq v0, p1, :cond_0

    .line 414
    iput-boolean p1, p0, Lcom/meizu/stats/UsageStatsManagerServer;->mUpload:Z

    .line 415
    iget-object v0, p0, Lcom/meizu/stats/UsageStatsManagerServer;->mUsageStatsUploader:Lcom/meizu/stats/UsageStatsUploader;

    iget-boolean v1, p0, Lcom/meizu/stats/UsageStatsManagerServer;->mUpload:Z

    invoke-virtual {v0, v1}, Lcom/meizu/stats/UsageStatsUploader;->setUploaded(Z)V

    .line 417
    :cond_0
    return-void
.end method
