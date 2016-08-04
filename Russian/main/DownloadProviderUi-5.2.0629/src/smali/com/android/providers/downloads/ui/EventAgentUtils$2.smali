.class final Lcom/android/providers/downloads/ui/EventAgentUtils$2;
.super Ljava/lang/Object;
.source "EventAgentUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/providers/downloads/ui/EventAgentUtils;->onPageStop(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$page:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 90
    iput-object p1, p0, Lcom/android/providers/downloads/ui/EventAgentUtils$2;->val$page:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/providers/downloads/ui/EventAgentUtils$2;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/providers/downloads/ui/EventAgentUtils$2;->val$page:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 99
    :goto_0
    return-void

    .line 96
    :cond_0
    sget-boolean v0, Lcom/android/providers/downloads/ui/EventAgentUtils;->DEBUG:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/providers/downloads/ui/EventAgentUtils;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stopPage:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/providers/downloads/ui/EventAgentUtils$2;->val$page:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    :cond_1
    iget-object v0, p0, Lcom/android/providers/downloads/ui/EventAgentUtils$2;->val$context:Landroid/content/Context;

    # invokes: Lcom/android/providers/downloads/ui/EventAgentUtils;->getUsageStatsProxyInstance(Landroid/content/Context;)Lcom/meizu/stats/UsageStatsProxy;
    invoke-static {v0}, Lcom/android/providers/downloads/ui/EventAgentUtils;->access$000(Landroid/content/Context;)Lcom/meizu/stats/UsageStatsProxy;

    move-result-object v0

    iget-object v1, p0, Lcom/android/providers/downloads/ui/EventAgentUtils$2;->val$page:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/meizu/stats/UsageStatsProxy;->onPageStop(Ljava/lang/String;)V

    goto :goto_0
.end method
