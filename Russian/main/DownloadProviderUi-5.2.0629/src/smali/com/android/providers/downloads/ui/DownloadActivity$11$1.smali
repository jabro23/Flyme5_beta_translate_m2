.class Lcom/android/providers/downloads/ui/DownloadActivity$11$1;
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


# direct methods
.method constructor <init>(Lcom/android/providers/downloads/ui/DownloadActivity$11;)V
    .locals 0

    .prologue
    .line 566
    iput-object p1, p0, Lcom/android/providers/downloads/ui/DownloadActivity$11$1;->this$1:Lcom/android/providers/downloads/ui/DownloadActivity$11;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 568
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 569
    return-void
.end method
