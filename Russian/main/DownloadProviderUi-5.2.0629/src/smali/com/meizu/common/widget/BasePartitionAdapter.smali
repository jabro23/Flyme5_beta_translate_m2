.class public abstract Lcom/meizu/common/widget/BasePartitionAdapter;
.super Lcom/meizu/common/widget/AbsBasePartitionAdapter;
.source "BasePartitionAdapter.java"

# interfaces
.implements Lcom/meizu/widget/ListSelectFilter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/common/widget/BasePartitionAdapter$PartitionFixedViewInfo;,
        Lcom/meizu/common/widget/BasePartitionAdapter$Partition;
    }
.end annotation


# static fields
.field private static final CAPACITY_INCREMENT:I = 0xa

.field protected static final INITIAL_CAPACITY:I = 0xa

.field public static final ITEM_VIEW_TYPE_PARTITION_HEADER:I = 0x0

.field public static final PARTITION_FIRST_ITEM_BG_TYPE:I = 0x1

.field public static final PARTITION_HEADER_ITEM_BG_TYPE:I = 0x0

.field public static final PARTITION_LAST_ITEM_BG_TYPE:I = 0x3

.field public static final PARTITION_MIDDLE_ITEM_BG_TYPE:I = 0x2

.field public static final PARTITION_SINGLE_ITEM_BG_TYPE:I = 0x4


# instance fields
.field protected mCacheValid:Z

.field protected final mContext:Landroid/content/Context;

.field protected mCount:I

.field protected mItemCounts:I

.field private mNotificationNeeded:Z

.field private mNotificationsEnabled:Z

.field protected mPartitionCount:I

.field protected mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 134
    const/16 v0, 0xa

    invoke-direct {p0, p1, v0}, Lcom/meizu/common/widget/BasePartitionAdapter;-><init>(Landroid/content/Context;I)V

    .line 135
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "initialCapacity"    # I

    .prologue
    .line 143
    invoke-direct {p0}, Lcom/meizu/common/widget/AbsBasePartitionAdapter;-><init>()V

    .line 107
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mNotificationsEnabled:Z

    .line 144
    iput-object p1, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mContext:Landroid/content/Context;

    .line 145
    new-array v0, p2, [Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    iput-object v0, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    .line 146
    return-void
.end method

.method private areAllPartitionFixedViewsSelectable(Ljava/util/ArrayList;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/meizu/common/widget/BasePartitionAdapter$PartitionFixedViewInfo;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 691
    .local p1, "infos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/meizu/common/widget/BasePartitionAdapter$PartitionFixedViewInfo;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/meizu/common/widget/BasePartitionAdapter$PartitionFixedViewInfo;

    .line 692
    .local v1, "info":Lcom/meizu/common/widget/BasePartitionAdapter$PartitionFixedViewInfo;
    iget-boolean v2, v1, Lcom/meizu/common/widget/BasePartitionAdapter$PartitionFixedViewInfo;->isSelectable:Z

    if-nez v2, :cond_0

    .line 693
    const/4 v2, 0x0

    .line 696
    .end local v1    # "info":Lcom/meizu/common/widget/BasePartitionAdapter$PartitionFixedViewInfo;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private removeFixedViewInfo(Landroid/view/View;Ljava/util/ArrayList;)Z
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/meizu/common/widget/BasePartitionAdapter$PartitionFixedViewInfo;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 479
    .local p2, "where":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/meizu/common/widget/BasePartitionAdapter$PartitionFixedViewInfo;>;"
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 480
    .local v2, "len":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 481
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/meizu/common/widget/BasePartitionAdapter$PartitionFixedViewInfo;

    .line 482
    .local v1, "info":Lcom/meizu/common/widget/BasePartitionAdapter$PartitionFixedViewInfo;
    iget-object v3, v1, Lcom/meizu/common/widget/BasePartitionAdapter$PartitionFixedViewInfo;->view:Landroid/view/View;

    if-ne v3, p1, :cond_0

    .line 483
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 484
    invoke-virtual {p0}, Lcom/meizu/common/widget/BasePartitionAdapter;->invalidate()V

    .line 485
    invoke-virtual {p0}, Lcom/meizu/common/widget/BasePartitionAdapter;->notifyDataSetChanged()V

    .line 486
    const/4 v3, 0x1

    .line 489
    .end local v1    # "info":Lcom/meizu/common/widget/BasePartitionAdapter$PartitionFixedViewInfo;
    :goto_1
    return v3

    .line 480
    .restart local v1    # "info":Lcom/meizu/common/widget/BasePartitionAdapter$PartitionFixedViewInfo;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 489
    .end local v1    # "info":Lcom/meizu/common/widget/BasePartitionAdapter$PartitionFixedViewInfo;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method


# virtual methods
.method public addFooterView(ILandroid/view/View;)V
    .locals 2
    .param p1, "partitionIndex"    # I
    .param p2, "v"    # Landroid/view/View;

    .prologue
    .line 526
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/meizu/common/widget/BasePartitionAdapter;->addFooterView(ILandroid/view/View;Ljava/lang/Object;Z)V

    .line 527
    return-void
.end method

.method public addFooterView(ILandroid/view/View;Ljava/lang/Object;Z)V
    .locals 2
    .param p1, "partitionIndex"    # I
    .param p2, "v"    # Landroid/view/View;
    .param p3, "data"    # Ljava/lang/Object;
    .param p4, "isSelectable"    # Z

    .prologue
    .line 503
    iget v1, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitionCount:I

    if-lt p1, v1, :cond_0

    .line 504
    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v1, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v1

    .line 507
    :cond_0
    new-instance v0, Lcom/meizu/common/widget/BasePartitionAdapter$PartitionFixedViewInfo;

    invoke-direct {v0, p0}, Lcom/meizu/common/widget/BasePartitionAdapter$PartitionFixedViewInfo;-><init>(Lcom/meizu/common/widget/BasePartitionAdapter;)V

    .line 508
    .local v0, "info":Lcom/meizu/common/widget/BasePartitionAdapter$PartitionFixedViewInfo;
    iput-object p2, v0, Lcom/meizu/common/widget/BasePartitionAdapter$PartitionFixedViewInfo;->view:Landroid/view/View;

    .line 509
    iput-object p3, v0, Lcom/meizu/common/widget/BasePartitionAdapter$PartitionFixedViewInfo;->data:Ljava/lang/Object;

    .line 510
    iput-boolean p4, v0, Lcom/meizu/common/widget/BasePartitionAdapter$PartitionFixedViewInfo;->isSelectable:Z

    .line 511
    iget-object v1, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    aget-object v1, v1, p1

    iget-object v1, v1, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 513
    invoke-virtual {p0}, Lcom/meizu/common/widget/BasePartitionAdapter;->invalidate()V

    .line 514
    invoke-virtual {p0}, Lcom/meizu/common/widget/BasePartitionAdapter;->notifyDataSetChanged()V

    .line 515
    return-void
.end method

.method public addHeaderView(ILandroid/view/View;)V
    .locals 2
    .param p1, "partitionIndex"    # I
    .param p2, "v"    # Landroid/view/View;

    .prologue
    .line 450
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/meizu/common/widget/BasePartitionAdapter;->addHeaderView(ILandroid/view/View;Ljava/lang/Object;Z)V

    .line 451
    return-void
.end method

.method public addHeaderView(ILandroid/view/View;Ljava/lang/Object;Z)V
    .locals 2
    .param p1, "partitionIndex"    # I
    .param p2, "v"    # Landroid/view/View;
    .param p3, "data"    # Ljava/lang/Object;
    .param p4, "isSelectable"    # Z

    .prologue
    .line 427
    iget v1, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitionCount:I

    if-lt p1, v1, :cond_0

    .line 428
    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v1, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v1

    .line 431
    :cond_0
    new-instance v0, Lcom/meizu/common/widget/BasePartitionAdapter$PartitionFixedViewInfo;

    invoke-direct {v0, p0}, Lcom/meizu/common/widget/BasePartitionAdapter$PartitionFixedViewInfo;-><init>(Lcom/meizu/common/widget/BasePartitionAdapter;)V

    .line 432
    .local v0, "info":Lcom/meizu/common/widget/BasePartitionAdapter$PartitionFixedViewInfo;
    iput-object p2, v0, Lcom/meizu/common/widget/BasePartitionAdapter$PartitionFixedViewInfo;->view:Landroid/view/View;

    .line 433
    iput-object p3, v0, Lcom/meizu/common/widget/BasePartitionAdapter$PartitionFixedViewInfo;->data:Ljava/lang/Object;

    .line 434
    iput-boolean p4, v0, Lcom/meizu/common/widget/BasePartitionAdapter$PartitionFixedViewInfo;->isSelectable:Z

    .line 435
    iget-object v1, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    aget-object v1, v1, p1

    iget-object v1, v1, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 437
    invoke-virtual {p0}, Lcom/meizu/common/widget/BasePartitionAdapter;->invalidate()V

    .line 438
    invoke-virtual {p0}, Lcom/meizu/common/widget/BasePartitionAdapter;->notifyDataSetChanged()V

    .line 439
    return-void
.end method

.method protected addPartition(Lcom/meizu/common/widget/BasePartitionAdapter$Partition;)I
    .locals 5
    .param p1, "partition"    # Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    .prologue
    const/4 v4, 0x0

    .line 156
    iget v2, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitionCount:I

    iget-object v3, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    array-length v3, v3

    if-lt v2, v3, :cond_0

    .line 157
    iget v2, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitionCount:I

    add-int/lit8 v1, v2, 0xa

    .line 158
    .local v1, "newCapacity":I
    new-array v0, v1, [Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    .line 159
    .local v0, "newAdapters":[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;
    iget-object v2, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    iget v3, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitionCount:I

    invoke-static {v2, v4, v0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 160
    iput-object v0, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    .line 162
    .end local v0    # "newAdapters":[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;
    .end local v1    # "newCapacity":I
    :cond_0
    iget-object v2, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    iget v3, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitionCount:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitionCount:I

    aput-object p1, v2, v3

    .line 163
    invoke-virtual {p0}, Lcom/meizu/common/widget/BasePartitionAdapter;->invalidate()V

    .line 164
    invoke-virtual {p0}, Lcom/meizu/common/widget/BasePartitionAdapter;->notifyDataSetChanged()V

    .line 165
    iget v2, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitionCount:I

    add-int/lit8 v2, v2, -0x1

    return v2
.end method

.method public areAllItemsEnabled()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 701
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v2, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitionCount:I

    if-ge v0, v2, :cond_2

    .line 702
    iget-object v2, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    aget-object v2, v2, v0

    iget-boolean v2, v2, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mHasHeader:Z

    if-eqz v2, :cond_1

    .line 711
    :cond_0
    :goto_1
    return v1

    .line 706
    :cond_1
    iget-object v2, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-direct {p0, v2}, Lcom/meizu/common/widget/BasePartitionAdapter;->areAllPartitionFixedViewsSelectable(Ljava/util/ArrayList;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-direct {p0, v2}, Lcom/meizu/common/widget/BasePartitionAdapter;->areAllPartitionFixedViewsSelectable(Ljava/util/ArrayList;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 701
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 711
    :cond_2
    const/4 v1, 0x1

    goto :goto_1
.end method

.method protected bindHeaderView(Landroid/view/View;Landroid/content/Context;II)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "position"    # I
    .param p4, "partitionIndex"    # I

    .prologue
    .line 979
    return-void
.end method

.method protected canSelect(II)Z
    .locals 1
    .param p1, "partitionIndex"    # I
    .param p2, "offset"    # I

    .prologue
    .line 839
    const/4 v0, 0x1

    return v0
.end method

.method public clearPartitions()V
    .locals 2

    .prologue
    .line 190
    iget-object v0, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 191
    const/4 v0, 0x0

    iput v0, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitionCount:I

    .line 192
    invoke-virtual {p0}, Lcom/meizu/common/widget/BasePartitionAdapter;->invalidate()V

    .line 193
    invoke-virtual {p0}, Lcom/meizu/common/widget/BasePartitionAdapter;->notifyDataSetChanged()V

    .line 194
    return-void
.end method

.method protected ensureCacheValid()V
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 263
    iget-boolean v2, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mCacheValid:Z

    if-eqz v2, :cond_0

    .line 285
    :goto_0
    return-void

    .line 267
    :cond_0
    iput v3, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mCount:I

    .line 268
    iput v3, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mItemCounts:I

    .line 269
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v2, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitionCount:I

    if-ge v0, v2, :cond_3

    .line 270
    iget-object v2, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    aget-object v2, v2, v0

    iget-object v3, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    aget-object v3, v3, v0

    iget-object v3, v3, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    iput v3, v2, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mHeaderViewsCount:I

    .line 271
    iget-object v2, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    aget-object v2, v2, v0

    iget-object v3, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    aget-object v3, v3, v0

    iget-object v3, v3, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    iput v3, v2, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mFooterViewsCount:I

    .line 272
    iget-object v2, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    aget-object v2, v2, v0

    iget-object v3, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    aget-object v3, v3, v0

    iget v3, v3, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mHeaderViewsCount:I

    iget-object v4, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    aget-object v4, v4, v0

    iget v4, v4, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mItemCount:I

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    aget-object v4, v4, v0

    iget v4, v4, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mFooterViewsCount:I

    add-int/2addr v3, v4

    iput v3, v2, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mCount:I

    .line 275
    iget-object v2, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    aget-object v2, v2, v0

    iget v1, v2, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mCount:I

    .line 276
    .local v1, "size":I
    iget-object v2, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    aget-object v2, v2, v0

    iget-boolean v2, v2, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mHasHeader:Z

    if-eqz v2, :cond_2

    if-nez v1, :cond_1

    iget-object v2, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    aget-object v2, v2, v0

    iget-boolean v2, v2, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mShowIfEmpty:Z

    if-eqz v2, :cond_2

    .line 277
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 279
    :cond_2
    iget-object v2, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    aget-object v2, v2, v0

    iput v1, v2, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mSize:I

    .line 280
    iget v2, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mCount:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mCount:I

    .line 281
    iget v2, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mItemCounts:I

    iget-object v3, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    aget-object v3, v3, v0

    iget v3, v3, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mItemCount:I

    add-int/2addr v2, v3

    iput v2, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mItemCounts:I

    .line 269
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 284
    .end local v1    # "size":I
    :cond_3
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mCacheValid:Z

    goto :goto_0
.end method

.method protected getBackgroundResource(I)I
    .locals 1
    .param p1, "itemBgType"    # I

    .prologue
    .line 867
    const/4 v0, 0x0

    .line 868
    .local v0, "resid":I
    packed-switch p1, :pswitch_data_0

    .line 886
    :goto_0
    return v0

    .line 870
    :pswitch_0
    const v0, 0x7f020112

    .line 871
    goto :goto_0

    .line 874
    :pswitch_1
    const v0, 0x7f02010c

    .line 875
    goto :goto_0

    .line 878
    :pswitch_2
    const v0, 0x7f020108

    .line 879
    goto :goto_0

    .line 882
    :pswitch_3
    const v0, 0x7f020109

    goto :goto_0

    .line 868
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 291
    invoke-virtual {p0}, Lcom/meizu/common/widget/BasePartitionAdapter;->ensureCacheValid()V

    .line 292
    iget v0, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mCount:I

    return v0
.end method

.method public getCountForPartition(I)I
    .locals 1
    .param p1, "partitionIndex"    # I

    .prologue
    .line 316
    iget v0, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitionCount:I

    if-lt p1, v0, :cond_0

    .line 317
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v0

    .line 319
    :cond_0
    invoke-virtual {p0}, Lcom/meizu/common/widget/BasePartitionAdapter;->ensureCacheValid()V

    .line 320
    iget-object v0, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    aget-object v0, v0, p1

    iget v0, v0, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mCount:I

    return v0
.end method

.method public getFooterViewsCount(I)I
    .locals 1
    .param p1, "partitionIndex"    # I

    .prologue
    .line 533
    iget v0, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitionCount:I

    if-lt p1, v0, :cond_0

    .line 534
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v0

    .line 536
    :cond_0
    invoke-virtual {p0}, Lcom/meizu/common/widget/BasePartitionAdapter;->ensureCacheValid()V

    .line 537
    iget-object v0, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    aget-object v0, v0, p1

    iget v0, v0, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mFooterViewsCount:I

    return v0
.end method

.method protected getHeaderView(IILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .param p1, "position"    # I
    .param p2, "partitionIndex"    # I
    .param p3, "convertView"    # Landroid/view/View;
    .param p4, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 949
    if-eqz p3, :cond_0

    move-object v0, p3

    .line 952
    .local v0, "view":Landroid/view/View;
    :goto_0
    iget-object v1, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/meizu/common/widget/BasePartitionAdapter;->bindHeaderView(Landroid/view/View;Landroid/content/Context;II)V

    .line 953
    return-object v0

    .line 949
    .end local v0    # "view":Landroid/view/View;
    :cond_0
    iget-object v1, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1, p1, p2, p4}, Lcom/meizu/common/widget/BasePartitionAdapter;->newHeaderView(Landroid/content/Context;IILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public getHeaderViewsCount(I)I
    .locals 1
    .param p1, "partitionIndex"    # I

    .prologue
    .line 457
    iget v0, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitionCount:I

    if-lt p1, v0, :cond_0

    .line 458
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v0

    .line 460
    :cond_0
    invoke-virtual {p0}, Lcom/meizu/common/widget/BasePartitionAdapter;->ensureCacheValid()V

    .line 461
    iget-object v0, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    aget-object v0, v0, p1

    iget v0, v0, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mHeaderViewsCount:I

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 7
    .param p1, "position"    # I

    .prologue
    const/4 v5, 0x0

    .line 756
    invoke-virtual {p0}, Lcom/meizu/common/widget/BasePartitionAdapter;->ensureCacheValid()V

    .line 757
    const/4 v4, 0x0

    .line 758
    .local v4, "start":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget v6, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitionCount:I

    if-ge v2, v6, :cond_1

    .line 759
    iget-object v6, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    aget-object v6, v6, v2

    iget v6, v6, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mSize:I

    add-int v0, v4, v6

    .line 760
    .local v0, "end":I
    if-lt p1, v4, :cond_5

    if-ge p1, v0, :cond_5

    .line 761
    sub-int v3, p1, v4

    .line 762
    .local v3, "offset":I
    iget-object v6, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    aget-object v6, v6, v2

    iget-boolean v6, v6, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mHasHeader:Z

    if-eqz v6, :cond_0

    .line 763
    add-int/lit8 v3, v3, -0x1

    .line 766
    :cond_0
    const/4 v6, -0x1

    if-ne v3, v6, :cond_2

    .line 780
    .end local v0    # "end":I
    .end local v3    # "offset":I
    :cond_1
    :goto_1
    return-object v5

    .line 768
    .restart local v0    # "end":I
    .restart local v3    # "offset":I
    :cond_2
    invoke-virtual {p0, v2, v3}, Lcom/meizu/common/widget/BasePartitionAdapter;->isHeaderView(II)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 769
    iget-object v5, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    aget-object v5, v5, v2

    iget-object v5, v5, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/meizu/common/widget/BasePartitionAdapter$PartitionFixedViewInfo;

    iget-object v5, v5, Lcom/meizu/common/widget/BasePartitionAdapter$PartitionFixedViewInfo;->data:Ljava/lang/Object;

    goto :goto_1

    .line 770
    :cond_3
    invoke-virtual {p0, v2, v3}, Lcom/meizu/common/widget/BasePartitionAdapter;->isFooterView(II)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 771
    iget-object v5, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    aget-object v5, v5, v2

    iget v5, v5, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mCount:I

    iget-object v6, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    aget-object v6, v6, v2

    iget v6, v6, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mFooterViewsCount:I

    sub-int v1, v5, v6

    .line 772
    .local v1, "footerStart":I
    iget-object v5, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    aget-object v5, v5, v2

    iget-object v5, v5, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mFooterViewInfos:Ljava/util/ArrayList;

    sub-int v6, v3, v1

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/meizu/common/widget/BasePartitionAdapter$PartitionFixedViewInfo;

    iget-object v5, v5, Lcom/meizu/common/widget/BasePartitionAdapter$PartitionFixedViewInfo;->data:Ljava/lang/Object;

    goto :goto_1

    .line 774
    .end local v1    # "footerStart":I
    :cond_4
    invoke-virtual {p0, v2, v3}, Lcom/meizu/common/widget/BasePartitionAdapter;->getItem(II)Ljava/lang/Object;

    move-result-object v5

    goto :goto_1

    .line 777
    .end local v3    # "offset":I
    :cond_5
    move v4, v0

    .line 758
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method protected abstract getItem(II)Ljava/lang/Object;
.end method

.method protected getItemBackgroundType(II)I
    .locals 2
    .param p1, "partitionIndex"    # I
    .param p2, "offset"    # I

    .prologue
    const/4 v0, 0x1

    .line 677
    const/4 v1, -0x1

    if-ne p2, v1, :cond_1

    .line 678
    const/4 v0, 0x0

    .line 686
    :cond_0
    :goto_0
    return v0

    .line 679
    :cond_1
    if-nez p2, :cond_2

    iget-object v1, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    aget-object v1, v1, p1

    iget v1, v1, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mCount:I

    if-ne v1, v0, :cond_2

    .line 680
    const/4 v0, 0x4

    goto :goto_0

    .line 681
    :cond_2
    if-eqz p2, :cond_0

    .line 683
    iget-object v0, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    aget-object v0, v0, p1

    iget v0, v0, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mCount:I

    add-int/lit8 v0, v0, -0x1

    if-ne p2, v0, :cond_3

    .line 684
    const/4 v0, 0x3

    goto :goto_0

    .line 686
    :cond_3
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 299
    invoke-virtual {p0}, Lcom/meizu/common/widget/BasePartitionAdapter;->ensureCacheValid()V

    .line 300
    iget v0, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mItemCounts:I

    return v0
.end method

.method public getItemId(I)J
    .locals 7
    .param p1, "position"    # I

    .prologue
    const-wide/16 v4, 0x0

    .line 787
    invoke-virtual {p0}, Lcom/meizu/common/widget/BasePartitionAdapter;->ensureCacheValid()V

    .line 788
    const/4 v3, 0x0

    .line 789
    .local v3, "start":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v6, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitionCount:I

    if-ge v1, v6, :cond_1

    .line 790
    iget-object v6, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    aget-object v6, v6, v1

    iget v6, v6, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mSize:I

    add-int v0, v3, v6

    .line 791
    .local v0, "end":I
    if-lt p1, v3, :cond_5

    if-ge p1, v0, :cond_5

    .line 792
    sub-int v2, p1, v3

    .line 793
    .local v2, "offset":I
    iget-object v6, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    aget-object v6, v6, v1

    iget-boolean v6, v6, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mHasHeader:Z

    if-eqz v6, :cond_0

    .line 794
    add-int/lit8 v2, v2, -0x1

    .line 797
    :cond_0
    const/4 v6, -0x1

    if-ne v2, v6, :cond_2

    .line 807
    .end local v0    # "end":I
    .end local v2    # "offset":I
    :cond_1
    :goto_1
    return-wide v4

    .line 799
    .restart local v0    # "end":I
    .restart local v2    # "offset":I
    :cond_2
    invoke-virtual {p0, v1, v2}, Lcom/meizu/common/widget/BasePartitionAdapter;->isHeaderView(II)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {p0, v1, v2}, Lcom/meizu/common/widget/BasePartitionAdapter;->isFooterView(II)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 800
    :cond_3
    const-wide/16 v4, -0x1

    goto :goto_1

    .line 802
    :cond_4
    invoke-virtual {p0, v1, v2}, Lcom/meizu/common/widget/BasePartitionAdapter;->getItemId(II)J

    move-result-wide v4

    goto :goto_1

    .line 805
    .end local v2    # "offset":I
    :cond_5
    move v3, v0

    .line 789
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method protected abstract getItemId(II)J
.end method

.method public getItemViewType(I)I
    .locals 5
    .param p1, "position"    # I

    .prologue
    .line 640
    invoke-virtual {p0}, Lcom/meizu/common/widget/BasePartitionAdapter;->ensureCacheValid()V

    .line 641
    const/4 v3, 0x0

    .line 642
    .local v3, "start":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v4, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitionCount:I

    if-ge v1, v4, :cond_5

    .line 643
    iget-object v4, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    aget-object v4, v4, v1

    iget v4, v4, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mSize:I

    add-int v0, v3, v4

    .line 644
    .local v0, "end":I
    if-lt p1, v3, :cond_4

    if-ge p1, v0, :cond_4

    .line 645
    sub-int v2, p1, v3

    .line 646
    .local v2, "offset":I
    iget-object v4, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    aget-object v4, v4, v1

    iget-boolean v4, v4, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mHasHeader:Z

    if-eqz v4, :cond_0

    .line 647
    add-int/lit8 v2, v2, -0x1

    .line 650
    :cond_0
    const/4 v4, -0x1

    if-ne v2, v4, :cond_1

    .line 651
    const/4 v4, 0x0

    .line 655
    :goto_1
    return v4

    .line 652
    :cond_1
    invoke-virtual {p0, v1, v2}, Lcom/meizu/common/widget/BasePartitionAdapter;->isHeaderView(II)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {p0, v1, v2}, Lcom/meizu/common/widget/BasePartitionAdapter;->isFooterView(II)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 653
    :cond_2
    const/4 v4, -0x2

    goto :goto_1

    .line 655
    :cond_3
    invoke-virtual {p0, v1, p1}, Lcom/meizu/common/widget/BasePartitionAdapter;->getItemViewType(II)I

    move-result v4

    goto :goto_1

    .line 658
    .end local v2    # "offset":I
    :cond_4
    move v3, v0

    .line 642
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 661
    .end local v0    # "end":I
    :cond_5
    new-instance v4, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v4, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v4
.end method

.method protected getItemViewType(II)I
    .locals 1
    .param p1, "partitionIndex"    # I
    .param p2, "position"    # I

    .prologue
    .line 669
    const/4 v0, 0x1

    return v0
.end method

.method public getItemViewTypeCount()I
    .locals 1

    .prologue
    .line 635
    const/4 v0, 0x1

    return v0
.end method

.method public getOffsetInPartition(I)I
    .locals 5
    .param p1, "position"    # I

    .prologue
    .line 379
    invoke-virtual {p0}, Lcom/meizu/common/widget/BasePartitionAdapter;->ensureCacheValid()V

    .line 380
    const/4 v3, 0x0

    .line 381
    .local v3, "start":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v4, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitionCount:I

    if-ge v1, v4, :cond_2

    .line 382
    iget-object v4, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    aget-object v4, v4, v1

    iget v4, v4, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mSize:I

    add-int v0, v3, v4

    .line 383
    .local v0, "end":I
    if-lt p1, v3, :cond_1

    if-ge p1, v0, :cond_1

    .line 384
    sub-int v2, p1, v3

    .line 385
    .local v2, "offset":I
    iget-object v4, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    aget-object v4, v4, v1

    iget-boolean v4, v4, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mHasHeader:Z

    if-eqz v4, :cond_0

    .line 386
    add-int/lit8 v2, v2, -0x1

    .line 388
    :cond_0
    return v2

    .line 390
    .end local v2    # "offset":I
    :cond_1
    move v3, v0

    .line 381
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 393
    .end local v0    # "end":I
    :cond_2
    new-instance v4, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v4, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v4
.end method

.method public getPartition(I)Lcom/meizu/common/widget/BasePartitionAdapter$Partition;
    .locals 1
    .param p1, "partitionIndex"    # I

    .prologue
    .line 204
    iget v0, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitionCount:I

    if-lt p1, v0, :cond_0

    .line 205
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v0

    .line 207
    :cond_0
    iget-object v0, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getPartitionCount()I
    .locals 1

    .prologue
    .line 307
    iget v0, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitionCount:I

    return v0
.end method

.method public getPartitionForItemIndex(I)I
    .locals 4
    .param p1, "itemIndex"    # I

    .prologue
    .line 342
    invoke-virtual {p0}, Lcom/meizu/common/widget/BasePartitionAdapter;->ensureCacheValid()V

    .line 343
    const/4 v2, 0x0

    .line 344
    .local v2, "start":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v3, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitionCount:I

    if-ge v1, v3, :cond_1

    .line 345
    iget-object v3, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    aget-object v3, v3, v1

    iget v3, v3, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mItemCount:I

    add-int v0, v2, v3

    .line 346
    .local v0, "end":I
    if-lt p1, v2, :cond_0

    if-ge p1, v0, :cond_0

    .line 351
    .end local v0    # "end":I
    .end local v1    # "i":I
    :goto_1
    return v1

    .line 349
    .restart local v0    # "end":I
    .restart local v1    # "i":I
    :cond_0
    move v2, v0

    .line 344
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 351
    .end local v0    # "end":I
    :cond_1
    const/4 v1, -0x1

    goto :goto_1
.end method

.method public getPartitionForPosition(I)I
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 360
    invoke-virtual {p0}, Lcom/meizu/common/widget/BasePartitionAdapter;->ensureCacheValid()V

    .line 361
    const/4 v2, 0x0

    .line 362
    .local v2, "start":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v3, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitionCount:I

    if-ge v1, v3, :cond_1

    .line 363
    iget-object v3, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    aget-object v3, v3, v1

    iget v3, v3, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mSize:I

    add-int v0, v2, v3

    .line 364
    .local v0, "end":I
    if-lt p1, v2, :cond_0

    if-ge p1, v0, :cond_0

    .line 369
    .end local v0    # "end":I
    .end local v1    # "i":I
    :goto_1
    return v1

    .line 367
    .restart local v0    # "end":I
    .restart local v1    # "i":I
    :cond_0
    move v2, v0

    .line 362
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 369
    .end local v0    # "end":I
    :cond_1
    const/4 v1, -0x1

    goto :goto_1
.end method

.method public getPositionForPartition(I)I
    .locals 3
    .param p1, "partitionIndex"    # I

    .prologue
    .line 404
    iget v2, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitionCount:I

    if-lt p1, v2, :cond_0

    .line 405
    new-instance v2, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v2, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v2

    .line 408
    :cond_0
    invoke-virtual {p0}, Lcom/meizu/common/widget/BasePartitionAdapter;->ensureCacheValid()V

    .line 409
    const/4 v1, 0x0

    .line 410
    .local v1, "position":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p1, :cond_1

    .line 411
    iget-object v2, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    aget-object v2, v2, v0

    iget v2, v2, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mSize:I

    add-int/2addr v1, v2

    .line 410
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 413
    :cond_1
    return v1
.end method

.method protected abstract getView(IIIILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 901
    invoke-virtual {p0}, Lcom/meizu/common/widget/BasePartitionAdapter;->ensureCacheValid()V

    .line 902
    const/4 v9, 0x0

    .line 903
    .local v9, "start":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget v0, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitionCount:I

    if-ge v2, v0, :cond_5

    .line 904
    iget-object v0, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    aget-object v0, v0, v2

    iget v0, v0, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mSize:I

    add-int v7, v9, v0

    .line 905
    .local v7, "end":I
    if-lt p1, v9, :cond_4

    if-ge p1, v7, :cond_4

    .line 906
    sub-int v3, p1, v9

    .line 907
    .local v3, "offset":I
    iget-object v0, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    aget-object v0, v0, v2

    iget-boolean v0, v0, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mHasHeader:Z

    if-eqz v0, :cond_0

    .line 908
    add-int/lit8 v3, v3, -0x1

    .line 911
    :cond_0
    invoke-virtual {p0, v2, v3}, Lcom/meizu/common/widget/BasePartitionAdapter;->getItemBackgroundType(II)I

    move-result v4

    .line 913
    .local v4, "itemBgType":I
    const/4 v0, -0x1

    if-ne v3, v0, :cond_1

    .line 914
    invoke-virtual {p0, p1, v2, p2, p3}, Lcom/meizu/common/widget/BasePartitionAdapter;->getHeaderView(IILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v10

    .line 924
    .local v10, "view":Landroid/view/View;
    :goto_1
    if-nez v10, :cond_6

    .line 925
    new-instance v0, Ljava/lang/NullPointerException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "View should not be null, partition: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " position: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 915
    .end local v10    # "view":Landroid/view/View;
    :cond_1
    invoke-virtual {p0, v2, v3}, Lcom/meizu/common/widget/BasePartitionAdapter;->isHeaderView(II)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 916
    iget-object v0, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    aget-object v0, v0, v2

    iget-object v0, v0, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/common/widget/BasePartitionAdapter$PartitionFixedViewInfo;

    iget-object v10, v0, Lcom/meizu/common/widget/BasePartitionAdapter$PartitionFixedViewInfo;->view:Landroid/view/View;

    .restart local v10    # "view":Landroid/view/View;
    goto :goto_1

    .line 917
    .end local v10    # "view":Landroid/view/View;
    :cond_2
    invoke-virtual {p0, v2, v3}, Lcom/meizu/common/widget/BasePartitionAdapter;->isFooterView(II)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 918
    iget-object v0, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    aget-object v0, v0, v2

    iget v0, v0, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mCount:I

    iget-object v1, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    aget-object v1, v1, v2

    iget v1, v1, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mFooterViewsCount:I

    sub-int v8, v0, v1

    .line 919
    .local v8, "footerStart":I
    iget-object v0, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    aget-object v0, v0, v2

    iget-object v0, v0, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mFooterViewInfos:Ljava/util/ArrayList;

    sub-int v1, v3, v8

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/common/widget/BasePartitionAdapter$PartitionFixedViewInfo;

    iget-object v10, v0, Lcom/meizu/common/widget/BasePartitionAdapter$PartitionFixedViewInfo;->view:Landroid/view/View;

    .line 920
    .restart local v10    # "view":Landroid/view/View;
    goto :goto_1

    .end local v8    # "footerStart":I
    .end local v10    # "view":Landroid/view/View;
    :cond_3
    move-object v0, p0

    move v1, p1

    move-object v5, p2

    move-object v6, p3

    .line 921
    invoke-virtual/range {v0 .. v6}, Lcom/meizu/common/widget/BasePartitionAdapter;->getView(IIIILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v10

    .restart local v10    # "view":Landroid/view/View;
    goto :goto_1

    .line 938
    .end local v3    # "offset":I
    .end local v4    # "itemBgType":I
    .end local v10    # "view":Landroid/view/View;
    :cond_4
    move v9, v7

    .line 903
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 941
    .end local v7    # "end":I
    :cond_5
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v0

    .line 936
    .restart local v3    # "offset":I
    .restart local v4    # "itemBgType":I
    .restart local v7    # "end":I
    .restart local v10    # "view":Landroid/view/View;
    :cond_6
    return-object v10
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 626
    invoke-virtual {p0}, Lcom/meizu/common/widget/BasePartitionAdapter;->getItemViewTypeCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public hasHeader(I)Z
    .locals 1
    .param p1, "partitionIndex"    # I

    .prologue
    .line 229
    iget-object v0, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    aget-object v0, v0, p1

    iget-boolean v0, v0, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mHasHeader:Z

    return v0
.end method

.method protected invalidate()V
    .locals 1

    .prologue
    .line 255
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mCacheValid:Z

    .line 256
    return-void
.end method

.method public isEnabled(I)Z
    .locals 7
    .param p1, "position"    # I

    .prologue
    const/4 v5, 0x0

    .line 719
    invoke-virtual {p0}, Lcom/meizu/common/widget/BasePartitionAdapter;->ensureCacheValid()V

    .line 720
    const/4 v4, 0x0

    .line 721
    .local v4, "start":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget v6, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitionCount:I

    if-ge v2, v6, :cond_1

    .line 722
    iget-object v6, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    aget-object v6, v6, v2

    iget v6, v6, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mSize:I

    add-int v0, v4, v6

    .line 723
    .local v0, "end":I
    if-lt p1, v4, :cond_5

    if-ge p1, v0, :cond_5

    .line 724
    sub-int v3, p1, v4

    .line 725
    .local v3, "offset":I
    iget-object v6, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    aget-object v6, v6, v2

    iget-boolean v6, v6, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mHasHeader:Z

    if-eqz v6, :cond_0

    .line 726
    add-int/lit8 v3, v3, -0x1

    .line 729
    :cond_0
    const/4 v6, -0x1

    if-ne v3, v6, :cond_2

    .line 743
    .end local v0    # "end":I
    .end local v3    # "offset":I
    :cond_1
    :goto_1
    return v5

    .line 731
    .restart local v0    # "end":I
    .restart local v3    # "offset":I
    :cond_2
    invoke-virtual {p0, v2, v3}, Lcom/meizu/common/widget/BasePartitionAdapter;->isHeaderView(II)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 732
    iget-object v5, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    aget-object v5, v5, v2

    iget-object v5, v5, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/meizu/common/widget/BasePartitionAdapter$PartitionFixedViewInfo;

    iget-boolean v5, v5, Lcom/meizu/common/widget/BasePartitionAdapter$PartitionFixedViewInfo;->isSelectable:Z

    goto :goto_1

    .line 733
    :cond_3
    invoke-virtual {p0, v2, v3}, Lcom/meizu/common/widget/BasePartitionAdapter;->isFooterView(II)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 734
    iget-object v5, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    aget-object v5, v5, v2

    iget v5, v5, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mCount:I

    iget-object v6, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    aget-object v6, v6, v2

    iget v6, v6, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mFooterViewsCount:I

    sub-int v1, v5, v6

    .line 735
    .local v1, "footerStart":I
    iget-object v5, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    aget-object v5, v5, v2

    iget-object v5, v5, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mFooterViewInfos:Ljava/util/ArrayList;

    sub-int v6, v3, v1

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/meizu/common/widget/BasePartitionAdapter$PartitionFixedViewInfo;

    iget-boolean v5, v5, Lcom/meizu/common/widget/BasePartitionAdapter$PartitionFixedViewInfo;->isSelectable:Z

    goto :goto_1

    .line 737
    .end local v1    # "footerStart":I
    :cond_4
    invoke-virtual {p0, v2, v3}, Lcom/meizu/common/widget/BasePartitionAdapter;->isEnabled(II)Z

    move-result v5

    goto :goto_1

    .line 740
    .end local v3    # "offset":I
    :cond_5
    move v4, v0

    .line 721
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method protected isEnabled(II)Z
    .locals 1
    .param p1, "partitionIndex"    # I
    .param p2, "offset"    # I

    .prologue
    .line 751
    const/4 v0, 0x1

    return v0
.end method

.method public isFooterView(I)Z
    .locals 5
    .param p1, "position"    # I

    .prologue
    .line 595
    invoke-virtual {p0}, Lcom/meizu/common/widget/BasePartitionAdapter;->ensureCacheValid()V

    .line 596
    const/4 v3, 0x0

    .line 597
    .local v3, "start":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v4, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitionCount:I

    if-ge v1, v4, :cond_2

    .line 598
    iget-object v4, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    aget-object v4, v4, v1

    iget v4, v4, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mSize:I

    add-int v0, v3, v4

    .line 599
    .local v0, "end":I
    if-lt p1, v3, :cond_1

    if-ge p1, v0, :cond_1

    .line 600
    sub-int v2, p1, v3

    .line 601
    .local v2, "offset":I
    iget-object v4, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    aget-object v4, v4, v1

    iget-boolean v4, v4, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mHasHeader:Z

    if-eqz v4, :cond_0

    .line 602
    add-int/lit8 v2, v2, -0x1

    .line 604
    :cond_0
    invoke-virtual {p0, v1, v2}, Lcom/meizu/common/widget/BasePartitionAdapter;->isFooterView(II)Z

    move-result v4

    return v4

    .line 606
    .end local v2    # "offset":I
    :cond_1
    move v3, v0

    .line 597
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 609
    .end local v0    # "end":I
    :cond_2
    new-instance v4, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v4, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v4
.end method

.method protected isFooterView(II)Z
    .locals 2
    .param p1, "partitionIndex"    # I
    .param p2, "offset"    # I

    .prologue
    .line 617
    iget-object v0, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    aget-object v0, v0, p1

    iget v0, v0, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mCount:I

    iget-object v1, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    aget-object v1, v1, p1

    iget v1, v1, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mFooterViewsCount:I

    sub-int/2addr v0, v1

    if-lt p2, v0, :cond_0

    .line 618
    const/4 v0, 0x1

    .line 620
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isHeaderView(I)Z
    .locals 5
    .param p1, "position"    # I

    .prologue
    .line 560
    invoke-virtual {p0}, Lcom/meizu/common/widget/BasePartitionAdapter;->ensureCacheValid()V

    .line 561
    const/4 v3, 0x0

    .line 562
    .local v3, "start":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v4, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitionCount:I

    if-ge v1, v4, :cond_2

    .line 563
    iget-object v4, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    aget-object v4, v4, v1

    iget v4, v4, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mSize:I

    add-int v0, v3, v4

    .line 564
    .local v0, "end":I
    if-lt p1, v3, :cond_1

    if-ge p1, v0, :cond_1

    .line 565
    sub-int v2, p1, v3

    .line 566
    .local v2, "offset":I
    iget-object v4, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    aget-object v4, v4, v1

    iget-boolean v4, v4, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mHasHeader:Z

    if-eqz v4, :cond_0

    .line 567
    add-int/lit8 v2, v2, -0x1

    .line 569
    :cond_0
    invoke-virtual {p0, v1, v2}, Lcom/meizu/common/widget/BasePartitionAdapter;->isHeaderView(II)Z

    move-result v4

    return v4

    .line 571
    .end local v2    # "offset":I
    :cond_1
    move v3, v0

    .line 562
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 574
    .end local v0    # "end":I
    :cond_2
    new-instance v4, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v4, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v4
.end method

.method protected isHeaderView(II)Z
    .locals 1
    .param p1, "partitionIndex"    # I
    .param p2, "offset"    # I

    .prologue
    .line 582
    if-ltz p2, :cond_0

    iget-object v0, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    aget-object v0, v0, p1

    iget v0, v0, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mHeaderViewsCount:I

    if-ge p2, v0, :cond_0

    .line 583
    const/4 v0, 0x1

    .line 585
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPartitionEmpty(I)Z
    .locals 1
    .param p1, "partitionIndex"    # I

    .prologue
    .line 329
    iget v0, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitionCount:I

    if-lt p1, v0, :cond_0

    .line 330
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v0

    .line 332
    :cond_0
    invoke-virtual {p0}, Lcom/meizu/common/widget/BasePartitionAdapter;->ensureCacheValid()V

    .line 333
    iget-object v0, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    aget-object v0, v0, p1

    iget v0, v0, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mCount:I

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSelectable(I)Z
    .locals 8
    .param p1, "position"    # I

    .prologue
    const/4 v5, 0x0

    .line 814
    invoke-virtual {p0}, Lcom/meizu/common/widget/BasePartitionAdapter;->ensureCacheValid()V

    .line 815
    const/4 v4, 0x0

    .line 816
    .local v4, "start":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget v6, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitionCount:I

    if-ge v2, v6, :cond_1

    .line 817
    iget-object v6, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    aget-object v6, v6, v2

    iget v6, v6, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mSize:I

    add-int v0, v4, v6

    .line 818
    .local v0, "end":I
    if-lt p1, v4, :cond_2

    if-ge p1, v0, :cond_2

    .line 819
    sub-int v3, p1, v4

    .line 820
    .local v3, "offset":I
    iget-object v6, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    aget-object v6, v6, v2

    iget-boolean v6, v6, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mHasHeader:Z

    if-eqz v6, :cond_0

    .line 821
    add-int/lit8 v3, v3, -0x1

    .line 824
    :cond_0
    iget-object v6, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    aget-object v6, v6, v2

    iget v6, v6, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mCount:I

    iget-object v7, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    aget-object v7, v7, v2

    iget v7, v7, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mFooterViewsCount:I

    sub-int v1, v6, v7

    .line 825
    .local v1, "footerStart":I
    iget-object v6, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    aget-object v6, v6, v2

    iget v6, v6, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mHeaderViewsCount:I

    if-lt v3, v6, :cond_1

    if-ge v3, v1, :cond_1

    .line 826
    invoke-virtual {p0, v2, v3}, Lcom/meizu/common/widget/BasePartitionAdapter;->canSelect(II)Z

    move-result v5

    .line 835
    .end local v0    # "end":I
    .end local v1    # "footerStart":I
    .end local v3    # "offset":I
    :cond_1
    return v5

    .line 832
    .restart local v0    # "end":I
    :cond_2
    move v4, v0

    .line 816
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public isShowIfEmpty(I)Z
    .locals 1
    .param p1, "partitionIndex"    # I

    .prologue
    .line 214
    iget-object v0, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    aget-object v0, v0, p1

    iget-boolean v0, v0, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mShowIfEmpty:Z

    return v0
.end method

.method public isTopHeader()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 242
    invoke-virtual {p0, v1}, Lcom/meizu/common/widget/BasePartitionAdapter;->getPartitionForPosition(I)I

    move-result v0

    .line 243
    .local v0, "partitionIndex":I
    if-gez v0, :cond_0

    .line 246
    :goto_0
    return v1

    :cond_0
    iget-object v1, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    aget-object v1, v1, v0

    iget-boolean v1, v1, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mHasHeader:Z

    goto :goto_0
.end method

.method protected newHeaderView(Landroid/content/Context;IILandroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "position"    # I
    .param p3, "partitionIndex"    # I
    .param p4, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 966
    const/4 v0, 0x0

    return-object v0
.end method

.method public notifyDataSetChanged()V
    .locals 1

    .prologue
    .line 855
    iget-boolean v0, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mNotificationsEnabled:Z

    if-eqz v0, :cond_0

    .line 856
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mNotificationNeeded:Z

    .line 857
    invoke-super {p0}, Lcom/meizu/common/widget/AbsBasePartitionAdapter;->notifyDataSetChanged()V

    .line 861
    :goto_0
    return-void

    .line 859
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mNotificationNeeded:Z

    goto :goto_0
.end method

.method public removeFooterView(ILandroid/view/View;)Z
    .locals 1
    .param p1, "partitionIndex"    # I
    .param p2, "v"    # Landroid/view/View;

    .prologue
    .line 548
    iget v0, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitionCount:I

    if-lt p1, v0, :cond_0

    .line 549
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v0

    .line 551
    :cond_0
    iget-object v0, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-direct {p0, p2, v0}, Lcom/meizu/common/widget/BasePartitionAdapter;->removeFixedViewInfo(Landroid/view/View;Ljava/util/ArrayList;)Z

    move-result v0

    return v0
.end method

.method public removeHeaderView(ILandroid/view/View;)Z
    .locals 1
    .param p1, "partitionIndex"    # I
    .param p2, "v"    # Landroid/view/View;

    .prologue
    .line 472
    iget v0, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitionCount:I

    if-lt p1, v0, :cond_0

    .line 473
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v0

    .line 475
    :cond_0
    iget-object v0, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-direct {p0, p2, v0}, Lcom/meizu/common/widget/BasePartitionAdapter;->removeFixedViewInfo(Landroid/view/View;Ljava/util/ArrayList;)Z

    move-result v0

    return v0
.end method

.method public removePartition(I)V
    .locals 4
    .param p1, "partitionIndex"    # I

    .prologue
    .line 175
    iget v0, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitionCount:I

    if-lt p1, v0, :cond_0

    .line 176
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v0

    .line 179
    :cond_0
    iget-object v0, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    add-int/lit8 v1, p1, 0x1

    iget-object v2, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    iget v3, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitionCount:I

    sub-int/2addr v3, p1

    add-int/lit8 v3, v3, -0x1

    invoke-static {v0, v1, v2, p1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 181
    iget-object v0, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    iget v1, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitionCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitionCount:I

    const/4 v2, 0x0

    aput-object v2, v0, v1

    .line 182
    invoke-virtual {p0}, Lcom/meizu/common/widget/BasePartitionAdapter;->invalidate()V

    .line 183
    invoke-virtual {p0}, Lcom/meizu/common/widget/BasePartitionAdapter;->notifyDataSetChanged()V

    .line 184
    return-void
.end method

.method public setHasHeader(IZ)V
    .locals 1
    .param p1, "partitionIndex"    # I
    .param p2, "hasHeader"    # Z

    .prologue
    .line 236
    iget-object v0, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    aget-object v0, v0, p1

    iput-boolean p2, v0, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mHasHeader:Z

    .line 237
    invoke-virtual {p0}, Lcom/meizu/common/widget/BasePartitionAdapter;->invalidate()V

    .line 238
    return-void
.end method

.method public setNotificationsEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 847
    iput-boolean p1, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mNotificationsEnabled:Z

    .line 848
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mNotificationNeeded:Z

    if-eqz v0, :cond_0

    .line 849
    invoke-virtual {p0}, Lcom/meizu/common/widget/BasePartitionAdapter;->notifyDataSetChanged()V

    .line 851
    :cond_0
    return-void
.end method

.method public setShowIfEmpty(IZ)V
    .locals 1
    .param p1, "partitionIndex"    # I
    .param p2, "showIfEmpty"    # Z

    .prologue
    .line 221
    iget-object v0, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    aget-object v0, v0, p1

    iput-boolean p2, v0, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mShowIfEmpty:Z

    .line 222
    invoke-virtual {p0}, Lcom/meizu/common/widget/BasePartitionAdapter;->invalidate()V

    .line 223
    return-void
.end method

.method protected setViewBackground(Landroid/view/View;I)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "itemBgType"    # I

    .prologue
    .line 896
    invoke-virtual {p0, p2}, Lcom/meizu/common/widget/BasePartitionAdapter;->getBackgroundResource(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 897
    return-void
.end method
