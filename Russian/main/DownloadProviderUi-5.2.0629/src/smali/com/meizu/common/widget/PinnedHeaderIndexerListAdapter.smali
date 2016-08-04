.class public abstract Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;
.super Lcom/meizu/common/widget/PinnedHeaderListAdapter;
.source "PinnedHeaderIndexerListAdapter.java"

# interfaces
.implements Landroid/widget/SectionIndexer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter$Placement;
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

.field private mPlacementCache:Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter$Placement;

.field private mSectionHeaderDisplayEnabled:Z

.field private mShowSectionHeaders:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 71
    invoke-direct {p0, p1}, Lcom/meizu/common/widget/PinnedHeaderListAdapter;-><init>(Landroid/content/Context;)V

    .line 41
    iput v1, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->mIndexedPartition:I

    .line 65
    new-instance v0, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter$Placement;

    invoke-direct {v0}, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter$Placement;-><init>()V

    iput-object v0, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->mPlacementCache:Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter$Placement;

    .line 258
    const/4 v0, -0x1

    iput v0, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->mLastSection:I

    .line 259
    iput v1, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->mLastSectionOverScrollDistance:I

    .line 72
    iput-object p1, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->mContext:Landroid/content/Context;

    .line 73
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-virtual {p0}, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->getSections()[Ljava/lang/Object;

    move-result-object v1

    array-length v1, v1

    invoke-direct {v0, v1}, Landroid/util/SparseIntArray;-><init>(I)V

    iput-object v0, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->mHeaderMap:Landroid/util/SparseIntArray;

    .line 74
    return-void
.end method

.method private ensureSectionHeaders()V
    .locals 9

    .prologue
    .line 469
    iget-object v7, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->mHeaderMap:Landroid/util/SparseIntArray;

    invoke-virtual {v7}, Landroid/util/SparseIntArray;->clear()V

    .line 470
    iget-boolean v7, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->mShowSectionHeaders:Z

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->mIndexer:Landroid/widget/SectionIndexer;

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    iget v8, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->mIndexedPartition:I

    aget-object v7, v7, v8

    iget v7, v7, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mItemCount:I

    if-lez v7, :cond_1

    .line 472
    iget-object v7, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    iget v8, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->mIndexedPartition:I

    aget-object v7, v7, v8

    iget v1, v7, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mHeaderViewsCount:I

    .line 473
    .local v1, "hvCount":I
    const/4 v6, -0x1

    .line 474
    .local v6, "section":I
    const/4 v5, 0x0

    .local v5, "pos":I
    :goto_0
    iget-object v7, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    iget v8, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->mIndexedPartition:I

    aget-object v7, v7, v8

    iget v7, v7, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mItemCount:I

    if-ge v5, v7, :cond_0

    .line 475
    iget-object v7, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->mIndexer:Landroid/widget/SectionIndexer;

    invoke-interface {v7, v5}, Landroid/widget/SectionIndexer;->getSectionForPosition(I)I

    move-result v3

    .line 476
    .local v3, "nextSection":I
    if-eq v6, v3, :cond_0

    .line 477
    move v6, v3

    .line 478
    add-int v7, v5, v1

    iget-object v8, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->mHeaderMap:Landroid/util/SparseIntArray;

    invoke-virtual {v8}, Landroid/util/SparseIntArray;->size()I

    move-result v8

    add-int v4, v7, v8

    .line 479
    .local v4, "offset":I
    iget-object v7, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->mHeaderMap:Landroid/util/SparseIntArray;

    invoke-virtual {v7, v6, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 485
    iget-object v7, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->mIndexer:Landroid/widget/SectionIndexer;

    add-int/lit8 v8, v6, 0x1

    invoke-interface {v7, v8}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v2

    .line 486
    .local v2, "nextPos":I
    if-eq v5, v2, :cond_0

    .line 487
    move v5, v2

    .line 491
    goto :goto_0

    .line 493
    .end local v2    # "nextPos":I
    .end local v3    # "nextSection":I
    .end local v4    # "offset":I
    :cond_0
    iget-object v7, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->mHeaderMap:Landroid/util/SparseIntArray;

    invoke-virtual {v7}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    .line 494
    .local v0, "headerCount":I
    iget-object v7, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    iget v8, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->mIndexedPartition:I

    aget-object v7, v7, v8

    iget v8, v7, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mCount:I

    add-int/2addr v8, v0

    iput v8, v7, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mCount:I

    .line 495
    iget-object v7, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    iget v8, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->mIndexedPartition:I

    aget-object v7, v7, v8

    iget v8, v7, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mSize:I

    add-int/2addr v8, v0

    iput v8, v7, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mSize:I

    .line 496
    iget v7, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->mCount:I

    add-int/2addr v7, v0

    iput v7, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->mCount:I

    .line 498
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
    .line 343
    iget v2, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->mIndexedPartition:I

    invoke-virtual {p0, v2}, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->getPositionForPartition(I)I

    move-result v0

    .line 344
    .local v0, "partitionStart":I
    iget v2, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->mIndexedPartition:I

    invoke-virtual {p0, v2}, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->hasHeader(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 345
    add-int/lit8 v0, v0, 0x1

    .line 349
    :cond_0
    invoke-virtual {p0, p1}, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->getPositionForSection(I)I

    move-result v2

    add-int v1, v0, v2

    .line 350
    .local v1, "sectionPosition":I
    return v1
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 519
    invoke-virtual {p0}, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->ensureCacheValid()V

    .line 520
    iget-boolean v0, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->mShowSectionHeaders:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->mHeaderMap:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 521
    const/4 v0, 0x0

    .line 523
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Lcom/meizu/common/widget/PinnedHeaderListAdapter;->areAllItemsEnabled()Z

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
    .line 616
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 617
    const v1, 0x7f0d00dd

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 618
    .local v0, "headerText1":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->getSections()[Ljava/lang/Object;

    move-result-object v1

    aget-object v1, v1, p4

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 620
    if-nez p3, :cond_0

    .line 621
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0169

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->setMinimumHeight(I)V

    .line 627
    :goto_0
    return-void

    .line 624
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
    .line 538
    iget v0, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->mIndexedPartition:I

    if-ne v0, p1, :cond_0

    iget-boolean v0, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->mShowSectionHeaders:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->mHeaderMap:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseIntArray;->indexOfValue(I)I

    move-result v0

    if-ltz v0, :cond_0

    .line 540
    const/4 v0, 0x0

    .line 542
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/meizu/common/widget/PinnedHeaderListAdapter;->canSelect(II)Z

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
    .line 363
    return-void
.end method

.method public configurePinnedHeaders(Lcom/meizu/common/widget/PinnedHeaderListView;)V
    .locals 14
    .param p1, "listView"    # Lcom/meizu/common/widget/PinnedHeaderListView;

    .prologue
    .line 263
    invoke-super {p0, p1}, Lcom/meizu/common/widget/PinnedHeaderListAdapter;->configurePinnedHeaders(Lcom/meizu/common/widget/PinnedHeaderListView;)V

    .line 265
    invoke-virtual {p0}, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->isSectionHeaderDisplayEnabled()Z

    move-result v11

    if-nez v11, :cond_1

    .line 336
    :cond_0
    :goto_0
    return-void

    .line 269
    :cond_1
    invoke-virtual {p1}, Lcom/meizu/common/widget/PinnedHeaderListView;->getCurrentOverScrollDistance()I

    move-result v0

    .line 271
    .local v0, "currentOverScrollDistance":I
    if-gtz v0, :cond_4

    invoke-virtual {p1}, Lcom/meizu/common/widget/PinnedHeaderListView;->getFirstVisiblePosition()I

    move-result v11

    if-nez v11, :cond_4

    const/4 v1, 0x1

    .line 273
    .local v1, "forceHide":Z
    :goto_1
    if-eqz v1, :cond_2

    iget v11, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->mLastSectionOverScrollDistance:I

    if-ltz v11, :cond_2

    .line 274
    const/4 v11, 0x0

    invoke-direct {p0, v11}, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->getSectionPosition(I)I

    move-result v11

    invoke-virtual {p1}, Lcom/meizu/common/widget/PinnedHeaderListView;->getHeaderViewsCount()I

    move-result v12

    add-int/2addr v11, v12

    const/4 v12, 0x0

    const/4 v13, 0x1

    invoke-virtual {p0, p1, v11, v12, v13}, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->configureItemHeader(Landroid/widget/ListView;IIZ)V

    .line 277
    :cond_2
    iput v0, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->mLastSectionOverScrollDistance:I

    .line 279
    invoke-virtual {p0}, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->getPinnedHeaderCount()I

    move-result v11

    add-int/lit8 v3, v11, -0x1

    .line 280
    .local v3, "index":I
    iget-object v11, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->mIndexer:Landroid/widget/SectionIndexer;

    if-eqz v11, :cond_3

    invoke-virtual {p0}, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->getCount()I

    move-result v11

    if-eqz v11, :cond_3

    if-eqz v1, :cond_5

    .line 281
    :cond_3
    const/4 v11, 0x0

    invoke-virtual {p1, v3, v11}, Lcom/meizu/common/widget/PinnedHeaderListView;->setHeaderInvisible(IZ)V

    .line 282
    const/4 v11, -0x1

    iput v11, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->mLastSection:I

    goto :goto_0

    .line 271
    .end local v1    # "forceHide":Z
    .end local v3    # "index":I
    :cond_4
    const/4 v1, 0x0

    goto :goto_1

    .line 284
    .restart local v1    # "forceHide":Z
    .restart local v3    # "index":I
    :cond_5
    invoke-virtual {p1}, Lcom/meizu/common/widget/PinnedHeaderListView;->getTotalTopPinnedHeaderHeight()I

    move-result v11

    invoke-virtual {p1}, Lcom/meizu/common/widget/PinnedHeaderListView;->getHeaderPaddingTop()I

    move-result v12

    add-int/2addr v11, v12

    invoke-virtual {p1, v11}, Lcom/meizu/common/widget/PinnedHeaderListView;->getPositionAt(I)I

    move-result v5

    .line 285
    .local v5, "listPosition":I
    invoke-virtual {p1}, Lcom/meizu/common/widget/PinnedHeaderListView;->getHeaderViewsCount()I

    move-result v11

    sub-int v9, v5, v11

    .line 287
    .local v9, "position":I
    const/4 v10, -0x1

    .line 288
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

    .line 290
    invoke-virtual {p0, v9}, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->getPartitionForPosition(I)I

    move-result v8

    .line 291
    .local v8, "partition":I
    iget v11, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->mIndexedPartition:I

    if-ne v8, v11, :cond_6

    .line 292
    invoke-virtual {p0, v9}, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->getOffsetInPartition(I)I

    move-result v7

    .line 293
    .local v7, "offset":I
    iget-object v11, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    aget-object v11, v11, v8

    iget v11, v11, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mHeaderViewsCount:I

    if-lt v7, v11, :cond_6

    .line 294
    invoke-virtual {p0, v7}, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->getSectionForPosition(I)I

    move-result v10

    .line 299
    .end local v7    # "offset":I
    .end local v8    # "partition":I
    :cond_6
    iget v11, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->mLastSection:I

    if-ne v11, v10, :cond_7

    const/4 v11, -0x1

    if-eq v10, v11, :cond_7

    invoke-direct {p0, v10}, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->getSectionPosition(I)I

    move-result v11

    if-ne v11, v9, :cond_7

    .line 300
    const/4 v11, 0x1

    invoke-virtual {p0, p1, v5, v10, v11}, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->configureItemHeader(Landroid/widget/ListView;IIZ)V

    .line 304
    :cond_7
    iget v11, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->mLastSection:I

    if-eq v11, v10, :cond_0

    .line 309
    iget v11, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->mLastSection:I

    if-le v11, v10, :cond_8

    .line 311
    iget v2, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->mLastSection:I

    .local v2, "i":I
    :goto_2
    if-le v2, v10, :cond_9

    .line 312
    invoke-direct {p0, v2}, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->getSectionPosition(I)I

    move-result v11

    invoke-virtual {p1}, Lcom/meizu/common/widget/PinnedHeaderListView;->getHeaderViewsCount()I

    move-result v12

    add-int/2addr v11, v12

    const/4 v12, 0x1

    invoke-virtual {p0, p1, v11, v2, v12}, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->configureItemHeader(Landroid/widget/ListView;IIZ)V

    .line 311
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    .line 315
    .end local v2    # "i":I
    :cond_8
    iget v11, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->mLastSection:I

    if-ge v11, v10, :cond_9

    .line 317
    iget v11, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->mLastSection:I

    add-int/lit8 v2, v11, 0x1

    .restart local v2    # "i":I
    :goto_3
    if-gt v2, v10, :cond_9

    .line 318
    invoke-direct {p0, v2}, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->getSectionPosition(I)I

    move-result v11

    invoke-virtual {p1}, Lcom/meizu/common/widget/PinnedHeaderListView;->getHeaderViewsCount()I

    move-result v12

    add-int/2addr v11, v12

    const/4 v12, 0x0

    invoke-virtual {p0, p1, v11, v2, v12}, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->configureItemHeader(Landroid/widget/ListView;IIZ)V

    .line 317
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 322
    .end local v2    # "i":I
    :cond_9
    iput v10, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->mLastSection:I

    .line 324
    const/4 v11, -0x1

    if-eq v10, v11, :cond_a

    invoke-virtual {p0, v10}, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->isPinnedSectionHeaderVisible(I)Z

    move-result v11

    if-nez v11, :cond_b

    .line 325
    :cond_a
    const/4 v11, 0x0

    invoke-virtual {p1, v3, v11}, Lcom/meizu/common/widget/PinnedHeaderListView;->setHeaderInvisible(IZ)V

    goto/16 :goto_0

    .line 328
    :cond_b
    iget-object v11, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->mHeader:Landroid/view/View;

    invoke-virtual {p0, v11, v10}, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->setPinnedSectionHeaderView(Landroid/view/View;I)V

    .line 331
    add-int/lit8 v11, v10, 0x1

    invoke-direct {p0, v11}, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->getSectionPosition(I)I

    move-result v6

    .line 332
    .local v6, "nextSectionPosition":I
    add-int/lit8 v11, v6, -0x1

    if-ne v9, v11, :cond_c

    const/4 v4, 0x1

    .line 333
    .local v4, "isLastInSection":Z
    :goto_4
    invoke-virtual {p1, v3, v5, v4}, Lcom/meizu/common/widget/PinnedHeaderListView;->setFadingHeader(IIZ)V

    goto/16 :goto_0

    .line 332
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
    .line 89
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 90
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v3, 0x7f040044

    const/4 v4, 0x0

    invoke-virtual {v1, v3, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 91
    .local v2, "view":Landroid/view/View;
    if-eqz v2, :cond_0

    .line 92
    const/high16 v3, 0x1020000

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 93
    .local v0, "imageView":Landroid/widget/ImageView;
    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 95
    .end local v0    # "imageView":Landroid/widget/ImageView;
    :cond_0
    return-object v2
.end method

.method protected ensureCacheValid()V
    .locals 1

    .prologue
    .line 460
    iget-boolean v0, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->mCacheValid:Z

    if-eqz v0, :cond_0

    .line 466
    :goto_0
    return-void

    .line 464
    :cond_0
    invoke-super {p0}, Lcom/meizu/common/widget/PinnedHeaderListAdapter;->ensureCacheValid()V

    .line 465
    invoke-direct {p0}, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->ensureSectionHeaders()V

    goto :goto_0
.end method

.method protected getDataPosition(II)I
    .locals 4
    .param p1, "partitionIndex"    # I
    .param p2, "offset"    # I

    .prologue
    .line 547
    iget v2, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->mIndexedPartition:I

    if-ne v2, p1, :cond_2

    iget-boolean v2, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->mShowSectionHeaders:Z

    if-eqz v2, :cond_2

    .line 548
    iget-object v2, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->mHeaderMap:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p2}, Landroid/util/SparseIntArray;->indexOfValue(I)I

    move-result v2

    if-ltz v2, :cond_1

    .line 550
    const/4 v1, -0x1

    .line 563
    :cond_0
    :goto_0
    return v1

    .line 553
    :cond_1
    iget-object v2, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    iget v3, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->mIndexedPartition:I

    aget-object v2, v2, v3

    iget v2, v2, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mHeaderViewsCount:I

    sub-int v1, p2, v2

    .line 554
    .local v1, "pos":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v2, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->mHeaderMap:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 555
    iget-object v2, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->mHeaderMap:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v2

    if-gt v2, p2, :cond_0

    .line 558
    add-int/lit8 v1, v1, -0x1

    .line 554
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 563
    .end local v0    # "i":I
    .end local v1    # "pos":I
    :cond_2
    invoke-super {p0, p1, p2}, Lcom/meizu/common/widget/PinnedHeaderListAdapter;->getDataPosition(II)I

    move-result v1

    goto :goto_0
.end method

.method public getIndexedPartition()I
    .locals 1

    .prologue
    .line 128
    iget v0, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->mIndexedPartition:I

    return v0
.end method

.method public getIndexer()Landroid/widget/SectionIndexer;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->mIndexer:Landroid/widget/SectionIndexer;

    return-object v0
.end method

.method protected getItemBackgroundType(II)I
    .locals 12
    .param p1, "partitionIndex"    # I
    .param p2, "offset"    # I

    .prologue
    const/4 v6, 0x4

    const/4 v8, 0x3

    const/4 v9, 0x2

    const/4 v7, 0x1

    .line 397
    iget v10, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->mIndexedPartition:I

    if-ne v10, p1, :cond_e

    if-ltz p2, :cond_e

    iget-object v10, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->mIndexer:Landroid/widget/SectionIndexer;

    if-eqz v10, :cond_e

    .line 399
    iget v10, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->mIndexedPartition:I

    invoke-virtual {p0, v10, p2}, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->isHeaderView(II)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 400
    iget-object v10, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    iget v11, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->mIndexedPartition:I

    aget-object v10, v10, v11

    iget v2, v10, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mHeaderViewsCount:I

    .line 401
    .local v2, "hvCount":I
    if-ne v2, v7, :cond_1

    .line 454
    .end local v2    # "hvCount":I
    :cond_0
    :goto_0
    return v6

    .line 403
    .restart local v2    # "hvCount":I
    :cond_1
    if-nez p2, :cond_2

    move v6, v7

    .line 404
    goto :goto_0

    .line 405
    :cond_2
    add-int/lit8 v6, v2, -0x1

    if-ne p2, v6, :cond_3

    move v6, v8

    .line 406
    goto :goto_0

    :cond_3
    move v6, v9

    .line 408
    goto :goto_0

    .line 413
    .end local v2    # "hvCount":I
    :cond_4
    iget v10, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->mIndexedPartition:I

    invoke-virtual {p0, v10, p2}, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->isFooterView(II)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 414
    iget-object v10, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    iget v11, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->mIndexedPartition:I

    aget-object v10, v10, v11

    iget v1, v10, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mFooterViewsCount:I

    .line 415
    .local v1, "fvCount":I
    iget-object v10, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    iget v11, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->mIndexedPartition:I

    aget-object v10, v10, v11

    iget v10, v10, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mCount:I

    sub-int v0, v10, v1

    .line 416
    .local v0, "footerStart":I
    if-eq v1, v7, :cond_0

    .line 418
    if-ne p2, v0, :cond_5

    move v6, v7

    .line 419
    goto :goto_0

    .line 420
    :cond_5
    sub-int v6, p2, v0

    add-int/lit8 v7, v1, -0x1

    if-ne v6, v7, :cond_6

    move v6, v8

    .line 421
    goto :goto_0

    :cond_6
    move v6, v9

    .line 423
    goto :goto_0

    .line 427
    .end local v0    # "footerStart":I
    .end local v1    # "fvCount":I
    :cond_7
    invoke-virtual {p0, p2}, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->getSectionForPosition(I)I

    move-result v4

    .line 428
    .local v4, "section":I
    invoke-virtual {p0, v4}, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->getPositionForSection(I)I

    move-result v5

    .line 430
    .local v5, "sectionPos":I
    invoke-virtual {p0}, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->getSections()[Ljava/lang/Object;

    move-result-object v10

    array-length v10, v10

    add-int/lit8 v10, v10, -0x1

    if-ne v4, v10, :cond_8

    .line 431
    invoke-virtual {p0, p1}, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->getCountForPartition(I)I

    move-result v3

    .line 436
    .local v3, "nextSectionPos":I
    :goto_1
    iget-boolean v10, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->mShowSectionHeaders:Z

    if-eqz v10, :cond_a

    .line 438
    if-ne p2, v5, :cond_9

    .line 439
    const/4 v6, 0x0

    goto :goto_0

    .line 433
    .end local v3    # "nextSectionPos":I
    :cond_8
    add-int/lit8 v10, v4, 0x1

    invoke-virtual {p0, v10}, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->getPositionForSection(I)I

    move-result v3

    .restart local v3    # "nextSectionPos":I
    goto :goto_1

    .line 441
    :cond_9
    add-int/lit8 v5, v5, 0x1

    .line 444
    :cond_a
    if-ne p2, v5, :cond_b

    sub-int v10, v3, v5

    if-eq v10, v7, :cond_0

    .line 446
    :cond_b
    if-ne p2, v5, :cond_c

    move v6, v7

    .line 447
    goto :goto_0

    .line 448
    :cond_c
    add-int/lit8 v6, v3, -0x1

    if-ne p2, v6, :cond_d

    move v6, v8

    .line 449
    goto :goto_0

    :cond_d
    move v6, v9

    .line 451
    goto :goto_0

    .line 454
    .end local v3    # "nextSectionPos":I
    .end local v4    # "section":I
    .end local v5    # "sectionPos":I
    :cond_e
    invoke-super {p0, p1, p2}, Lcom/meizu/common/widget/PinnedHeaderListAdapter;->getItemBackgroundType(II)I

    move-result v6

    goto :goto_0
.end method

.method public getItemPlacementInSection(I)Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter$Placement;
    .locals 5
    .param p1, "position"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 371
    iget-object v1, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->mPlacementCache:Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter$Placement;

    # getter for: Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter$Placement;->position:I
    invoke-static {v1}, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter$Placement;->access$000(Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter$Placement;)I

    move-result v1

    if-ne v1, p1, :cond_0

    .line 372
    iget-object v1, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->mPlacementCache:Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter$Placement;

    .line 392
    :goto_0
    return-object v1

    .line 375
    :cond_0
    iget-object v1, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->mPlacementCache:Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter$Placement;

    # setter for: Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter$Placement;->position:I
    invoke-static {v1, p1}, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter$Placement;->access$002(Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter$Placement;I)I

    .line 376
    invoke-virtual {p0}, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->isSectionHeaderDisplayEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 377
    invoke-virtual {p0, p1}, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->getSectionForPosition(I)I

    move-result v0

    .line 378
    .local v0, "section":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->getPositionForSection(I)I

    move-result v1

    if-ne v1, p1, :cond_1

    .line 379
    iget-object v1, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->mPlacementCache:Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter$Placement;

    iput-boolean v2, v1, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter$Placement;->firstInSection:Z

    .line 380
    iget-object v4, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->mPlacementCache:Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter$Placement;

    invoke-virtual {p0}, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->getSections()[Ljava/lang/Object;

    move-result-object v1

    aget-object v1, v1, v0

    check-cast v1, Ljava/lang/String;

    iput-object v1, v4, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter$Placement;->sectionHeader:Ljava/lang/String;

    .line 386
    :goto_1
    iget-object v4, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->mPlacementCache:Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter$Placement;

    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v1}, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->getPositionForSection(I)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v1, p1, :cond_2

    move v1, v2

    :goto_2
    iput-boolean v1, v4, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter$Placement;->lastInSection:Z

    .line 392
    .end local v0    # "section":I
    :goto_3
    iget-object v1, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->mPlacementCache:Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter$Placement;

    goto :goto_0

    .line 382
    .restart local v0    # "section":I
    :cond_1
    iget-object v1, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->mPlacementCache:Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter$Placement;

    iput-boolean v3, v1, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter$Placement;->firstInSection:Z

    .line 383
    iget-object v1, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->mPlacementCache:Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter$Placement;

    iput-object v4, v1, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter$Placement;->sectionHeader:Ljava/lang/String;

    goto :goto_1

    :cond_2
    move v1, v3

    .line 386
    goto :goto_2

    .line 388
    .end local v0    # "section":I
    :cond_3
    iget-object v1, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->mPlacementCache:Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter$Placement;

    iput-boolean v3, v1, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter$Placement;->firstInSection:Z

    .line 389
    iget-object v1, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->mPlacementCache:Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter$Placement;

    iput-boolean v3, v1, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter$Placement;->lastInSection:Z

    .line 390
    iget-object v1, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->mPlacementCache:Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter$Placement;

    iput-object v4, v1, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter$Placement;->sectionHeader:Ljava/lang/String;

    goto :goto_3
.end method

.method protected getItemViewType(II)I
    .locals 2
    .param p1, "partitionIndex"    # I
    .param p2, "position"    # I

    .prologue
    .line 507
    iget v1, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->mIndexedPartition:I

    if-ne v1, p1, :cond_0

    iget-boolean v1, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->mShowSectionHeaders:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->mHeaderMap:Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 509
    invoke-virtual {p0, p2}, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->getOffsetInPartition(I)I

    move-result v0

    .line 510
    .local v0, "offset":I
    iget-object v1, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->mHeaderMap:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->indexOfValue(I)I

    move-result v1

    if-ltz v1, :cond_0

    .line 511
    invoke-virtual {p0}, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->getViewTypeCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .line 514
    .end local v0    # "offset":I
    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/meizu/common/widget/PinnedHeaderListAdapter;->getItemViewType(II)I

    move-result v1

    goto :goto_0
.end method

.method public getPinnedHeaderCount()I
    .locals 1

    .prologue
    .line 239
    invoke-virtual {p0}, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->isSectionHeaderDisplayEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 240
    invoke-super {p0}, Lcom/meizu/common/widget/PinnedHeaderListAdapter;->getPinnedHeaderCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 242
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Lcom/meizu/common/widget/PinnedHeaderListAdapter;->getPinnedHeaderCount()I

    move-result v0

    goto :goto_0
.end method

.method public getPinnedHeaderView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .param p1, "viewIndex"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 248
    invoke-virtual {p0}, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->isSectionHeaderDisplayEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->getPinnedHeaderCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_1

    .line 249
    iget-object v0, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->mHeader:Landroid/view/View;

    if-nez v0, :cond_0

    .line 250
    iget-object v0, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0, p3}, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->createPinnedSectionHeaderView(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->mHeader:Landroid/view/View;

    .line 252
    :cond_0
    iget-object v0, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->mHeader:Landroid/view/View;

    .line 254
    :goto_0
    return-object v0

    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcom/meizu/common/widget/PinnedHeaderListAdapter;->getPinnedHeaderView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public getPositionForSection(I)I
    .locals 4
    .param p1, "sectionIndex"    # I

    .prologue
    .line 181
    iget-object v2, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->mIndexer:Landroid/widget/SectionIndexer;

    if-nez v2, :cond_1

    .line 182
    const/4 v1, -0x1

    .line 199
    :cond_0
    :goto_0
    return v1

    .line 185
    :cond_1
    if-gez p1, :cond_2

    .line 186
    const/4 v1, 0x0

    goto :goto_0

    .line 189
    :cond_2
    iget-object v2, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->mIndexer:Landroid/widget/SectionIndexer;

    invoke-interface {v2, p1}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v1

    .line 190
    .local v1, "pos":I
    iget-object v2, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    iget v3, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->mIndexedPartition:I

    aget-object v2, v2, v3

    iget v2, v2, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mHeaderViewsCount:I

    add-int/2addr v1, v2

    .line 191
    iget-boolean v2, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->mShowSectionHeaders:Z

    if-eqz v2, :cond_0

    .line 192
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, p1, :cond_0

    .line 193
    iget-object v2, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->mHeaderMap:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v2

    if-ltz v2, :cond_3

    .line 194
    add-int/lit8 v1, v1, 0x1

    .line 192
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public getSectionForPosition(I)I
    .locals 5
    .param p1, "position"    # I

    .prologue
    const/4 v2, -0x1

    .line 208
    iget-object v3, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->mIndexer:Landroid/widget/SectionIndexer;

    if-nez v3, :cond_1

    .line 234
    :cond_0
    :goto_0
    return v2

    .line 213
    :cond_1
    iget v3, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->mIndexedPartition:I

    invoke-virtual {p0, v3, p1}, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->isFooterView(II)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    iget v4, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->mIndexedPartition:I

    aget-object v3, v3, v4

    iget v3, v3, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mCount:I

    add-int/lit8 v3, v3, -0x1

    if-le p1, v3, :cond_3

    .line 215
    :cond_2
    invoke-virtual {p0}, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->getSections()[Ljava/lang/Object;

    move-result-object v2

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 218
    :cond_3
    iget-object v3, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    iget v4, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->mIndexedPartition:I

    aget-object v3, v3, v4

    iget v3, v3, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mHeaderViewsCount:I

    sub-int v1, p1, v3

    .line 219
    .local v1, "pos":I
    if-ltz v1, :cond_0

    .line 224
    iget-boolean v2, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->mShowSectionHeaders:Z

    if-eqz v2, :cond_4

    .line 225
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v2, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->mHeaderMap:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_4

    .line 226
    iget-object v2, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->mHeaderMap:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v2

    if-lt v2, p1, :cond_5

    .line 234
    .end local v0    # "i":I
    :cond_4
    iget-object v2, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->mIndexer:Landroid/widget/SectionIndexer;

    invoke-interface {v2, v1}, Landroid/widget/SectionIndexer;->getSectionForPosition(I)I

    move-result v2

    goto :goto_0

    .line 229
    .restart local v0    # "i":I
    :cond_5
    add-int/lit8 v1, v1, -0x1

    .line 225
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
    .line 586
    if-eqz p3, :cond_0

    move-object v0, p3

    .line 589
    .local v0, "view":Landroid/view/View;
    :goto_0
    iget-object v1, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->bindSectionHeaderView(Landroid/view/View;Landroid/content/Context;II)V

    .line 590
    return-object v0

    .line 586
    .end local v0    # "view":Landroid/view/View;
    :cond_0
    iget-object v1, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1, p1, p2, p4}, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->newSectionHeaderView(Landroid/content/Context;IILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public getSections()[Ljava/lang/Object;
    .locals 3

    .prologue
    .line 168
    iget-object v0, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->mIndexer:Landroid/widget/SectionIndexer;

    if-nez v0, :cond_0

    .line 169
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, " "

    aput-object v2, v0, v1

    .line 171
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->mIndexer:Landroid/widget/SectionIndexer;

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
    .line 570
    iget v2, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->mIndexedPartition:I

    if-ne v2, p2, :cond_0

    iget-boolean v2, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->mShowSectionHeaders:Z

    if-eqz v2, :cond_0

    .line 571
    iget-object v2, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->mHeaderMap:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p3}, Landroid/util/SparseIntArray;->indexOfValue(I)I

    move-result v0

    .line 572
    .local v0, "index":I
    if-ltz v0, :cond_0

    .line 573
    iget-object v2, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->mHeaderMap:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v1

    .line 574
    .local v1, "sectionIndex":I
    invoke-virtual {p0, p3, v1, p5, p6}, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->getSectionHeaderView(IILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 578
    .end local v0    # "index":I
    .end local v1    # "sectionIndex":I
    :goto_0
    return-object v2

    :cond_0
    invoke-super/range {p0 .. p6}, Lcom/meizu/common/widget/PinnedHeaderListAdapter;->getView(IIIILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    goto :goto_0
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 502
    invoke-super {p0}, Lcom/meizu/common/widget/PinnedHeaderListAdapter;->getViewTypeCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method protected isEnabled(II)Z
    .locals 1
    .param p1, "partitionIndex"    # I
    .param p2, "offset"    # I

    .prologue
    .line 529
    iget v0, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->mIndexedPartition:I

    if-ne v0, p1, :cond_0

    iget-boolean v0, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->mShowSectionHeaders:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->mHeaderMap:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseIntArray;->indexOfValue(I)I

    move-result v0

    if-ltz v0, :cond_0

    .line 531
    const/4 v0, 0x0

    .line 533
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/meizu/common/widget/PinnedHeaderListAdapter;->isEnabled(II)Z

    move-result v0

    goto :goto_0
.end method

.method protected isPinnedSectionHeaderVisible(I)Z
    .locals 1
    .param p1, "section"    # I

    .prologue
    .line 109
    const/4 v0, 0x1

    return v0
.end method

.method public isSectionHeaderDisplayEnabled()Z
    .locals 1

    .prologue
    .line 113
    iget-boolean v0, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->mSectionHeaderDisplayEnabled:Z

    return v0
.end method

.method protected newSectionHeaderView(Landroid/content/Context;IILandroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "offset"    # I
    .param p3, "sectionIndex"    # I
    .param p4, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 603
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 604
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
    .line 136
    iput p1, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->mIndexedPartition:I

    .line 137
    iget-boolean v0, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->mShowSectionHeaders:Z

    if-eqz v0, :cond_0

    .line 138
    invoke-virtual {p0}, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->invalidate()V

    .line 140
    :cond_0
    return-void
.end method

.method public setIndexer(Landroid/widget/SectionIndexer;)V
    .locals 1
    .param p1, "indexer"    # Landroid/widget/SectionIndexer;

    .prologue
    .line 155
    iput-object p1, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->mIndexer:Landroid/widget/SectionIndexer;

    .line 156
    iget-object v0, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->mPlacementCache:Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter$Placement;

    invoke-virtual {v0}, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter$Placement;->invalidate()V

    .line 157
    iget-boolean v0, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->mShowSectionHeaders:Z

    if-eqz v0, :cond_0

    .line 158
    invoke-virtual {p0}, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->invalidate()V

    .line 160
    :cond_0
    return-void
.end method

.method protected setPinnedSectionHeaderView(Landroid/view/View;I)V
    .locals 2
    .param p1, "pinnedHeaderView"    # Landroid/view/View;
    .param p2, "section"    # I

    .prologue
    .line 102
    if-eqz p1, :cond_0

    .line 103
    const v1, 0x7f0d00dd

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 104
    .local v0, "headerText":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->getSections()[Ljava/lang/Object;

    move-result-object v1

    aget-object v1, v1, p2

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 106
    .end local v0    # "headerText":Landroid/widget/TextView;
    :cond_0
    return-void
.end method

.method public setSectionHeaderDisplayEnabled(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 120
    iput-boolean p1, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->mSectionHeaderDisplayEnabled:Z

    .line 121
    return-void
.end method

.method public showSectionHeaders(Z)V
    .locals 0
    .param p1, "show"    # Z

    .prologue
    .line 80
    iput-boolean p1, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->mShowSectionHeaders:Z

    .line 81
    invoke-virtual {p0}, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->invalidate()V

    .line 82
    return-void
.end method
