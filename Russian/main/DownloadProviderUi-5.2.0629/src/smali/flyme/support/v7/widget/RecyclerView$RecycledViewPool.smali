.class public Lflyme/support/v7/widget/RecyclerView$RecycledViewPool;
.super Ljava/lang/Object;
.source "RecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lflyme/support/v7/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RecycledViewPool"
.end annotation


# instance fields
.field private mAttachCount:I

.field private mMaxScrap:Landroid/util/SparseIntArray;

.field private mScrap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lflyme/support/v7/widget/RecyclerView$ViewHolder;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 4369
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4370
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lflyme/support/v7/widget/RecyclerView$RecycledViewPool;->mScrap:Landroid/util/SparseArray;

    .line 4372
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lflyme/support/v7/widget/RecyclerView$RecycledViewPool;->mMaxScrap:Landroid/util/SparseIntArray;

    .line 4373
    const/4 v0, 0x0

    iput v0, p0, Lflyme/support/v7/widget/RecyclerView$RecycledViewPool;->mAttachCount:I

    return-void
.end method

.method private getScrapHeapForType(I)Ljava/util/ArrayList;
    .locals 3
    .param p1, "viewType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Lflyme/support/v7/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4460
    iget-object v1, p0, Lflyme/support/v7/widget/RecyclerView$RecycledViewPool;->mScrap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 4461
    .local v0, "scrap":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lflyme/support/v7/widget/RecyclerView$ViewHolder;>;"
    if-nez v0, :cond_0

    .line 4462
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "scrap":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lflyme/support/v7/widget/RecyclerView$ViewHolder;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4463
    .restart local v0    # "scrap":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lflyme/support/v7/widget/RecyclerView$ViewHolder;>;"
    iget-object v1, p0, Lflyme/support/v7/widget/RecyclerView$RecycledViewPool;->mScrap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 4464
    iget-object v1, p0, Lflyme/support/v7/widget/RecyclerView$RecycledViewPool;->mMaxScrap:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v1

    if-gez v1, :cond_0

    .line 4465
    iget-object v1, p0, Lflyme/support/v7/widget/RecyclerView$RecycledViewPool;->mMaxScrap:Landroid/util/SparseIntArray;

    const/4 v2, 0x5

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 4468
    :cond_0
    return-object v0
.end method


# virtual methods
.method attach(Lflyme/support/v7/widget/RecyclerView$Adapter;)V
    .locals 1
    .param p1, "adapter"    # Lflyme/support/v7/widget/RecyclerView$Adapter;

    .prologue
    .line 4427
    iget v0, p0, Lflyme/support/v7/widget/RecyclerView$RecycledViewPool;->mAttachCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lflyme/support/v7/widget/RecyclerView$RecycledViewPool;->mAttachCount:I

    .line 4428
    return-void
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 4378
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView$RecycledViewPool;->mScrap:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 4379
    return-void
.end method

.method detach()V
    .locals 1

    .prologue
    .line 4431
    iget v0, p0, Lflyme/support/v7/widget/RecyclerView$RecycledViewPool;->mAttachCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lflyme/support/v7/widget/RecyclerView$RecycledViewPool;->mAttachCount:I

    .line 4432
    return-void
.end method

.method public getRecycledView(I)Lflyme/support/v7/widget/RecyclerView$ViewHolder;
    .locals 4
    .param p1, "viewType"    # I

    .prologue
    .line 4392
    iget-object v3, p0, Lflyme/support/v7/widget/RecyclerView$RecycledViewPool;->mScrap:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 4393
    .local v2, "scrapHeap":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lflyme/support/v7/widget/RecyclerView$ViewHolder;>;"
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 4394
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .line 4395
    .local v0, "index":I
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lflyme/support/v7/widget/RecyclerView$ViewHolder;

    .line 4396
    .local v1, "scrap":Lflyme/support/v7/widget/RecyclerView$ViewHolder;
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 4399
    .end local v0    # "index":I
    .end local v1    # "scrap":Lflyme/support/v7/widget/RecyclerView$ViewHolder;
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method onAdapterChanged(Lflyme/support/v7/widget/RecyclerView$Adapter;Lflyme/support/v7/widget/RecyclerView$Adapter;Z)V
    .locals 1
    .param p1, "oldAdapter"    # Lflyme/support/v7/widget/RecyclerView$Adapter;
    .param p2, "newAdapter"    # Lflyme/support/v7/widget/RecyclerView$Adapter;
    .param p3, "compatibleWithPrevious"    # Z

    .prologue
    .line 4448
    if-eqz p1, :cond_0

    .line 4449
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView$RecycledViewPool;->detach()V

    .line 4451
    :cond_0
    if-nez p3, :cond_1

    iget v0, p0, Lflyme/support/v7/widget/RecyclerView$RecycledViewPool;->mAttachCount:I

    if-nez v0, :cond_1

    .line 4452
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView$RecycledViewPool;->clear()V

    .line 4454
    :cond_1
    if-eqz p2, :cond_2

    .line 4455
    invoke-virtual {p0, p2}, Lflyme/support/v7/widget/RecyclerView$RecycledViewPool;->attach(Lflyme/support/v7/widget/RecyclerView$Adapter;)V

    .line 4457
    :cond_2
    return-void
.end method

.method public putRecycledView(Lflyme/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 4
    .param p1, "scrap"    # Lflyme/support/v7/widget/RecyclerView$ViewHolder;

    .prologue
    .line 4414
    invoke-virtual {p1}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v1

    .line 4415
    .local v1, "viewType":I
    invoke-direct {p0, v1}, Lflyme/support/v7/widget/RecyclerView$RecycledViewPool;->getScrapHeapForType(I)Ljava/util/ArrayList;

    move-result-object v0

    .line 4416
    .local v0, "scrapHeap":Ljava/util/ArrayList;
    iget-object v2, p0, Lflyme/support/v7/widget/RecyclerView$RecycledViewPool;->mMaxScrap:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v2

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-gt v2, v3, :cond_0

    .line 4424
    :goto_0
    return-void

    .line 4422
    :cond_0
    invoke-virtual {p1}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->resetInternal()V

    .line 4423
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method
