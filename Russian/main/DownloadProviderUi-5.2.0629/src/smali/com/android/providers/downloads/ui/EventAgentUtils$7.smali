.class final Lcom/android/providers/downloads/ui/EventAgentUtils$7;
.super Ljava/lang/Object;
.source "EventAgentUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/providers/downloads/ui/EventAgentUtils;->onAction(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$actionName:Ljava/lang/String;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 174
    iput-object p1, p0, Lcom/android/providers/downloads/ui/EventAgentUtils$7;->val$actionName:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/providers/downloads/ui/EventAgentUtils$7;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 177
    sget-boolean v0, Lcom/android/providers/downloads/ui/EventAgentUtils;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/providers/downloads/ui/EventAgentUtils;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAction,actionName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/providers/downloads/ui/EventAgentUtils$7;->val$actionName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    :cond_0
    iget-object v0, p0, Lcom/android/providers/downloads/ui/EventAgentUtils$7;->val$context:Landroid/content/Context;

    # invokes: Lcom/android/providers/downloads/ui/EventAgentUtils;->getUsageStatsProxyInstance(Landroid/content/Context;)Lcom/meizu/stats/UsageStatsProxy;
    invoke-static {v0}, Lcom/android/providers/downloads/ui/EventAgentUtils;->access$000(Landroid/content/Context;)Lcom/meizu/stats/UsageStatsProxy;

    move-result-object v0

    iget-object v1, p0, Lcom/android/providers/downloads/ui/EventAgentUtils$7;->val$actionName:Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, ""

    invoke-virtual {v0, v1, v2, v3}, Lcom/meizu/stats/UsageStatsProxy;->onEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    return-void
.end method
