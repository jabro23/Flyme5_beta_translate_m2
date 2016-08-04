.class public abstract Lcom/meizu/common/widget/SingleCursorPartitionAdapter;
.super Lcom/meizu/common/widget/BasePartitionAdapter;
.source "SingleCursorPartitionAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/common/widget/SingleCursorPartitionAdapter$1;,
        Lcom/meizu/common/widget/SingleCursorPartitionAdapter$MyDataSetObserver;,
        Lcom/meizu/common/widget/SingleCursorPartitionAdapter$ChangeObserver;
    }
.end annotation


# static fields
.field public static final FLAG_REGISTER_CONTENT_OBSERVER:I = 0x1


# instance fields
.field protected mChangeObserver:Lcom/meizu/common/widget/SingleCursorPartitionAdapter$ChangeObserver;

.field protected mCursor:Landroid/database/Cursor;

.field protected mDataSetObserver:Landroid/database/DataSetObserver;

.field protected mRowIDColumnIndex:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "flags"    # I

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/meizu/common/widget/BasePartitionAdapter;-><init>(Landroid/content/Context;)V

    .line 49
    const/4 v0, 0x0

    invoke-direct {p0, v0, p2}, Lcom/meizu/common/widget/SingleCursorPartitionAdapter;->init(Landroid/database/Cursor;I)V

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;[II)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "c"    # Landroid/database/Cursor;
    .param p3, "itemCounts"    # [I
    .param p4, "flags"    # I

    .prologue
    .line 62
    if-eqz p3, :cond_0

    array-length v0, p3

    if-lez v0, :cond_0

    array-length v0, p3

    :goto_0
    invoke-direct {p0, p1, v0}, Lcom/meizu/common/widget/BasePartitionAdapter;-><init>(Landroid/content/Context;I)V

    .line 63
    invoke-direct {p0, p2, p4}, Lcom/meizu/common/widget/SingleCursorPartitionAdapter;->init(Landroid/database/Cursor;I)V

    .line 64
    invoke-direct {p0, p3}, Lcom/meizu/common/widget/SingleCursorPartitionAdapter;->addPartitions([I)V

    .line 65
    return-void

    .line 62
    :cond_0
    const/16 v0, 0xa

    goto :goto_0
.end method

.method private addPartitions([I)V
    .locals 4
    .param p1, "itemCounts"    # [I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 89
    if-eqz p1, :cond_1

    array-length v1, p1

    if-lez v1, :cond_1

    .line 90
    invoke-virtual {p0, v2}, Lcom/meizu/common/widget/SingleCursorPartitionAdapter;->setNotificationsEnabled(Z)V

    .line 91
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 92
    aget v1, p1, v0

    invoke-virtual {p0, v2, v3, v1}, Lcom/meizu/common/widget/SingleCursorPartitionAdapter;->addPartition(ZZI)I

    .line 91
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 94
    :cond_0
    invoke-virtual {p0, v3}, Lcom/meizu/common/widget/SingleCursorPartitionAdapter;->setNotificationsEnabled(Z)V

    .line 96
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method private init(Landroid/database/Cursor;I)V
    .locals 4
    .param p1, "c"    # Landroid/database/Cursor;
    .param p2, "flags"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 68
    if-eqz p1, :cond_2

    move v0, v1

    .line 69
    .local v0, "cursorPresent":Z
    :goto_0
    iput-object p1, p0, Lcom/meizu/common/widget/SingleCursorPartitionAdapter;->mCursor:Landroid/database/Cursor;

    .line 70
    if-eqz v0, :cond_3

    const-string v2, "_id"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    :goto_1
    iput v2, p0, Lcom/meizu/common/widget/SingleCursorPartitionAdapter;->mRowIDColumnIndex:I

    .line 71
    and-int/lit8 v2, p2, 0x1

    if-ne v2, v1, :cond_4

    .line 72
    new-instance v1, Lcom/meizu/common/widget/SingleCursorPartitionAdapter$ChangeObserver;

    invoke-direct {v1, p0}, Lcom/meizu/common/widget/SingleCursorPartitionAdapter$ChangeObserver;-><init>(Lcom/meizu/common/widget/SingleCursorPartitionAdapter;)V

    iput-object v1, p0, Lcom/meizu/common/widget/SingleCursorPartitionAdapter;->mChangeObserver:Lcom/meizu/common/widget/SingleCursorPartitionAdapter$ChangeObserver;

    .line 73
    new-instance v1, Lcom/meizu/common/widget/SingleCursorPartitionAdapter$MyDataSetObserver;

    invoke-direct {v1, p0, v3}, Lcom/meizu/common/widget/SingleCursorPartitionAdapter$MyDataSetObserver;-><init>(Lcom/meizu/common/widget/SingleCursorPartitionAdapter;Lcom/meizu/common/widget/SingleCursorPartitionAdapter$1;)V

    iput-object v1, p0, Lcom/meizu/common/widget/SingleCursorPartitionAdapter;->mDataSetObserver:Landroid/database/DataSetObserver;

    .line 79
    :goto_2
    if-eqz v0, :cond_1

    .line 80
    iget-object v1, p0, Lcom/meizu/common/widget/SingleCursorPartitionAdapter;->mChangeObserver:Lcom/meizu/common/widget/SingleCursorPartitionAdapter$ChangeObserver;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/meizu/common/widget/SingleCursorPartitionAdapter;->mChangeObserver:Lcom/meizu/common/widget/SingleCursorPartitionAdapter$ChangeObserver;

    invoke-interface {p1, v1}, Landroid/database/Cursor;->registerContentObserver(Landroid/database/ContentObserver;)V

    .line 81
    :cond_0
    iget-object v1, p0, Lcom/meizu/common/widget/SingleCursorPartitionAdapter;->mDataSetObserver:Landroid/database/DataSetObserver;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/meizu/common/widget/SingleCursorPartitionAdapter;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-interface {p1, v1}, Landroid/database/Cursor;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 83
    :cond_1
    return-void

    .line 68
    .end local v0    # "cursorPresent":Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 70
    .restart local v0    # "cursorPresent":Z
    :cond_3
    const/4 v2, -0x1

    goto :goto_1

    .line 75
    :cond_4
    iput-object v3, p0, Lcom/meizu/common/widget/SingleCursorPartitionAdapter;->mChangeObserver:Lcom/meizu/common/widget/SingleCursorPartitionAdapter$ChangeObserver;

    .line 76
    iput-object v3, p0, Lcom/meizu/common/widget/SingleCursorPartitionAdapter;->mDataSetObserver:Landroid/database/DataSetObserver;

    goto :goto_2
.end method


# virtual methods
.method public addPartition(Lcom/meizu/common/widget/BasePartitionAdapter$Partition;)I
    .locals 1
    .param p1, "partitionIndex"    # Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    .prologue
    .line 111
    invoke-super {p0, p1}, Lcom/meizu/common/widget/BasePartitionAdapter;->addPartition(Lcom/meizu/common/widget/BasePartitionAdapter$Partition;)I

    move-result v0

    return v0
.end method

.method public addPartition(ZZI)I
    .locals 1
    .param p1, "showIfEmpty"    # Z
    .param p2, "hasHeader"    # Z
    .param p3, "itemCount"    # I

    .prologue
    .line 106
    new-instance v0, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    invoke-direct {v0, p1, p2, p3}, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;-><init>(ZZI)V

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/SingleCursorPartitionAdapter;->addPartition(Lcom/meizu/common/widget/BasePartitionAdapter$Partition;)I

    move-result v0

    return v0
.end method

.method protected abstract bindView(Landroid/view/View;Landroid/content/Context;IILandroid/database/Cursor;II)V
.end method

.method public varargs changeCursor(Landroid/database/Cursor;[I)V
    .locals 1
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "itemCounts"    # [I

    .prologue
    .line 170
    invoke-virtual {p0, p1, p2}, Lcom/meizu/common/widget/SingleCursorPartitionAdapter;->swapCursor(Landroid/database/Cursor;[I)Landroid/database/Cursor;

    move-result-object v0

    .line 171
    .local v0, "old":Landroid/database/Cursor;
    if-eqz v0, :cond_0

    .line 172
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 174
    :cond_0
    return-void
.end method

.method public varargs changeCursor(Landroid/database/Cursor;[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;)V
    .locals 1
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "partitions"    # [Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    .prologue
    .line 119
    invoke-virtual {p0, p1, p2}, Lcom/meizu/common/widget/SingleCursorPartitionAdapter;->swapCursor(Landroid/database/Cursor;[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;)Landroid/database/Cursor;

    move-result-object v0

    .line 120
    .local v0, "old":Landroid/database/Cursor;
    if-eqz v0, :cond_0

    .line 121
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 123
    :cond_0
    return-void
.end method

.method public getCursor()Landroid/database/Cursor;
    .locals 1

    .prologue
    .line 236
    iget-object v0, p0, Lcom/meizu/common/widget/SingleCursorPartitionAdapter;->mCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method public getDataPosition(I)I
    .locals 8
    .param p1, "position"    # I

    .prologue
    .line 244
    invoke-virtual {p0}, Lcom/meizu/common/widget/SingleCursorPartitionAdapter;->ensureCacheValid()V

    .line 245
    const/4 v0, 0x0

    .line 246
    .local v0, "dataPos":I
    const/4 v5, 0x0

    .line 247
    .local v5, "start":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget v6, p0, Lcom/meizu/common/widget/SingleCursorPartitionAdapter;->mPartitionCount:I

    if-ge v3, v6, :cond_3

    .line 248
    iget-object v6, p0, Lcom/meizu/common/widget/SingleCursorPartitionAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    aget-object v6, v6, v3

    iget v6, v6, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mSize:I

    add-int v1, v5, v6

    .line 249
    .local v1, "end":I
    if-lt p1, v5, :cond_2

    if-ge p1, v1, :cond_2

    .line 250
    sub-int v4, p1, v5

    .line 251
    .local v4, "offset":I
    iget-object v6, p0, Lcom/meizu/common/widget/SingleCursorPartitionAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    aget-object v6, v6, v3

    iget-boolean v6, v6, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mHasHeader:Z

    if-eqz v6, :cond_0

    .line 252
    add-int/lit8 v4, v4, -0x1

    .line 255
    :cond_0
    iget-object v6, p0, Lcom/meizu/common/widget/SingleCursorPartitionAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    aget-object v6, v6, v3

    iget v6, v6, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mCount:I

    iget-object v7, p0, Lcom/meizu/common/widget/SingleCursorPartitionAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    aget-object v7, v7, v3

    iget v7, v7, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mFooterViewsCount:I

    sub-int v2, v6, v7

    .line 256
    .local v2, "footerStart":I
    iget-object v6, p0, Lcom/meizu/common/widget/SingleCursorPartitionAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    aget-object v6, v6, v3

    iget v6, v6, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mHeaderViewsCount:I

    if-lt v4, v6, :cond_1

    if-ge v4, v2, :cond_1

    .line 258
    iget-object v6, p0, Lcom/meizu/common/widget/SingleCursorPartitionAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    aget-object v6, v6, v3

    iget v6, v6, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mHeaderViewsCount:I

    sub-int v6, v4, v6

    add-int/2addr v0, v6

    move v6, v0

    .line 262
    :goto_1
    return v6

    :cond_1
    const/4 v6, -0x1

    goto :goto_1

    .line 265
    .end local v2    # "footerStart":I
    .end local v4    # "offset":I
    :cond_2
    iget-object v6, p0, Lcom/meizu/common/widget/SingleCursorPartitionAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    aget-object v6, v6, v3

    iget v6, v6, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mItemCount:I

    add-int/2addr v0, v6

    .line 266
    move v5, v1

    .line 247
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 269
    .end local v1    # "end":I
    :cond_3
    new-instance v6, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v6, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v6
.end method

.method protected getDataPosition(II)I
    .locals 3
    .param p1, "partitionIndex"    # I
    .param p2, "offset"    # I

    .prologue
    .line 273
    const/4 v0, 0x0

    .line 274
    .local v0, "dataPos":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p1, :cond_0

    .line 275
    iget-object v2, p0, Lcom/meizu/common/widget/SingleCursorPartitionAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    aget-object v2, v2, v1

    iget v2, v2, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mItemCount:I

    add-int/2addr v0, v2

    .line 274
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 277
    :cond_0
    iget-object v2, p0, Lcom/meizu/common/widget/SingleCursorPartitionAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    aget-object v2, v2, p1

    iget v2, v2, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mHeaderViewsCount:I

    sub-int v2, p2, v2

    add-int/2addr v0, v2

    .line 278
    return v0
.end method

.method protected getItem(II)Ljava/lang/Object;
    .locals 3
    .param p1, "partitionIndex"    # I
    .param p2, "offset"    # I

    .prologue
    const/4 v1, 0x0

    .line 286
    iget-object v2, p0, Lcom/meizu/common/widget/SingleCursorPartitionAdapter;->mCursor:Landroid/database/Cursor;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/meizu/common/widget/SingleCursorPartitionAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/meizu/common/widget/SingleCursorPartitionAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_1

    .line 294
    :cond_0
    :goto_0
    return-object v1

    .line 290
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/meizu/common/widget/SingleCursorPartitionAdapter;->getDataPosition(II)I

    move-result v0

    .line 291
    .local v0, "dataPos":I
    iget-object v2, p0, Lcom/meizu/common/widget/SingleCursorPartitionAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 294
    iget-object v1, p0, Lcom/meizu/common/widget/SingleCursorPartitionAdapter;->mCursor:Landroid/database/Cursor;

    goto :goto_0
.end method

.method protected getItemId(II)J
    .locals 5
    .param p1, "partitionIndex"    # I
    .param p2, "offset"    # I

    .prologue
    const-wide/16 v2, 0x0

    .line 303
    iget v1, p0, Lcom/meizu/common/widget/SingleCursorPartitionAdapter;->mRowIDColumnIndex:I

    const/4 v4, -0x1

    if-ne v1, v4, :cond_1

    .line 315
    :cond_0
    :goto_0
    return-wide v2

    .line 307
    :cond_1
    iget-object v1, p0, Lcom/meizu/common/widget/SingleCursorPartitionAdapter;->mCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/meizu/common/widget/SingleCursorPartitionAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/meizu/common/widget/SingleCursorPartitionAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-eqz v1, :cond_0

    .line 311
    invoke-virtual {p0, p1, p2}, Lcom/meizu/common/widget/SingleCursorPartitionAdapter;->getDataPosition(II)I

    move-result v0

    .line 312
    .local v0, "dataPos":I
    iget-object v1, p0, Lcom/meizu/common/widget/SingleCursorPartitionAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 315
    iget-object v1, p0, Lcom/meizu/common/widget/SingleCursorPartitionAdapter;->mCursor:Landroid/database/Cursor;

    iget v2, p0, Lcom/meizu/common/widget/SingleCursorPartitionAdapter;->mRowIDColumnIndex:I

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    goto :goto_0
.end method

.method protected getView(IIIILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .param p1, "position"    # I
    .param p2, "partitionIndex"    # I
    .param p3, "offset"    # I
    .param p4, "itemBgType"    # I
    .param p5, "convertView"    # Landroid/view/View;
    .param p6, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 327
    iget-object v0, p0, Lcom/meizu/common/widget/SingleCursorPartitionAdapter;->mCursor:Landroid/database/Cursor;

    if-nez v0, :cond_0

    .line 328
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "the cursor is null"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 331
    :cond_0
    invoke-virtual {p0, p2, p3}, Lcom/meizu/common/widget/SingleCursorPartitionAdapter;->getDataPosition(II)I

    move-result v8

    .line 332
    .local v8, "cursorPos":I
    iget-object v0, p0, Lcom/meizu/common/widget/SingleCursorPartitionAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, v8}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 333
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Couldn\'t move cursor to position "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 337
    :cond_1
    if-nez p5, :cond_2

    .line 338
    iget-object v1, p0, Lcom/meizu/common/widget/SingleCursorPartitionAdapter;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/meizu/common/widget/SingleCursorPartitionAdapter;->mCursor:Landroid/database/Cursor;

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v5, p3

    move v6, p4

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/meizu/common/widget/SingleCursorPartitionAdapter;->newView(Landroid/content/Context;IILandroid/database/Cursor;IILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 343
    .local v1, "view":Landroid/view/View;
    :goto_0
    iget-object v2, p0, Lcom/meizu/common/widget/SingleCursorPartitionAdapter;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/meizu/common/widget/SingleCursorPartitionAdapter;->mCursor:Landroid/database/Cursor;

    move-object v0, p0

    move v3, p1

    move v4, p2

    move v6, p3

    move v7, p4

    invoke-virtual/range {v0 .. v7}, Lcom/meizu/common/widget/SingleCursorPartitionAdapter;->bindView(Landroid/view/View;Landroid/content/Context;IILandroid/database/Cursor;II)V

    .line 344
    return-object v1

    .line 340
    .end local v1    # "view":Landroid/view/View;
    :cond_2
    move-object v1, p5

    .restart local v1    # "view":Landroid/view/View;
    goto :goto_0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 321
    const/4 v0, 0x1

    return v0
.end method

.method protected abstract newView(Landroid/content/Context;IILandroid/database/Cursor;IILandroid/view/ViewGroup;)Landroid/view/View;
.end method

.method protected onContentChanged()V
    .locals 0

    .prologue
    .line 383
    return-void
.end method

.method public varargs swapCursor(Landroid/database/Cursor;[I)Landroid/database/Cursor;
    .locals 10
    .param p1, "newCursor"    # Landroid/database/Cursor;
    .param p2, "itemCounts"    # [I

    .prologue
    const/4 v9, 0x1

    const/4 v6, 0x0

    .line 186
    iget-object v5, p0, Lcom/meizu/common/widget/SingleCursorPartitionAdapter;->mCursor:Landroid/database/Cursor;

    .line 187
    .local v5, "oldCursor":Landroid/database/Cursor;
    iget-object v7, p0, Lcom/meizu/common/widget/SingleCursorPartitionAdapter;->mCursor:Landroid/database/Cursor;

    if-ne p1, v7, :cond_0

    .line 188
    const/4 v5, 0x0

    .line 205
    :goto_0
    invoke-virtual {p0, v6}, Lcom/meizu/common/widget/SingleCursorPartitionAdapter;->setNotificationsEnabled(Z)V

    .line 207
    if-nez p2, :cond_6

    move v4, v6

    .line 208
    .local v4, "newPartitionCount":I
    :goto_1
    iget v7, p0, Lcom/meizu/common/widget/SingleCursorPartitionAdapter;->mPartitionCount:I

    if-le v4, v7, :cond_7

    iget v1, p0, Lcom/meizu/common/widget/SingleCursorPartitionAdapter;->mPartitionCount:I

    .line 210
    .local v1, "changeCount":I
    :goto_2
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_3
    if-ge v2, v1, :cond_8

    .line 211
    iget-object v7, p0, Lcom/meizu/common/widget/SingleCursorPartitionAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    aget-object v7, v7, v2

    aget v8, p2, v2

    iput v8, v7, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mItemCount:I

    .line 210
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 190
    .end local v1    # "changeCount":I
    .end local v2    # "i":I
    .end local v4    # "newPartitionCount":I
    :cond_0
    if-eqz v5, :cond_2

    .line 191
    iget-object v7, p0, Lcom/meizu/common/widget/SingleCursorPartitionAdapter;->mChangeObserver:Lcom/meizu/common/widget/SingleCursorPartitionAdapter$ChangeObserver;

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/meizu/common/widget/SingleCursorPartitionAdapter;->mChangeObserver:Lcom/meizu/common/widget/SingleCursorPartitionAdapter$ChangeObserver;

    invoke-interface {v5, v7}, Landroid/database/Cursor;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 192
    :cond_1
    iget-object v7, p0, Lcom/meizu/common/widget/SingleCursorPartitionAdapter;->mDataSetObserver:Landroid/database/DataSetObserver;

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/meizu/common/widget/SingleCursorPartitionAdapter;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-interface {v5, v7}, Landroid/database/Cursor;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 195
    :cond_2
    iput-object p1, p0, Lcom/meizu/common/widget/SingleCursorPartitionAdapter;->mCursor:Landroid/database/Cursor;

    .line 196
    if-eqz p1, :cond_5

    .line 197
    iget-object v7, p0, Lcom/meizu/common/widget/SingleCursorPartitionAdapter;->mChangeObserver:Lcom/meizu/common/widget/SingleCursorPartitionAdapter$ChangeObserver;

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/meizu/common/widget/SingleCursorPartitionAdapter;->mChangeObserver:Lcom/meizu/common/widget/SingleCursorPartitionAdapter$ChangeObserver;

    invoke-interface {p1, v7}, Landroid/database/Cursor;->registerContentObserver(Landroid/database/ContentObserver;)V

    .line 198
    :cond_3
    iget-object v7, p0, Lcom/meizu/common/widget/SingleCursorPartitionAdapter;->mDataSetObserver:Landroid/database/DataSetObserver;

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/meizu/common/widget/SingleCursorPartitionAdapter;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-interface {p1, v7}, Landroid/database/Cursor;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 199
    :cond_4
    const-string v7, "_id"

    invoke-interface {p1, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    iput v7, p0, Lcom/meizu/common/widget/SingleCursorPartitionAdapter;->mRowIDColumnIndex:I

    goto :goto_0

    .line 201
    :cond_5
    const/4 v7, -0x1

    iput v7, p0, Lcom/meizu/common/widget/SingleCursorPartitionAdapter;->mRowIDColumnIndex:I

    goto :goto_0

    .line 207
    :cond_6
    array-length v4, p2

    goto :goto_1

    .restart local v4    # "newPartitionCount":I
    :cond_7
    move v1, v4

    .line 208
    goto :goto_2

    .line 214
    .restart local v1    # "changeCount":I
    .restart local v2    # "i":I
    :cond_8
    iget v7, p0, Lcom/meizu/common/widget/SingleCursorPartitionAdapter;->mPartitionCount:I

    if-le v7, v1, :cond_a

    .line 216
    iget-object v6, p0, Lcom/meizu/common/widget/SingleCursorPartitionAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    iget v7, p0, Lcom/meizu/common/widget/SingleCursorPartitionAdapter;->mPartitionCount:I

    const/4 v8, 0x0

    invoke-static {v6, v1, v7, v8}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    .line 217
    iput v1, p0, Lcom/meizu/common/widget/SingleCursorPartitionAdapter;->mPartitionCount:I

    .line 226
    :cond_9
    invoke-virtual {p0}, Lcom/meizu/common/widget/SingleCursorPartitionAdapter;->invalidate()V

    .line 227
    invoke-virtual {p0}, Lcom/meizu/common/widget/SingleCursorPartitionAdapter;->notifyDataSetChanged()V

    .line 228
    invoke-virtual {p0, v9}, Lcom/meizu/common/widget/SingleCursorPartitionAdapter;->setNotificationsEnabled(Z)V

    .line 229
    return-object v5

    .line 218
    :cond_a
    if-le v4, v1, :cond_9

    .line 220
    sub-int v0, v4, v1

    .line 221
    .local v0, "addCount":I
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_4
    if-ge v3, v0, :cond_9

    .line 222
    add-int v7, v1, v3

    aget v7, p2, v7

    invoke-virtual {p0, v6, v9, v7}, Lcom/meizu/common/widget/SingleCursorPartitionAdapter;->addPartition(ZZI)I

    .line 221
    add-int/lit8 v3, v3, 0x1

    goto :goto_4
.end method

.method public varargs swapCursor(Landroid/database/Cursor;[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;)Landroid/database/Cursor;
    .locals 3
    .param p1, "newCursor"    # Landroid/database/Cursor;
    .param p2, "partitions"    # [Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    .prologue
    .line 135
    iget-object v1, p0, Lcom/meizu/common/widget/SingleCursorPartitionAdapter;->mCursor:Landroid/database/Cursor;

    .line 136
    .local v1, "oldCursor":Landroid/database/Cursor;
    iget-object v2, p0, Lcom/meizu/common/widget/SingleCursorPartitionAdapter;->mCursor:Landroid/database/Cursor;

    if-ne p1, v2, :cond_0

    .line 137
    const/4 v1, 0x0

    .line 154
    :goto_0
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/meizu/common/widget/SingleCursorPartitionAdapter;->setNotificationsEnabled(Z)V

    .line 155
    invoke-virtual {p0}, Lcom/meizu/common/widget/SingleCursorPartitionAdapter;->clearPartitions()V

    .line 156
    if-eqz p2, :cond_6

    array-length v2, p2

    if-lez v2, :cond_6

    .line 157
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v2, p2

    if-ge v0, v2, :cond_6

    .line 158
    aget-object v2, p2, v0

    invoke-virtual {p0, v2}, Lcom/meizu/common/widget/SingleCursorPartitionAdapter;->addPartition(Lcom/meizu/common/widget/BasePartitionAdapter$Partition;)I

    .line 157
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 139
    .end local v0    # "i":I
    :cond_0
    if-eqz v1, :cond_2

    .line 140
    iget-object v2, p0, Lcom/meizu/common/widget/SingleCursorPartitionAdapter;->mChangeObserver:Lcom/meizu/common/widget/SingleCursorPartitionAdapter$ChangeObserver;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/meizu/common/widget/SingleCursorPartitionAdapter;->mChangeObserver:Lcom/meizu/common/widget/SingleCursorPartitionAdapter$ChangeObserver;

    invoke-interface {v1, v2}, Landroid/database/Cursor;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 141
    :cond_1
    iget-object v2, p0, Lcom/meizu/common/widget/SingleCursorPartitionAdapter;->mDataSetObserver:Landroid/database/DataSetObserver;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/meizu/common/widget/SingleCursorPartitionAdapter;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-interface {v1, v2}, Landroid/database/Cursor;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 144
    :cond_2
    iput-object p1, p0, Lcom/meizu/common/widget/SingleCursorPartitionAdapter;->mCursor:Landroid/database/Cursor;

    .line 145
    if-eqz p1, :cond_5

    .line 146
    iget-object v2, p0, Lcom/meizu/common/widget/SingleCursorPartitionAdapter;->mChangeObserver:Lcom/meizu/common/widget/SingleCursorPartitionAdapter$ChangeObserver;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/meizu/common/widget/SingleCursorPartitionAdapter;->mChangeObserver:Lcom/meizu/common/widget/SingleCursorPartitionAdapter$ChangeObserver;

    invoke-interface {p1, v2}, Landroid/database/Cursor;->registerContentObserver(Landroid/database/ContentObserver;)V

    .line 147
    :cond_3
    iget-object v2, p0, Lcom/meizu/common/widget/SingleCursorPartitionAdapter;->mDataSetObserver:Landroid/database/DataSetObserver;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/meizu/common/widget/SingleCursorPartitionAdapter;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-interface {p1, v2}, Landroid/database/Cursor;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 148
    :cond_4
    const-string v2, "_id"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/meizu/common/widget/SingleCursorPartitionAdapter;->mRowIDColumnIndex:I

    goto :goto_0

    .line 150
    :cond_5
    const/4 v2, -0x1

    iput v2, p0, Lcom/meizu/common/widget/SingleCursorPartitionAdapter;->mRowIDColumnIndex:I

    goto :goto_0

    .line 161
    :cond_6
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/meizu/common/widget/SingleCursorPartitionAdapter;->setNotificationsEnabled(Z)V

    .line 162
    return-object v1
.end method
