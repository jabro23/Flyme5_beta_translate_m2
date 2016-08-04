.class Lcom/android/providers/downloads/ui/DownloadActivity$18;
.super Ljava/lang/Object;
.source "DownloadActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/providers/downloads/ui/DownloadActivity;->deleteComleteDownloads()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/providers/downloads/ui/DownloadActivity;

.field final synthetic val$mCompleteIdsClone:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/android/providers/downloads/ui/DownloadActivity;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 1718
    iput-object p1, p0, Lcom/android/providers/downloads/ui/DownloadActivity$18;->this$0:Lcom/android/providers/downloads/ui/DownloadActivity;

    iput-object p2, p0, Lcom/android/providers/downloads/ui/DownloadActivity$18;->val$mCompleteIdsClone:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x3

    .line 1724
    :try_start_0
    iget-object v2, p0, Lcom/android/providers/downloads/ui/DownloadActivity$18;->this$0:Lcom/android/providers/downloads/ui/DownloadActivity;

    # getter for: Lcom/android/providers/downloads/ui/DownloadActivity;->mDownloadListHandler:Lcom/android/providers/downloads/ui/DownloadActivity$DownloadListHandler;
    invoke-static {v2}, Lcom/android/providers/downloads/ui/DownloadActivity;->access$2300(Lcom/android/providers/downloads/ui/DownloadActivity;)Lcom/android/providers/downloads/ui/DownloadActivity$DownloadListHandler;

    move-result-object v2

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/android/providers/downloads/ui/DownloadActivity$18;->this$0:Lcom/android/providers/downloads/ui/DownloadActivity;

    const v5, 0x7f08003d

    invoke-virtual {v4, v5}, Lcom/android/providers/downloads/ui/DownloadActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/android/providers/downloads/ui/DownloadActivity$DownloadListHandler;->sendResult(ILjava/lang/Object;)V
    invoke-static {v2, v3, v4}, Lcom/android/providers/downloads/ui/DownloadActivity$DownloadListHandler;->access$2000(Lcom/android/providers/downloads/ui/DownloadActivity$DownloadListHandler;ILjava/lang/Object;)V

    .line 1726
    iget-object v2, p0, Lcom/android/providers/downloads/ui/DownloadActivity$18;->val$mCompleteIdsClone:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 1727
    .local v1, "id":Ljava/lang/Long;
    iget-object v2, p0, Lcom/android/providers/downloads/ui/DownloadActivity$18;->this$0:Lcom/android/providers/downloads/ui/DownloadActivity;

    # getter for: Lcom/android/providers/downloads/ui/DownloadActivity;->mDownloadManager:Landroid/app/DownloadManager;
    invoke-static {v2}, Lcom/android/providers/downloads/ui/DownloadActivity;->access$2500(Lcom/android/providers/downloads/ui/DownloadActivity;)Landroid/app/DownloadManager;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [J

    const/4 v4, 0x0

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    aput-wide v6, v3, v4

    invoke-virtual {v2, v3}, Landroid/app/DownloadManager;->remove([J)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1730
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "id":Ljava/lang/Long;
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/android/providers/downloads/ui/DownloadActivity$18;->this$0:Lcom/android/providers/downloads/ui/DownloadActivity;

    # getter for: Lcom/android/providers/downloads/ui/DownloadActivity;->mDownloadListHandler:Lcom/android/providers/downloads/ui/DownloadActivity$DownloadListHandler;
    invoke-static {v3}, Lcom/android/providers/downloads/ui/DownloadActivity;->access$2300(Lcom/android/providers/downloads/ui/DownloadActivity;)Lcom/android/providers/downloads/ui/DownloadActivity$DownloadListHandler;

    move-result-object v3

    # invokes: Lcom/android/providers/downloads/ui/DownloadActivity$DownloadListHandler;->sendResult(ILjava/lang/Object;)V
    invoke-static {v3, v8, v9}, Lcom/android/providers/downloads/ui/DownloadActivity$DownloadListHandler;->access$2000(Lcom/android/providers/downloads/ui/DownloadActivity$DownloadListHandler;ILjava/lang/Object;)V

    .line 1733
    iget-object v3, p0, Lcom/android/providers/downloads/ui/DownloadActivity$18;->val$mCompleteIdsClone:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    .line 1734
    iget-object v3, p0, Lcom/android/providers/downloads/ui/DownloadActivity$18;->val$mCompleteIdsClone:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    :cond_0
    throw v2

    .line 1730
    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_1
    iget-object v2, p0, Lcom/android/providers/downloads/ui/DownloadActivity$18;->this$0:Lcom/android/providers/downloads/ui/DownloadActivity;

    # getter for: Lcom/android/providers/downloads/ui/DownloadActivity;->mDownloadListHandler:Lcom/android/providers/downloads/ui/DownloadActivity$DownloadListHandler;
    invoke-static {v2}, Lcom/android/providers/downloads/ui/DownloadActivity;->access$2300(Lcom/android/providers/downloads/ui/DownloadActivity;)Lcom/android/providers/downloads/ui/DownloadActivity$DownloadListHandler;

    move-result-object v2

    # invokes: Lcom/android/providers/downloads/ui/DownloadActivity$DownloadListHandler;->sendResult(ILjava/lang/Object;)V
    invoke-static {v2, v8, v9}, Lcom/android/providers/downloads/ui/DownloadActivity$DownloadListHandler;->access$2000(Lcom/android/providers/downloads/ui/DownloadActivity$DownloadListHandler;ILjava/lang/Object;)V

    .line 1733
    iget-object v2, p0, Lcom/android/providers/downloads/ui/DownloadActivity$18;->val$mCompleteIdsClone:Ljava/util/ArrayList;

    if-eqz v2, :cond_2

    .line 1734
    iget-object v2, p0, Lcom/android/providers/downloads/ui/DownloadActivity$18;->val$mCompleteIdsClone:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1737
    :cond_2
    return-void
.end method
