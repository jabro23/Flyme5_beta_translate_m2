.class Lcom/android/providers/downloads/ui/DownloadActivity$6;
.super Lflyme/support/v7/widget/RecyclerView$OnScrollListener;
.source "DownloadActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/downloads/ui/DownloadActivity;
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
    .line 389
    iput-object p1, p0, Lcom/android/providers/downloads/ui/DownloadActivity$6;->this$0:Lcom/android/providers/downloads/ui/DownloadActivity;

    invoke-direct {p0}, Lflyme/support/v7/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Lflyme/support/v7/widget/RecyclerView;I)V
    .locals 2
    .param p1, "view"    # Lflyme/support/v7/widget/RecyclerView;
    .param p2, "scrollState"    # I

    .prologue
    const/4 v1, 0x0

    .line 392
    if-nez p2, :cond_1

    .line 393
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadActivity$6;->this$0:Lcom/android/providers/downloads/ui/DownloadActivity;

    # setter for: Lcom/android/providers/downloads/ui/DownloadActivity;->mBusy:Z
    invoke-static {v0, v1}, Lcom/android/providers/downloads/ui/DownloadActivity;->access$202(Lcom/android/providers/downloads/ui/DownloadActivity;Z)Z

    .line 394
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadActivity$6;->this$0:Lcom/android/providers/downloads/ui/DownloadActivity;

    # getter for: Lcom/android/providers/downloads/ui/DownloadActivity;->mNeedUpdate:Z
    invoke-static {v0}, Lcom/android/providers/downloads/ui/DownloadActivity;->access$1100(Lcom/android/providers/downloads/ui/DownloadActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 395
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadActivity$6;->this$0:Lcom/android/providers/downloads/ui/DownloadActivity;

    # setter for: Lcom/android/providers/downloads/ui/DownloadActivity;->mNeedUpdate:Z
    invoke-static {v0, v1}, Lcom/android/providers/downloads/ui/DownloadActivity;->access$1102(Lcom/android/providers/downloads/ui/DownloadActivity;Z)Z

    .line 396
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadActivity$6;->this$0:Lcom/android/providers/downloads/ui/DownloadActivity;

    # getter for: Lcom/android/providers/downloads/ui/DownloadActivity;->mDownloadingAdapter:Lcom/android/providers/downloads/ui/DownloadingRecyclerAdapter;
    invoke-static {v0}, Lcom/android/providers/downloads/ui/DownloadActivity;->access$300(Lcom/android/providers/downloads/ui/DownloadActivity;)Lcom/android/providers/downloads/ui/DownloadingRecyclerAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/providers/downloads/ui/DownloadingRecyclerAdapter;->notifyDataSetChanged()V

    .line 401
    :cond_0
    :goto_0
    return-void

    .line 399
    :cond_1
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadActivity$6;->this$0:Lcom/android/providers/downloads/ui/DownloadActivity;

    const/4 v1, 0x1

    # setter for: Lcom/android/providers/downloads/ui/DownloadActivity;->mBusy:Z
    invoke-static {v0, v1}, Lcom/android/providers/downloads/ui/DownloadActivity;->access$202(Lcom/android/providers/downloads/ui/DownloadActivity;Z)Z

    goto :goto_0
.end method
