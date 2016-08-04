.class Lcom/android/providers/downloads/ui/DownloadActivity$DownloadListHandler;
.super Landroid/os/Handler;
.source "DownloadActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/downloads/ui/DownloadActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DownloadListHandler"
.end annotation


# instance fields
.field private final mReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/providers/downloads/ui/DownloadActivity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/providers/downloads/ui/DownloadActivity;)V
    .locals 1
    .param p1, "downloadActivity"    # Lcom/android/providers/downloads/ui/DownloadActivity;

    .prologue
    .line 1902
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 1903
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/providers/downloads/ui/DownloadActivity$DownloadListHandler;->mReference:Ljava/lang/ref/WeakReference;

    .line 1904
    return-void
.end method

.method static synthetic access$2000(Lcom/android/providers/downloads/ui/DownloadActivity$DownloadListHandler;ILjava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/providers/downloads/ui/DownloadActivity$DownloadListHandler;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/Object;

    .prologue
    .line 1888
    invoke-direct {p0, p1, p2}, Lcom/android/providers/downloads/ui/DownloadActivity$DownloadListHandler;->sendResult(ILjava/lang/Object;)V

    return-void
.end method

.method private sendResult(ILjava/lang/Object;)V
    .locals 3
    .param p1, "result"    # I
    .param p2, "obj"    # Ljava/lang/Object;

    .prologue
    .line 1980
    iget-object v2, p0, Lcom/android/providers/downloads/ui/DownloadActivity$DownloadListHandler;->mReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/providers/downloads/ui/DownloadActivity;

    .line 1981
    .local v0, "mActivity":Lcom/android/providers/downloads/ui/DownloadActivity;
    if-eqz v0, :cond_0

    .line 1982
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 1983
    .local v1, "message":Landroid/os/Message;
    iput p1, v1, Landroid/os/Message;->what:I

    .line 1984
    iput-object p2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1985
    invoke-virtual {p0, v1}, Lcom/android/providers/downloads/ui/DownloadActivity$DownloadListHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1987
    .end local v1    # "message":Landroid/os/Message;
    :cond_0
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const v9, 0x7f0a0007

    const/16 v8, 0x8

    const/4 v5, 0x1

    const v7, 0x1020004

    const/4 v6, 0x0

    .line 1908
    iget-object v4, p0, Lcom/android/providers/downloads/ui/DownloadActivity$DownloadListHandler;->mReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/providers/downloads/ui/DownloadActivity;

    .line 1909
    .local v0, "mActivity":Lcom/android/providers/downloads/ui/DownloadActivity;
    if-eqz v0, :cond_0

    .line 1910
    iget v4, p1, Landroid/os/Message;->what:I

    sparse-switch v4, :sswitch_data_0

    .line 1977
    :cond_0
    :goto_0
    return-void

    .line 1912
    :sswitch_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 1913
    .local v1, "message":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 1916
    # getter for: Lcom/android/providers/downloads/ui/DownloadActivity;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/android/providers/downloads/ui/DownloadActivity;->access$2700(Lcom/android/providers/downloads/ui/DownloadActivity;)Landroid/app/ProgressDialog;

    move-result-object v4

    if-nez v4, :cond_1

    .line 1917
    new-instance v4, Landroid/app/ProgressDialog;

    invoke-direct {v4, v0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    # setter for: Lcom/android/providers/downloads/ui/DownloadActivity;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0, v4}, Lcom/android/providers/downloads/ui/DownloadActivity;->access$2702(Lcom/android/providers/downloads/ui/DownloadActivity;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 1918
    # getter for: Lcom/android/providers/downloads/ui/DownloadActivity;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/android/providers/downloads/ui/DownloadActivity;->access$2700(Lcom/android/providers/downloads/ui/DownloadActivity;)Landroid/app/ProgressDialog;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 1920
    :cond_1
    # getter for: Lcom/android/providers/downloads/ui/DownloadActivity;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/android/providers/downloads/ui/DownloadActivity;->access$2700(Lcom/android/providers/downloads/ui/DownloadActivity;)Landroid/app/ProgressDialog;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1922
    # getter for: Lcom/android/providers/downloads/ui/DownloadActivity;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/android/providers/downloads/ui/DownloadActivity;->access$2700(Lcom/android/providers/downloads/ui/DownloadActivity;)Landroid/app/ProgressDialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/ProgressDialog;->show()V

    goto :goto_0

    .line 1925
    .end local v1    # "message":Ljava/lang/String;
    :sswitch_1
    # getter for: Lcom/android/providers/downloads/ui/DownloadActivity;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/android/providers/downloads/ui/DownloadActivity;->access$2700(Lcom/android/providers/downloads/ui/DownloadActivity;)Landroid/app/ProgressDialog;

    move-result-object v4

    if-eqz v4, :cond_0

    # getter for: Lcom/android/providers/downloads/ui/DownloadActivity;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/android/providers/downloads/ui/DownloadActivity;->access$2700(Lcom/android/providers/downloads/ui/DownloadActivity;)Landroid/app/ProgressDialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1926
    # getter for: Lcom/android/providers/downloads/ui/DownloadActivity;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/android/providers/downloads/ui/DownloadActivity;->access$2700(Lcom/android/providers/downloads/ui/DownloadActivity;)Landroid/app/ProgressDialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/ProgressDialog;->dismiss()V

    goto :goto_0

    .line 1930
    :sswitch_2
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    .line 1931
    .local v3, "test":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 1935
    invoke-static {v0, v3}, Lcom/meizu/common/app/SlideNotice;->makeNotice(Landroid/content/Context;Ljava/lang/CharSequence;)Lcom/meizu/common/app/SlideNotice;

    move-result-object v2

    .line 1936
    .local v2, "notice":Lcom/meizu/common/app/SlideNotice;
    invoke-virtual {v2, v5}, Lcom/meizu/common/app/SlideNotice;->setActionBarToTop(Z)V

    .line 1937
    invoke-virtual {v2}, Lcom/meizu/common/app/SlideNotice;->show()V

    goto :goto_0

    .line 1940
    .end local v2    # "notice":Lcom/meizu/common/app/SlideNotice;
    .end local v3    # "test":Ljava/lang/String;
    :sswitch_3
    # getter for: Lcom/android/providers/downloads/ui/DownloadActivity;->mDownloadCursor:Landroid/database/Cursor;
    invoke-static {v0}, Lcom/android/providers/downloads/ui/DownloadActivity;->access$800(Lcom/android/providers/downloads/ui/DownloadActivity;)Landroid/database/Cursor;

    move-result-object v4

    if-eqz v4, :cond_0

    # getter for: Lcom/android/providers/downloads/ui/DownloadActivity;->mDownloadCursor:Landroid/database/Cursor;
    invoke-static {v0}, Lcom/android/providers/downloads/ui/DownloadActivity;->access$800(Lcom/android/providers/downloads/ui/DownloadActivity;)Landroid/database/Cursor;

    move-result-object v4

    invoke-interface {v4}, Landroid/database/Cursor;->isClosed()Z

    move-result v4

    if-nez v4, :cond_0

    .line 1941
    # getter for: Lcom/android/providers/downloads/ui/DownloadActivity;->mDownloadCursor:Landroid/database/Cursor;
    invoke-static {v0}, Lcom/android/providers/downloads/ui/DownloadActivity;->access$800(Lcom/android/providers/downloads/ui/DownloadActivity;)Landroid/database/Cursor;

    move-result-object v4

    invoke-interface {v4}, Landroid/database/Cursor;->requery()Z

    goto :goto_0

    .line 1945
    :sswitch_4
    invoke-virtual {v0}, Lcom/android/providers/downloads/ui/DownloadActivity;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v4

    const/4 v5, 0x0

    # getter for: Lcom/android/providers/downloads/ui/DownloadActivity;->LOADER_CALLBACKS:Landroid/app/LoaderManager$LoaderCallbacks;
    invoke-static {v0}, Lcom/android/providers/downloads/ui/DownloadActivity;->access$2800(Lcom/android/providers/downloads/ui/DownloadActivity;)Landroid/app/LoaderManager$LoaderCallbacks;

    move-result-object v7

    invoke-virtual {v4, v6, v5, v7}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    goto :goto_0

    .line 1948
    :sswitch_5
    # getter for: Lcom/android/providers/downloads/ui/DownloadActivity;->mNumberOfUnComplete:I
    invoke-static {v0}, Lcom/android/providers/downloads/ui/DownloadActivity;->access$3000(Lcom/android/providers/downloads/ui/DownloadActivity;)I

    move-result v4

    if-gtz v4, :cond_2

    move v4, v5

    :goto_1
    # setter for: Lcom/android/providers/downloads/ui/DownloadActivity;->mDownloadingEmptyShow:Z
    invoke-static {v0, v4}, Lcom/android/providers/downloads/ui/DownloadActivity;->access$2902(Lcom/android/providers/downloads/ui/DownloadActivity;Z)Z

    .line 1949
    # getter for: Lcom/android/providers/downloads/ui/DownloadActivity;->mDownloadingEmptyShow:Z
    invoke-static {v0}, Lcom/android/providers/downloads/ui/DownloadActivity;->access$2900(Lcom/android/providers/downloads/ui/DownloadActivity;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1950
    # getter for: Lcom/android/providers/downloads/ui/DownloadActivity;->mDownloadingListView:Lflyme/support/v7/widget/MzRecyclerView;
    invoke-static {v0}, Lcom/android/providers/downloads/ui/DownloadActivity;->access$3100(Lcom/android/providers/downloads/ui/DownloadActivity;)Lflyme/support/v7/widget/MzRecyclerView;

    move-result-object v4

    invoke-virtual {v4, v8}, Lflyme/support/v7/widget/MzRecyclerView;->setVisibility(I)V

    .line 1951
    # getter for: Lcom/android/providers/downloads/ui/DownloadActivity;->mDownloadingView:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/android/providers/downloads/ui/DownloadActivity;->access$3200(Lcom/android/providers/downloads/ui/DownloadActivity;)Landroid/widget/FrameLayout;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1952
    # getter for: Lcom/android/providers/downloads/ui/DownloadActivity;->mDownloadingView:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/android/providers/downloads/ui/DownloadActivity;->access$3200(Lcom/android/providers/downloads/ui/DownloadActivity;)Landroid/widget/FrameLayout;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/meizu/common/widget/EmptyView;

    const v5, 0x7f080060

    invoke-virtual {v0, v5}, Lcom/android/providers/downloads/ui/DownloadActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/meizu/common/widget/EmptyView;->setTitle(Ljava/lang/CharSequence;)V

    .line 1953
    # getter for: Lcom/android/providers/downloads/ui/DownloadActivity;->mDownloadingView:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/android/providers/downloads/ui/DownloadActivity;->access$3200(Lcom/android/providers/downloads/ui/DownloadActivity;)Landroid/widget/FrameLayout;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/meizu/common/widget/EmptyView;

    invoke-virtual {v0}, Lcom/android/providers/downloads/ui/DownloadActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/meizu/common/widget/EmptyView;->setTitleColor(I)V

    goto/16 :goto_0

    :cond_2
    move v4, v6

    .line 1948
    goto :goto_1

    .line 1955
    :cond_3
    # getter for: Lcom/android/providers/downloads/ui/DownloadActivity;->mDownloadingListView:Lflyme/support/v7/widget/MzRecyclerView;
    invoke-static {v0}, Lcom/android/providers/downloads/ui/DownloadActivity;->access$3100(Lcom/android/providers/downloads/ui/DownloadActivity;)Lflyme/support/v7/widget/MzRecyclerView;

    move-result-object v4

    invoke-virtual {v4, v6}, Lflyme/support/v7/widget/MzRecyclerView;->setVisibility(I)V

    .line 1956
    # getter for: Lcom/android/providers/downloads/ui/DownloadActivity;->mDownloadingView:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/android/providers/downloads/ui/DownloadActivity;->access$3200(Lcom/android/providers/downloads/ui/DownloadActivity;)Landroid/widget/FrameLayout;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 1960
    :sswitch_6
    # getter for: Lcom/android/providers/downloads/ui/DownloadActivity;->mNumberOfComplete:I
    invoke-static {v0}, Lcom/android/providers/downloads/ui/DownloadActivity;->access$3400(Lcom/android/providers/downloads/ui/DownloadActivity;)I

    move-result v4

    if-gtz v4, :cond_4

    :goto_2
    # setter for: Lcom/android/providers/downloads/ui/DownloadActivity;->mDownloadedEmptyShow:Z
    invoke-static {v0, v5}, Lcom/android/providers/downloads/ui/DownloadActivity;->access$3302(Lcom/android/providers/downloads/ui/DownloadActivity;Z)Z

    .line 1961
    # getter for: Lcom/android/providers/downloads/ui/DownloadActivity;->mDownloadedEmptyShow:Z
    invoke-static {v0}, Lcom/android/providers/downloads/ui/DownloadActivity;->access$3300(Lcom/android/providers/downloads/ui/DownloadActivity;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1962
    # getter for: Lcom/android/providers/downloads/ui/DownloadActivity;->mDownloadedListView:Lflyme/support/v7/widget/MzRecyclerView;
    invoke-static {v0}, Lcom/android/providers/downloads/ui/DownloadActivity;->access$3500(Lcom/android/providers/downloads/ui/DownloadActivity;)Lflyme/support/v7/widget/MzRecyclerView;

    move-result-object v4

    invoke-virtual {v4, v8}, Lflyme/support/v7/widget/MzRecyclerView;->setVisibility(I)V

    .line 1963
    # getter for: Lcom/android/providers/downloads/ui/DownloadActivity;->mDownloadedView:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/android/providers/downloads/ui/DownloadActivity;->access$3600(Lcom/android/providers/downloads/ui/DownloadActivity;)Landroid/widget/FrameLayout;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1964
    # getter for: Lcom/android/providers/downloads/ui/DownloadActivity;->mDownloadedView:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/android/providers/downloads/ui/DownloadActivity;->access$3600(Lcom/android/providers/downloads/ui/DownloadActivity;)Landroid/widget/FrameLayout;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/meizu/common/widget/EmptyView;

    const v5, 0x7f080003

    invoke-virtual {v0, v5}, Lcom/android/providers/downloads/ui/DownloadActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/meizu/common/widget/EmptyView;->setTitle(Ljava/lang/CharSequence;)V

    .line 1965
    # getter for: Lcom/android/providers/downloads/ui/DownloadActivity;->mDownloadedView:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/android/providers/downloads/ui/DownloadActivity;->access$3600(Lcom/android/providers/downloads/ui/DownloadActivity;)Landroid/widget/FrameLayout;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/meizu/common/widget/EmptyView;

    invoke-virtual {v0}, Lcom/android/providers/downloads/ui/DownloadActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/meizu/common/widget/EmptyView;->setTitleColor(I)V

    goto/16 :goto_0

    :cond_4
    move v5, v6

    .line 1960
    goto :goto_2

    .line 1967
    :cond_5
    # getter for: Lcom/android/providers/downloads/ui/DownloadActivity;->mDownloadedListView:Lflyme/support/v7/widget/MzRecyclerView;
    invoke-static {v0}, Lcom/android/providers/downloads/ui/DownloadActivity;->access$3500(Lcom/android/providers/downloads/ui/DownloadActivity;)Lflyme/support/v7/widget/MzRecyclerView;

    move-result-object v4

    invoke-virtual {v4, v6}, Lflyme/support/v7/widget/MzRecyclerView;->setVisibility(I)V

    .line 1968
    # getter for: Lcom/android/providers/downloads/ui/DownloadActivity;->mDownloadedView:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/android/providers/downloads/ui/DownloadActivity;->access$3600(Lcom/android/providers/downloads/ui/DownloadActivity;)Landroid/widget/FrameLayout;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 1972
    :sswitch_7
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/support/v7/app/AlertDialog;

    # invokes: Lcom/android/providers/downloads/ui/DownloadActivity;->setDialogDismissable(Landroid/support/v7/app/AlertDialog;Z)V
    invoke-static {v0, v4, v5}, Lcom/android/providers/downloads/ui/DownloadActivity;->access$2200(Lcom/android/providers/downloads/ui/DownloadActivity;Landroid/support/v7/app/AlertDialog;Z)V

    goto/16 :goto_0

    .line 1910
    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x3 -> :sswitch_1
        0x4 -> :sswitch_2
        0xa -> :sswitch_4
        0xb -> :sswitch_5
        0xc -> :sswitch_6
        0x14 -> :sswitch_7
        0x64 -> :sswitch_3
    .end sparse-switch
.end method
