.class Lcom/android/providers/downloads/ui/DownloadActivity$9;
.super Ljava/lang/Object;
.source "DownloadActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


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
    .line 486
    iput-object p1, p0, Lcom/android/providers/downloads/ui/DownloadActivity$9;->this$0:Lcom/android/providers/downloads/ui/DownloadActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 489
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadActivity$9;->this$0:Lcom/android/providers/downloads/ui/DownloadActivity;

    const-wide/16 v2, -0x1

    # setter for: Lcom/android/providers/downloads/ui/DownloadActivity;->mDeleteSeletedId:J
    invoke-static {v0, v2, v3}, Lcom/android/providers/downloads/ui/DownloadActivity;->access$1202(Lcom/android/providers/downloads/ui/DownloadActivity;J)J

    .line 490
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadActivity$9;->this$0:Lcom/android/providers/downloads/ui/DownloadActivity;

    const/4 v1, 0x0

    # setter for: Lcom/android/providers/downloads/ui/DownloadActivity;->mDeleteDialog:Landroid/support/v7/app/AlertDialog;
    invoke-static {v0, v1}, Lcom/android/providers/downloads/ui/DownloadActivity;->access$1402(Lcom/android/providers/downloads/ui/DownloadActivity;Landroid/support/v7/app/AlertDialog;)Landroid/support/v7/app/AlertDialog;

    .line 491
    return-void
.end method
