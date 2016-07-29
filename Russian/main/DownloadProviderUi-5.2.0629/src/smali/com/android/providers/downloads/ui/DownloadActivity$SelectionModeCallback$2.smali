.class Lcom/android/providers/downloads/ui/DownloadActivity$SelectionModeCallback$2;
.super Ljava/lang/Object;
.source "DownloadActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/providers/downloads/ui/DownloadActivity$SelectionModeCallback;->onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
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
    .line 2047
    iput-object p1, p0, Lcom/android/providers/downloads/ui/DownloadActivity$SelectionModeCallback$2;->this$1:Lcom/android/providers/downloads/ui/DownloadActivity$SelectionModeCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 2050
    iget-object v3, p0, Lcom/android/providers/downloads/ui/DownloadActivity$SelectionModeCallback$2;->this$1:Lcom/android/providers/downloads/ui/DownloadActivity$SelectionModeCallback;

    iget-object v3, v3, Lcom/android/providers/downloads/ui/DownloadActivity$SelectionModeCallback;->this$0:Lcom/android/providers/downloads/ui/DownloadActivity;

    # getter for: Lcom/android/providers/downloads/ui/DownloadActivity;->mDownloadedAdapter:Lcom/android/providers/downloads/ui/DownloadedRecyclerAdapter;
    invoke-static {v3}, Lcom/android/providers/downloads/ui/DownloadActivity;->access$3700(Lcom/android/providers/downloads/ui/DownloadActivity;)Lcom/android/providers/downloads/ui/DownloadedRecyclerAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/providers/downloads/ui/DownloadedRecyclerAdapter;->getItemCount()I

    move-result v2

    .line 2051
    .local v2, "totalCount":I
    iget-object v3, p0, Lcom/android/providers/downloads/ui/DownloadActivity$SelectionModeCallback$2;->this$1:Lcom/android/providers/downloads/ui/DownloadActivity$SelectionModeCallback;

    # getter for: Lcom/android/providers/downloads/ui/DownloadActivity$SelectionModeCallback;->mRecyclerView:Lflyme/support/v7/widget/MzRecyclerView;
    invoke-static {v3}, Lcom/android/providers/downloads/ui/DownloadActivity$SelectionModeCallback;->access$3800(Lcom/android/providers/downloads/ui/DownloadActivity$SelectionModeCallback;)Lflyme/support/v7/widget/MzRecyclerView;

    move-result-object v3

    invoke-virtual {v3}, Lflyme/support/v7/widget/MzRecyclerView;->getCheckedItemCount()I

    move-result v0

    .line 2053
    .local v0, "selectCount":I
    if-ne v2, v0, :cond_1

    .line 2054
    iget-object v3, p0, Lcom/android/providers/downloads/ui/DownloadActivity$SelectionModeCallback$2;->this$1:Lcom/android/providers/downloads/ui/DownloadActivity$SelectionModeCallback;

    # getter for: Lcom/android/providers/downloads/ui/DownloadActivity$SelectionModeCallback;->mRecyclerView:Lflyme/support/v7/widget/MzRecyclerView;
    invoke-static {v3}, Lcom/android/providers/downloads/ui/DownloadActivity$SelectionModeCallback;->access$3800(Lcom/android/providers/downloads/ui/DownloadActivity$SelectionModeCallback;)Lflyme/support/v7/widget/MzRecyclerView;

    move-result-object v3

    invoke-virtual {v3}, Lflyme/support/v7/widget/MzRecyclerView;->unCheckedAll()V

    .line 2055
    iget-object v3, p0, Lcom/android/providers/downloads/ui/DownloadActivity$SelectionModeCallback$2;->this$1:Lcom/android/providers/downloads/ui/DownloadActivity$SelectionModeCallback;

    iget-object v3, v3, Lcom/android/providers/downloads/ui/DownloadActivity$SelectionModeCallback;->this$0:Lcom/android/providers/downloads/ui/DownloadActivity;

    invoke-virtual {v3}, Lcom/android/providers/downloads/ui/DownloadActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f08005c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 2060
    .local v1, "title":Ljava/lang/String;
    :goto_0
    iget-object v3, p0, Lcom/android/providers/downloads/ui/DownloadActivity$SelectionModeCallback$2;->this$1:Lcom/android/providers/downloads/ui/DownloadActivity$SelectionModeCallback;

    # getter for: Lcom/android/providers/downloads/ui/DownloadActivity$SelectionModeCallback;->mMultiChoiceView:Landroid/support/v7/widget/MultiChoiceView;
    invoke-static {v3}, Lcom/android/providers/downloads/ui/DownloadActivity$SelectionModeCallback;->access$3900(Lcom/android/providers/downloads/ui/DownloadActivity$SelectionModeCallback;)Landroid/support/v7/widget/MultiChoiceView;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/support/v7/widget/MultiChoiceView;->setTitle(Ljava/lang/CharSequence;)V

    .line 2061
    iget-object v3, p0, Lcom/android/providers/downloads/ui/DownloadActivity$SelectionModeCallback$2;->this$1:Lcom/android/providers/downloads/ui/DownloadActivity$SelectionModeCallback;

    iget-object v3, v3, Lcom/android/providers/downloads/ui/DownloadActivity$SelectionModeCallback;->this$0:Lcom/android/providers/downloads/ui/DownloadActivity;

    # getter for: Lcom/android/providers/downloads/ui/DownloadActivity;->mSelectionMode:Landroid/view/ActionMode;
    invoke-static {v3}, Lcom/android/providers/downloads/ui/DownloadActivity;->access$100(Lcom/android/providers/downloads/ui/DownloadActivity;)Landroid/view/ActionMode;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 2062
    iget-object v3, p0, Lcom/android/providers/downloads/ui/DownloadActivity$SelectionModeCallback$2;->this$1:Lcom/android/providers/downloads/ui/DownloadActivity$SelectionModeCallback;

    iget-object v3, v3, Lcom/android/providers/downloads/ui/DownloadActivity$SelectionModeCallback;->this$0:Lcom/android/providers/downloads/ui/DownloadActivity;

    # getter for: Lcom/android/providers/downloads/ui/DownloadActivity;->mSelectionMode:Landroid/view/ActionMode;
    invoke-static {v3}, Lcom/android/providers/downloads/ui/DownloadActivity;->access$100(Lcom/android/providers/downloads/ui/DownloadActivity;)Landroid/view/ActionMode;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ActionMode;->invalidate()V

    .line 2064
    :cond_0
    return-void

    .line 2057
    .end local v1    # "title":Ljava/lang/String;
    :cond_1
    iget-object v3, p0, Lcom/android/providers/downloads/ui/DownloadActivity$SelectionModeCallback$2;->this$1:Lcom/android/providers/downloads/ui/DownloadActivity$SelectionModeCallback;

    # getter for: Lcom/android/providers/downloads/ui/DownloadActivity$SelectionModeCallback;->mRecyclerView:Lflyme/support/v7/widget/MzRecyclerView;
    invoke-static {v3}, Lcom/android/providers/downloads/ui/DownloadActivity$SelectionModeCallback;->access$3800(Lcom/android/providers/downloads/ui/DownloadActivity$SelectionModeCallback;)Lflyme/support/v7/widget/MzRecyclerView;

    move-result-object v3

    invoke-virtual {v3}, Lflyme/support/v7/widget/MzRecyclerView;->checkedAll()V

    .line 2058
    iget-object v3, p0, Lcom/android/providers/downloads/ui/DownloadActivity$SelectionModeCallback$2;->this$1:Lcom/android/providers/downloads/ui/DownloadActivity$SelectionModeCallback;

    iget-object v3, v3, Lcom/android/providers/downloads/ui/DownloadActivity$SelectionModeCallback;->this$0:Lcom/android/providers/downloads/ui/DownloadActivity;

    invoke-virtual {v3}, Lcom/android/providers/downloads/ui/DownloadActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f080076

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "title":Ljava/lang/String;
    goto :goto_0
.end method
