.class Lcom/android/providers/downloads/ui/DownloadActivity$5;
.super Ljava/lang/Object;
.source "DownloadActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/providers/downloads/ui/DownloadActivity;->onResume()V
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
    .line 329
    iput-object p1, p0, Lcom/android/providers/downloads/ui/DownloadActivity$5;->this$0:Lcom/android/providers/downloads/ui/DownloadActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 332
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadActivity$5;->this$0:Lcom/android/providers/downloads/ui/DownloadActivity;

    # invokes: Lcom/android/providers/downloads/ui/DownloadActivity;->requestData()V
    invoke-static {v0}, Lcom/android/providers/downloads/ui/DownloadActivity;->access$1000(Lcom/android/providers/downloads/ui/DownloadActivity;)V

    .line 333
    return-void
.end method
