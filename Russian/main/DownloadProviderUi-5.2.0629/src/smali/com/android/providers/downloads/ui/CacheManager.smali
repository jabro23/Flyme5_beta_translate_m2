.class public Lcom/android/providers/downloads/ui/CacheManager;
.super Ljava/lang/Object;
.source "CacheManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/providers/downloads/ui/CacheManager$DownloadBitmap;,
        Lcom/android/providers/downloads/ui/CacheManager$DownloadInfo;
    }
.end annotation


# static fields
.field private static mDownloadBitmaps:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/providers/downloads/ui/CacheManager$DownloadBitmap;",
            ">;"
        }
    .end annotation
.end field

.field private static mDownloadInfo:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/providers/downloads/ui/CacheManager$DownloadInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/providers/downloads/ui/CacheManager;->mDownloadInfo:Ljava/util/HashMap;

    .line 34
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/providers/downloads/ui/CacheManager;->mDownloadBitmaps:Ljava/util/HashMap;

    return-void
.end method

.method public static clearDownloadBitmap()V
    .locals 1

    .prologue
    .line 62
    sget-object v0, Lcom/android/providers/downloads/ui/CacheManager;->mDownloadBitmaps:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 63
    return-void
.end method

.method public static clearDownloadInfo()V
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lcom/android/providers/downloads/ui/CacheManager;->mDownloadInfo:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 50
    return-void
.end method

.method public static getDownloadBitmap(J)Lcom/android/providers/downloads/ui/CacheManager$DownloadBitmap;
    .locals 2
    .param p0, "id"    # J

    .prologue
    .line 54
    sget-object v0, Lcom/android/providers/downloads/ui/CacheManager;->mDownloadBitmaps:Ljava/util/HashMap;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/providers/downloads/ui/CacheManager$DownloadBitmap;

    return-object v0
.end method

.method public static putDownloadBitmap(JLcom/android/providers/downloads/ui/CacheManager$DownloadBitmap;)Lcom/android/providers/downloads/ui/CacheManager$DownloadBitmap;
    .locals 2
    .param p0, "id"    # J
    .param p2, "bitmap"    # Lcom/android/providers/downloads/ui/CacheManager$DownloadBitmap;

    .prologue
    .line 58
    sget-object v0, Lcom/android/providers/downloads/ui/CacheManager;->mDownloadBitmaps:Ljava/util/HashMap;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/providers/downloads/ui/CacheManager$DownloadBitmap;

    return-object v0
.end method

.method public static putDownloadInfo(JLcom/android/providers/downloads/ui/CacheManager$DownloadInfo;)V
    .locals 2
    .param p0, "id"    # J
    .param p2, "info"    # Lcom/android/providers/downloads/ui/CacheManager$DownloadInfo;

    .prologue
    .line 45
    sget-object v0, Lcom/android/providers/downloads/ui/CacheManager;->mDownloadInfo:Ljava/util/HashMap;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    return-void
.end method

.method public static removeDownloadInfo(J)Lcom/android/providers/downloads/ui/CacheManager$DownloadInfo;
    .locals 2
    .param p0, "id"    # J

    .prologue
    .line 41
    sget-object v0, Lcom/android/providers/downloads/ui/CacheManager;->mDownloadInfo:Ljava/util/HashMap;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/providers/downloads/ui/CacheManager$DownloadInfo;

    return-object v0
.end method
