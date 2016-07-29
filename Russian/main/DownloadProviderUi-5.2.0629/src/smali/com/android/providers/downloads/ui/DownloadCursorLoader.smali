.class public Lcom/android/providers/downloads/ui/DownloadCursorLoader;
.super Landroid/content/AsyncTaskLoader;
.source "DownloadCursorLoader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/content/AsyncTaskLoader",
        "<",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# instance fields
.field baseQuery:Lcom/android/providers/downloads/ui/DownloadQuery;

.field mCursor:Landroid/database/Cursor;

.field mDownloadManager:Landroid/app/DownloadManager;

.field final mObserver:Landroid/content/Loader$ForceLoadContentObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">.Force",
            "LoadContentObserver;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    .line 98
    invoke-direct {p0, p1}, Landroid/content/AsyncTaskLoader;-><init>(Landroid/content/Context;)V

    .line 99
    new-instance v0, Landroid/content/Loader$ForceLoadContentObserver;

    invoke-direct {v0, p0}, Landroid/content/Loader$ForceLoadContentObserver;-><init>(Landroid/content/Loader;)V

    iput-object v0, p0, Lcom/android/providers/downloads/ui/DownloadCursorLoader;->mObserver:Landroid/content/Loader$ForceLoadContentObserver;

    .line 100
    invoke-virtual {p0}, Lcom/android/providers/downloads/ui/DownloadCursorLoader;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "download"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/DownloadManager;

    iput-object v0, p0, Lcom/android/providers/downloads/ui/DownloadCursorLoader;->mDownloadManager:Landroid/app/DownloadManager;

    .line 101
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadCursorLoader;->mDownloadManager:Landroid/app/DownloadManager;

    invoke-virtual {v0, v2}, Landroid/app/DownloadManager;->setAccessAllDownloads(Z)V

    .line 102
    new-instance v0, Lcom/android/providers/downloads/ui/DownloadQuery;

    invoke-direct {v0, p1}, Lcom/android/providers/downloads/ui/DownloadQuery;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Lcom/android/providers/downloads/ui/DownloadQuery;->setOnlyIncludeVisibleInDownloadsUi(Z)Lcom/android/providers/downloads/ui/DownloadQuery;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/downloads/ui/DownloadCursorLoader;->baseQuery:Lcom/android/providers/downloads/ui/DownloadQuery;

    .line 103
    return-void
.end method

.method public static createLoader(Landroid/content/Context;)Landroid/content/Loader;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 88
    if-nez p0, :cond_0

    const/4 v0, 0x0

    .line 89
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/android/providers/downloads/ui/DownloadCursorLoader;

    invoke-direct {v0, p0}, Lcom/android/providers/downloads/ui/DownloadCursorLoader;-><init>(Landroid/content/Context;)V

    goto :goto_0
.end method


# virtual methods
.method public cancelLoadInBackground()V
    .locals 0

    .prologue
    .line 54
    invoke-super {p0}, Landroid/content/AsyncTaskLoader;->cancelLoadInBackground()V

    .line 55
    return-void
.end method

.method public deliverResult(Landroid/database/Cursor;)V
    .locals 2
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 68
    invoke-virtual {p0}, Lcom/android/providers/downloads/ui/DownloadCursorLoader;->isReset()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 70
    if-eqz p1, :cond_0

    .line 71
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 85
    :cond_0
    :goto_0
    return-void

    .line 75
    :cond_1
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadCursorLoader;->mCursor:Landroid/database/Cursor;

    .line 76
    .local v0, "oldCursor":Landroid/database/Cursor;
    iput-object p1, p0, Lcom/android/providers/downloads/ui/DownloadCursorLoader;->mCursor:Landroid/database/Cursor;

    .line 78
    invoke-virtual {p0}, Lcom/android/providers/downloads/ui/DownloadCursorLoader;->isStarted()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 79
    invoke-super {p0, p1}, Landroid/content/AsyncTaskLoader;->deliverResult(Ljava/lang/Object;)V

    .line 82
    :cond_2
    if-eqz v0, :cond_0

    if-eq v0, p1, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 83
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method public bridge synthetic deliverResult(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 14
    check-cast p1, Landroid/database/Cursor;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/providers/downloads/ui/DownloadCursorLoader;->deliverResult(Landroid/database/Cursor;)V

    return-void
.end method

.method public loadInBackground()Landroid/database/Cursor;
    .locals 5

    .prologue
    .line 31
    monitor-enter p0

    .line 32
    :try_start_0
    invoke-virtual {p0}, Lcom/android/providers/downloads/ui/DownloadCursorLoader;->isLoadInBackgroundCanceled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 33
    new-instance v1, Landroid/os/OperationCanceledException;

    invoke-direct {v1}, Landroid/os/OperationCanceledException;-><init>()V

    throw v1

    .line 35
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_0
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 37
    :try_start_2
    iget-object v1, p0, Lcom/android/providers/downloads/ui/DownloadCursorLoader;->baseQuery:Lcom/android/providers/downloads/ui/DownloadQuery;

    iget-object v2, p0, Lcom/android/providers/downloads/ui/DownloadCursorLoader;->baseQuery:Lcom/android/providers/downloads/ui/DownloadQuery;

    const-string v3, "_id"

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Lcom/android/providers/downloads/ui/DownloadQuery;->orderBy(Ljava/lang/String;I)Lcom/android/providers/downloads/ui/DownloadQuery;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/providers/downloads/ui/DownloadQuery;->query(Lcom/android/providers/downloads/ui/DownloadQuery;)Landroid/database/Cursor;

    move-result-object v0

    .line 41
    .local v0, "cursor":Landroid/database/Cursor;
    if-eqz v0, :cond_1

    .line 43
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    .line 44
    iget-object v1, p0, Lcom/android/providers/downloads/ui/DownloadCursorLoader;->mObserver:Landroid/content/Loader$ForceLoadContentObserver;

    invoke-virtual {p0, v0, v1}, Lcom/android/providers/downloads/ui/DownloadCursorLoader;->registerContentObserver(Landroid/database/Cursor;Landroid/database/ContentObserver;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 46
    :cond_1
    return-object v0

    .line 47
    .end local v0    # "cursor":Landroid/database/Cursor;
    :catchall_1
    move-exception v1

    throw v1
.end method

.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 14
    invoke-virtual {p0}, Lcom/android/providers/downloads/ui/DownloadCursorLoader;->loadInBackground()Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public onCanceled(Landroid/database/Cursor;)V
    .locals 1
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 133
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 134
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 136
    :cond_0
    return-void
.end method

.method public bridge synthetic onCanceled(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 14
    check-cast p1, Landroid/database/Cursor;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/providers/downloads/ui/DownloadCursorLoader;->onCanceled(Landroid/database/Cursor;)V

    return-void
.end method

.method protected onReset()V
    .locals 1

    .prologue
    .line 140
    invoke-super {p0}, Landroid/content/AsyncTaskLoader;->onReset()V

    .line 143
    invoke-virtual {p0}, Lcom/android/providers/downloads/ui/DownloadCursorLoader;->onStopLoading()V

    .line 145
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadCursorLoader;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadCursorLoader;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 146
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadCursorLoader;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 148
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/providers/downloads/ui/DownloadCursorLoader;->mCursor:Landroid/database/Cursor;

    .line 149
    return-void
.end method

.method protected onStartLoading()V
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadCursorLoader;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadCursorLoader;->mCursor:Landroid/database/Cursor;

    invoke-virtual {p0, v0}, Lcom/android/providers/downloads/ui/DownloadCursorLoader;->deliverResult(Landroid/database/Cursor;)V

    .line 117
    :cond_0
    invoke-virtual {p0}, Lcom/android/providers/downloads/ui/DownloadCursorLoader;->takeContentChanged()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadCursorLoader;->mCursor:Landroid/database/Cursor;

    if-nez v0, :cond_2

    .line 118
    :cond_1
    invoke-virtual {p0}, Lcom/android/providers/downloads/ui/DownloadCursorLoader;->forceLoad()V

    .line 120
    :cond_2
    return-void
.end method

.method protected onStopLoading()V
    .locals 0

    .prologue
    .line 128
    invoke-virtual {p0}, Lcom/android/providers/downloads/ui/DownloadCursorLoader;->cancelLoad()Z

    .line 129
    return-void
.end method

.method registerContentObserver(Landroid/database/Cursor;Landroid/database/ContentObserver;)V
    .locals 1
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "observer"    # Landroid/database/ContentObserver;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadCursorLoader;->mObserver:Landroid/content/Loader$ForceLoadContentObserver;

    invoke-interface {p1, v0}, Landroid/database/Cursor;->registerContentObserver(Landroid/database/ContentObserver;)V

    .line 63
    return-void
.end method
