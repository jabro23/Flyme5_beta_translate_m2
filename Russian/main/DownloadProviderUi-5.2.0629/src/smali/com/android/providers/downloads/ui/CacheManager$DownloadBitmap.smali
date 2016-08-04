.class public final Lcom/android/providers/downloads/ui/CacheManager$DownloadBitmap;
.super Ljava/lang/Object;
.source "CacheManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/downloads/ui/CacheManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DownloadBitmap"
.end annotation


# instance fields
.field public mThumb:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "thumb"    # Landroid/graphics/Bitmap;

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/android/providers/downloads/ui/CacheManager$DownloadBitmap;->mThumb:Landroid/graphics/Bitmap;

    .line 31
    return-void
.end method
