.class public final Lcom/android/providers/downloads/ui/CacheManager$DownloadInfo;
.super Ljava/lang/Object;
.source "CacheManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/downloads/ui/CacheManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DownloadInfo"
.end annotation


# instance fields
.field public lastSize:J

.field public lastSpeed:J

.field public lastTime:J

.field public speedFlag:Z


# direct methods
.method public constructor <init>(JJJZ)V
    .locals 1
    .param p1, "lastSize"    # J
    .param p3, "lastTime"    # J
    .param p5, "lastSpeed"    # J
    .param p7, "flag"    # Z

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-wide p1, p0, Lcom/android/providers/downloads/ui/CacheManager$DownloadInfo;->lastSize:J

    .line 15
    iput-wide p3, p0, Lcom/android/providers/downloads/ui/CacheManager$DownloadInfo;->lastTime:J

    .line 16
    iput-wide p5, p0, Lcom/android/providers/downloads/ui/CacheManager$DownloadInfo;->lastSpeed:J

    .line 17
    iput-boolean p7, p0, Lcom/android/providers/downloads/ui/CacheManager$DownloadInfo;->speedFlag:Z

    .line 18
    return-void
.end method
