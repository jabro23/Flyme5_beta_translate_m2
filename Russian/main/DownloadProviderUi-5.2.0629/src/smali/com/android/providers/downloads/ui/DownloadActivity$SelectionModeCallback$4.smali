.class Lcom/android/providers/downloads/ui/DownloadActivity$SelectionModeCallback$4;
.super Ljava/lang/Object;
.source "DownloadActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/providers/downloads/ui/DownloadActivity$SelectionModeCallback;->deleteConfirmDialog(Lflyme/support/v7/widget/MzRecyclerView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/providers/downloads/ui/DownloadActivity$SelectionModeCallback;


# direct methods
.method constructor <init>(Lcom/android/providers/downloads/ui/DownloadActivity$SelectionModeCallback;)V
    .locals 0

    .prologue
    .line 2106
    iput-object p1, p0, Lcom/android/providers/downloads/ui/DownloadActivity$SelectionModeCallback$4;->this$1:Lcom/android/providers/downloads/ui/DownloadActivity$SelectionModeCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v0, 0x1

    .line 2109
    if-le p2, v0, :cond_1

    .line 2110
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 2118
    :cond_0
    :goto_0
    return-void

    .line 2113
    :cond_1
    iget-object v1, p0, Lcom/android/providers/downloads/ui/DownloadActivity$SelectionModeCallback$4;->this$1:Lcom/android/providers/downloads/ui/DownloadActivity$SelectionModeCallback;

    iget-object v1, v1, Lcom/android/providers/downloads/ui/DownloadActivity$SelectionModeCallback;->this$0:Lcom/android/providers/downloads/ui/DownloadActivity;

    iget-object v2, p0, Lcom/android/providers/downloads/ui/DownloadActivity$SelectionModeCallback$4;->this$1:Lcom/android/providers/downloads/ui/DownloadActivity$SelectionModeCallback;

    # getter for: Lcom/android/providers/downloads/ui/DownloadActivity$SelectionModeCallback;->mRecyclerView:Lflyme/support/v7/widget/MzRecyclerView;
    invoke-static {v2}, Lcom/android/providers/downloads/ui/DownloadActivity$SelectionModeCallback;->access$3800(Lcom/android/providers/downloads/ui/DownloadActivity$SelectionModeCallback;)Lflyme/support/v7/widget/MzRecyclerView;

    move-result-object v2

    if-ne p2, v0, :cond_2

    :goto_1
    # invokes: Lcom/android/providers/downloads/ui/DownloadActivity;->deleteCheckedItems(Lflyme/support/v7/widget/MzRecyclerView;Z)V
    invoke-static {v1, v2, v0}, Lcom/android/providers/downloads/ui/DownloadActivity;->access$4500(Lcom/android/providers/downloads/ui/DownloadActivity;Lflyme/support/v7/widget/MzRecyclerView;Z)V

    .line 2114
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadActivity$SelectionModeCallback$4;->this$1:Lcom/android/providers/downloads/ui/DownloadActivity$SelectionModeCallback;

    # getter for: Lcom/android/providers/downloads/ui/DownloadActivity$SelectionModeCallback;->mRecyclerView:Lflyme/support/v7/widget/MzRecyclerView;
    invoke-static {v0}, Lcom/android/providers/downloads/ui/DownloadActivity$SelectionModeCallback;->access$3800(Lcom/android/providers/downloads/ui/DownloadActivity$SelectionModeCallback;)Lflyme/support/v7/widget/MzRecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Lflyme/support/v7/widget/MzRecyclerView;->finishMultiChoice()V

    .line 2115
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 2116
    sget-boolean v0, Lcom/android/providers/downloads/ui/EventAgentUtils;->SWITCHER:Z

    if-eqz v0, :cond_0

    .line 2117
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadActivity$SelectionModeCallback$4;->this$1:Lcom/android/providers/downloads/ui/DownloadActivity$SelectionModeCallback;

    iget-object v0, v0, Lcom/android/providers/downloads/ui/DownloadActivity$SelectionModeCallback;->this$0:Lcom/android/providers/downloads/ui/DownloadActivity;

    const-string v1, "Delete"

    invoke-static {v0, v1}, Lcom/android/providers/downloads/ui/EventAgentUtils;->onAction(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 2113
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method
