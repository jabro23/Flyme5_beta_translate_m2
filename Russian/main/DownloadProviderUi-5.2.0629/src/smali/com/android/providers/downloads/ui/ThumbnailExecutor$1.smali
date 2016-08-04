.class Lcom/android/providers/downloads/ui/ThumbnailExecutor$1;
.super Ljava/lang/Object;
.source "ThumbnailExecutor.java"

# interfaces
.implements Ljava/util/concurrent/Executor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/downloads/ui/ThumbnailExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/providers/downloads/ui/ThumbnailExecutor;


# direct methods
.method constructor <init>(Lcom/android/providers/downloads/ui/ThumbnailExecutor;)V
    .locals 0

    .prologue
    .line 83
    iput-object p1, p0, Lcom/android/providers/downloads/ui/ThumbnailExecutor$1;->this$0:Lcom/android/providers/downloads/ui/ThumbnailExecutor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "command"    # Ljava/lang/Runnable;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/providers/downloads/ui/ThumbnailExecutor$1;->this$0:Lcom/android/providers/downloads/ui/ThumbnailExecutor;

    # invokes: Lcom/android/providers/downloads/ui/ThumbnailExecutor;->checkNotNull(Ljava/lang/Runnable;)V
    invoke-static {v0, p1}, Lcom/android/providers/downloads/ui/ThumbnailExecutor;->access$000(Lcom/android/providers/downloads/ui/ThumbnailExecutor;Ljava/lang/Runnable;)V

    .line 87
    iget-object v0, p0, Lcom/android/providers/downloads/ui/ThumbnailExecutor$1;->this$0:Lcom/android/providers/downloads/ui/ThumbnailExecutor;

    # getter for: Lcom/android/providers/downloads/ui/ThumbnailExecutor;->mQueue:Ljava/util/concurrent/LinkedBlockingQueue;
    invoke-static {v0}, Lcom/android/providers/downloads/ui/ThumbnailExecutor;->access$100(Lcom/android/providers/downloads/ui/ThumbnailExecutor;)Ljava/util/concurrent/LinkedBlockingQueue;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->add(Ljava/lang/Object;)Z

    .line 88
    return-void
.end method
