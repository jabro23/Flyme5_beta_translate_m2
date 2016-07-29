.class public Lcom/android/providers/downloads/ui/EventAgentUtils;
.super Ljava/lang/Object;
.source "EventAgentUtils.java"


# static fields
.field public static DEBUG:Z

.field public static SWITCHER:Z

.field public static TAG:Ljava/lang/String;

.field private static mUsageStatsProxy:Lcom/meizu/stats/UsageStatsProxy;

.field private static sEventAgentHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 14
    const-string v1, "EventAgentUtils"

    sput-object v1, Lcom/android/providers/downloads/ui/EventAgentUtils;->TAG:Ljava/lang/String;

    .line 15
    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/providers/downloads/ui/EventAgentUtils;->DEBUG:Z

    .line 16
    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/providers/downloads/ui/EventAgentUtils;->SWITCHER:Z

    .line 54
    new-instance v0, Landroid/os/HandlerThread;

    sget-object v1, Lcom/android/providers/downloads/ui/EventAgentUtils;->TAG:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 55
    .local v0, "t":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 56
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v1, Lcom/android/providers/downloads/ui/EventAgentUtils;->sEventAgentHandler:Landroid/os/Handler;

    .line 57
    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;)Lcom/meizu/stats/UsageStatsProxy;
    .locals 1
    .param p0, "x0"    # Landroid/content/Context;

    .prologue
    .line 13
    invoke-static {p0}, Lcom/android/providers/downloads/ui/EventAgentUtils;->getUsageStatsProxyInstance(Landroid/content/Context;)Lcom/meizu/stats/UsageStatsProxy;

    move-result-object v0

    return-object v0
.end method

.method private static getUsageStatsProxyInstance(Landroid/content/Context;)Lcom/meizu/stats/UsageStatsProxy;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 62
    sget-object v0, Lcom/android/providers/downloads/ui/EventAgentUtils;->mUsageStatsProxy:Lcom/meizu/stats/UsageStatsProxy;

    if-nez v0, :cond_0

    .line 63
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/providers/downloads/ui/PermissionHelper;->isPermissionOk(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 64
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/meizu/stats/UsageStatsProxy;->getOnlineInstance(Landroid/content/Context;Z)Lcom/meizu/stats/UsageStatsProxy;

    move-result-object v0

    sput-object v0, Lcom/android/providers/downloads/ui/EventAgentUtils;->mUsageStatsProxy:Lcom/meizu/stats/UsageStatsProxy;

    .line 69
    :cond_0
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/providers/downloads/ui/EventAgentUtils;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_context_packagename"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    sget-object v0, Lcom/android/providers/downloads/ui/EventAgentUtils;->mUsageStatsProxy:Lcom/meizu/stats/UsageStatsProxy;

    return-object v0

    .line 66
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/meizu/stats/UsageStatsProxy;->getOnlineInstance(Landroid/content/Context;Z)Lcom/meizu/stats/UsageStatsProxy;

    move-result-object v0

    sput-object v0, Lcom/android/providers/downloads/ui/EventAgentUtils;->mUsageStatsProxy:Lcom/meizu/stats/UsageStatsProxy;

    goto :goto_0
.end method

.method public static onAction(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "actionName"    # Ljava/lang/String;

    .prologue
    .line 174
    new-instance v0, Lcom/android/providers/downloads/ui/EventAgentUtils$7;

    invoke-direct {v0, p1, p0}, Lcom/android/providers/downloads/ui/EventAgentUtils$7;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    .line 183
    .local v0, "r":Ljava/lang/Runnable;
    sget-object v1, Lcom/android/providers/downloads/ui/EventAgentUtils;->sEventAgentHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 184
    return-void
.end method

.method public static onAction(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "actionName"    # Ljava/lang/String;
    .param p2, "actionProperty"    # Ljava/lang/String;

    .prologue
    .line 105
    new-instance v0, Lcom/android/providers/downloads/ui/EventAgentUtils$3;

    invoke-direct {v0, p1, p2, p0}, Lcom/android/providers/downloads/ui/EventAgentUtils$3;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 116
    .local v0, "r":Ljava/lang/Runnable;
    sget-object v1, Lcom/android/providers/downloads/ui/EventAgentUtils;->sEventAgentHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 117
    return-void
.end method

.method public static onPageStart(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "page"    # Ljava/lang/String;

    .prologue
    .line 75
    new-instance v0, Lcom/android/providers/downloads/ui/EventAgentUtils$1;

    invoke-direct {v0, p1, p0}, Lcom/android/providers/downloads/ui/EventAgentUtils$1;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    .line 86
    .local v0, "r":Ljava/lang/Runnable;
    sget-object v1, Lcom/android/providers/downloads/ui/EventAgentUtils;->sEventAgentHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 87
    return-void
.end method

.method public static onPageStop(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "page"    # Ljava/lang/String;

    .prologue
    .line 90
    new-instance v0, Lcom/android/providers/downloads/ui/EventAgentUtils$2;

    invoke-direct {v0, p1, p0}, Lcom/android/providers/downloads/ui/EventAgentUtils$2;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    .line 101
    .local v0, "r":Ljava/lang/Runnable;
    sget-object v1, Lcom/android/providers/downloads/ui/EventAgentUtils;->sEventAgentHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 102
    return-void
.end method
