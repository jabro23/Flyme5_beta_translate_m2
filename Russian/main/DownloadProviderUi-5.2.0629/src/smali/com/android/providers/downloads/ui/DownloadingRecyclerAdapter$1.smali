.class Lcom/android/providers/downloads/ui/DownloadingRecyclerAdapter$1;
.super Ljava/lang/Object;
.source "DownloadingRecyclerAdapter.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/downloads/ui/DownloadingRecyclerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/providers/downloads/ui/DownloadingRecyclerAdapter;


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadingRecyclerAdapter$1;->this$0:Lcom/android/providers/downloads/ui/DownloadingRecyclerAdapter;

    # getter for: Lcom/android/providers/downloads/ui/DownloadingRecyclerAdapter;->mDeleteSeletedId:J
    invoke-static {v0}, Lcom/android/providers/downloads/ui/DownloadingRecyclerAdapter;->access$300(Lcom/android/providers/downloads/ui/DownloadingRecyclerAdapter;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadingRecyclerAdapter$1;->this$0:Lcom/android/providers/downloads/ui/DownloadingRecyclerAdapter;

    iget-object v1, p0, Lcom/android/providers/downloads/ui/DownloadingRecyclerAdapter$1;->this$0:Lcom/android/providers/downloads/ui/DownloadingRecyclerAdapter;

    # getter for: Lcom/android/providers/downloads/ui/DownloadingRecyclerAdapter;->mDeleteSeletedId:J
    invoke-static {v1}, Lcom/android/providers/downloads/ui/DownloadingRecyclerAdapter;->access$300(Lcom/android/providers/downloads/ui/DownloadingRecyclerAdapter;)J

    move-result-wide v2

    # invokes: Lcom/android/providers/downloads/ui/DownloadingRecyclerAdapter;->deleteItemById(J)V
    invoke-static {v0, v2, v3}, Lcom/android/providers/downloads/ui/DownloadingRecyclerAdapter;->access$400(Lcom/android/providers/downloads/ui/DownloadingRecyclerAdapter;J)V

    .line 112
    :cond_0
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadingRecyclerAdapter$1;->this$0:Lcom/android/providers/downloads/ui/DownloadingRecyclerAdapter;

    # getter for: Lcom/android/providers/downloads/ui/DownloadingRecyclerAdapter;->mDeleteDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/android/providers/downloads/ui/DownloadingRecyclerAdapter;->access$500(Lcom/android/providers/downloads/ui/DownloadingRecyclerAdapter;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 113
    sget-boolean v0, Lcom/android/providers/downloads/ui/EventAgentUtils;->SWITCHER:Z

    if-eqz v0, :cond_1

    .line 114
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadingRecyclerAdapter$1;->this$0:Lcom/android/providers/downloads/ui/DownloadingRecyclerAdapter;

    # getter for: Lcom/android/providers/downloads/ui/DownloadingRecyclerAdapter;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/providers/downloads/ui/DownloadingRecyclerAdapter;->access$100(Lcom/android/providers/downloads/ui/DownloadingRecyclerAdapter;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "Delete_task"

    invoke-static {v0, v1}, Lcom/android/providers/downloads/ui/EventAgentUtils;->onAction(Landroid/content/Context;Ljava/lang/String;)V

    .line 115
    :cond_1
    return-void
.end method
