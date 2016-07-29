.class Lcom/android/providers/downloads/ui/DownloadActivity$19;
.super Ljava/lang/Object;
.source "DownloadActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/providers/downloads/ui/DownloadActivity;->deleteCheckedItems(Lflyme/support/v7/widget/MzRecyclerView;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/providers/downloads/ui/DownloadActivity;

.field final synthetic val$delFromDiskFlag:Z

.field final synthetic val$ids:[J

.field final synthetic val$mCompleteIdsClone:Ljava/util/ArrayList;

.field final synthetic val$mIdsClone:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/android/providers/downloads/ui/DownloadActivity;Z[JLjava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 1750
    iput-object p1, p0, Lcom/android/providers/downloads/ui/DownloadActivity$19;->this$0:Lcom/android/providers/downloads/ui/DownloadActivity;

    iput-boolean p2, p0, Lcom/android/providers/downloads/ui/DownloadActivity$19;->val$delFromDiskFlag:Z

    iput-object p3, p0, Lcom/android/providers/downloads/ui/DownloadActivity$19;->val$ids:[J

    iput-object p4, p0, Lcom/android/providers/downloads/ui/DownloadActivity$19;->val$mIdsClone:Ljava/util/ArrayList;

    iput-object p5, p0, Lcom/android/providers/downloads/ui/DownloadActivity$19;->val$mCompleteIdsClone:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x0

    .line 1756
    :try_start_0
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadActivity$19;->this$0:Lcom/android/providers/downloads/ui/DownloadActivity;

    # getter for: Lcom/android/providers/downloads/ui/DownloadActivity;->mDownloadListHandler:Lcom/android/providers/downloads/ui/DownloadActivity$DownloadListHandler;
    invoke-static {v0}, Lcom/android/providers/downloads/ui/DownloadActivity;->access$2300(Lcom/android/providers/downloads/ui/DownloadActivity;)Lcom/android/providers/downloads/ui/DownloadActivity$DownloadListHandler;

    move-result-object v0

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/android/providers/downloads/ui/DownloadActivity$19;->this$0:Lcom/android/providers/downloads/ui/DownloadActivity;

    const v3, 0x7f08003d

    invoke-virtual {v2, v3}, Lcom/android/providers/downloads/ui/DownloadActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/android/providers/downloads/ui/DownloadActivity$DownloadListHandler;->sendResult(ILjava/lang/Object;)V
    invoke-static {v0, v1, v2}, Lcom/android/providers/downloads/ui/DownloadActivity$DownloadListHandler;->access$2000(Lcom/android/providers/downloads/ui/DownloadActivity$DownloadListHandler;ILjava/lang/Object;)V

    .line 1759
    const/4 v6, 0x0

    .line 1760
    .local v6, "cursor":Landroid/database/Cursor;
    iget-boolean v0, p0, Lcom/android/providers/downloads/ui/DownloadActivity$19;->val$delFromDiskFlag:Z

    if-eqz v0, :cond_0

    .line 1761
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadActivity$19;->this$0:Lcom/android/providers/downloads/ui/DownloadActivity;

    invoke-virtual {v0}, Lcom/android/providers/downloads/ui/DownloadActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Downloads$Impl;->ALL_DOWNLOADS_CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1765
    :cond_0
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadActivity$19;->val$ids:[J

    array-length v0, v0

    add-int/lit8 v7, v0, -0x1

    .local v7, "index":I
    :goto_0
    if-ltz v7, :cond_3

    .line 1766
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadActivity$19;->val$mIdsClone:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/providers/downloads/ui/DownloadActivity$19;->val$ids:[J

    aget-wide v2, v1, v7

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1767
    iget-boolean v0, p0, Lcom/android/providers/downloads/ui/DownloadActivity$19;->val$delFromDiskFlag:Z

    if-eqz v0, :cond_1

    .line 1768
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadActivity$19;->this$0:Lcom/android/providers/downloads/ui/DownloadActivity;

    iget-object v1, p0, Lcom/android/providers/downloads/ui/DownloadActivity$19;->val$ids:[J

    aget-wide v2, v1, v7

    # invokes: Lcom/android/providers/downloads/ui/DownloadActivity;->delFromeDiskIfCompeled(Landroid/database/Cursor;J)V
    invoke-static {v0, v6, v2, v3}, Lcom/android/providers/downloads/ui/DownloadActivity;->access$2600(Lcom/android/providers/downloads/ui/DownloadActivity;Landroid/database/Cursor;J)V

    .line 1770
    :cond_1
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadActivity$19;->this$0:Lcom/android/providers/downloads/ui/DownloadActivity;

    # getter for: Lcom/android/providers/downloads/ui/DownloadActivity;->mDownloadManager:Landroid/app/DownloadManager;
    invoke-static {v0}, Lcom/android/providers/downloads/ui/DownloadActivity;->access$2500(Lcom/android/providers/downloads/ui/DownloadActivity;)Landroid/app/DownloadManager;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [J

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/providers/downloads/ui/DownloadActivity$19;->val$ids:[J

    aget-wide v4, v3, v7

    aput-wide v4, v1, v2

    invoke-virtual {v0, v1}, Landroid/app/DownloadManager;->remove([J)I

    .line 1765
    :cond_2
    add-int/lit8 v7, v7, -0x1

    goto :goto_0

    .line 1773
    :cond_3
    if-eqz v6, :cond_4

    .line 1774
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1776
    :cond_4
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadActivity$19;->this$0:Lcom/android/providers/downloads/ui/DownloadActivity;

    # getter for: Lcom/android/providers/downloads/ui/DownloadActivity;->mDownloadListHandler:Lcom/android/providers/downloads/ui/DownloadActivity$DownloadListHandler;
    invoke-static {v0}, Lcom/android/providers/downloads/ui/DownloadActivity;->access$2300(Lcom/android/providers/downloads/ui/DownloadActivity;)Lcom/android/providers/downloads/ui/DownloadActivity$DownloadListHandler;

    move-result-object v0

    # invokes: Lcom/android/providers/downloads/ui/DownloadActivity$DownloadListHandler;->sendResult(ILjava/lang/Object;)V
    invoke-static {v0, v9, v8}, Lcom/android/providers/downloads/ui/DownloadActivity$DownloadListHandler;->access$2000(Lcom/android/providers/downloads/ui/DownloadActivity$DownloadListHandler;ILjava/lang/Object;)V

    .line 1777
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadActivity$19;->val$mCompleteIdsClone:Ljava/util/ArrayList;

    if-eqz v0, :cond_5

    .line 1778
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadActivity$19;->val$mCompleteIdsClone:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1780
    :cond_5
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadActivity$19;->val$mIdsClone:Ljava/util/ArrayList;

    if-eqz v0, :cond_6

    .line 1781
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadActivity$19;->val$mIdsClone:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1784
    :cond_6
    return-void

    .line 1776
    .end local v6    # "cursor":Landroid/database/Cursor;
    .end local v7    # "index":I
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/providers/downloads/ui/DownloadActivity$19;->this$0:Lcom/android/providers/downloads/ui/DownloadActivity;

    # getter for: Lcom/android/providers/downloads/ui/DownloadActivity;->mDownloadListHandler:Lcom/android/providers/downloads/ui/DownloadActivity$DownloadListHandler;
    invoke-static {v1}, Lcom/android/providers/downloads/ui/DownloadActivity;->access$2300(Lcom/android/providers/downloads/ui/DownloadActivity;)Lcom/android/providers/downloads/ui/DownloadActivity$DownloadListHandler;

    move-result-object v1

    # invokes: Lcom/android/providers/downloads/ui/DownloadActivity$DownloadListHandler;->sendResult(ILjava/lang/Object;)V
    invoke-static {v1, v9, v8}, Lcom/android/providers/downloads/ui/DownloadActivity$DownloadListHandler;->access$2000(Lcom/android/providers/downloads/ui/DownloadActivity$DownloadListHandler;ILjava/lang/Object;)V

    .line 1777
    iget-object v1, p0, Lcom/android/providers/downloads/ui/DownloadActivity$19;->val$mCompleteIdsClone:Ljava/util/ArrayList;

    if-eqz v1, :cond_7

    .line 1778
    iget-object v1, p0, Lcom/android/providers/downloads/ui/DownloadActivity$19;->val$mCompleteIdsClone:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1780
    :cond_7
    iget-object v1, p0, Lcom/android/providers/downloads/ui/DownloadActivity$19;->val$mIdsClone:Ljava/util/ArrayList;

    if-eqz v1, :cond_8

    .line 1781
    iget-object v1, p0, Lcom/android/providers/downloads/ui/DownloadActivity$19;->val$mIdsClone:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    :cond_8
    throw v0
.end method
