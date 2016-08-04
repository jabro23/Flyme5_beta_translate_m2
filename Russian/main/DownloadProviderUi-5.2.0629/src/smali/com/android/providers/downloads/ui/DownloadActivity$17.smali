.class Lcom/android/providers/downloads/ui/DownloadActivity$17;
.super Ljava/lang/Object;
.source "DownloadActivity.java"

# interfaces
.implements Lcom/meizu/common/app/SlideNotice$OnClickNoticeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/providers/downloads/ui/DownloadActivity;->showNetWorkUnavailable()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/providers/downloads/ui/DownloadActivity;


# direct methods
.method constructor <init>(Lcom/android/providers/downloads/ui/DownloadActivity;)V
    .locals 0

    .prologue
    .line 1639
    iput-object p1, p0, Lcom/android/providers/downloads/ui/DownloadActivity$17;->this$0:Lcom/android/providers/downloads/ui/DownloadActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Lcom/meizu/common/app/SlideNotice;)V
    .locals 3
    .param p1, "notice"    # Lcom/meizu/common/app/SlideNotice;

    .prologue
    .line 1642
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadActivity$17;->this$0:Lcom/android/providers/downloads/ui/DownloadActivity;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/android/providers/downloads/ui/DownloadActivity;->startActivity(Landroid/content/Intent;)V

    .line 1643
    return-void
.end method
