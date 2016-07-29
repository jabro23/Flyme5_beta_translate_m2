.class public abstract Lcom/meizu/common/widget/MultiArrayPartitionAdapter;
.super Lcom/meizu/common/widget/BasePartitionAdapter;
.source "MultiArrayPartitionAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/common/widget/MultiArrayPartitionAdapter$ArrayPartition;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/meizu/common/widget/BasePartitionAdapter;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 45
    .local p0, "this":Lcom/meizu/common/widget/MultiArrayPartitionAdapter;, "Lcom/meizu/common/widget/MultiArrayPartitionAdapter<TT;>;"
    invoke-direct {p0, p1}, Lcom/meizu/common/widget/BasePartitionAdapter;-><init>(Landroid/content/Context;)V

    .line 46
    return-void
.end method

.method public varargs constructor <init>(Landroid/content/Context;[Ljava/util/List;)V
    .locals 1
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
    .line 49
    .local p0, "this":Lcom/meizu/common/widget/MultiArrayPartitionAdapter;, "Lcom/meizu/common/widget/MultiArrayPartitionAdapter<TT;>;"
    .local p2, "lists":[Ljava/util/List;, "[Ljava/util/List<TT;>;"
    if-eqz p2, :cond_0

    array-length v0, p2

    if-lez v0, :cond_0

    array-length v0, p2

    :goto_0
    invoke-direct {p0, p1, v0}, Lcom/meizu/common/widget/BasePartitionAdapter;-><init>(Landroid/content/Context;I)V

    .line 50
    invoke-virtual {p0, p2}, Lcom/meizu/common/widget/MultiArrayPartitionAdapter;->addPartitions([Ljava/util/List;)V

    .line 51
    return-void

    .line 49
    :cond_0
    const/16 v0, 0xa

    goto :goto_0
.end method


# virtual methods
.method public addPartition(Lcom/meizu/common/widget/MultiArrayPartitionAdapter$ArrayPartition;)I
    .locals 1
    .param p1, "partition"    # Lcom/meizu/common/widget/MultiArrayPartitionAdapter$ArrayPartition;

    .prologue
    .line 81
    .local p0, "this":Lcom/meizu/common/widget/MultiArrayPartitionAdapter;, "Lcom/meizu/common/widget/MultiArrayPartitionAdapter<TT;>;"
    invoke-super {p0, p1}, Lcom/meizu/common/widget/BasePartitionAdapter;->addPartition(Lcom/meizu/common/widget/BasePartitionAdapter$Partition;)I

    move-result v0

    return v0
.end method

.method public addPartition(ZZLjava/util/List;)I
    .locals 1
    .param p1, "showIfEmpty"    # Z
    .param p2, "hasHeader"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Ljava/util/List",
            "<TT;>;)I"
        }
    .end annotation

    .prologue
    .line 77
    .local p0, "this":Lcom/meizu/common/widget/MultiArrayPartitionAdapter;, "Lcom/meizu/common/widget/MultiArrayPartitionAdapter<TT;>;"
    .local p3, "objects":Ljava/util/List;, "Ljava/util/List<TT;>;"
    new-instance v0, Lcom/meizu/common/widget/MultiArrayPartitionAdapter$ArrayPartition;

    invoke-direct {v0, p1, p2, p3}, Lcom/meizu/common/widget/MultiArrayPartitionAdapter$ArrayPartition;-><init>(ZZLjava/util/List;)V

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/MultiArrayPartitionAdapter;->addPartition(Lcom/meizu/common/widget/MultiArrayPartitionAdapter$ArrayPartition;)I

    move-result v0

    return v0
.end method

.method public varargs addPartitions([Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/meizu/common/widget/MultiArrayPartitionAdapter;, "Lcom/meizu/common/widget/MultiArrayPartitionAdapter<TT;>;"
    .local p1, "lists":[Ljava/util/List;, "[Ljava/util/List<TT;>;"
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 59
    if-eqz p1, :cond_1

    array-length v1, p1

    if-lez v1, :cond_1

    .line 60
    invoke-virtual {p0, v2}, Lcom/meizu/common/widget/MultiArrayPartitionAdapter;->setNotificationsEnabled(Z)V

    .line 61
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 62
    aget-object v1, p1, v0

    invoke-virtual {p0, v2, v3, v1}, Lcom/meizu/common/widget/MultiArrayPartitionAdapter;->addPartition(ZZLjava/util/List;)I

    .line 61
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 64
    :cond_0
    invoke-virtual {p0, v3}, Lcom/meizu/common/widget/MultiArrayPartitionAdapter;->setNotificationsEnabled(Z)V

    .line 66
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method protected abstract bindView(Landroid/view/View;Landroid/content/Context;IILjava/lang/Object;II)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Landroid/content/Context;",
            "IITT;II)V"
        }
    .end annotation
.end method

.method public changePartition(ILjava/util/List;)V
    .locals 2
    .param p1, "partitionIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 138
    .local p0, "this":Lcom/meizu/common/widget/MultiArrayPartitionAdapter;, "Lcom/meizu/common/widget/MultiArrayPartitionAdapter<TT;>;"
    .local p2, "objects":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-virtual {p0, p1}, Lcom/meizu/common/widget/MultiArrayPartitionAdapter;->getPartition(I)Lcom/meizu/common/widget/MultiArrayPartitionAdapter$ArrayPartition;

    move-result-object v0

    .line 139
    .local v0, "g":Lcom/meizu/common/widget/MultiArrayPartitionAdapter$ArrayPartition;
    iput-object p2, v0, Lcom/meizu/common/widget/MultiArrayPartitionAdapter$ArrayPartition;->mObjects:Ljava/util/List;

    .line 140
    if-nez p2, :cond_0

    const/4 v1, 0x0

    :goto_0
    iput v1, v0, Lcom/meizu/common/widget/MultiArrayPartitionAdapter$ArrayPartition;->mItemCount:I

    .line 141
    invoke-virtual {p0}, Lcom/meizu/common/widget/MultiArrayPartitionAdapter;->invalidate()V

    .line 142
    invoke-virtual {p0}, Lcom/meizu/common/widget/MultiArrayPartitionAdapter;->notifyDataSetChanged()V

    .line 143
    return-void

    .line 140
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    goto :goto_0
.end method

.method public getDataPosition(I)I
    .locals 8
    .param p1, "position"    # I

    .prologue
    .local p0, "this":Lcom/meizu/common/widget/MultiArrayPartitionAdapter;, "Lcom/meizu/common/widget/MultiArrayPartitionAdapter<TT;>;"
    const/4 v5, -0x1

    .line 101
    invoke-virtual {p0}, Lcom/meizu/common/widget/MultiArrayPartitionAdapter;->ensureCacheValid()V

    .line 102
    const/4 v4, 0x0

    .line 103
    .local v4, "start":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget v6, p0, Lcom/meizu/common/widget/MultiArrayPartitionAdapter;->mPartitionCount:I

    if-ge v2, v6, :cond_1

    .line 104
    iget-object v6, p0, Lcom/meizu/common/widget/MultiArrayPartitionAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    aget-object v6, v6, v2

    iget v6, v6, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mSize:I

    add-int v0, v4, v6

    .line 105
    .local v0, "end":I
    if-lt p1, v4, :cond_2

    if-ge p1, v0, :cond_2

    .line 106
    sub-int v3, p1, v4

    .line 107
    .local v3, "offset":I
    iget-object v6, p0, Lcom/meizu/common/widget/MultiArrayPartitionAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    aget-object v6, v6, v2

    iget-boolean v6, v6, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mHasHeader:Z

    if-eqz v6, :cond_0

    .line 108
    add-int/lit8 v3, v3, -0x1

    .line 111
    :cond_0
    iget-object v6, p0, Lcom/meizu/common/widget/MultiArrayPartitionAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    aget-object v6, v6, v2

    iget v6, v6, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mCount:I

    iget-object v7, p0, Lcom/meizu/common/widget/MultiArrayPartitionAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    aget-object v7, v7, v2

    iget v7, v7, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mFooterViewsCount:I

    sub-int v1, v6, v7

    .line 112
    .local v1, "footerStart":I
    iget-object v6, p0, Lcom/meizu/common/widget/MultiArrayPartitionAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    aget-object v6, v6, v2

    iget v6, v6, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mHeaderViewsCount:I

    if-lt v3, v6, :cond_1

    if-ge v3, v1, :cond_1

    .line 114
    invoke-virtual {p0, v2, v3}, Lcom/meizu/common/widget/MultiArrayPartitionAdapter;->getDataPosition(II)I

    move-result v5

    .line 123
    .end local v0    # "end":I
    .end local v1    # "footerStart":I
    .end local v3    # "offset":I
    :cond_1
    return v5

    .line 120
    .restart local v0    # "end":I
    :cond_2
    move v4, v0

    .line 103
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method protected getDataPosition(II)I
    .locals 1
    .param p1, "partitionIndex"    # I
    .param p2, "offset"    # I

    .prologue
    .line 127
    .local p0, "this":Lcom/meizu/common/widget/MultiArrayPartitionAdapter;, "Lcom/meizu/common/widget/MultiArrayPartitionAdapter<TT;>;"
    iget-object v0, p0, Lcom/meizu/common/widget/MultiArrayPartitionAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    aget-object v0, v0, p1

    iget v0, v0, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mHeaderViewsCount:I

    sub-int v0, p2, v0

    return v0
.end method

.method protected getItem(II)Ljava/lang/Object;
    .locals 4
    .param p1, "partitionIndex"    # I
    .param p2, "offset"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)TT;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/meizu/common/widget/MultiArrayPartitionAdapter;, "Lcom/meizu/common/widget/MultiArrayPartitionAdapter<TT;>;"
    const/4 v2, 0x0

    .line 150
    invoke-virtual {p0, p1}, Lcom/meizu/common/widget/MultiArrayPartitionAdapter;->getPartition(I)Lcom/meizu/common/widget/MultiArrayPartitionAdapter$ArrayPartition;

    move-result-object v3

    iget-object v0, v3, Lcom/meizu/common/widget/MultiArrayPartitionAdapter$ArrayPartition;->mObjects:Ljava/util/List;

    .line 151
    .local v0, "objects":Ljava/util/List;, "Ljava/util/List<TT;>;"
    if-nez v0, :cond_1

    .line 159
    :cond_0
    :goto_0
    return-object v2

    .line 155
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/meizu/common/widget/MultiArrayPartitionAdapter;->getDataPosition(II)I

    move-result v1

    .line 156
    .local v1, "pos":I
    if-ltz v1, :cond_0

    .line 159
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    goto :goto_0
.end method

.method protected getItemId(II)J
    .locals 4
    .param p1, "partitionIndex"    # I
    .param p2, "offset"    # I

    .prologue
    .local p0, "this":Lcom/meizu/common/widget/MultiArrayPartitionAdapter;, "Lcom/meizu/common/widget/MultiArrayPartitionAdapter<TT;>;"
    const-wide/16 v2, 0x0

    .line 168
    invoke-virtual {p0, p1}, Lcom/meizu/common/widget/MultiArrayPartitionAdapter;->getPartition(I)Lcom/meizu/common/widget/MultiArrayPartitionAdapter$ArrayPartition;

    move-result-object v1

    iget-object v1, v1, Lcom/meizu/common/widget/MultiArrayPartitionAdapter$ArrayPartition;->mObjects:Ljava/util/List;

    if-nez v1, :cond_1

    .line 175
    :cond_0
    :goto_0
    return-wide v2

    .line 171
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/meizu/common/widget/MultiArrayPartitionAdapter;->getDataPosition(II)I

    move-result v0

    .line 172
    .local v0, "pos":I
    if-ltz v0, :cond_0

    .line 175
    int-to-long v2, v0

    goto :goto_0
.end method

.method public bridge synthetic getPartition(I)Lcom/meizu/common/widget/BasePartitionAdapter$Partition;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 23
    .local p0, "this":Lcom/meizu/common/widget/MultiArrayPartitionAdapter;, "Lcom/meizu/common/widget/MultiArrayPartitionAdapter<TT;>;"
    invoke-virtual {p0, p1}, Lcom/meizu/common/widget/MultiArrayPartitionAdapter;->getPartition(I)Lcom/meizu/common/widget/MultiArrayPartitionAdapter$ArrayPartition;

    move-result-object v0

    return-object v0
.end method

.method public getPartition(I)Lcom/meizu/common/widget/MultiArrayPartitionAdapter$ArrayPartition;
    .locals 1
    .param p1, "partitionIndex"    # I

    .prologue
    .line 86
    .local p0, "this":Lcom/meizu/common/widget/MultiArrayPartitionAdapter;, "Lcom/meizu/common/widget/MultiArrayPartitionAdapter<TT;>;"
    invoke-super {p0, p1}, Lcom/meizu/common/widget/BasePartitionAdapter;->getPartition(I)Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    move-result-object v0

    check-cast v0, Lcom/meizu/common/widget/MultiArrayPartitionAdapter$ArrayPartition;

    return-object v0
.end method

.method public getPartitionData(I)Ljava/util/List;
    .locals 1
    .param p1, "partitionIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 93
    .local p0, "this":Lcom/meizu/common/widget/MultiArrayPartitionAdapter;, "Lcom/meizu/common/widget/MultiArrayPartitionAdapter<TT;>;"
    invoke-virtual {p0, p1}, Lcom/meizu/common/widget/MultiArrayPartitionAdapter;->getPartition(I)Lcom/meizu/common/widget/MultiArrayPartitionAdapter$ArrayPartition;

    move-result-object v0

    iget-object v0, v0, Lcom/meizu/common/widget/MultiArrayPartitionAdapter$ArrayPartition;->mObjects:Ljava/util/List;

    return-object v0
.end method

.method protected getView(IIIILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 18
    .param p1, "position"    # I
    .param p2, "partitionIndex"    # I
    .param p3, "offset"    # I
    .param p4, "itemBgType"    # I
    .param p5, "convertView"    # Landroid/view/View;
    .param p6, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 182
    .local p0, "this":Lcom/meizu/common/widget/MultiArrayPartitionAdapter;, "Lcom/meizu/common/widget/MultiArrayPartitionAdapter<TT;>;"
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/meizu/common/widget/MultiArrayPartitionAdapter;->getPartition(I)Lcom/meizu/common/widget/MultiArrayPartitionAdapter$ArrayPartition;

    move-result-object v3

    iget-object v0, v3, Lcom/meizu/common/widget/MultiArrayPartitionAdapter$ArrayPartition;->mObjects:Ljava/util/List;

    move-object/from16 v17, v0

    .line 183
    .local v17, "objects":Ljava/util/List;, "Ljava/util/List<TT;>;"
    if-nez v17, :cond_0

    .line 184
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "the partition "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " list is null"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 187
    :cond_0
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v3

    if-gtz v3, :cond_1

    .line 188
    const-string v3, "IndexOutOfBounds"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MultiArrayPartitionAdapter getView exception, List partition item size :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    new-instance v3, Ljava/lang/IndexOutOfBoundsException;

    const-string v4, "APP\u6570\u636e\u96c6\u4e3a\u7a7a:\u8bf7\u5148\u68c0\u67e5\u6570\u636e\u96c6\u4e2d\u4e66\u5426\u6709\u6570\u636e,\u7136\u540e\u518d\u8bbf\u95ee!"

    invoke-direct {v3, v4}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 192
    :cond_1
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Lcom/meizu/common/widget/MultiArrayPartitionAdapter;->getDataPosition(II)I

    move-result v16

    .line 193
    .local v16, "listIndex":I
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v3

    move/from16 v0, v16

    if-lt v0, v3, :cond_2

    .line 194
    const-string v3, "IndexOutOfBounds"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MultiArrayPartitionAdapter getView exception, List partition item size :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", listIndex :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    new-instance v3, Ljava/lang/IndexOutOfBoundsException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "APP\u8d8a\u754c\u64cd\u4f5c:\u5f53\u524d\u6570\u636e\u96c6\u5927\u5c0f\u4e3a:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",\u6709\u6548\u8bbf\u95ee\u8303\u56f4\u4e3a:0~"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",\u5f53\u524d\u8bbf\u95ee\u5e8f\u53f7\u4e3a:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",\u975e\u6cd5,\u8bf7\u5904\u7406\uff01"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 198
    :cond_2
    move-object/from16 v0, v17

    move/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    .line 201
    .local v7, "object":Ljava/lang/Object;, "TT;"
    if-nez p5, :cond_3

    .line 202
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/meizu/common/widget/MultiArrayPartitionAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v3, p0

    move/from16 v5, p1

    move/from16 v6, p2

    move/from16 v8, p3

    move/from16 v9, p4

    move-object/from16 v10, p6

    invoke-virtual/range {v3 .. v10}, Lcom/meizu/common/widget/MultiArrayPartitionAdapter;->newView(Landroid/content/Context;IILjava/lang/Object;IILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v9

    .line 207
    .local v9, "view":Landroid/view/View;
    :goto_0
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/meizu/common/widget/MultiArrayPartitionAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v8, p0

    move/from16 v11, p1

    move/from16 v12, p2

    move-object v13, v7

    move/from16 v14, p3

    move/from16 v15, p4

    invoke-virtual/range {v8 .. v15}, Lcom/meizu/common/widget/MultiArrayPartitionAdapter;->bindView(Landroid/view/View;Landroid/content/Context;IILjava/lang/Object;II)V

    .line 208
    return-object v9

    .line 204
    .end local v9    # "view":Landroid/view/View;
    :cond_3
    move-object/from16 v9, p5

    .restart local v9    # "view":Landroid/view/View;
    goto :goto_0
.end method

.method protected abstract newView(Landroid/content/Context;IILjava/lang/Object;IILandroid/view/ViewGroup;)Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "IITT;II",
            "Landroid/view/ViewGroup;",
            ")",
            "Landroid/view/View;"
        }
    .end annotation
.end method
