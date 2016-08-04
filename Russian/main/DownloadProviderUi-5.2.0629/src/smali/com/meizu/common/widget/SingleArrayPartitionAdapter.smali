.class public abstract Lcom/meizu/common/widget/SingleArrayPartitionAdapter;
.super Lcom/meizu/common/widget/BasePartitionAdapter;
.source "SingleArrayPartitionAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/meizu/common/widget/BasePartitionAdapter;"
    }
.end annotation


# instance fields
.field protected mObjects:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 34
    .local p0, "this":Lcom/meizu/common/widget/SingleArrayPartitionAdapter;, "Lcom/meizu/common/widget/SingleArrayPartitionAdapter<TT;>;"
    invoke-direct {p0, p1}, Lcom/meizu/common/widget/BasePartitionAdapter;-><init>(Landroid/content/Context;)V

    .line 35
    return-void
.end method

.method public varargs constructor <init>(Landroid/content/Context;Ljava/util/List;[I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "itemCounts"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<TT;>;[I)V"
        }
    .end annotation

    .prologue
    .line 38
    .local p0, "this":Lcom/meizu/common/widget/SingleArrayPartitionAdapter;, "Lcom/meizu/common/widget/SingleArrayPartitionAdapter<TT;>;"
    .local p2, "objects":Ljava/util/List;, "Ljava/util/List<TT;>;"
    if-eqz p3, :cond_0

    array-length v0, p3

    if-lez v0, :cond_0

    array-length v0, p3

    :goto_0
    invoke-direct {p0, p1, v0}, Lcom/meizu/common/widget/BasePartitionAdapter;-><init>(Landroid/content/Context;I)V

    .line 39
    iput-object p2, p0, Lcom/meizu/common/widget/SingleArrayPartitionAdapter;->mObjects:Ljava/util/List;

    .line 40
    invoke-direct {p0, p3}, Lcom/meizu/common/widget/SingleArrayPartitionAdapter;->addPartitions([I)V

    .line 41
    return-void

    .line 38
    :cond_0
    const/16 v0, 0xa

    goto :goto_0
.end method

.method private addPartitions([I)V
    .locals 4
    .param p1, "itemCounts"    # [I

    .prologue
    .local p0, "this":Lcom/meizu/common/widget/SingleArrayPartitionAdapter;, "Lcom/meizu/common/widget/SingleArrayPartitionAdapter<TT;>;"
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 47
    if-eqz p1, :cond_1

    array-length v1, p1

    if-lez v1, :cond_1

    .line 48
    invoke-virtual {p0, v2}, Lcom/meizu/common/widget/SingleArrayPartitionAdapter;->setNotificationsEnabled(Z)V

    .line 49
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 50
    aget v1, p1, v0

    invoke-virtual {p0, v2, v3, v1}, Lcom/meizu/common/widget/SingleArrayPartitionAdapter;->addPartition(ZZI)I

    .line 49
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 52
    :cond_0
    invoke-virtual {p0, v3}, Lcom/meizu/common/widget/SingleArrayPartitionAdapter;->setNotificationsEnabled(Z)V

    .line 54
    .end local v0    # "i":I
    :cond_1
    return-void
.end method


# virtual methods
.method public addItem(ILjava/lang/Object;)V
    .locals 4
    .param p1, "itemIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation

    .prologue
    .line 79
    .local p0, "this":Lcom/meizu/common/widget/SingleArrayPartitionAdapter;, "Lcom/meizu/common/widget/SingleArrayPartitionAdapter<TT;>;"
    .local p2, "object":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0, p1}, Lcom/meizu/common/widget/SingleArrayPartitionAdapter;->getPartitionForItemIndex(I)I

    move-result v0

    .line 80
    .local v0, "currentPatition":I
    const/4 v1, -0x1

    if-ne v1, v0, :cond_0

    .line 81
    const-string v1, "lijinqian"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ArrayIndexOutOfBoundsException,object size is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/meizu/common/widget/SingleArrayPartitionAdapter;->mObjects:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", current item index is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "![SingleArrayPartitionAdapter$addItem]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    :goto_0
    return-void

    .line 85
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/meizu/common/widget/SingleArrayPartitionAdapter;->setNotificationsEnabled(Z)V

    .line 87
    iget-object v1, p0, Lcom/meizu/common/widget/SingleArrayPartitionAdapter;->mObjects:Ljava/util/List;

    invoke-interface {v1, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 88
    iget-object v1, p0, Lcom/meizu/common/widget/SingleArrayPartitionAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    aget-object v1, v1, v0

    iget v2, v1, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mSize:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mSize:I

    .line 89
    iget-object v1, p0, Lcom/meizu/common/widget/SingleArrayPartitionAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    aget-object v1, v1, v0

    iget v2, v1, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mCount:I

    .line 90
    iget-object v1, p0, Lcom/meizu/common/widget/SingleArrayPartitionAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    aget-object v1, v1, v0

    iget v2, v1, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mItemCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mItemCount:I

    .line 92
    invoke-virtual {p0}, Lcom/meizu/common/widget/SingleArrayPartitionAdapter;->invalidate()V

    .line 93
    invoke-virtual {p0}, Lcom/meizu/common/widget/SingleArrayPartitionAdapter;->notifyDataSetChanged()V

    .line 94
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/meizu/common/widget/SingleArrayPartitionAdapter;->setNotificationsEnabled(Z)V

    goto :goto_0
.end method

.method public addPartition(Lcom/meizu/common/widget/BasePartitionAdapter$Partition;)I
    .locals 1
    .param p1, "partition"    # Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    .prologue
    .line 70
    .local p0, "this":Lcom/meizu/common/widget/SingleArrayPartitionAdapter;, "Lcom/meizu/common/widget/SingleArrayPartitionAdapter<TT;>;"
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
    .line 65
    .local p0, "this":Lcom/meizu/common/widget/SingleArrayPartitionAdapter;, "Lcom/meizu/common/widget/SingleArrayPartitionAdapter<TT;>;"
    new-instance v0, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    invoke-direct {v0, p1, p2, p3}, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;-><init>(ZZI)V

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/SingleArrayPartitionAdapter;->addPartition(Lcom/meizu/common/widget/BasePartitionAdapter$Partition;)I

    move-result v0

    return v0
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

.method public varargs changePartitions(Ljava/util/List;[I)V
    .locals 9
    .param p2, "itemCounts"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;[I)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/meizu/common/widget/SingleArrayPartitionAdapter;, "Lcom/meizu/common/widget/SingleArrayPartitionAdapter<TT;>;"
    .local p1, "objects":Ljava/util/List;, "Ljava/util/List<TT;>;"
    const/4 v8, 0x1

    const/4 v5, 0x0

    .line 146
    iput-object p1, p0, Lcom/meizu/common/widget/SingleArrayPartitionAdapter;->mObjects:Ljava/util/List;

    .line 148
    invoke-virtual {p0, v5}, Lcom/meizu/common/widget/SingleArrayPartitionAdapter;->setNotificationsEnabled(Z)V

    .line 150
    if-nez p2, :cond_0

    move v4, v5

    .line 151
    .local v4, "newPartitionCount":I
    :goto_0
    iget v6, p0, Lcom/meizu/common/widget/SingleArrayPartitionAdapter;->mPartitionCount:I

    if-le v4, v6, :cond_1

    iget v1, p0, Lcom/meizu/common/widget/SingleArrayPartitionAdapter;->mPartitionCount:I

    .line 153
    .local v1, "changeCount":I
    :goto_1
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    if-ge v2, v1, :cond_2

    .line 154
    iget-object v6, p0, Lcom/meizu/common/widget/SingleArrayPartitionAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    aget-object v6, v6, v2

    aget v7, p2, v2

    iput v7, v6, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mItemCount:I

    .line 153
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 150
    .end local v1    # "changeCount":I
    .end local v2    # "i":I
    .end local v4    # "newPartitionCount":I
    :cond_0
    array-length v4, p2

    goto :goto_0

    .restart local v4    # "newPartitionCount":I
    :cond_1
    move v1, v4

    .line 151
    goto :goto_1

    .line 157
    .restart local v1    # "changeCount":I
    .restart local v2    # "i":I
    :cond_2
    iget v6, p0, Lcom/meizu/common/widget/SingleArrayPartitionAdapter;->mPartitionCount:I

    if-le v6, v1, :cond_4

    .line 159
    iget-object v5, p0, Lcom/meizu/common/widget/SingleArrayPartitionAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    iget v6, p0, Lcom/meizu/common/widget/SingleArrayPartitionAdapter;->mPartitionCount:I

    const/4 v7, 0x0

    invoke-static {v5, v1, v6, v7}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    .line 160
    iput v1, p0, Lcom/meizu/common/widget/SingleArrayPartitionAdapter;->mPartitionCount:I

    .line 169
    :cond_3
    invoke-virtual {p0}, Lcom/meizu/common/widget/SingleArrayPartitionAdapter;->invalidate()V

    .line 170
    invoke-virtual {p0}, Lcom/meizu/common/widget/SingleArrayPartitionAdapter;->notifyDataSetChanged()V

    .line 171
    invoke-virtual {p0, v8}, Lcom/meizu/common/widget/SingleArrayPartitionAdapter;->setNotificationsEnabled(Z)V

    .line 172
    return-void

    .line 161
    :cond_4
    if-le v4, v1, :cond_3

    .line 163
    sub-int v0, v4, v1

    .line 164
    .local v0, "addCount":I
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_3
    if-ge v3, v0, :cond_3

    .line 165
    add-int v6, v1, v3

    aget v6, p2, v6

    invoke-virtual {p0, v5, v8, v6}, Lcom/meizu/common/widget/SingleArrayPartitionAdapter;->addPartition(ZZI)I

    .line 164
    add-int/lit8 v3, v3, 0x1

    goto :goto_3
.end method

.method public varargs changePartitions(Ljava/util/List;[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;)V
    .locals 2
    .param p2, "partitions"    # [Lcom/meizu/common/widget/BasePartitionAdapter$Partition;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;[",
            "Lcom/meizu/common/widget/BasePartitionAdapter$Partition;",
            ")V"
        }
    .end annotation

    .prologue
    .line 128
    .local p0, "this":Lcom/meizu/common/widget/SingleArrayPartitionAdapter;, "Lcom/meizu/common/widget/SingleArrayPartitionAdapter<TT;>;"
    .local p1, "objects":Ljava/util/List;, "Ljava/util/List<TT;>;"
    iput-object p1, p0, Lcom/meizu/common/widget/SingleArrayPartitionAdapter;->mObjects:Ljava/util/List;

    .line 129
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/meizu/common/widget/SingleArrayPartitionAdapter;->setNotificationsEnabled(Z)V

    .line 130
    invoke-virtual {p0}, Lcom/meizu/common/widget/SingleArrayPartitionAdapter;->clearPartitions()V

    .line 131
    if-eqz p2, :cond_0

    array-length v1, p2

    if-lez v1, :cond_0

    .line 132
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_0

    .line 133
    aget-object v1, p2, v0

    invoke-virtual {p0, v1}, Lcom/meizu/common/widget/SingleArrayPartitionAdapter;->addPartition(Lcom/meizu/common/widget/BasePartitionAdapter$Partition;)I

    .line 132
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 136
    .end local v0    # "i":I
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/meizu/common/widget/SingleArrayPartitionAdapter;->setNotificationsEnabled(Z)V

    .line 137
    return-void
.end method

.method public getDataPosition(I)I
    .locals 8
    .param p1, "position"    # I

    .prologue
    .line 186
    .local p0, "this":Lcom/meizu/common/widget/SingleArrayPartitionAdapter;, "Lcom/meizu/common/widget/SingleArrayPartitionAdapter<TT;>;"
    invoke-virtual {p0}, Lcom/meizu/common/widget/SingleArrayPartitionAdapter;->ensureCacheValid()V

    .line 187
    const/4 v0, 0x0

    .line 188
    .local v0, "dataPos":I
    const/4 v5, 0x0

    .line 189
    .local v5, "start":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget v6, p0, Lcom/meizu/common/widget/SingleArrayPartitionAdapter;->mPartitionCount:I

    if-ge v3, v6, :cond_3

    .line 190
    iget-object v6, p0, Lcom/meizu/common/widget/SingleArrayPartitionAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    aget-object v6, v6, v3

    iget v6, v6, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mSize:I

    add-int v1, v5, v6

    .line 191
    .local v1, "end":I
    if-lt p1, v5, :cond_2

    if-ge p1, v1, :cond_2

    .line 192
    sub-int v4, p1, v5

    .line 193
    .local v4, "offset":I
    iget-object v6, p0, Lcom/meizu/common/widget/SingleArrayPartitionAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    aget-object v6, v6, v3

    iget-boolean v6, v6, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mHasHeader:Z

    if-eqz v6, :cond_0

    .line 194
    add-int/lit8 v4, v4, -0x1

    .line 197
    :cond_0
    iget-object v6, p0, Lcom/meizu/common/widget/SingleArrayPartitionAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    aget-object v6, v6, v3

    iget v6, v6, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mCount:I

    iget-object v7, p0, Lcom/meizu/common/widget/SingleArrayPartitionAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    aget-object v7, v7, v3

    iget v7, v7, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mFooterViewsCount:I

    sub-int v2, v6, v7

    .line 198
    .local v2, "footerStart":I
    iget-object v6, p0, Lcom/meizu/common/widget/SingleArrayPartitionAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    aget-object v6, v6, v3

    iget v6, v6, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mHeaderViewsCount:I

    if-lt v4, v6, :cond_1

    if-ge v4, v2, :cond_1

    .line 200
    iget-object v6, p0, Lcom/meizu/common/widget/SingleArrayPartitionAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    aget-object v6, v6, v3

    iget v6, v6, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mHeaderViewsCount:I

    sub-int v6, v4, v6

    add-int/2addr v0, v6

    move v6, v0

    .line 204
    :goto_1
    return v6

    :cond_1
    const/4 v6, -0x1

    goto :goto_1

    .line 207
    .end local v2    # "footerStart":I
    .end local v4    # "offset":I
    :cond_2
    iget-object v6, p0, Lcom/meizu/common/widget/SingleArrayPartitionAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    aget-object v6, v6, v3

    iget v6, v6, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mItemCount:I

    add-int/2addr v0, v6

    .line 208
    move v5, v1

    .line 189
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 211
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
    .line 215
    .local p0, "this":Lcom/meizu/common/widget/SingleArrayPartitionAdapter;, "Lcom/meizu/common/widget/SingleArrayPartitionAdapter<TT;>;"
    const/4 v0, 0x0

    .line 216
    .local v0, "dataPos":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p1, :cond_0

    .line 217
    iget-object v2, p0, Lcom/meizu/common/widget/SingleArrayPartitionAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    aget-object v2, v2, v1

    iget v2, v2, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mItemCount:I

    add-int/2addr v0, v2

    .line 216
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 219
    :cond_0
    iget-object v2, p0, Lcom/meizu/common/widget/SingleArrayPartitionAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    aget-object v2, v2, p1

    iget v2, v2, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mHeaderViewsCount:I

    sub-int v2, p2, v2

    add-int/2addr v0, v2

    .line 220
    return v0
.end method

.method protected getItem(II)Ljava/lang/Object;
    .locals 2
    .param p1, "partitionIndex"    # I
    .param p2, "offset"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)TT;"
        }
    .end annotation

    .prologue
    .line 228
    .local p0, "this":Lcom/meizu/common/widget/SingleArrayPartitionAdapter;, "Lcom/meizu/common/widget/SingleArrayPartitionAdapter<TT;>;"
    iget-object v1, p0, Lcom/meizu/common/widget/SingleArrayPartitionAdapter;->mObjects:Ljava/util/List;

    if-nez v1, :cond_0

    .line 229
    const/4 v1, 0x0

    .line 232
    :goto_0
    return-object v1

    .line 231
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/meizu/common/widget/SingleArrayPartitionAdapter;->getDataPosition(II)I

    move-result v0

    .line 232
    .local v0, "listIndex":I
    iget-object v1, p0, Lcom/meizu/common/widget/SingleArrayPartitionAdapter;->mObjects:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method

.method protected getItemId(II)J
    .locals 2
    .param p1, "partitionIndex"    # I
    .param p2, "offset"    # I

    .prologue
    .line 241
    .local p0, "this":Lcom/meizu/common/widget/SingleArrayPartitionAdapter;, "Lcom/meizu/common/widget/SingleArrayPartitionAdapter<TT;>;"
    iget-object v0, p0, Lcom/meizu/common/widget/SingleArrayPartitionAdapter;->mObjects:Ljava/util/List;

    if-nez v0, :cond_0

    .line 242
    const-wide/16 v0, 0x0

    .line 244
    :goto_0
    return-wide v0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/meizu/common/widget/SingleArrayPartitionAdapter;->getDataPosition(II)I

    move-result v0

    int-to-long v0, v0

    goto :goto_0
.end method

.method public getPartitionData()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 178
    .local p0, "this":Lcom/meizu/common/widget/SingleArrayPartitionAdapter;, "Lcom/meizu/common/widget/SingleArrayPartitionAdapter<TT;>;"
    iget-object v0, p0, Lcom/meizu/common/widget/SingleArrayPartitionAdapter;->mObjects:Ljava/util/List;

    return-object v0
.end method

.method protected getView(IIIILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 17
    .param p1, "position"    # I
    .param p2, "partitionIndex"    # I
    .param p3, "offset"    # I
    .param p4, "itemBgType"    # I
    .param p5, "convertView"    # Landroid/view/View;
    .param p6, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 251
    .local p0, "this":Lcom/meizu/common/widget/SingleArrayPartitionAdapter;, "Lcom/meizu/common/widget/SingleArrayPartitionAdapter<TT;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/meizu/common/widget/SingleArrayPartitionAdapter;->mObjects:Ljava/util/List;

    if-nez v3, :cond_0

    .line 252
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "the list is null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 255
    :cond_0
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Lcom/meizu/common/widget/SingleArrayPartitionAdapter;->getDataPosition(II)I

    move-result v16

    .line 256
    .local v16, "listIndex":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/meizu/common/widget/SingleArrayPartitionAdapter;->mObjects:Ljava/util/List;

    move/from16 v0, v16

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    .line 259
    .local v7, "object":Ljava/lang/Object;, "TT;"
    if-nez p5, :cond_1

    .line 260
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/meizu/common/widget/SingleArrayPartitionAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v3, p0

    move/from16 v5, p1

    move/from16 v6, p2

    move/from16 v8, p3

    move/from16 v9, p4

    move-object/from16 v10, p6

    invoke-virtual/range {v3 .. v10}, Lcom/meizu/common/widget/SingleArrayPartitionAdapter;->newView(Landroid/content/Context;IILjava/lang/Object;IILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v9

    .line 265
    .local v9, "view":Landroid/view/View;
    :goto_0
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/meizu/common/widget/SingleArrayPartitionAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v8, p0

    move/from16 v11, p1

    move/from16 v12, p2

    move-object v13, v7

    move/from16 v14, p3

    move/from16 v15, p4

    invoke-virtual/range {v8 .. v15}, Lcom/meizu/common/widget/SingleArrayPartitionAdapter;->bindView(Landroid/view/View;Landroid/content/Context;IILjava/lang/Object;II)V

    .line 266
    return-object v9

    .line 262
    .end local v9    # "view":Landroid/view/View;
    :cond_1
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

.method public removeItem(I)V
    .locals 4
    .param p1, "itemIndex"    # I

    .prologue
    .line 103
    .local p0, "this":Lcom/meizu/common/widget/SingleArrayPartitionAdapter;, "Lcom/meizu/common/widget/SingleArrayPartitionAdapter<TT;>;"
    invoke-virtual {p0, p1}, Lcom/meizu/common/widget/SingleArrayPartitionAdapter;->getPartitionForItemIndex(I)I

    move-result v0

    .line 104
    .local v0, "currentPatition":I
    const/4 v1, -0x1

    if-ne v1, v0, :cond_0

    .line 105
    const-string v1, "lijinqian"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ArrayIndexOutOfBoundsException,object size is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/meizu/common/widget/SingleArrayPartitionAdapter;->mObjects:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", current item index is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "![SingleArrayPartitionAdapter$removeItem]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    :goto_0
    return-void

    .line 109
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/meizu/common/widget/SingleArrayPartitionAdapter;->setNotificationsEnabled(Z)V

    .line 111
    iget-object v1, p0, Lcom/meizu/common/widget/SingleArrayPartitionAdapter;->mObjects:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 112
    iget-object v1, p0, Lcom/meizu/common/widget/SingleArrayPartitionAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    aget-object v1, v1, v0

    iget v2, v1, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mSize:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v1, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mSize:I

    .line 113
    iget-object v1, p0, Lcom/meizu/common/widget/SingleArrayPartitionAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    aget-object v1, v1, v0

    iget v2, v1, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mCount:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v1, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mCount:I

    .line 114
    iget-object v1, p0, Lcom/meizu/common/widget/SingleArrayPartitionAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    aget-object v1, v1, v0

    iget v2, v1, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mItemCount:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v1, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mItemCount:I

    .line 116
    invoke-virtual {p0}, Lcom/meizu/common/widget/SingleArrayPartitionAdapter;->invalidate()V

    .line 117
    invoke-virtual {p0}, Lcom/meizu/common/widget/SingleArrayPartitionAdapter;->notifyDataSetChanged()V

    .line 118
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/meizu/common/widget/SingleArrayPartitionAdapter;->setNotificationsEnabled(Z)V

    goto :goto_0
.end method
