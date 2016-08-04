.class Lcom/android/providers/downloads/ui/DownloadActivity$13;
.super Ljava/lang/Object;
.source "DownloadActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/providers/downloads/ui/DownloadActivity;->newDownloadTask()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/providers/downloads/ui/DownloadActivity;

.field final synthetic val$editText:Landroid/widget/EditText;

.field final synthetic val$hints:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/providers/downloads/ui/DownloadActivity;Landroid/widget/EditText;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 1295
    iput-object p1, p0, Lcom/android/providers/downloads/ui/DownloadActivity$13;->this$0:Lcom/android/providers/downloads/ui/DownloadActivity;

    iput-object p2, p0, Lcom/android/providers/downloads/ui/DownloadActivity$13;->val$editText:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/android/providers/downloads/ui/DownloadActivity$13;->val$hints:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 8
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v6, 0x0

    .line 1298
    const/4 v7, 0x0

    .line 1299
    .local v7, "success":Z
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadActivity$13;->val$editText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1300
    .local v2, "url":Ljava/lang/String;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadActivity$13;->this$0:Lcom/android/providers/downloads/ui/DownloadActivity;

    # invokes: Lcom/android/providers/downloads/ui/DownloadActivity;->isUrl(Ljava/lang/String;)Z
    invoke-static {v0, v2}, Lcom/android/providers/downloads/ui/DownloadActivity;->access$2100(Lcom/android/providers/downloads/ui/DownloadActivity;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1301
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadActivity$13;->this$0:Lcom/android/providers/downloads/ui/DownloadActivity;

    iget-object v1, p0, Lcom/android/providers/downloads/ui/DownloadActivity$13;->this$0:Lcom/android/providers/downloads/ui/DownloadActivity;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v6}, Lcom/android/providers/downloads/ui/DownloadActivity;->onDownloadStartNoStream(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v7

    .line 1308
    :cond_0
    if-nez v7, :cond_1

    .line 1309
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadActivity$13;->val$hints:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1310
    iget-object v1, p0, Lcom/android/providers/downloads/ui/DownloadActivity$13;->this$0:Lcom/android/providers/downloads/ui/DownloadActivity;

    move-object v0, p1

    check-cast v0, Landroid/support/v7/app/AlertDialog;

    # invokes: Lcom/android/providers/downloads/ui/DownloadActivity;->setDialogDismissable(Landroid/support/v7/app/AlertDialog;Z)V
    invoke-static {v1, v0, v6}, Lcom/android/providers/downloads/ui/DownloadActivity;->access$2200(Lcom/android/providers/downloads/ui/DownloadActivity;Landroid/support/v7/app/AlertDialog;Z)V

    .line 1311
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadActivity$13;->this$0:Lcom/android/providers/downloads/ui/DownloadActivity;

    # getter for: Lcom/android/providers/downloads/ui/DownloadActivity;->mDownloadListHandler:Lcom/android/providers/downloads/ui/DownloadActivity$DownloadListHandler;
    invoke-static {v0}, Lcom/android/providers/downloads/ui/DownloadActivity;->access$2300(Lcom/android/providers/downloads/ui/DownloadActivity;)Lcom/android/providers/downloads/ui/DownloadActivity$DownloadListHandler;

    move-result-object v0

    const/16 v1, 0x14

    # invokes: Lcom/android/providers/downloads/ui/DownloadActivity$DownloadListHandler;->sendResult(ILjava/lang/Object;)V
    invoke-static {v0, v1, p1}, Lcom/android/providers/downloads/ui/DownloadActivity$DownloadListHandler;->access$2000(Lcom/android/providers/downloads/ui/DownloadActivity$DownloadListHandler;ILjava/lang/Object;)V

    .line 1313
    :cond_1
    return-void
.end method
