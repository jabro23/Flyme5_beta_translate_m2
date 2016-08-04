.class Lcom/android/providers/downloads/ui/DownloadActivity$8;
.super Ljava/lang/Object;
.source "DownloadActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/providers/downloads/ui/DownloadActivity;->showDeleteDialog(JLjava/lang/String;)V
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
    .line 474
    iput-object p1, p0, Lcom/android/providers/downloads/ui/DownloadActivity$8;->this$0:Lcom/android/providers/downloads/ui/DownloadActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 477
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadActivity$8;->this$0:Lcom/android/providers/downloads/ui/DownloadActivity;

    # getter for: Lcom/android/providers/downloads/ui/DownloadActivity;->mDeleteSeletedId:J
    invoke-static {v0}, Lcom/android/providers/downloads/ui/DownloadActivity;->access$1200(Lcom/android/providers/downloads/ui/DownloadActivity;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    if-nez p2, :cond_0

    .line 478
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadActivity$8;->this$0:Lcom/android/providers/downloads/ui/DownloadActivity;

    iget-object v1, p0, Lcom/android/providers/downloads/ui/DownloadActivity$8;->this$0:Lcom/android/providers/downloads/ui/DownloadActivity;

    # getter for: Lcom/android/providers/downloads/ui/DownloadActivity;->mDeleteSeletedId:J
    invoke-static {v1}, Lcom/android/providers/downloads/ui/DownloadActivity;->access$1200(Lcom/android/providers/downloads/ui/DownloadActivity;)J

    move-result-wide v2

    # invokes: Lcom/android/providers/downloads/ui/DownloadActivity;->deleteItemById(J)V
    invoke-static {v0, v2, v3}, Lcom/android/providers/downloads/ui/DownloadActivity;->access$1300(Lcom/android/providers/downloads/ui/DownloadActivity;J)V

    .line 479
    sget-boolean v0, Lcom/android/providers/downloads/ui/EventAgentUtils;->SWITCHER:Z

    if-eqz v0, :cond_0

    .line 480
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadActivity$8;->this$0:Lcom/android/providers/downloads/ui/DownloadActivity;

    const-string v1, "Delete_task"

    invoke-static {v0, v1}, Lcom/android/providers/downloads/ui/EventAgentUtils;->onAction(Landroid/content/Context;Ljava/lang/String;)V

    .line 482
    :cond_0
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadActivity$8;->this$0:Lcom/android/providers/downloads/ui/DownloadActivity;

    const-wide/16 v2, -0x1

    # setter for: Lcom/android/providers/downloads/ui/DownloadActivity;->mDeleteSeletedId:J
    invoke-static {v0, v2, v3}, Lcom/android/providers/downloads/ui/DownloadActivity;->access$1202(Lcom/android/providers/downloads/ui/DownloadActivity;J)J

    .line 483
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadActivity$8;->this$0:Lcom/android/providers/downloads/ui/DownloadActivity;

    # getter for: Lcom/android/providers/downloads/ui/DownloadActivity;->mDeleteDialog:Landroid/support/v7/app/AlertDialog;
    invoke-static {v0}, Lcom/android/providers/downloads/ui/DownloadActivity;->access$1400(Lcom/android/providers/downloads/ui/DownloadActivity;)Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->dismiss()V

    .line 484
    return-void
.end method
