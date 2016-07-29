.class public abstract Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;
.super Lcom/meizu/common/widget/PinnedHeaderArrayAdapter;
.source "PinnedHeaderIndexerArrayAdapter.java"

# interfaces
.implements Landroid/widget/SectionIndexer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter$Placement;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/meizu/common/widget/PinnedHeaderArrayAdapter",
        "<TT;>;",
        "Landroid/widget/SectionIndexer;"
    }
.end annotation


# instance fields
.field protected mContext:Landroid/content/Context;

.field private mHeader:Landroid/view/View;

.field private mHeaderMap:Landroid/util/SparseIntArray;

.field private mIndexedPartition:I

.field private mIndexer:Landroid/widget/SectionIndexer;

.field private mLastSection:I

.field private mLastSectionOverScrollDistance:I

.field private mPlacementCache:Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter$Placement;

.field private mSectionHeaderDisplayEnabled:Z

.field private mShowSectionHeaders:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .local p0, "this":Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;, "Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter<TT;>;"
    const/4 v1, 0x0

    .line 58
    invoke-direct {p0, p1}, Lcom/meizu/common/widget/PinnedHeaderArrayAdapter;-><init>(Landroid/content/Context;)V

    .line 28
    iput v1, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->mIndexedPartition:I

    .line 52
    new-instance v0, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter$Placement;

    invoke-direct {v0}, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter$Placement;-><init>()V

    iput-object v0, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->mPlacementCache:Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter$Placement;

    .line 252
    const/4 v0, -0x1

    iput v0, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->mLastSection:I

    .line 253
    iput v1, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->mLastSectionOverScrollDistance:I

    .line 59
    iput-object p1, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->mContext:Landroid/content/Context;

    .line 60
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-virtual {p0}, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->getSections()[Ljava/lang/Object;

    move-result-object v1

    array-length v1, v1

    invoke-direct {v0, v1}, Landroid/util/SparseIntArray;-><init>(I)V

    iput-object v0, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->mHeaderMap:Landroid/util/SparseIntArray;

    .line 61
    return-void
.end method

.method public varargs constructor <init>(Landroid/content/Context;[Ljava/util/List;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "[",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;, "Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter<TT;>;"
    .local p2, "lists":[Ljava/util/List;, "[Ljava/util/List<TT;>;"
    const/4 v1, 0x0

    .line 64
    invoke-direct {p0, p1, p2}, Lcom/meizu/common/widget/PinnedHeaderArrayAdapter;-><init>(Landroid/content/Context;[Ljava/util/List;)V

    .line 28
    iput v1, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->mIndexedPartition:I

    .line 52
    new-instance v0, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter$Placement;

    invoke-direct {v0}, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter$Placement;-><init>()V

    iput-object v0, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->mPlacementCache:Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter$Placement;

    .line 252
    const/4 v0, -0x1

    iput v0, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->mLastSection:I

    .line 253
    iput v1, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->mLastSectionOverScrollDistance:I

    .line 65
    iput-object p1, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->mContext:Landroid/content/Context;

    .line 66
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-virtual {p0}, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->getSections()[Ljava/lang/Object;

    move-result-object v1

    array-length v1, v1

    invoke-direct {v0, v1}, Landroid/util/SparseIntArray;-><init>(I)V

    iput-object v0, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->mHeaderMap:Landroid/util/SparseIntArray;

    .line 67
    return-void
.end method

.method private ensureSectionHeaders()V
    .locals 9

    .prologue
    .line 462
    .local p0, "this":Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;, "Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter<TT;>;"
    iget-object v7, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->mHeaderMap:Landroid/util/SparseIntArray;

    invoke-virtual {v7}, Landroid/util/SparseIntArray;->clear()V

    .line 463
    iget-boolean v7, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->mShowSectionHeaders:Z

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->mIndexer:Landroid/widget/SectionIndexer;

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    iget v8, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->mIndexedPartition:I

    aget-object v7, v7, v8

    iget v7, v7, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mItemCount:I

    if-lez v7, :cond_1

    .line 465
    iget-object v7, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    iget v8, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->mIndexedPartition:I

    aget-object v7, v7, v8

    iget v1, v7, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mHeaderViewsCount:I

    .line 466
    .local v1, "hvCount":I
    const/4 v6, -0x1

    .line 467
    .local v6, "section":I
    const/4 v5, 0x0

    .local v5, "pos":I
    :goto_0
    iget-object v7, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    iget v8, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->mIndexedPartition:I

    aget-object v7, v7, v8

    iget v7, v7, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mItemCount:I

    if-ge v5, v7, :cond_0

    .line 468
    iget-object v7, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->mIndexer:Landroid/widget/SectionIndexer;

    invoke-interface {v7, v5}, Landroid/widget/SectionIndexer;->getSectionForPosition(I)I

    move-result v3

    .line 471
    .local v3, "nextSection":I
    if-eq v6, v3, :cond_0

    if-le v3, v6, :cond_0

    .line 472
    move v6, v3

    .line 473
    add-int v7, v5, v1

    iget-object v8, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->mHeaderMap:Landroid/util/SparseIntArray;

    invoke-virtual {v8}, Landroid/util/SparseIntArray;->size()I

    move-result v8

    add-int v4, v7, v8

    .line 474
    .local v4, "offset":I
    iget-object v7, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->mHeaderMap:Landroid/util/SparseIntArray;

    invoke-virtual {v7, v6, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 480
    iget-object v7, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->mIndexer:Landroid/widget/SectionIndexer;

    add-int/lit8 v8, v6, 0x1

    invoke-interface {v7, v8}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v2

    .line 481
    .local v2, "nextPos":I
    if-eq v5, v2, :cond_0

    .line 482
    move v5, v2

    .line 486
    goto :goto_0

    .line 488
    .end local v2    # "nextPos":I
    .end local v3    # "nextSection":I
    .end local v4    # "offset":I
    :cond_0
    iget-object v7, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->mHeaderMap:Landroid/util/SparseIntArray;

    invoke-virtual {v7}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    .line 489
    .local v0, "headerCount":I
    iget-object v7, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    iget v8, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->mIndexedPartition:I

    aget-object v7, v7, v8

    iget v8, v7, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mCount:I

    add-int/2addr v8, v0

    iput v8, v7, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mCount:I

    .line 490
    iget-object v7, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    iget v8, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->mIndexedPartition:I

    aget-object v7, v7, v8

    iget v8, v7, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mSize:I

    add-int/2addr v8, v0

    iput v8, v7, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mSize:I

    .line 491
    iget v7, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->mCount:I

    add-int/2addr v7, v0

    iput v7, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->mCount:I

    .line 493
    .end local v0    # "headerCount":I
    .end local v1    # "hvCount":I
    .end local v5    # "pos":I
    .end local v6    # "section":I
    :cond_1
    return-void
.end method

.method private getSectionPosition(I)I
    .locals 3
    .param p1, "section"    # I

    .prologue
    .line 336
    .local p0, "this":Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;, "Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter<TT;>;"
    iget v2, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->mIndexedPartition:I

    invoke-virtual {p0, v2}, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->getPositionForPartition(I)I

    move-result v0

    .line 337
    .local v0, "partitionStart":I
    iget v2, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->mIndexedPartition:I

    invoke-virtual {p0, v2}, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->hasHeader(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 338
    add-int/lit8 v0, v0, 0x1

    .line 342
    :cond_0
    invoke-virtual {p0, p1}, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->getPositionForSection(I)I

    move-result v2

    add-int v1, v0, v2

    .line 343
    .local v1, "sectionPosition":I
    return v1
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 514
    .local p0, "this":Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;, "Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter<TT;>;"
    invoke-virtual {p0}, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->ensureCacheValid()V

    .line 515
    iget-boolean v0, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->mShowSectionHeaders:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->mHeaderMap:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 516
    const/4 v0, 0x0

    .line 518
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Lcom/meizu/common/widget/PinnedHeaderArrayAdapter;->areAllItemsEnabled()Z

    move-result v0

    goto :goto_0
.end method

.method protected bindSectionHeaderView(Landroid/view/View;Landroid/content/Context;II)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "offset"    # I
    .param p4, "sectionIndex"    # I

    .prologue
    .line 611
    .local p0, "this":Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;, "Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter<TT;>;"
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 612
    const v1, 0x7f0d00dd

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 613
    .local v0, "headerText1":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->getSections()[Ljava/lang/Object;

    move-result-object v1

    aget-object v1, v1, p4

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 615
    if-nez p3, :cond_0

    .line 616
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0169

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->setMinimumHeight(I)V

    .line 622
    :goto_0
    return-void

    .line 619
    :cond_0
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b016a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->setMinimumHeight(I)V

    goto :goto_0
.end method

.method protected canSelect(II)Z
    .locals 1
    .param p1, "partitionIndex"    # I
    .param p2, "offset"    # I

    .prologue
    .line 533
    .local p0, "this":Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;, "Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter<TT;>;"
    iget v0, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->mIndexedPartition:I

    if-ne v0, p1, :cond_0

    iget-boolean v0, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->mShowSectionHeaders:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->mHeaderMap:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseIntArray;->indexOfValue(I)I

    move-result v0

    if-ltz v0, :cond_0

    .line 535
    const/4 v0, 0x0

    .line 537
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/meizu/common/widget/PinnedHeaderArrayAdapter;->canSelect(II)Z

    move-result v0

    goto :goto_0
.end method

.method protected configureItemHeader(Landroid/widget/ListView;IIZ)V
    .locals 0
    .param p1, "listView"    # Landroid/widget/ListView;
    .param p2, "listPosition"    # I
    .param p3, "section"    # I
    .param p4, "visible"    # Z

    .prologue
    .line 356
    .local p0, "this":Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;, "Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter<TT;>;"
    return-void
.end method

.method public configurePinnedHeaders(Lcom/meizu/common/widget/PinnedHeaderListView;)V
    .locals 14
    .param p1, "listView"    # Lcom/meizu/common/widget/PinnedHeaderListView;

    .prologue
    .line 257
    .local p0, "this":Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;, "Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter<TT;>;"
    invoke-super {p0, p1}, Lcom/meizu/common/widget/PinnedHeaderArrayAdapter;->configurePinnedHeaders(Lcom/meizu/common/widget/PinnedHeaderListView;)V

    .line 259
    invoke-virtual {p0}, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->isSectionHeaderDisplayEnabled()Z

    move-result v11

    if-nez v11, :cond_1

    .line 329
    :cond_0
    :goto_0
    return-void

    .line 263
    :cond_1
    invoke-virtual {p1}, Lcom/meizu/common/widget/PinnedHeaderListView;->getCurrentOverScrollDistance()I

    move-result v0

    .line 265
    .local v0, "currentOverScrollDistance":I
    if-gtz v0, :cond_4

    invoke-virtual {p1}, Lcom/meizu/common/widget/PinnedHeaderListView;->getFirstVisiblePosition()I

    move-result v11

    if-nez v11, :cond_4

    const/4 v1, 0x1

    .line 267
    .local v1, "forceHide":Z
    :goto_1
    if-eqz v1, :cond_2

    iget v11, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->mLastSectionOverScrollDistance:I

    if-ltz v11, :cond_2

    .line 268
    const/4 v11, 0x0

    invoke-direct {p0, v11}, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->getSectionPosition(I)I

    move-result v11

    invoke-virtual {p1}, Lcom/meizu/common/widget/PinnedHeaderListView;->getHeaderViewsCount()I

    move-result v12

    add-int/2addr v11, v12

    const/4 v12, 0x0

    const/4 v13, 0x1

    invoke-virtual {p0, p1, v11, v12, v13}, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->configureItemHeader(Landroid/widget/ListView;IIZ)V

    .line 271
    :cond_2
    iput v0, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->mLastSectionOverScrollDistance:I

    .line 273
    invoke-virtual {p0}, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->getPinnedHeaderCount()I

    move-result v11

    add-int/lit8 v3, v11, -0x1

    .line 274
    .local v3, "index":I
    iget-object v11, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->mIndexer:Landroid/widget/SectionIndexer;

    if-eqz v11, :cond_3

    invoke-virtual {p0}, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->getCount()I

    move-result v11

    if-eqz v11, :cond_3

    if-eqz v1, :cond_5

    .line 275
    :cond_3
    const/4 v11, 0x0

    invoke-virtual {p1, v3, v11}, Lcom/meizu/common/widget/PinnedHeaderListView;->setHeaderInvisible(IZ)V

    .line 276
    const/4 v11, -0x1

    iput v11, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->mLastSection:I

    goto :goto_0

    .line 265
    .end local v1    # "forceHide":Z
    .end local v3    # "index":I
    :cond_4
    const/4 v1, 0x0

    goto :goto_1

    .line 278
    .restart local v1    # "forceHide":Z
    .restart local v3    # "index":I
    :cond_5
    invoke-virtual {p1}, Lcom/meizu/common/widget/PinnedHeaderListView;->getTotalTopPinnedHeaderHeight()I

    move-result v11

    invoke-virtual {p1, v11}, Lcom/meizu/common/widget/PinnedHeaderListView;->getPositionAt(I)I

    move-result v5

    .line 279
    .local v5, "listPosition":I
    invoke-virtual {p1}, Lcom/meizu/common/widget/PinnedHeaderListView;->getHeaderViewsCount()I

    move-result v11

    sub-int v9, v5, v11

    .line 280
    .local v9, "position":I
    const/4 v10, -0x1

    .line 281
    .local v10, "section":I
    const/4 v11, 0x0

    invoke-virtual {p1, v11}, Lcom/meizu/common/widget/PinnedHeaderListView;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    if-eqz v11, :cond_6

    const/4 v11, 0x0

    invoke-virtual {p1, v11}, Lcom/meizu/common/widget/PinnedHeaderListView;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    invoke-virtual {v11}, Landroid/view/View;->getTop()I

    move-result v11

    invoke-virtual {p1}, Lcom/meizu/common/widget/PinnedHeaderListView;->getHeaderPaddingTop()I

    move-result v12

    if-gt v11, v12, :cond_6

    .line 283
    invoke-virtual {p0, v9}, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->getPartitionForPosition(I)I

    move-result v8

    .line 284
    .local v8, "partition":I
    iget v11, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->mIndexedPartition:I

    if-ne v8, v11, :cond_6

    .line 285
    invoke-virtual {p0, v9}, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->getOffsetInPartition(I)I

    move-result v7

    .line 286
    .local v7, "offset":I
    iget-object v11, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    aget-object v11, v11, v8

    iget v11, v11, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mHeaderViewsCount:I

    if-lt v7, v11, :cond_6

    .line 287
    invoke-virtual {p0, v7}, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->getSectionForPosition(I)I

    move-result v10

    .line 292
    .end local v7    # "offset":I
    .end local v8    # "partition":I
    :cond_6
    iget v11, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->mLastSection:I

    if-ne v11, v10, :cond_7

    const/4 v11, -0x1

    if-eq v10, v11, :cond_7

    invoke-direct {p0, v10}, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->getSectionPosition(I)I

    move-result v11

    if-ne v11, v9, :cond_7

    .line 293
    const/4 v11, 0x0

    invoke-virtual {p0, p1, v5, v10, v11}, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->configureItemHeader(Landroid/widget/ListView;IIZ)V

    .line 297
    :cond_7
    iget v11, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->mLastSection:I

    if-eq v11, v10, :cond_0

    .line 302
    iget v11, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->mLastSection:I

    if-le v11, v10, :cond_8

    .line 304
    iget v2, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->mLastSection:I

    .local v2, "i":I
    :goto_2
    if-le v2, v10, :cond_9

    .line 305
    invoke-direct {p0, v2}, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->getSectionPosition(I)I

    move-result v11

    invoke-virtual {p1}, Lcom/meizu/common/widget/PinnedHeaderListView;->getHeaderViewsCount()I

    move-result v12

    add-int/2addr v11, v12

    const/4 v12, 0x1

    invoke-virtual {p0, p1, v11, v2, v12}, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->configureItemHeader(Landroid/widget/ListView;IIZ)V

    .line 304
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    .line 308
    .end local v2    # "i":I
    :cond_8
    iget v11, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->mLastSection:I

    if-ge v11, v10, :cond_9

    .line 310
    iget v11, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->mLastSection:I

    add-int/lit8 v2, v11, 0x1

    .restart local v2    # "i":I
    :goto_3
    if-gt v2, v10, :cond_9

    .line 311
    invoke-direct {p0, v2}, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->getSectionPosition(I)I

    move-result v11

    invoke-virtual {p1}, Lcom/meizu/common/widget/PinnedHeaderListView;->getHeaderViewsCount()I

    move-result v12

    add-int/2addr v11, v12

    const/4 v12, 0x0

    invoke-virtual {p0, p1, v11, v2, v12}, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->configureItemHeader(Landroid/widget/ListView;IIZ)V

    .line 310
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 315
    .end local v2    # "i":I
    :cond_9
    iput v10, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->mLastSection:I

    .line 317
    const/4 v11, -0x1

    if-eq v10, v11, :cond_a

    invoke-virtual {p0, v10}, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->isPinnedSectionHeaderVisible(I)Z

    move-result v11

    if-nez v11, :cond_b

    .line 318
    :cond_a
    const/4 v11, 0x0

    invoke-virtual {p1, v3, v11}, Lcom/meizu/common/widget/PinnedHeaderListView;->setHeaderInvisible(IZ)V

    goto/16 :goto_0

    .line 321
    :cond_b
    iget-object v11, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->mHeader:Landroid/view/View;

    invoke-virtual {p0, v11, v10}, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->setPinnedSectionHeaderView(Landroid/view/View;I)V

    .line 324
    add-int/lit8 v11, v10, 0x1

    invoke-direct {p0, v11}, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->getSectionPosition(I)I

    move-result v6

    .line 325
    .local v6, "nextSectionPosition":I
    add-int/lit8 v11, v6, -0x1

    if-ne v9, v11, :cond_c

    const/4 v4, 0x1

    .line 326
    .local v4, "isLastInSection":Z
    :goto_4
    invoke-virtual {p1, v3, v5, v4}, Lcom/meizu/common/widget/PinnedHeaderListView;->setFadingHeader(IIZ)V

    goto/16 :goto_0

    .line 325
    .end local v4    # "isLastInSection":Z
    :cond_c
    const/4 v4, 0x0

    goto :goto_4
.end method

.method protected createPinnedSectionHeaderView(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 83
    .local p0, "this":Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;, "Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter<TT;>;"
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 84
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v3, 0x7f040044

    const/4 v4, 0x0

    invoke-virtual {v1, v3, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 85
    .local v2, "view":Landroid/view/View;
    if-eqz v2, :cond_0

    .line 86
    const/high16 v3, 0x1020000

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 87
    .local v0, "imageView":Landroid/widget/ImageView;
    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 89
    .end local v0    # "imageView":Landroid/widget/ImageView;
    :cond_0
    return-object v2
.end method

.method protected ensureCacheValid()V
    .locals 1

    .prologue
    .line 453
    .local p0, "this":Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;, "Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter<TT;>;"
    iget-boolean v0, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->mCacheValid:Z

    if-eqz v0, :cond_0

    .line 459
    :goto_0
    return-void

    .line 457
    :cond_0
    invoke-super {p0}, Lcom/meizu/common/widget/PinnedHeaderArrayAdapter;->ensureCacheValid()V

    .line 458
    invoke-direct {p0}, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->ensureSectionHeaders()V

    goto :goto_0
.end method

.method protected getDataPosition(II)I
    .locals 4
    .param p1, "partitionIndex"    # I
    .param p2, "offset"    # I

    .prologue
    .line 542
    .local p0, "this":Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;, "Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter<TT;>;"
    iget v2, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->mIndexedPartition:I

    if-ne v2, p1, :cond_2

    iget-boolean v2, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->mShowSectionHeaders:Z

    if-eqz v2, :cond_2

    .line 543
    iget-object v2, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->mHeaderMap:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p2}, Landroid/util/SparseIntArray;->indexOfValue(I)I

    move-result v2

    if-ltz v2, :cond_1

    .line 545
    const/4 v1, -0x1

    .line 558
    :cond_0
    :goto_0
    return v1

    .line 548
    :cond_1
    iget-object v2, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    iget v3, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->mIndexedPartition:I

    aget-object v2, v2, v3

    iget v2, v2, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mHeaderViewsCount:I

    sub-int v1, p2, v2

    .line 549
    .local v1, "pos":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v2, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->mHeaderMap:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 550
    iget-object v2, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->mHeaderMap:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v2

    if-gt v2, p2, :cond_0

    .line 553
    add-int/lit8 v1, v1, -0x1

    .line 549
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 558
    .end local v0    # "i":I
    .end local v1    # "pos":I
    :cond_2
    invoke-super {p0, p1, p2}, Lcom/meizu/common/widget/PinnedHeaderArrayAdapter;->getDataPosition(II)I

    move-result v1

    goto :goto_0
.end method

.method public getIndexedPartition()I
    .locals 1

    .prologue
    .line 122
    .local p0, "this":Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;, "Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter<TT;>;"
    iget v0, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->mIndexedPartition:I

    return v0
.end method

.method public getIndexer()Landroid/widget/SectionIndexer;
    .locals 1

    .prologue
    .line 141
    .local p0, "this":Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;, "Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter<TT;>;"
    iget-object v0, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->mIndexer:Landroid/widget/SectionIndexer;

    return-object v0
.end method

.method protected getItemBackgroundType(II)I
    .locals 12
    .param p1, "partitionIndex"    # I
    .param p2, "offset"    # I

    .prologue
    .local p0, "this":Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;, "Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter<TT;>;"
    const/4 v6, 0x4

    const/4 v8, 0x3

    const/4 v9, 0x2

    const/4 v7, 0x1

    .line 390
    iget v10, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->mIndexedPartition:I

    if-ne v10, p1, :cond_e

    if-ltz p2, :cond_e

    iget-object v10, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->mIndexer:Landroid/widget/SectionIndexer;

    if-eqz v10, :cond_e

    .line 392
    iget v10, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->mIndexedPartition:I

    invoke-virtual {p0, v10, p2}, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->isHeaderView(II)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 393
    iget-object v10, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    iget v11, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->mIndexedPartition:I

    aget-object v10, v10, v11

    iget v2, v10, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mHeaderViewsCount:I

    .line 394
    .local v2, "hvCount":I
    if-ne v2, v7, :cond_1

    .line 447
    .end local v2    # "hvCount":I
    :cond_0
    :goto_0
    return v6

    .line 396
    .restart local v2    # "hvCount":I
    :cond_1
    if-nez p2, :cond_2

    move v6, v7

    .line 397
    goto :goto_0

    .line 398
    :cond_2
    add-int/lit8 v6, v2, -0x1

    if-ne p2, v6, :cond_3

    move v6, v8

    .line 399
    goto :goto_0

    :cond_3
    move v6, v9

    .line 401
    goto :goto_0

    .line 406
    .end local v2    # "hvCount":I
    :cond_4
    iget v10, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->mIndexedPartition:I

    invoke-virtual {p0, v10, p2}, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->isFooterView(II)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 407
    iget-object v10, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    iget v11, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->mIndexedPartition:I

    aget-object v10, v10, v11

    iget v1, v10, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mFooterViewsCount:I

    .line 408
    .local v1, "fvCount":I
    iget-object v10, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    iget v11, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->mIndexedPartition:I

    aget-object v10, v10, v11

    iget v10, v10, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mCount:I

    sub-int v0, v10, v1

    .line 409
    .local v0, "footerStart":I
    if-eq v1, v7, :cond_0

    .line 411
    if-ne p2, v0, :cond_5

    move v6, v7

    .line 412
    goto :goto_0

    .line 413
    :cond_5
    sub-int v6, p2, v0

    add-int/lit8 v7, v1, -0x1

    if-ne v6, v7, :cond_6

    move v6, v8

    .line 414
    goto :goto_0

    :cond_6
    move v6, v9

    .line 416
    goto :goto_0

    .line 420
    .end local v0    # "footerStart":I
    .end local v1    # "fvCount":I
    :cond_7
    invoke-virtual {p0, p2}, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->getSectionForPosition(I)I

    move-result v4

    .line 421
    .local v4, "section":I
    invoke-virtual {p0, v4}, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->getPositionForSection(I)I

    move-result v5

    .line 423
    .local v5, "sectionPos":I
    invoke-virtual {p0}, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->getSections()[Ljava/lang/Object;

    move-result-object v10

    array-length v10, v10

    add-int/lit8 v10, v10, -0x1

    if-ne v4, v10, :cond_8

    .line 424
    invoke-virtual {p0, p1}, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->getCountForPartition(I)I

    move-result v3

    .line 429
    .local v3, "nextSectionPos":I
    :goto_1
    iget-boolean v10, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->mShowSectionHeaders:Z

    if-eqz v10, :cond_a

    .line 431
    if-ne p2, v5, :cond_9

    .line 432
    const/4 v6, 0x0

    goto :goto_0

    .line 426
    .end local v3    # "nextSectionPos":I
    :cond_8
    add-int/lit8 v10, v4, 0x1

    invoke-virtual {p0, v10}, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->getPositionForSection(I)I

    move-result v3

    .restart local v3    # "nextSectionPos":I
    goto :goto_1

    .line 434
    :cond_9
    add-int/lit8 v5, v5, 0x1

    .line 437
    :cond_a
    if-ne p2, v5, :cond_b

    sub-int v10, v3, v5

    if-eq v10, v7, :cond_0

    .line 439
    :cond_b
    if-ne p2, v5, :cond_c

    move v6, v7

    .line 440
    goto :goto_0

    .line 441
    :cond_c
    add-int/lit8 v6, v3, -0x1

    if-ne p2, v6, :cond_d

    move v6, v8

    .line 442
    goto :goto_0

    :cond_d
    move v6, v9

    .line 444
    goto :goto_0

    .line 447
    .end local v3    # "nextSectionPos":I
    .end local v4    # "section":I
    .end local v5    # "sectionPos":I
    :cond_e
    invoke-super {p0, p1, p2}, Lcom/meizu/common/widget/PinnedHeaderArrayAdapter;->getItemBackgroundType(II)I

    move-result v6

    goto :goto_0
.end method

.method public getItemPlacementInSection(I)Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter$Placement;
    .locals 5
    .param p1, "position"    # I

    .prologue
    .local p0, "this":Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;, "Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter<TT;>;"
    const/4 v4, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 364
    iget-object v1, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->mPlacementCache:Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter$Placement;

    # getter for: Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter$Placement;->position:I
    invoke-static {v1}, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter$Placement;->access$000(Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter$Placement;)I

    move-result v1

    if-ne v1, p1, :cond_0

    .line 365
    iget-object v1, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->mPlacementCache:Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter$Placement;

    .line 385
    :goto_0
    return-object v1

    .line 368
    :cond_0
    iget-object v1, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->mPlacementCache:Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter$Placement;

    # setter for: Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter$Placement;->position:I
    invoke-static {v1, p1}, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter$Placement;->access$002(Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter$Placement;I)I

    .line 369
    invoke-virtual {p0}, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->isSectionHeaderDisplayEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 370
    invoke-virtual {p0, p1}, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->getSectionForPosition(I)I

    move-result v0

    .line 371
    .local v0, "section":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->getPositionForSection(I)I

    move-result v1

    if-ne v1, p1, :cond_1

    .line 372
    iget-object v1, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->mPlacementCache:Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter$Placement;

    iput-boolean v2, v1, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter$Placement;->firstInSection:Z

    .line 373
    iget-object v4, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->mPlacementCache:Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter$Placement;

    invoke-virtual {p0}, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->getSections()[Ljava/lang/Object;

    move-result-object v1

    aget-object v1, v1, v0

    check-cast v1, Ljava/lang/String;

    iput-object v1, v4, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter$Placement;->sectionHeader:Ljava/lang/String;

    .line 379
    :goto_1
    iget-object v4, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->mPlacementCache:Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter$Placement;

    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v1}, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->getPositionForSection(I)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v1, p1, :cond_2

    move v1, v2

    :goto_2
    iput-boolean v1, v4, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter$Placement;->lastInSection:Z

    .line 385
    .end local v0    # "section":I
    :goto_3
    iget-object v1, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->mPlacementCache:Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter$Placement;

    goto :goto_0

    .line 375
    .restart local v0    # "section":I
    :cond_1
    iget-object v1, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->mPlacementCache:Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter$Placement;

    iput-boolean v3, v1, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter$Placement;->firstInSection:Z

    .line 376
    iget-object v1, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->mPlacementCache:Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter$Placement;

    iput-object v4, v1, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter$Placement;->sectionHeader:Ljava/lang/String;

    goto :goto_1

    :cond_2
    move v1, v3

    .line 379
    goto :goto_2

    .line 381
    .end local v0    # "section":I
    :cond_3
    iget-object v1, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->mPlacementCache:Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter$Placement;

    iput-boolean v3, v1, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter$Placement;->firstInSection:Z

    .line 382
    iget-object v1, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->mPlacementCache:Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter$Placement;

    iput-boolean v3, v1, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter$Placement;->lastInSection:Z

    .line 383
    iget-object v1, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->mPlacementCache:Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter$Placement;

    iput-object v4, v1, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter$Placement;->sectionHeader:Ljava/lang/String;

    goto :goto_3
.end method

.method protected getItemViewType(II)I
    .locals 2
    .param p1, "partitionIndex"    # I
    .param p2, "position"    # I

    .prologue
    .line 502
    .local p0, "this":Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;, "Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter<TT;>;"
    iget v1, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->mIndexedPartition:I

    if-ne v1, p1, :cond_0

    iget-boolean v1, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->mShowSectionHeaders:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->mHeaderMap:Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 504
    invoke-virtual {p0, p2}, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->getOffsetInPartition(I)I

    move-result v0

    .line 505
    .local v0, "offset":I
    iget-object v1, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->mHeaderMap:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->indexOfValue(I)I

    move-result v1

    if-ltz v1, :cond_0

    .line 506
    invoke-virtual {p0}, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->getViewTypeCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .line 509
    .end local v0    # "offset":I
    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/meizu/common/widget/PinnedHeaderArrayAdapter;->getItemViewType(II)I

    move-result v1

    goto :goto_0
.end method

.method public getPinnedHeaderCount()I
    .locals 1

    .prologue
    .line 233
    .local p0, "this":Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;, "Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter<TT;>;"
    invoke-virtual {p0}, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->isSectionHeaderDisplayEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 234
    invoke-super {p0}, Lcom/meizu/common/widget/PinnedHeaderArrayAdapter;->getPinnedHeaderCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 236
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Lcom/meizu/common/widget/PinnedHeaderArrayAdapter;->getPinnedHeaderCount()I

    move-result v0

    goto :goto_0
.end method

.method public getPinnedHeaderView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .param p1, "viewIndex"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 242
    .local p0, "this":Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;, "Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter<TT;>;"
    invoke-virtual {p0}, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->isSectionHeaderDisplayEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->getPinnedHeaderCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_1

    .line 243
    iget-object v0, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->mHeader:Landroid/view/View;

    if-nez v0, :cond_0

    .line 244
    iget-object v0, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0, p3}, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->createPinnedSectionHeaderView(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->mHeader:Landroid/view/View;

    .line 246
    :cond_0
    iget-object v0, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->mHeader:Landroid/view/View;

    .line 248
    :goto_0
    return-object v0

    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcom/meizu/common/widget/PinnedHeaderArrayAdapter;->getPinnedHeaderView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public getPositionForSection(I)I
    .locals 4
    .param p1, "sectionIndex"    # I

    .prologue
    .line 175
    .local p0, "this":Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;, "Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter<TT;>;"
    iget-object v2, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->mIndexer:Landroid/widget/SectionIndexer;

    if-nez v2, :cond_1

    .line 176
    const/4 v1, -0x1

    .line 193
    :cond_0
    :goto_0
    return v1

    .line 179
    :cond_1
    if-gez p1, :cond_2

    .line 180
    const/4 v1, 0x0

    goto :goto_0

    .line 183
    :cond_2
    iget-object v2, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->mIndexer:Landroid/widget/SectionIndexer;

    invoke-interface {v2, p1}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v1

    .line 184
    .local v1, "pos":I
    iget-object v2, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    iget v3, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->mIndexedPartition:I

    aget-object v2, v2, v3

    iget v2, v2, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mHeaderViewsCount:I

    add-int/2addr v1, v2

    .line 185
    iget-boolean v2, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->mShowSectionHeaders:Z

    if-eqz v2, :cond_0

    .line 186
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, p1, :cond_0

    .line 187
    iget-object v2, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->mHeaderMap:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v2

    if-ltz v2, :cond_3

    .line 188
    add-int/lit8 v1, v1, 0x1

    .line 186
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public getSectionForPosition(I)I
    .locals 5
    .param p1, "position"    # I

    .prologue
    .local p0, "this":Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;, "Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter<TT;>;"
    const/4 v2, -0x1

    .line 202
    iget-object v3, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->mIndexer:Landroid/widget/SectionIndexer;

    if-nez v3, :cond_1

    .line 228
    :cond_0
    :goto_0
    return v2

    .line 207
    :cond_1
    iget v3, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->mIndexedPartition:I

    invoke-virtual {p0, v3, p1}, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->isFooterView(II)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    iget v4, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->mIndexedPartition:I

    aget-object v3, v3, v4

    iget v3, v3, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mCount:I

    add-int/lit8 v3, v3, -0x1

    if-le p1, v3, :cond_3

    .line 209
    :cond_2
    invoke-virtual {p0}, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->getSections()[Ljava/lang/Object;

    move-result-object v2

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 212
    :cond_3
    iget-object v3, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    iget v4, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->mIndexedPartition:I

    aget-object v3, v3, v4

    iget v3, v3, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mHeaderViewsCount:I

    sub-int v1, p1, v3

    .line 213
    .local v1, "pos":I
    if-ltz v1, :cond_0

    .line 218
    iget-boolean v2, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->mShowSectionHeaders:Z

    if-eqz v2, :cond_4

    .line 219
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v2, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->mHeaderMap:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_4

    .line 220
    iget-object v2, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->mHeaderMap:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v2

    if-lt v2, p1, :cond_5

    .line 228
    .end local v0    # "i":I
    :cond_4
    iget-object v2, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->mIndexer:Landroid/widget/SectionIndexer;

    invoke-interface {v2, v1}, Landroid/widget/SectionIndexer;->getSectionForPosition(I)I

    move-result v2

    goto :goto_0

    .line 223
    .restart local v0    # "i":I
    :cond_5
    add-int/lit8 v1, v1, -0x1

    .line 219
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method protected getSectionHeaderView(IILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .param p1, "offset"    # I
    .param p2, "sectionIndex"    # I
    .param p3, "convertView"    # Landroid/view/View;
    .param p4, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 581
    .local p0, "this":Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;, "Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter<TT;>;"
    if-eqz p3, :cond_0

    move-object v0, p3

    .line 584
    .local v0, "view":Landroid/view/View;
    :goto_0
    iget-object v1, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->bindSectionHeaderView(Landroid/view/View;Landroid/content/Context;II)V

    .line 585
    return-object v0

    .line 581
    .end local v0    # "view":Landroid/view/View;
    :cond_0
    iget-object v1, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1, p1, p2, p4}, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->newSectionHeaderView(Landroid/content/Context;IILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public getSections()[Ljava/lang/Object;
    .locals 3

    .prologue
    .line 162
    .local p0, "this":Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;, "Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter<TT;>;"
    iget-object v0, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->mIndexer:Landroid/widget/SectionIndexer;

    if-nez v0, :cond_0

    .line 163
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, " "

    aput-object v2, v0, v1

    .line 165
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->mIndexer:Landroid/widget/SectionIndexer;

    invoke-interface {v0}, Landroid/widget/SectionIndexer;->getSections()[Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method protected getView(IIIILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p1, "position"    # I
    .param p2, "partitionIndex"    # I
    .param p3, "offset"    # I
    .param p4, "itemBgType"    # I
    .param p5, "convertView"    # Landroid/view/View;
    .param p6, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 565
    .local p0, "this":Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;, "Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter<TT;>;"
    iget v2, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->mIndexedPartition:I

    if-ne v2, p2, :cond_0

    iget-boolean v2, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->mShowSectionHeaders:Z

    if-eqz v2, :cond_0

    .line 566
    iget-object v2, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->mHeaderMap:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p3}, Landroid/util/SparseIntArray;->indexOfValue(I)I

    move-result v0

    .line 567
    .local v0, "index":I
    if-ltz v0, :cond_0

    .line 568
    iget-object v2, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->mHeaderMap:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v1

    .line 569
    .local v1, "sectionIndex":I
    invoke-virtual {p0, p3, v1, p5, p6}, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->getSectionHeaderView(IILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 573
    .end local v0    # "index":I
    .end local v1    # "sectionIndex":I
    :goto_0
    return-object v2

    :cond_0
    invoke-super/range {p0 .. p6}, Lcom/meizu/common/widget/PinnedHeaderArrayAdapter;->getView(IIIILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    goto :goto_0
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 497
    .local p0, "this":Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;, "Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter<TT;>;"
    invoke-super {p0}, Lcom/meizu/common/widget/PinnedHeaderArrayAdapter;->getViewTypeCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method protected isEnabled(II)Z
    .locals 1
    .param p1, "partitionIndex"    # I
    .param p2, "offset"    # I

    .prologue
    .line 524
    .local p0, "this":Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;, "Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter<TT;>;"
    iget v0, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->mIndexedPartition:I

    if-ne v0, p1, :cond_0

    iget-boolean v0, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->mShowSectionHeaders:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->mHeaderMap:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseIntArray;->indexOfValue(I)I

    move-result v0

    if-ltz v0, :cond_0

    .line 526
    const/4 v0, 0x0

    .line 528
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/meizu/common/widget/PinnedHeaderArrayAdapter;->isEnabled(II)Z

    move-result v0

    goto :goto_0
.end method

.method protected isPinnedSectionHeaderVisible(I)Z
    .locals 1
    .param p1, "section"    # I

    .prologue
    .line 103
    .local p0, "this":Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;, "Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter<TT;>;"
    const/4 v0, 0x1

    return v0
.end method

.method public isSectionHeaderDisplayEnabled()Z
    .locals 1

    .prologue
    .line 107
    .local p0, "this":Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;, "Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter<TT;>;"
    iget-boolean v0, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->mSectionHeaderDisplayEnabled:Z

    return v0
.end method

.method protected newSectionHeaderView(Landroid/content/Context;IILandroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "offset"    # I
    .param p3, "sectionIndex"    # I
    .param p4, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 598
    .local p0, "this":Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;, "Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter<TT;>;"
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 599
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v1, 0x7f040042

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p4, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    return-object v1
.end method

.method public setIndexedPartition(I)V
    .locals 1
    .param p1, "partition"    # I

    .prologue
    .line 130
    .local p0, "this":Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;, "Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter<TT;>;"
    iput p1, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->mIndexedPartition:I

    .line 131
    iget-boolean v0, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->mShowSectionHeaders:Z

    if-eqz v0, :cond_0

    .line 132
    invoke-virtual {p0}, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->invalidate()V

    .line 134
    :cond_0
    return-void
.end method

.method public setIndexer(Landroid/widget/SectionIndexer;)V
    .locals 1
    .param p1, "indexer"    # Landroid/widget/SectionIndexer;

    .prologue
    .line 149
    .local p0, "this":Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;, "Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter<TT;>;"
    iput-object p1, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->mIndexer:Landroid/widget/SectionIndexer;

    .line 150
    iget-object v0, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->mPlacementCache:Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter$Placement;

    invoke-virtual {v0}, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter$Placement;->invalidate()V

    .line 151
    iget-boolean v0, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->mShowSectionHeaders:Z

    if-eqz v0, :cond_0

    .line 152
    invoke-virtual {p0}, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->invalidate()V

    .line 154
    :cond_0
    return-void
.end method

.method protected setPinnedSectionHeaderView(Landroid/view/View;I)V
    .locals 2
    .param p1, "pinnedHeaderView"    # Landroid/view/View;
    .param p2, "section"    # I

    .prologue
    .line 96
    .local p0, "this":Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;, "Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter<TT;>;"
    if-eqz p1, :cond_0

    .line 97
    const v1, 0x7f0d00dd

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 98
    .local v0, "headerText":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->getSections()[Ljava/lang/Object;

    move-result-object v1

    aget-object v1, v1, p2

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 100
    .end local v0    # "headerText":Landroid/widget/TextView;
    :cond_0
    return-void
.end method

.method public setSectionHeaderDisplayEnabled(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 114
    .local p0, "this":Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;, "Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter<TT;>;"
    iput-boolean p1, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->mSectionHeaderDisplayEnabled:Z

    .line 115
    return-void
.end method

.method public showSectionHeaders(Z)V
    .locals 0
    .param p1, "show"    # Z

    .prologue
    .line 73
    .local p0, "this":Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;, "Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter<TT;>;"
    iput-boolean p1, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->mShowSectionHeaders:Z

    .line 74
    invoke-virtual {p0}, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->invalidate()V

    .line 75
    return-void
.end method
