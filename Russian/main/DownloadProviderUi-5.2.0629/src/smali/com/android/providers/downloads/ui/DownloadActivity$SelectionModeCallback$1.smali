.class Lcom/android/providers/downloads/ui/DownloadActivity$SelectionModeCallback$1;
.super Ljava/lang/Object;
.source "DownloadActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/providers/downloads/ui/DownloadActivity$SelectionModeCallback;->onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
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
    .line 2041
    iput-object p1, p0, Lcom/android/providers/downloads/ui/DownloadActivity$SelectionModeCallback$1;->this$1:Lcom/android/providers/downloads/ui/DownloadActivity$SelectionModeCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 2044
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadActivity$SelectionModeCallback$1;->this$1:Lcom/android/providers/downloads/ui/DownloadActivity$SelectionModeCallback;

    iget-object v0, v0, Lcom/android/providers/downloads/ui/DownloadActivity$SelectionModeCallback;->this$0:Lcom/android/providers/downloads/ui/DownloadActivity;

    # getter for: Lcom/android/providers/downloads/ui/DownloadActivity;->mSelectionMode:Landroid/view/ActionMode;
    invoke-static {v0}, Lcom/android/providers/downloads/ui/DownloadActivity;->access$100(Lcom/android/providers/downloads/ui/DownloadActivity;)Landroid/view/ActionMode;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadActivity$SelectionModeCallback$1;->this$1:Lcom/android/providers/downloads/ui/DownloadActivity$SelectionModeCallback;

    iget-object v0, v0, Lcom/android/providers/downloads/ui/DownloadActivity$SelectionModeCallback;->this$0:Lcom/android/providers/downloads/ui/DownloadActivity;

    # getter for: Lcom/android/providers/downloads/ui/DownloadActivity;->mSelectionMode:Landroid/view/ActionMode;
    invoke-static {v0}, Lcom/android/providers/downloads/ui/DownloadActivity;->access$100(Lcom/android/providers/downloads/ui/DownloadActivity;)Landroid/view/ActionMode;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 2045
    :cond_0
    return-void
.end method
