.class Lcom/android/providers/downloads/ui/DownloadedRecyclerAdapter$ViewHolder$1;
.super Ljava/lang/Object;
.source "DownloadedRecyclerAdapter.java"

# interfaces
.implements Lcom/meizu/common/widget/AnimCheckBox$UpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/providers/downloads/ui/DownloadedRecyclerAdapter$ViewHolder;-><init>(Lcom/android/providers/downloads/ui/DownloadedRecyclerAdapter;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/providers/downloads/ui/DownloadedRecyclerAdapter$ViewHolder;

.field final synthetic val$this$0:Lcom/android/providers/downloads/ui/DownloadedRecyclerAdapter;


# direct methods
.method constructor <init>(Lcom/android/providers/downloads/ui/DownloadedRecyclerAdapter$ViewHolder;Lcom/android/providers/downloads/ui/DownloadedRecyclerAdapter;)V
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Lcom/android/providers/downloads/ui/DownloadedRecyclerAdapter$ViewHolder$1;->this$1:Lcom/android/providers/downloads/ui/DownloadedRecyclerAdapter$ViewHolder;

    iput-object p2, p0, Lcom/android/providers/downloads/ui/DownloadedRecyclerAdapter$ViewHolder$1;->val$this$0:Lcom/android/providers/downloads/ui/DownloadedRecyclerAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getUpdateTransition(F)V
    .locals 2
    .param p1, "delta"    # F

    .prologue
    .line 47
    iget-object v1, p0, Lcom/android/providers/downloads/ui/DownloadedRecyclerAdapter$ViewHolder$1;->this$1:Lcom/android/providers/downloads/ui/DownloadedRecyclerAdapter$ViewHolder;

    iget-object v1, v1, Lcom/android/providers/downloads/ui/DownloadedRecyclerAdapter$ViewHolder;->download_info:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 48
    .local v0, "params":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v1, p0, Lcom/android/providers/downloads/ui/DownloadedRecyclerAdapter$ViewHolder$1;->this$1:Lcom/android/providers/downloads/ui/DownloadedRecyclerAdapter$ViewHolder;

    iget-object v1, v1, Lcom/android/providers/downloads/ui/DownloadedRecyclerAdapter$ViewHolder;->this$0:Lcom/android/providers/downloads/ui/DownloadedRecyclerAdapter;

    # getter for: Lcom/android/providers/downloads/ui/DownloadedRecyclerAdapter;->mDistance:I
    invoke-static {v1}, Lcom/android/providers/downloads/ui/DownloadedRecyclerAdapter;->access$000(Lcom/android/providers/downloads/ui/DownloadedRecyclerAdapter;)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, p1

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 49
    iget-object v1, p0, Lcom/android/providers/downloads/ui/DownloadedRecyclerAdapter$ViewHolder$1;->this$1:Lcom/android/providers/downloads/ui/DownloadedRecyclerAdapter$ViewHolder;

    iget-object v1, v1, Lcom/android/providers/downloads/ui/DownloadedRecyclerAdapter$ViewHolder;->download_info:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 50
    return-void
.end method
