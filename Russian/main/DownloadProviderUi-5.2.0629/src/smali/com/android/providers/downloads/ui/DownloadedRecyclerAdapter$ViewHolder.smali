.class public Lcom/android/providers/downloads/ui/DownloadedRecyclerAdapter$ViewHolder;
.super Lflyme/support/v7/widget/RecyclerView$ViewHolder;
.source "DownloadedRecyclerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/downloads/ui/DownloadedRecyclerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewHolder"
.end annotation


# instance fields
.field checkbox:Lcom/meizu/common/widget/AnimCheckBox;

.field complete_path:Landroid/widget/TextView;

.field complete_size:Landroid/widget/TextView;

.field complete_time:Landroid/widget/TextView;

.field download_icon:Landroid/widget/ImageView;

.field download_info:Landroid/widget/LinearLayout;

.field download_title:Landroid/widget/TextView;

.field id:J

.field final synthetic this$0:Lcom/android/providers/downloads/ui/DownloadedRecyclerAdapter;


# direct methods
.method public constructor <init>(Lcom/android/providers/downloads/ui/DownloadedRecyclerAdapter;Landroid/view/View;)V
    .locals 2
    .param p2, "v"    # Landroid/view/View;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/android/providers/downloads/ui/DownloadedRecyclerAdapter$ViewHolder;->this$0:Lcom/android/providers/downloads/ui/DownloadedRecyclerAdapter;

    .line 35
    invoke-direct {p0, p2}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 36
    const v0, 0x7f0d008a

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/providers/downloads/ui/DownloadedRecyclerAdapter$ViewHolder;->download_icon:Landroid/widget/ImageView;

    .line 37
    const v0, 0x7f0d008b

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/providers/downloads/ui/DownloadedRecyclerAdapter$ViewHolder;->download_title:Landroid/widget/TextView;

    .line 38
    const v0, 0x7f0d008f

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/providers/downloads/ui/DownloadedRecyclerAdapter$ViewHolder;->complete_size:Landroid/widget/TextView;

    .line 39
    const v0, 0x7f0d008c

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/providers/downloads/ui/DownloadedRecyclerAdapter$ViewHolder;->complete_path:Landroid/widget/TextView;

    .line 40
    const v0, 0x7f0d008e

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/providers/downloads/ui/DownloadedRecyclerAdapter$ViewHolder;->complete_time:Landroid/widget/TextView;

    .line 41
    const v0, 0x1020001

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/meizu/common/widget/AnimCheckBox;

    iput-object v0, p0, Lcom/android/providers/downloads/ui/DownloadedRecyclerAdapter$ViewHolder;->checkbox:Lcom/meizu/common/widget/AnimCheckBox;

    .line 42
    const v0, 0x7f0d008d

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/providers/downloads/ui/DownloadedRecyclerAdapter$ViewHolder;->download_info:Landroid/widget/LinearLayout;

    .line 43
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/providers/downloads/ui/DownloadedRecyclerAdapter$ViewHolder;->id:J

    .line 44
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadedRecyclerAdapter$ViewHolder;->checkbox:Lcom/meizu/common/widget/AnimCheckBox;

    new-instance v1, Lcom/android/providers/downloads/ui/DownloadedRecyclerAdapter$ViewHolder$1;

    invoke-direct {v1, p0, p1}, Lcom/android/providers/downloads/ui/DownloadedRecyclerAdapter$ViewHolder$1;-><init>(Lcom/android/providers/downloads/ui/DownloadedRecyclerAdapter$ViewHolder;Lcom/android/providers/downloads/ui/DownloadedRecyclerAdapter;)V

    invoke-virtual {v0, v1}, Lcom/meizu/common/widget/AnimCheckBox;->setUpdateListner(Lcom/meizu/common/widget/AnimCheckBox$UpdateListener;)V

    .line 52
    return-void
.end method
