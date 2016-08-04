.class public Lcom/meizu/stats/UsageStatsProxy;
.super Ljava/lang/Object;
.source "UsageStatsProxy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/stats/UsageStatsProxy$Event;
    }
.end annotation


# static fields
.field private static sLock:Ljava/lang/Object;

.field private static volatile sUsageStatsProxy:Lcom/meizu/stats/UsageStatsProxy;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mOnline:Z

.field private mPackageName:Ljava/lang/String;

.field private mPackageVersion:Ljava/lang/String;

.field private mSharedPreferences:Landroid/content/SharedPreferences;

.field private mUsageStatsManager:Lcom/meizu/stats/UsageStatsManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 64
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/meizu/stats/UsageStatsProxy;->sLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;ZZ)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "online"    # Z
    .param p3, "upload"    # Z

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    if-nez p1, :cond_0

    .line 74
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "The context is null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 77
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xf

    if-gt v1, v2, :cond_1

    .line 94
    :goto_0
    return-void

    .line 82
    :cond_1
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/stats/UsageStatsProxy;->mContext:Landroid/content/Context;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    :goto_1
    iget-object v1, p0, Lcom/meizu/stats/UsageStatsProxy;->mContext:Landroid/content/Context;

    if-nez v1, :cond_2

    .line 87
    iput-object p1, p0, Lcom/meizu/stats/UsageStatsProxy;->mContext:Landroid/content/Context;

    .line 89
    :cond_2
    iget-object v1, p0, Lcom/meizu/stats/UsageStatsProxy;->mContext:Landroid/content/Context;

    const-string v2, "com.meizu.stats"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/stats/UsageStatsProxy;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 90
    iget-object v1, p0, Lcom/meizu/stats/UsageStatsProxy;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/stats/UsageStatsProxy;->mPackageName:Ljava/lang/String;

    .line 91
    iput-boolean p2, p0, Lcom/meizu/stats/UsageStatsProxy;->mOnline:Z

    .line 92
    new-instance v1, Lcom/meizu/stats/UsageStatsManager;

    iget-object v2, p0, Lcom/meizu/stats/UsageStatsProxy;->mContext:Landroid/content/Context;

    iget-boolean v3, p0, Lcom/meizu/stats/UsageStatsProxy;->mOnline:Z

    invoke-direct {v1, v2, v3, p3}, Lcom/meizu/stats/UsageStatsManager;-><init>(Landroid/content/Context;ZZ)V

    iput-object v1, p0, Lcom/meizu/stats/UsageStatsProxy;->mUsageStatsManager:Lcom/meizu/stats/UsageStatsManager;

    .line 93
    iget-object v1, p0, Lcom/meizu/stats/UsageStatsProxy;->mPackageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/meizu/stats/UsageStatsProxy;->mContext:Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/meizu/experiencedatasync/util/Utils;->getPackageVersion(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/stats/UsageStatsProxy;->mPackageVersion:Ljava/lang/String;

    goto :goto_0

    .line 83
    :catch_0
    move-exception v0

    .line 84
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private static getInstance(Landroid/content/Context;ZZ)Lcom/meizu/stats/UsageStatsProxy;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "online"    # Z
    .param p2, "upload"    # Z

    .prologue
    .line 115
    sget-object v0, Lcom/meizu/stats/UsageStatsProxy;->sUsageStatsProxy:Lcom/meizu/stats/UsageStatsProxy;

    if-nez v0, :cond_1

    .line 116
    sget-object v1, Lcom/meizu/stats/UsageStatsProxy;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 117
    :try_start_0
    sget-object v0, Lcom/meizu/stats/UsageStatsProxy;->sUsageStatsProxy:Lcom/meizu/stats/UsageStatsProxy;

    if-nez v0, :cond_0

    .line 118
    new-instance v0, Lcom/meizu/stats/UsageStatsProxy;

    invoke-direct {v0, p0, p1, p2}, Lcom/meizu/stats/UsageStatsProxy;-><init>(Landroid/content/Context;ZZ)V

    sput-object v0, Lcom/meizu/stats/UsageStatsProxy;->sUsageStatsProxy:Lcom/meizu/stats/UsageStatsProxy;

    .line 120
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 122
    :cond_1
    sget-object v0, Lcom/meizu/stats/UsageStatsProxy;->sUsageStatsProxy:Lcom/meizu/stats/UsageStatsProxy;

    return-object v0

    .line 120
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static getOnlineInstance(Landroid/content/Context;Z)Lcom/meizu/stats/UsageStatsProxy;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "upload"    # Z

    .prologue
    .line 133
    const/4 v0, 0x1

    invoke-static {p0, v0, p1}, Lcom/meizu/stats/UsageStatsProxy;->getInstance(Landroid/content/Context;ZZ)Lcom/meizu/stats/UsageStatsProxy;

    move-result-object v0

    return-object v0
.end method

.method private static isEmpty(Ljava/lang/String;)Z
    .locals 2
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    .line 332
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v1, v0, :cond_1

    .line 335
    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 15
    .param p1, "eventName"    # Ljava/lang/String;
    .param p2, "pageName"    # Ljava/lang/String;
    .param p3, "property"    # Ljava/lang/String;

    .prologue
    .line 198
    iget-object v2, p0, Lcom/meizu/stats/UsageStatsProxy;->mUsageStatsManager:Lcom/meizu/stats/UsageStatsManager;

    if-nez v2, :cond_1

    .line 214
    :cond_0
    :goto_0
    return-void

    .line 201
    :cond_1
    iget-boolean v2, p0, Lcom/meizu/stats/UsageStatsProxy;->mOnline:Z

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/meizu/stats/UsageStatsProxy;->mUsageStatsManager:Lcom/meizu/stats/UsageStatsManager;

    invoke-virtual {v2}, Lcom/meizu/stats/UsageStatsManager;->isRecording()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 204
    :cond_2
    invoke-static/range {p1 .. p1}, Lcom/meizu/stats/UsageStatsProxy;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 207
    const/4 v11, 0x0

    .line 208
    .local v11, "properties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static/range {p3 .. p3}, Lcom/meizu/stats/UsageStatsProxy;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 209
    new-instance v11, Ljava/util/HashMap;

    .end local v11    # "properties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    .line 210
    .restart local v11    # "properties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "value"

    move-object/from16 v0, p3

    invoke-interface {v11, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    :cond_3
    iget-object v2, p0, Lcom/meizu/stats/UsageStatsProxy;->mUsageStatsManager:Lcom/meizu/stats/UsageStatsManager;

    new-instance v3, Lcom/meizu/stats/UsageStatsProxy$Event;

    const/4 v5, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/meizu/stats/UsageStatsProxy;->mPackageName:Ljava/lang/String;

    sget-object v12, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    iget-object v13, p0, Lcom/meizu/stats/UsageStatsProxy;->mPackageVersion:Ljava/lang/String;

    sget-object v14, Lcom/meizu/stats/UsageStatsManagerServer;->SOURCE:Ljava/lang/String;

    move-object/from16 v4, p1

    move-object/from16 v10, p2

    invoke-direct/range {v3 .. v14}, Lcom/meizu/stats/UsageStatsProxy$Event;-><init>(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/meizu/stats/UsageStatsManager;->onEvent(Lcom/meizu/stats/UsageStatsProxy$Event;)V

    goto :goto_0
.end method

.method public onEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 13
    .param p1, "eventName"    # Ljava/lang/String;
    .param p2, "pageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 224
    .local p3, "properties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/meizu/stats/UsageStatsProxy;->mUsageStatsManager:Lcom/meizu/stats/UsageStatsManager;

    if-nez v0, :cond_1

    .line 235
    :cond_0
    :goto_0
    return-void

    .line 227
    :cond_1
    iget-boolean v0, p0, Lcom/meizu/stats/UsageStatsProxy;->mOnline:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/meizu/stats/UsageStatsProxy;->mUsageStatsManager:Lcom/meizu/stats/UsageStatsManager;

    invoke-virtual {v0}, Lcom/meizu/stats/UsageStatsManager;->isRecording()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 230
    :cond_2
    invoke-static {p1}, Lcom/meizu/stats/UsageStatsProxy;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 233
    iget-object v0, p0, Lcom/meizu/stats/UsageStatsProxy;->mUsageStatsManager:Lcom/meizu/stats/UsageStatsManager;

    new-instance v1, Lcom/meizu/stats/UsageStatsProxy$Event;

    const/4 v3, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/meizu/stats/UsageStatsProxy;->mPackageName:Ljava/lang/String;

    sget-object v10, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    iget-object v11, p0, Lcom/meizu/stats/UsageStatsProxy;->mPackageVersion:Ljava/lang/String;

    sget-object v12, Lcom/meizu/stats/UsageStatsManagerServer;->SOURCE:Ljava/lang/String;

    move-object v2, p1

    move-object v8, p2

    move-object/from16 v9, p3

    invoke-direct/range {v1 .. v12}, Lcom/meizu/stats/UsageStatsProxy$Event;-><init>(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/meizu/stats/UsageStatsManager;->onEvent(Lcom/meizu/stats/UsageStatsProxy$Event;)V

    goto :goto_0
.end method

.method public onPageStart(Ljava/lang/String;)V
    .locals 6
    .param p1, "pageName"    # Ljava/lang/String;

    .prologue
    .line 166
    iget-object v0, p0, Lcom/meizu/stats/UsageStatsProxy;->mUsageStatsManager:Lcom/meizu/stats/UsageStatsManager;

    if-nez v0, :cond_1

    .line 173
    :cond_0
    :goto_0
    return-void

    .line 169
    :cond_1
    iget-boolean v0, p0, Lcom/meizu/stats/UsageStatsProxy;->mOnline:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/meizu/stats/UsageStatsProxy;->mUsageStatsManager:Lcom/meizu/stats/UsageStatsManager;

    invoke-virtual {v0}, Lcom/meizu/stats/UsageStatsManager;->isRecording()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 172
    :cond_2
    iget-object v0, p0, Lcom/meizu/stats/UsageStatsProxy;->mUsageStatsManager:Lcom/meizu/stats/UsageStatsManager;

    iget-object v1, p0, Lcom/meizu/stats/UsageStatsProxy;->mPackageName:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Lcom/meizu/stats/UsageStatsManager;->onPage(Ljava/lang/String;ZLjava/lang/String;J)V

    goto :goto_0
.end method

.method public onPageStop(Ljava/lang/String;)V
    .locals 6
    .param p1, "pageName"    # Ljava/lang/String;

    .prologue
    .line 181
    iget-object v0, p0, Lcom/meizu/stats/UsageStatsProxy;->mUsageStatsManager:Lcom/meizu/stats/UsageStatsManager;

    if-nez v0, :cond_1

    .line 188
    :cond_0
    :goto_0
    return-void

    .line 184
    :cond_1
    iget-boolean v0, p0, Lcom/meizu/stats/UsageStatsProxy;->mOnline:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/meizu/stats/UsageStatsProxy;->mUsageStatsManager:Lcom/meizu/stats/UsageStatsManager;

    invoke-virtual {v0}, Lcom/meizu/stats/UsageStatsManager;->isRecording()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 187
    :cond_2
    iget-object v0, p0, Lcom/meizu/stats/UsageStatsProxy;->mUsageStatsManager:Lcom/meizu/stats/UsageStatsManager;

    iget-object v1, p0, Lcom/meizu/stats/UsageStatsProxy;->mPackageName:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Lcom/meizu/stats/UsageStatsManager;->onPage(Ljava/lang/String;ZLjava/lang/String;J)V

    goto :goto_0
.end method
