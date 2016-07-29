.class Lcom/android/providers/downloads/ui/OpenFileWithActivity$DownloadInfoObserver;
.super Landroid/database/ContentObserver;
.source "OpenFileWithActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/downloads/ui/OpenFileWithActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DownloadInfoObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/providers/downloads/ui/OpenFileWithActivity;


# direct methods
.method public constructor <init>(Lcom/android/providers/downloads/ui/OpenFileWithActivity;)V
    .locals 1

    .prologue
    .line 56
    iput-object p1, p0, Lcom/android/providers/downloads/ui/OpenFileWithActivity$DownloadInfoObserver;->this$0:Lcom/android/providers/downloads/ui/OpenFileWithActivity;

    .line 57
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 58
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/providers/downloads/ui/OpenFileWithActivity$DownloadInfoObserver;->this$0:Lcom/android/providers/downloads/ui/OpenFileWithActivity;

    # invokes: Lcom/android/providers/downloads/ui/OpenFileWithActivity;->updateDownloadInfo()V
    invoke-static {v0}, Lcom/android/providers/downloads/ui/OpenFileWithActivity;->access$000(Lcom/android/providers/downloads/ui/OpenFileWithActivity;)V

    .line 63
    return-void
.end method
