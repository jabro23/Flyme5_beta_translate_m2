.class Lcom/android/providers/downloads/ui/DownloadActivity$11$2;
.super Ljava/lang/Object;
.source "DownloadActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/providers/downloads/ui/DownloadActivity$11;->onItemClick(Lflyme/support/v7/widget/RecyclerView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/providers/downloads/ui/DownloadActivity$11;

.field final synthetic val$mid:J

.field final synthetic val$status:I


# direct methods
.method constructor <init>(Lcom/android/providers/downloads/ui/DownloadActivity$11;IJ)V
    .locals 1

    .prologue
    .line 559
    iput-object p1, p0, Lcom/android/providers/downloads/ui/DownloadActivity$11$2;->this$1:Lcom/android/providers/downloads/ui/DownloadActivity$11;

    iput p2, p0, Lcom/android/providers/downloads/ui/DownloadActivity$11$2;->val$status:I

    iput-wide p3, p0, Lcom/android/providers/downloads/ui/DownloadActivity$11$2;->val$mid:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 561
    iget v0, p0, Lcom/android/providers/downloads/ui/DownloadActivity$11$2;->val$status:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 562
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadActivity$11$2;->this$1:Lcom/android/providers/downloads/ui/DownloadActivity$11;

    iget-object v0, v0, Lcom/android/providers/downloads/ui/DownloadActivity$11;->this$0:Lcom/android/providers/downloads/ui/DownloadActivity;

    iget-wide v2, p0, Lcom/android/providers/downloads/ui/DownloadActivity$11$2;->val$mid:J

    iget v1, p0, Lcom/android/providers/downloads/ui/DownloadActivity$11$2;->val$status:I

    # invokes: Lcom/android/providers/downloads/ui/DownloadActivity;->updateStatus(JI)V
    invoke-static {v0, v2, v3, v1}, Lcom/android/providers/downloads/ui/DownloadActivity;->access$1600(Lcom/android/providers/downloads/ui/DownloadActivity;JI)V

    .line 564
    :cond_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 565
    return-void
.end method
