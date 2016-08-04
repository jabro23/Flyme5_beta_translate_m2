.class Lcom/android/providers/downloads/ui/DownloadActivity$SelectionModeCallback$3;
.super Ljava/lang/Object;
.source "DownloadActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/providers/downloads/ui/DownloadActivity$SelectionModeCallback;->deleteConfirmDialog(Lflyme/support/v7/widget/MzRecyclerView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/providers/downloads/ui/DownloadActivity$SelectionModeCallback;


# direct methods
.method constructor <init>(Lcom/android/providers/downloads/ui/DownloadActivity$SelectionModeCallback;)V
    .locals 0

    .prologue
    .line 2121
    iput-object p1, p0, Lcom/android/providers/downloads/ui/DownloadActivity$SelectionModeCallback$3;->this$1:Lcom/android/providers/downloads/ui/DownloadActivity$SelectionModeCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 2124
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadActivity$SelectionModeCallback$3;->this$1:Lcom/android/providers/downloads/ui/DownloadActivity$SelectionModeCallback;

    iget-object v0, v0, Lcom/android/providers/downloads/ui/DownloadActivity$SelectionModeCallback;->this$0:Lcom/android/providers/downloads/ui/DownloadActivity;

    const/4 v1, 0x0

    # setter for: Lcom/android/providers/downloads/ui/DownloadActivity;->mDeleteDialog:Landroid/support/v7/app/AlertDialog;
    invoke-static {v0, v1}, Lcom/android/providers/downloads/ui/DownloadActivity;->access$1402(Lcom/android/providers/downloads/ui/DownloadActivity;Landroid/support/v7/app/AlertDialog;)Landroid/support/v7/app/AlertDialog;

    .line 2125
    return-void
.end method
