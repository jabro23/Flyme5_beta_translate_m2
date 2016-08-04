.class public Lcom/android/providers/downloads/ui/DownloadingRecyclerAdapter$ViewHolder;
.super Lflyme/support/v7/widget/RecyclerView$ViewHolder;
.source "DownloadingRecyclerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/downloads/ui/DownloadingRecyclerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewHolder"
.end annotation


# instance fields
.field buttonListener:Lcom/android/providers/downloads/ui/DownloadingRecyclerAdapter$ButtonListener;

.field download_icon:Landroid/widget/ImageView;

.field download_size:Landroid/widget/TextView;

.field download_speed:Landroid/widget/TextView;

.field download_title:Landroid/widget/TextView;

.field id:J

.field progress_bar:Lcom/meizu/common/widget/CircularProgressButton;

.field status:I

.field final synthetic this$0:Lcom/android/providers/downloads/ui/DownloadingRecyclerAdapter;


# direct methods
.method public constructor <init>(Lcom/android/providers/downloads/ui/DownloadingRecyclerAdapter;Landroid/view/View;)V
    .locals 3
    .param p2, "v"    # Landroid/view/View;

    .prologue
    .line 51
    iput-object p1, p0, Lcom/android/providers/downloads/ui/DownloadingRecyclerAdapter$ViewHolder;->this$0:Lcom/android/providers/downloads/ui/DownloadingRecyclerAdapter;

    .line 52
    invoke-direct {p0, p2}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 53
    const v0, 0x7f0d008a

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/providers/downloads/ui/DownloadingRecyclerAdapter$ViewHolder;->download_icon:Landroid/widget/ImageView;

    .line 54
    const v0, 0x7f0d008b

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/providers/downloads/ui/DownloadingRecyclerAdapter$ViewHolder;->download_title:Landroid/widget/TextView;

    .line 55
    const v0, 0x7f0d0091

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/providers/downloads/ui/DownloadingRecyclerAdapter$ViewHolder;->download_speed:Landroid/widget/TextView;

    .line 56
    const v0, 0x7f0d0090

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/providers/downloads/ui/DownloadingRecyclerAdapter$ViewHolder;->download_size:Landroid/widget/TextView;

    .line 57
    const v0, 0x7f0d0092

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/meizu/common/widget/CircularProgressButton;

    iput-object v0, p0, Lcom/android/providers/downloads/ui/DownloadingRecyclerAdapter$ViewHolder;->progress_bar:Lcom/meizu/common/widget/CircularProgressButton;

    .line 58
    new-instance v0, Lcom/android/providers/downloads/ui/DownloadingRecyclerAdapter$ButtonListener;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/android/providers/downloads/ui/DownloadingRecyclerAdapter$ButtonListener;-><init>(Lcom/android/providers/downloads/ui/DownloadingRecyclerAdapter;Lcom/android/providers/downloads/ui/DownloadingRecyclerAdapter$1;)V

    iput-object v0, p0, Lcom/android/providers/downloads/ui/DownloadingRecyclerAdapter$ViewHolder;->buttonListener:Lcom/android/providers/downloads/ui/DownloadingRecyclerAdapter$ButtonListener;

    .line 59
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadingRecyclerAdapter$ViewHolder;->progress_bar:Lcom/meizu/common/widget/CircularProgressButton;

    iget-object v1, p0, Lcom/android/providers/downloads/ui/DownloadingRecyclerAdapter$ViewHolder;->buttonListener:Lcom/android/providers/downloads/ui/DownloadingRecyclerAdapter$ButtonListener;

    invoke-virtual {v0, v1}, Lcom/meizu/common/widget/CircularProgressButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 60
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadingRecyclerAdapter$ViewHolder;->progress_bar:Lcom/meizu/common/widget/CircularProgressButton;

    # getter for: Lcom/android/providers/downloads/ui/DownloadingRecyclerAdapter;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/android/providers/downloads/ui/DownloadingRecyclerAdapter;->access$100(Lcom/android/providers/downloads/ui/DownloadingRecyclerAdapter;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f020049

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/meizu/common/widget/CircularProgressButton;->setProgressCenterIcon(Landroid/graphics/drawable/Drawable;)V

    .line 61
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/providers/downloads/ui/DownloadingRecyclerAdapter$ViewHolder;->status:I

    .line 62
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/providers/downloads/ui/DownloadingRecyclerAdapter$ViewHolder;->id:J

    .line 63
    return-void
.end method
