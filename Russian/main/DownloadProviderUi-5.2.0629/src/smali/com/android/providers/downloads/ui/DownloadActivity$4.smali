.class Lcom/android/providers/downloads/ui/DownloadActivity$4;
.super Ljava/lang/Object;
.source "DownloadActivity.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/downloads/ui/DownloadActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/app/LoaderManager$LoaderCallbacks",
        "<",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/providers/downloads/ui/DownloadActivity;


# direct methods
.method constructor <init>(Lcom/android/providers/downloads/ui/DownloadActivity;)V
    .locals 0

    .prologue
    .line 218
    iput-object p1, p0, Lcom/android/providers/downloads/ui/DownloadActivity$4;->this$0:Lcom/android/providers/downloads/ui/DownloadActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 1
    .param p1, "id"    # I
    .param p2, "args"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 221
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadActivity$4;->this$0:Lcom/android/providers/downloads/ui/DownloadActivity;

    invoke-virtual {v0}, Lcom/android/providers/downloads/ui/DownloadActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/providers/downloads/ui/DownloadCursorLoader;->createLoader(Landroid/content/Context;)Landroid/content/Loader;

    move-result-object v0

    return-object v0
.end method

.method public onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V
    .locals 2
    .param p2, "cursor"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    .prologue
    .line 226
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Landroid/database/Cursor;>;"
    if-nez p2, :cond_0

    .line 245
    :goto_0
    return-void

    .line 229
    :cond_0
    invoke-interface {p2}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 230
    invoke-virtual {p1}, Landroid/content/Loader;->forceLoad()V

    goto :goto_0

    .line 233
    :cond_1
    iget-object v1, p0, Lcom/android/providers/downloads/ui/DownloadActivity$4;->this$0:Lcom/android/providers/downloads/ui/DownloadActivity;

    # getter for: Lcom/android/providers/downloads/ui/DownloadActivity;->mFlag_First:Z
    invoke-static {v1}, Lcom/android/providers/downloads/ui/DownloadActivity;->access$400(Lcom/android/providers/downloads/ui/DownloadActivity;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 234
    iget-object v1, p0, Lcom/android/providers/downloads/ui/DownloadActivity$4;->this$0:Lcom/android/providers/downloads/ui/DownloadActivity;

    # invokes: Lcom/android/providers/downloads/ui/DownloadActivity;->initView()V
    invoke-static {v1}, Lcom/android/providers/downloads/ui/DownloadActivity;->access$500(Lcom/android/providers/downloads/ui/DownloadActivity;)V

    .line 235
    iget-object v1, p0, Lcom/android/providers/downloads/ui/DownloadActivity$4;->this$0:Lcom/android/providers/downloads/ui/DownloadActivity;

    # invokes: Lcom/android/providers/downloads/ui/DownloadActivity;->initDownloadManager()V
    invoke-static {v1}, Lcom/android/providers/downloads/ui/DownloadActivity;->access$600(Lcom/android/providers/downloads/ui/DownloadActivity;)V

    .line 238
    :cond_2
    iget-object v1, p0, Lcom/android/providers/downloads/ui/DownloadActivity$4;->this$0:Lcom/android/providers/downloads/ui/DownloadActivity;

    invoke-virtual {v1}, Lcom/android/providers/downloads/ui/DownloadActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/providers/downloads/ui/NetworkUtils;->getActiveNetworkInfo(Landroid/content/Context;)Landroid/net/NetworkInfo;

    move-result-object v0

    .line 239
    .local v0, "networkInfo":Landroid/net/NetworkInfo;
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 240
    iget-object v1, p0, Lcom/android/providers/downloads/ui/DownloadActivity$4;->this$0:Lcom/android/providers/downloads/ui/DownloadActivity;

    # invokes: Lcom/android/providers/downloads/ui/DownloadActivity;->dismissSlideNotice()V
    invoke-static {v1}, Lcom/android/providers/downloads/ui/DownloadActivity;->access$700(Lcom/android/providers/downloads/ui/DownloadActivity;)V

    .line 242
    :cond_3
    iget-object v1, p0, Lcom/android/providers/downloads/ui/DownloadActivity$4;->this$0:Lcom/android/providers/downloads/ui/DownloadActivity;

    invoke-virtual {v1, p2}, Lcom/android/providers/downloads/ui/DownloadActivity;->buildMap(Landroid/database/Cursor;)V

    .line 243
    iget-object v1, p0, Lcom/android/providers/downloads/ui/DownloadActivity$4;->this$0:Lcom/android/providers/downloads/ui/DownloadActivity;

    # setter for: Lcom/android/providers/downloads/ui/DownloadActivity;->mDownloadCursor:Landroid/database/Cursor;
    invoke-static {v1, p2}, Lcom/android/providers/downloads/ui/DownloadActivity;->access$802(Lcom/android/providers/downloads/ui/DownloadActivity;Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 244
    iget-object v1, p0, Lcom/android/providers/downloads/ui/DownloadActivity$4;->this$0:Lcom/android/providers/downloads/ui/DownloadActivity;

    # invokes: Lcom/android/providers/downloads/ui/DownloadActivity;->setPage()V
    invoke-static {v1}, Lcom/android/providers/downloads/ui/DownloadActivity;->access$900(Lcom/android/providers/downloads/ui/DownloadActivity;)V

    goto :goto_0
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Landroid/content/Loader;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 218
    check-cast p2, Landroid/database/Cursor;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/android/providers/downloads/ui/DownloadActivity$4;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 248
    .local p1, "arg0":Landroid/content/Loader;, "Landroid/content/Loader<Landroid/database/Cursor;>;"
    return-void
.end method
