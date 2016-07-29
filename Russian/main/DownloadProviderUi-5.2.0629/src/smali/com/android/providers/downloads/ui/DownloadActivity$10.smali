.class Lcom/android/providers/downloads/ui/DownloadActivity$10;
.super Ljava/lang/Object;
.source "DownloadActivity.java"

# interfaces
.implements Lflyme/support/v7/widget/MzRecyclerView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/providers/downloads/ui/DownloadActivity;->setOnSelectLisenter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/providers/downloads/ui/DownloadActivity;


# direct methods
.method constructor <init>(Lcom/android/providers/downloads/ui/DownloadActivity;)V
    .locals 0

    .prologue
    .line 499
    iput-object p1, p0, Lcom/android/providers/downloads/ui/DownloadActivity$10;->this$0:Lcom/android/providers/downloads/ui/DownloadActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemLongClick(Lflyme/support/v7/widget/RecyclerView;Landroid/view/View;IJ)Z
    .locals 4
    .param p1, "parent"    # Lflyme/support/v7/widget/RecyclerView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .prologue
    const/4 v1, 0x0

    .line 503
    iget-object v2, p0, Lcom/android/providers/downloads/ui/DownloadActivity$10;->this$0:Lcom/android/providers/downloads/ui/DownloadActivity;

    # getter for: Lcom/android/providers/downloads/ui/DownloadActivity;->mDownloadCursor:Landroid/database/Cursor;
    invoke-static {v2}, Lcom/android/providers/downloads/ui/DownloadActivity;->access$800(Lcom/android/providers/downloads/ui/DownloadActivity;)Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/providers/downloads/ui/DownloadActivity$10;->this$0:Lcom/android/providers/downloads/ui/DownloadActivity;

    # getter for: Lcom/android/providers/downloads/ui/DownloadActivity;->mDownloadCursor:Landroid/database/Cursor;
    invoke-static {v2}, Lcom/android/providers/downloads/ui/DownloadActivity;->access$800(Lcom/android/providers/downloads/ui/DownloadActivity;)Landroid/database/Cursor;

    move-result-object v2

    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 510
    :cond_0
    :goto_0
    return v1

    .line 505
    :cond_1
    iget-object v2, p0, Lcom/android/providers/downloads/ui/DownloadActivity$10;->this$0:Lcom/android/providers/downloads/ui/DownloadActivity;

    iget-object v2, v2, Lcom/android/providers/downloads/ui/DownloadActivity;->mIdPositions:Ljava/util/HashMap;

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 506
    .local v0, "pos":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    .line 508
    iget-object v1, p0, Lcom/android/providers/downloads/ui/DownloadActivity$10;->this$0:Lcom/android/providers/downloads/ui/DownloadActivity;

    # getter for: Lcom/android/providers/downloads/ui/DownloadActivity;->mDownloadCursor:Landroid/database/Cursor;
    invoke-static {v1}, Lcom/android/providers/downloads/ui/DownloadActivity;->access$800(Lcom/android/providers/downloads/ui/DownloadActivity;)Landroid/database/Cursor;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 509
    iget-object v1, p0, Lcom/android/providers/downloads/ui/DownloadActivity$10;->this$0:Lcom/android/providers/downloads/ui/DownloadActivity;

    iget-object v2, p0, Lcom/android/providers/downloads/ui/DownloadActivity$10;->this$0:Lcom/android/providers/downloads/ui/DownloadActivity;

    iget-object v3, p0, Lcom/android/providers/downloads/ui/DownloadActivity$10;->this$0:Lcom/android/providers/downloads/ui/DownloadActivity;

    # getter for: Lcom/android/providers/downloads/ui/DownloadActivity;->mDownloadCursor:Landroid/database/Cursor;
    invoke-static {v3}, Lcom/android/providers/downloads/ui/DownloadActivity;->access$800(Lcom/android/providers/downloads/ui/DownloadActivity;)Landroid/database/Cursor;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/providers/downloads/ui/DownloadHelper;->checkTitle(Landroid/content/Context;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/android/providers/downloads/ui/DownloadActivity;->showDeleteDialog(JLjava/lang/String;)V
    invoke-static {v1, p4, p5, v2}, Lcom/android/providers/downloads/ui/DownloadActivity;->access$1500(Lcom/android/providers/downloads/ui/DownloadActivity;JLjava/lang/String;)V

    .line 510
    const/4 v1, 0x1

    goto :goto_0
.end method
