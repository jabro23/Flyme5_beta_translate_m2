.class Lcom/meizu/common/util/SDCardHelper$SDCardStateObservable;
.super Landroid/database/Observable;
.source "SDCardHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/common/util/SDCardHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SDCardStateObservable"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/database/Observable",
        "<",
        "Lcom/meizu/common/util/SDCardHelper$SDCardStateObserver;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 103
    invoke-direct {p0}, Landroid/database/Observable;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/meizu/common/util/SDCardHelper$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/meizu/common/util/SDCardHelper$1;

    .prologue
    .line 103
    invoke-direct {p0}, Lcom/meizu/common/util/SDCardHelper$SDCardStateObservable;-><init>()V

    return-void
.end method


# virtual methods
.method public notifyStateChanged(Landroid/content/Intent;Z)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "mounted"    # Z

    .prologue
    .line 107
    iget-object v2, p0, Lcom/meizu/common/util/SDCardHelper$SDCardStateObservable;->mObservers:Ljava/util/ArrayList;

    monitor-enter v2

    .line 108
    :try_start_0
    iget-object v1, p0, Lcom/meizu/common/util/SDCardHelper$SDCardStateObservable;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 109
    iget-object v1, p0, Lcom/meizu/common/util/SDCardHelper$SDCardStateObservable;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/meizu/common/util/SDCardHelper$SDCardStateObserver;

    invoke-interface {v1, p1, p2}, Lcom/meizu/common/util/SDCardHelper$SDCardStateObserver;->onChanged(Landroid/content/Intent;Z)V

    .line 108
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 111
    :cond_0
    monitor-exit v2

    .line 112
    return-void

    .line 111
    .end local v0    # "i":I
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
