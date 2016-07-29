.class public Lcom/android/providers/downloads/ui/ThumbnailAsyncTask;
.super Landroid/os/AsyncTask;
.source "ThumbnailAsyncTask.java"

# interfaces
.implements Lcom/android/providers/downloads/ui/ThumbnailExecutor$Preemptable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Landroid/graphics/Bitmap;",
        ">;",
        "Lcom/android/providers/downloads/ui/ThumbnailExecutor$Preemptable;"
    }
.end annotation


# instance fields
.field private mCacheId:J

.field private mContext:Landroid/content/Context;

.field private mFilePath:Ljava/lang/String;

.field private mViewWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;J)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "filePath"    # Ljava/lang/String;
    .param p3, "iconThumb"    # Landroid/widget/ImageView;
    .param p4, "cacheId"    # J

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/android/providers/downloads/ui/ThumbnailAsyncTask;->mContext:Landroid/content/Context;

    .line 18
    iput-object p2, p0, Lcom/android/providers/downloads/ui/ThumbnailAsyncTask;->mFilePath:Ljava/lang/String;

    .line 19
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/providers/downloads/ui/ThumbnailAsyncTask;->mViewWeakReference:Ljava/lang/ref/WeakReference;

    .line 20
    iput-wide p4, p0, Lcom/android/providers/downloads/ui/ThumbnailAsyncTask;->mCacheId:J

    .line 21
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Landroid/graphics/Bitmap;
    .locals 4
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 39
    invoke-virtual {p0}, Lcom/android/providers/downloads/ui/ThumbnailAsyncTask;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    .line 46
    :cond_0
    :goto_0
    return-object v0

    .line 41
    :cond_1
    iget-object v1, p0, Lcom/android/providers/downloads/ui/ThumbnailAsyncTask;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/providers/downloads/ui/ThumbnailAsyncTask;->mFilePath:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/android/providers/downloads/ui/DownloadHelper;->getThumb(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 42
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 43
    iget-wide v2, p0, Lcom/android/providers/downloads/ui/ThumbnailAsyncTask;->mCacheId:J

    new-instance v1, Lcom/android/providers/downloads/ui/CacheManager$DownloadBitmap;

    invoke-direct {v1, v0}, Lcom/android/providers/downloads/ui/CacheManager$DownloadBitmap;-><init>(Landroid/graphics/Bitmap;)V

    invoke-static {v2, v3, v1}, Lcom/android/providers/downloads/ui/CacheManager;->putDownloadBitmap(JLcom/android/providers/downloads/ui/CacheManager$DownloadBitmap;)Lcom/android/providers/downloads/ui/CacheManager$DownloadBitmap;

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 10
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/providers/downloads/ui/ThumbnailAsyncTask;->doInBackground([Ljava/lang/Void;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected onCancelled()V
    .locals 2

    .prologue
    .line 30
    iget-object v1, p0, Lcom/android/providers/downloads/ui/ThumbnailAsyncTask;->mViewWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 31
    .local v0, "imageView":Landroid/widget/ImageView;
    if-eqz v0, :cond_0

    .line 32
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 34
    :cond_0
    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    .line 35
    return-void
.end method

.method protected onPostExecute(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "result"    # Landroid/graphics/Bitmap;

    .prologue
    .line 51
    iget-object v1, p0, Lcom/android/providers/downloads/ui/ThumbnailAsyncTask;->mViewWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 52
    .local v0, "imageView":Landroid/widget/ImageView;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p0, :cond_0

    if-eqz p1, :cond_0

    .line 53
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 54
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 56
    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 10
    check-cast p1, Landroid/graphics/Bitmap;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/providers/downloads/ui/ThumbnailAsyncTask;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public preempt()V
    .locals 1

    .prologue
    .line 25
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/providers/downloads/ui/ThumbnailAsyncTask;->cancel(Z)Z

    .line 26
    return-void
.end method
