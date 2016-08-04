.class public Lcom/android/providers/downloads/ui/ThumbnailExecutor;
.super Ljava/lang/Thread;
.source "ThumbnailExecutor.java"

# interfaces
.implements Ljava/util/concurrent/Executor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/providers/downloads/ui/ThumbnailExecutor$Preemptable;
    }
.end annotation


# static fields
.field private static sExecutors:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/providers/downloads/ui/ThumbnailExecutor;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mNonPreemptingExecutor:Ljava/util/concurrent/Executor;

.field private final mPreemptable:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/providers/downloads/ui/ThumbnailExecutor$Preemptable;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mQueue:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/providers/downloads/ui/ThumbnailExecutor;->sExecutors:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 50
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/android/providers/downloads/ui/ThumbnailExecutor;->mQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/providers/downloads/ui/ThumbnailExecutor;->mPreemptable:Ljava/util/ArrayList;

    .line 83
    new-instance v0, Lcom/android/providers/downloads/ui/ThumbnailExecutor$1;

    invoke-direct {v0, p0}, Lcom/android/providers/downloads/ui/ThumbnailExecutor$1;-><init>(Lcom/android/providers/downloads/ui/ThumbnailExecutor;)V

    iput-object v0, p0, Lcom/android/providers/downloads/ui/ThumbnailExecutor;->mNonPreemptingExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method

.method static synthetic access$000(Lcom/android/providers/downloads/ui/ThumbnailExecutor;Ljava/lang/Runnable;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/providers/downloads/ui/ThumbnailExecutor;
    .param p1, "x1"    # Ljava/lang/Runnable;

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/android/providers/downloads/ui/ThumbnailExecutor;->checkNotNull(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/providers/downloads/ui/ThumbnailExecutor;)Ljava/util/concurrent/LinkedBlockingQueue;
    .locals 1
    .param p0, "x0"    # Lcom/android/providers/downloads/ui/ThumbnailExecutor;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/android/providers/downloads/ui/ThumbnailExecutor;->mQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    return-object v0
.end method

.method private checkNotNull(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "command"    # Ljava/lang/Runnable;

    .prologue
    .line 115
    if-nez p1, :cond_0

    .line 116
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 118
    :cond_0
    return-void
.end method

.method public static forChannel(Ljava/lang/String;)Lcom/android/providers/downloads/ui/ThumbnailExecutor;
    .locals 4
    .param p0, "channel"    # Ljava/lang/String;

    .prologue
    .line 34
    sget-object v2, Lcom/android/providers/downloads/ui/ThumbnailExecutor;->sExecutors:Ljava/util/HashMap;

    monitor-enter v2

    .line 35
    :try_start_0
    sget-object v1, Lcom/android/providers/downloads/ui/ThumbnailExecutor;->sExecutors:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/providers/downloads/ui/ThumbnailExecutor;

    .line 36
    .local v0, "executor":Lcom/android/providers/downloads/ui/ThumbnailExecutor;
    if-nez v0, :cond_0

    .line 37
    new-instance v0, Lcom/android/providers/downloads/ui/ThumbnailExecutor;

    .end local v0    # "executor":Lcom/android/providers/downloads/ui/ThumbnailExecutor;
    invoke-direct {v0}, Lcom/android/providers/downloads/ui/ThumbnailExecutor;-><init>()V

    .line 38
    .restart local v0    # "executor":Lcom/android/providers/downloads/ui/ThumbnailExecutor;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "LoadExecutor: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/providers/downloads/ui/ThumbnailExecutor;->setName(Ljava/lang/String;)V

    .line 39
    invoke-virtual {v0}, Lcom/android/providers/downloads/ui/ThumbnailExecutor;->start()V

    .line 40
    sget-object v1, Lcom/android/providers/downloads/ui/ThumbnailExecutor;->sExecutors:Ljava/util/HashMap;

    invoke-virtual {v1, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    :cond_0
    monitor-exit v2

    return-object v0

    .line 43
    .end local v0    # "executor":Lcom/android/providers/downloads/ui/ThumbnailExecutor;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private preempt()V
    .locals 6

    .prologue
    .line 55
    iget-object v5, p0, Lcom/android/providers/downloads/ui/ThumbnailExecutor;->mPreemptable:Ljava/util/ArrayList;

    monitor-enter v5

    .line 56
    const/4 v0, 0x0

    .line 57
    .local v0, "count":I
    :try_start_0
    iget-object v4, p0, Lcom/android/providers/downloads/ui/ThumbnailExecutor;->mPreemptable:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    .line 58
    .local v3, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/android/providers/downloads/ui/ThumbnailExecutor$Preemptable;>;"
    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/providers/downloads/ui/ThumbnailExecutor$Preemptable;

    .line 59
    .local v2, "p":Lcom/android/providers/downloads/ui/ThumbnailExecutor$Preemptable;
    if-eqz v2, :cond_0

    .line 60
    add-int/lit8 v0, v0, 0x1

    .line 61
    invoke-interface {v2}, Lcom/android/providers/downloads/ui/ThumbnailExecutor$Preemptable;->preempt()V

    goto :goto_0

    .line 65
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "p":Lcom/android/providers/downloads/ui/ThumbnailExecutor$Preemptable;
    .end local v3    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/android/providers/downloads/ui/ThumbnailExecutor$Preemptable;>;"
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 64
    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_1
    :try_start_1
    iget-object v4, p0, Lcom/android/providers/downloads/ui/ThumbnailExecutor;->mPreemptable:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 65
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 66
    return-void
.end method


# virtual methods
.method public varargs execute(Landroid/os/AsyncTask;[Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/os/AsyncTask",
            "<TP;**>;[TP;)V"
        }
    .end annotation

    .prologue
    .line 70
    .local p1, "task":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<TP;**>;"
    .local p2, "params":[Ljava/lang/Object;, "[TP;"
    instance-of v1, p1, Lcom/android/providers/downloads/ui/ThumbnailExecutor$Preemptable;

    if-eqz v1, :cond_0

    .line 71
    iget-object v2, p0, Lcom/android/providers/downloads/ui/ThumbnailExecutor;->mPreemptable:Ljava/util/ArrayList;

    monitor-enter v2

    .line 72
    :try_start_0
    iget-object v3, p0, Lcom/android/providers/downloads/ui/ThumbnailExecutor;->mPreemptable:Ljava/util/ArrayList;

    new-instance v4, Ljava/lang/ref/WeakReference;

    move-object v0, p1

    check-cast v0, Lcom/android/providers/downloads/ui/ThumbnailExecutor$Preemptable;

    move-object v1, v0

    invoke-direct {v4, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 73
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    iget-object v1, p0, Lcom/android/providers/downloads/ui/ThumbnailExecutor;->mNonPreemptingExecutor:Ljava/util/concurrent/Executor;

    invoke-virtual {p1, v1, p2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 78
    :goto_0
    return-void

    .line 73
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 76
    :cond_0
    invoke-virtual {p1, p0, p2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public execute(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "command"    # Ljava/lang/Runnable;

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/android/providers/downloads/ui/ThumbnailExecutor;->preempt()V

    .line 98
    invoke-direct {p0, p1}, Lcom/android/providers/downloads/ui/ThumbnailExecutor;->checkNotNull(Ljava/lang/Runnable;)V

    .line 99
    iget-object v0, p0, Lcom/android/providers/downloads/ui/ThumbnailExecutor;->mQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->add(Ljava/lang/Object;)Z

    .line 100
    return-void
.end method

.method public run()V
    .locals 2

    .prologue
    .line 106
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/android/providers/downloads/ui/ThumbnailExecutor;->mQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/LinkedBlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 107
    .local v0, "command":Ljava/lang/Runnable;
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 108
    .end local v0    # "command":Ljava/lang/Runnable;
    :catch_0
    move-exception v1

    goto :goto_0
.end method
