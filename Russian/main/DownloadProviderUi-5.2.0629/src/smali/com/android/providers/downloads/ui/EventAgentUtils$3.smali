.class final Lcom/android/providers/downloads/ui/EventAgentUtils$3;
.super Ljava/lang/Object;
.source "EventAgentUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/providers/downloads/ui/EventAgentUtils;->onAction(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$actionName:Ljava/lang/String;

.field final synthetic val$actionProperty:Ljava/lang/String;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 105
    iput-object p1, p0, Lcom/android/providers/downloads/ui/EventAgentUtils$3;->val$actionName:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/providers/downloads/ui/EventAgentUtils$3;->val$actionProperty:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/providers/downloads/ui/EventAgentUtils$3;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 108
    sget-boolean v1, Lcom/android/providers/downloads/ui/EventAgentUtils;->DEBUG:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/providers/downloads/ui/EventAgentUtils;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "actionName:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/providers/downloads/ui/EventAgentUtils$3;->val$actionName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",actionProperty:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/providers/downloads/ui/EventAgentUtils$3;->val$actionProperty:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 112
    .local v0, "properties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "value"

    iget-object v2, p0, Lcom/android/providers/downloads/ui/EventAgentUtils$3;->val$actionProperty:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    iget-object v1, p0, Lcom/android/providers/downloads/ui/EventAgentUtils$3;->val$context:Landroid/content/Context;

    # invokes: Lcom/android/providers/downloads/ui/EventAgentUtils;->getUsageStatsProxyInstance(Landroid/content/Context;)Lcom/meizu/stats/UsageStatsProxy;
    invoke-static {v1}, Lcom/android/providers/downloads/ui/EventAgentUtils;->access$000(Landroid/content/Context;)Lcom/meizu/stats/UsageStatsProxy;

    move-result-object v1

    iget-object v2, p0, Lcom/android/providers/downloads/ui/EventAgentUtils$3;->val$actionName:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Lcom/meizu/stats/UsageStatsProxy;->onEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 114
    return-void
.end method
