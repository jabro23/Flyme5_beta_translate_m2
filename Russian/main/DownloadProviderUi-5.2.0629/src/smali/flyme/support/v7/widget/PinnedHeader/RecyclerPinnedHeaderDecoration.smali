.class public Lflyme/support/v7/widget/PinnedHeader/RecyclerPinnedHeaderDecoration;
.super Lflyme/support/v7/widget/RecyclerView$ItemDecoration;
.source "RecyclerPinnedHeaderDecoration.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lflyme/support/v7/widget/PinnedHeader/RecyclerPinnedHeaderDecoration$OnPinnedHeaderChangeListener;
    }
.end annotation


# instance fields
.field private mCurrentHeaderId:J

.field private mCurrentPosition:I

.field private final mDimensionCalculator:Lflyme/support/v7/widget/PinnedHeader/helper/DimensionCalculator;

.field private final mHeaderAdapter:Lflyme/support/v7/widget/PinnedHeader/RecyclerPinnedHeaderAdapter;

.field private final mHeaderPositionCalculator:Lflyme/support/v7/widget/PinnedHeader/PinnedHeaderPositionCalculator;

.field private final mHeaderProvider:Lflyme/support/v7/widget/PinnedHeader/helper/PinnedHeaderProvider;

.field private final mHeaderRects:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field private mLastHeader:Landroid/view/View;

.field private mLastHeaderId:J

.field private mLastPosition:I

.field private mOnPinnedHeaderChangeListener:Lflyme/support/v7/widget/PinnedHeader/RecyclerPinnedHeaderDecoration$OnPinnedHeaderChangeListener;

.field private final mOrientationProvider:Lflyme/support/v7/widget/PinnedHeader/helper/OrientationProvider;

.field private mRecyclerView:Lflyme/support/v7/widget/RecyclerView;

.field private final mRenderer:Lflyme/support/v7/widget/PinnedHeader/helper/PinnedHeaderRenderer;

.field private final mTempRect:Landroid/graphics/Rect;


# direct methods
.method private checkIfMzRecyclerView(Lflyme/support/v7/widget/RecyclerView;)V
    .locals 4
    .param p1, "recyclerView"    # Lflyme/support/v7/widget/RecyclerView;

    .prologue
    .line 158
    instance-of v1, p1, Lflyme/support/v7/widget/MzRecyclerView;

    if-nez v1, :cond_0

    .line 159
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-class v2, Lflyme/support/v7/widget/PinnedHeader/RecyclerPinnedHeaderDecoration;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " only surport MzRecyclerView."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 161
    .local v0, "ex":Ljava/lang/String;
    const-string v1, "lijinqian"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RecyclerPinnedHeaderDecoration IllegalStateException : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 164
    .end local v0    # "ex":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private setItemOffsetsForHeader(Landroid/graphics/Rect;Landroid/view/View;I)V
    .locals 2
    .param p1, "itemOffsets"    # Landroid/graphics/Rect;
    .param p2, "header"    # Landroid/view/View;
    .param p3, "orientation"    # I

    .prologue
    .line 87
    iget-object v0, p0, Lflyme/support/v7/widget/PinnedHeader/RecyclerPinnedHeaderDecoration;->mDimensionCalculator:Lflyme/support/v7/widget/PinnedHeader/helper/DimensionCalculator;

    iget-object v1, p0, Lflyme/support/v7/widget/PinnedHeader/RecyclerPinnedHeaderDecoration;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, p2}, Lflyme/support/v7/widget/PinnedHeader/helper/DimensionCalculator;->initMargins(Landroid/graphics/Rect;Landroid/view/View;)V

    .line 88
    const/4 v0, 0x1

    if-ne p3, v0, :cond_0

    .line 89
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v0

    iget-object v1, p0, Lflyme/support/v7/widget/PinnedHeader/RecyclerPinnedHeaderDecoration;->mTempRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v1

    iget-object v1, p0, Lflyme/support/v7/widget/PinnedHeader/RecyclerPinnedHeaderDecoration;->mTempRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 93
    :goto_0
    return-void

    .line 91
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v0

    iget-object v1, p0, Lflyme/support/v7/widget/PinnedHeader/RecyclerPinnedHeaderDecoration;->mTempRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v1

    iget-object v1, p0, Lflyme/support/v7/widget/PinnedHeader/RecyclerPinnedHeaderDecoration;->mTempRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->left:I

    goto :goto_0
.end method


# virtual methods
.method public findHeaderPositionUnder(II)I
    .locals 6
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v4, -0x1

    .line 141
    const/4 v0, 0x0

    .line 142
    .local v0, "firstVisibleItemPosition":I
    iget-object v3, p0, Lflyme/support/v7/widget/PinnedHeader/RecyclerPinnedHeaderDecoration;->mRecyclerView:Lflyme/support/v7/widget/RecyclerView;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lflyme/support/v7/widget/PinnedHeader/RecyclerPinnedHeaderDecoration;->mRecyclerView:Lflyme/support/v7/widget/RecyclerView;

    invoke-virtual {v3}, Lflyme/support/v7/widget/RecyclerView;->getLayoutManager()Lflyme/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v3

    instance-of v3, v3, Lflyme/support/v7/widget/LinearLayoutManager;

    if-eqz v3, :cond_0

    .line 143
    iget-object v3, p0, Lflyme/support/v7/widget/PinnedHeader/RecyclerPinnedHeaderDecoration;->mRecyclerView:Lflyme/support/v7/widget/RecyclerView;

    invoke-virtual {v3}, Lflyme/support/v7/widget/RecyclerView;->getLayoutManager()Lflyme/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v3

    check-cast v3, Lflyme/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v3}, Lflyme/support/v7/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v0

    .line 144
    if-gez v0, :cond_0

    move v3, v4

    .line 154
    :goto_0
    return v3

    .line 148
    :cond_0
    move v1, v0

    .local v1, "i":I
    :goto_1
    iget-object v3, p0, Lflyme/support/v7/widget/PinnedHeader/RecyclerPinnedHeaderDecoration;->mHeaderRects:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 149
    iget-object v3, p0, Lflyme/support/v7/widget/PinnedHeader/RecyclerPinnedHeaderDecoration;->mHeaderRects:Landroid/util/SparseArray;

    iget-object v5, p0, Lflyme/support/v7/widget/PinnedHeader/RecyclerPinnedHeaderDecoration;->mHeaderRects:Landroid/util/SparseArray;

    invoke-virtual {v5, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    .line 150
    .local v2, "rect":Landroid/graphics/Rect;
    invoke-virtual {v2, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 151
    iget-object v3, p0, Lflyme/support/v7/widget/PinnedHeader/RecyclerPinnedHeaderDecoration;->mHeaderRects:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    goto :goto_0

    .line 148
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v2    # "rect":Landroid/graphics/Rect;
    :cond_2
    move v3, v4

    .line 154
    goto :goto_0
.end method

.method public getAdapter()Lflyme/support/v7/widget/PinnedHeader/RecyclerPinnedHeaderAdapter;
    .locals 3

    .prologue
    .line 179
    iget-object v1, p0, Lflyme/support/v7/widget/PinnedHeader/RecyclerPinnedHeaderDecoration;->mRecyclerView:Lflyme/support/v7/widget/RecyclerView;

    invoke-virtual {v1}, Lflyme/support/v7/widget/RecyclerView;->getAdapter()Lflyme/support/v7/widget/RecyclerView$Adapter;

    move-result-object v1

    instance-of v1, v1, Lflyme/support/v7/widget/PinnedHeader/RecyclerPinnedHeaderAdapter;

    if-eqz v1, :cond_0

    .line 180
    iget-object v1, p0, Lflyme/support/v7/widget/PinnedHeader/RecyclerPinnedHeaderDecoration;->mRecyclerView:Lflyme/support/v7/widget/RecyclerView;

    invoke-virtual {v1}, Lflyme/support/v7/widget/RecyclerView;->getAdapter()Lflyme/support/v7/widget/RecyclerView$Adapter;

    move-result-object v1

    check-cast v1, Lflyme/support/v7/widget/PinnedHeader/RecyclerPinnedHeaderAdapter;

    return-object v1

    .line 182
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MzRecyclerView with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v2, Lflyme/support/v7/widget/PinnedHeader/RecyclerPinnedHeaderDecoration;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " requires a "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v2, Lflyme/support/v7/widget/PinnedHeader/RecyclerPinnedHeaderAdapter;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 185
    .local v0, "ex":Ljava/lang/String;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getHeaderView(Lflyme/support/v7/widget/MzRecyclerView;I)Landroid/view/View;
    .locals 1
    .param p1, "parent"    # Lflyme/support/v7/widget/MzRecyclerView;
    .param p2, "position"    # I

    .prologue
    .line 167
    iget-object v0, p0, Lflyme/support/v7/widget/PinnedHeader/RecyclerPinnedHeaderDecoration;->mHeaderProvider:Lflyme/support/v7/widget/PinnedHeader/helper/PinnedHeaderProvider;

    invoke-interface {v0, p1, p2}, Lflyme/support/v7/widget/PinnedHeader/helper/PinnedHeaderProvider;->getHeader(Lflyme/support/v7/widget/MzRecyclerView;I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Lflyme/support/v7/widget/RecyclerView;Lflyme/support/v7/widget/RecyclerView$State;)V
    .locals 5
    .param p1, "outRect"    # Landroid/graphics/Rect;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "recyclerView"    # Lflyme/support/v7/widget/RecyclerView;
    .param p4, "state"    # Lflyme/support/v7/widget/RecyclerView$State;

    .prologue
    .line 71
    invoke-super {p0, p1, p2, p3, p4}, Lflyme/support/v7/widget/RecyclerView$ItemDecoration;->getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Lflyme/support/v7/widget/RecyclerView;Lflyme/support/v7/widget/RecyclerView$State;)V

    .line 73
    invoke-direct {p0, p3}, Lflyme/support/v7/widget/PinnedHeader/RecyclerPinnedHeaderDecoration;->checkIfMzRecyclerView(Lflyme/support/v7/widget/RecyclerView;)V

    move-object v2, p3

    .line 74
    check-cast v2, Lflyme/support/v7/widget/MzRecyclerView;

    .line 76
    .local v2, "parent":Lflyme/support/v7/widget/MzRecyclerView;
    invoke-virtual {v2, p2}, Lflyme/support/v7/widget/MzRecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v1

    .line 77
    .local v1, "itemPosition":I
    const/4 v3, -0x1

    if-ne v1, v3, :cond_1

    .line 84
    :cond_0
    :goto_0
    return-void

    .line 80
    :cond_1
    iget-object v3, p0, Lflyme/support/v7/widget/PinnedHeader/RecyclerPinnedHeaderDecoration;->mHeaderPositionCalculator:Lflyme/support/v7/widget/PinnedHeader/PinnedHeaderPositionCalculator;

    iget-object v4, p0, Lflyme/support/v7/widget/PinnedHeader/RecyclerPinnedHeaderDecoration;->mOrientationProvider:Lflyme/support/v7/widget/PinnedHeader/helper/OrientationProvider;

    invoke-interface {v4, v2}, Lflyme/support/v7/widget/PinnedHeader/helper/OrientationProvider;->isReverseLayout(Lflyme/support/v7/widget/MzRecyclerView;)Z

    move-result v4

    invoke-virtual {v3, v1, v4}, Lflyme/support/v7/widget/PinnedHeader/PinnedHeaderPositionCalculator;->hasNewHeader(IZ)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 81
    invoke-virtual {p0, v2, v1}, Lflyme/support/v7/widget/PinnedHeader/RecyclerPinnedHeaderDecoration;->getHeaderView(Lflyme/support/v7/widget/MzRecyclerView;I)Landroid/view/View;

    move-result-object v0

    .line 82
    .local v0, "header":Landroid/view/View;
    iget-object v3, p0, Lflyme/support/v7/widget/PinnedHeader/RecyclerPinnedHeaderDecoration;->mOrientationProvider:Lflyme/support/v7/widget/PinnedHeader/helper/OrientationProvider;

    invoke-interface {v3, v2}, Lflyme/support/v7/widget/PinnedHeader/helper/OrientationProvider;->getOrientation(Lflyme/support/v7/widget/MzRecyclerView;)I

    move-result v3

    invoke-direct {p0, p1, v0, v3}, Lflyme/support/v7/widget/PinnedHeader/RecyclerPinnedHeaderDecoration;->setItemOffsetsForHeader(Landroid/graphics/Rect;Landroid/view/View;I)V

    goto :goto_0
.end method

.method public getLinearLayoutManager()Lflyme/support/v7/widget/LinearLayoutManager;
    .locals 3

    .prologue
    .line 194
    iget-object v1, p0, Lflyme/support/v7/widget/PinnedHeader/RecyclerPinnedHeaderDecoration;->mRecyclerView:Lflyme/support/v7/widget/RecyclerView;

    invoke-virtual {v1}, Lflyme/support/v7/widget/RecyclerView;->getLayoutManager()Lflyme/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v1

    instance-of v1, v1, Lflyme/support/v7/widget/LinearLayoutManager;

    if-eqz v1, :cond_0

    .line 195
    iget-object v1, p0, Lflyme/support/v7/widget/PinnedHeader/RecyclerPinnedHeaderDecoration;->mRecyclerView:Lflyme/support/v7/widget/RecyclerView;

    invoke-virtual {v1}, Lflyme/support/v7/widget/RecyclerView;->getLayoutManager()Lflyme/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v1

    check-cast v1, Lflyme/support/v7/widget/LinearLayoutManager;

    return-object v1

    .line 197
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MzRecyclerView with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v2, Lflyme/support/v7/widget/PinnedHeader/RecyclerPinnedHeaderDecoration;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " requires a "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v2, Lflyme/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 200
    .local v0, "ex":Ljava/lang/String;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public onDrawOver(Landroid/graphics/Canvas;Lflyme/support/v7/widget/RecyclerView;Lflyme/support/v7/widget/RecyclerView$State;)V
    .locals 17
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "recyclerView"    # Lflyme/support/v7/widget/RecyclerView;
    .param p3, "state"    # Lflyme/support/v7/widget/RecyclerView$State;

    .prologue
    .line 97
    invoke-super/range {p0 .. p3}, Lflyme/support/v7/widget/RecyclerView$ItemDecoration;->onDrawOver(Landroid/graphics/Canvas;Lflyme/support/v7/widget/RecyclerView;Lflyme/support/v7/widget/RecyclerView$State;)V

    .line 98
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lflyme/support/v7/widget/PinnedHeader/RecyclerPinnedHeaderDecoration;->mRecyclerView:Lflyme/support/v7/widget/RecyclerView;

    .line 99
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lflyme/support/v7/widget/PinnedHeader/RecyclerPinnedHeaderDecoration;->checkIfMzRecyclerView(Lflyme/support/v7/widget/RecyclerView;)V

    move-object/from16 v3, p2

    .line 100
    check-cast v3, Lflyme/support/v7/widget/MzRecyclerView;

    .line 102
    .local v3, "parent":Lflyme/support/v7/widget/MzRecyclerView;
    invoke-virtual {v3}, Lflyme/support/v7/widget/MzRecyclerView;->getChildCount()I

    move-result v12

    .line 103
    .local v12, "childCount":I
    if-lez v12, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lflyme/support/v7/widget/PinnedHeader/RecyclerPinnedHeaderDecoration;->mHeaderAdapter:Lflyme/support/v7/widget/PinnedHeader/RecyclerPinnedHeaderAdapter;

    invoke-interface {v2}, Lflyme/support/v7/widget/PinnedHeader/RecyclerPinnedHeaderAdapter;->getItemCount()I

    move-result v2

    if-gtz v2, :cond_1

    .line 138
    :cond_0
    return-void

    .line 107
    :cond_1
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_0
    if-ge v14, v12, :cond_0

    .line 108
    invoke-virtual {v3, v14}, Lflyme/support/v7/widget/MzRecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v15

    .line 109
    .local v15, "itemView":Landroid/view/View;
    invoke-virtual {v3, v15}, Lflyme/support/v7/widget/MzRecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v16

    .line 110
    .local v16, "position":I
    const/4 v2, -0x1

    move/from16 v0, v16

    if-ne v0, v2, :cond_3

    .line 107
    :cond_2
    :goto_1
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .line 114
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lflyme/support/v7/widget/PinnedHeader/RecyclerPinnedHeaderDecoration;->mHeaderPositionCalculator:Lflyme/support/v7/widget/PinnedHeader/PinnedHeaderPositionCalculator;

    move-object/from16 v0, p0

    iget-object v5, v0, Lflyme/support/v7/widget/PinnedHeader/RecyclerPinnedHeaderDecoration;->mOrientationProvider:Lflyme/support/v7/widget/PinnedHeader/helper/OrientationProvider;

    invoke-interface {v5, v3}, Lflyme/support/v7/widget/PinnedHeader/helper/OrientationProvider;->getOrientation(Lflyme/support/v7/widget/MzRecyclerView;)I

    move-result v5

    move/from16 v0, v16

    invoke-virtual {v2, v15, v5, v0}, Lflyme/support/v7/widget/PinnedHeader/PinnedHeaderPositionCalculator;->hasPinnedHeader(Landroid/view/View;II)Z

    move-result v13

    .line 115
    .local v13, "hasPinnedHeader":Z
    if-nez v13, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lflyme/support/v7/widget/PinnedHeader/RecyclerPinnedHeaderDecoration;->mHeaderPositionCalculator:Lflyme/support/v7/widget/PinnedHeader/PinnedHeaderPositionCalculator;

    move-object/from16 v0, p0

    iget-object v5, v0, Lflyme/support/v7/widget/PinnedHeader/RecyclerPinnedHeaderDecoration;->mOrientationProvider:Lflyme/support/v7/widget/PinnedHeader/helper/OrientationProvider;

    invoke-interface {v5, v3}, Lflyme/support/v7/widget/PinnedHeader/helper/OrientationProvider;->isReverseLayout(Lflyme/support/v7/widget/MzRecyclerView;)Z

    move-result v5

    move/from16 v0, v16

    invoke-virtual {v2, v0, v5}, Lflyme/support/v7/widget/PinnedHeader/PinnedHeaderPositionCalculator;->hasNewHeader(IZ)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 116
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lflyme/support/v7/widget/PinnedHeader/RecyclerPinnedHeaderDecoration;->mHeaderProvider:Lflyme/support/v7/widget/PinnedHeader/helper/PinnedHeaderProvider;

    move/from16 v0, v16

    invoke-interface {v2, v3, v0}, Lflyme/support/v7/widget/PinnedHeader/helper/PinnedHeaderProvider;->getHeader(Lflyme/support/v7/widget/MzRecyclerView;I)Landroid/view/View;

    move-result-object v4

    .line 117
    .local v4, "header":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v2, v0, Lflyme/support/v7/widget/PinnedHeader/RecyclerPinnedHeaderDecoration;->mOnPinnedHeaderChangeListener:Lflyme/support/v7/widget/PinnedHeader/RecyclerPinnedHeaderDecoration$OnPinnedHeaderChangeListener;

    if-eqz v2, :cond_5

    .line 118
    invoke-virtual/range {p0 .. p0}, Lflyme/support/v7/widget/PinnedHeader/RecyclerPinnedHeaderDecoration;->getLinearLayoutManager()Lflyme/support/v7/widget/LinearLayoutManager;

    move-result-object v2

    invoke-virtual {v2}, Lflyme/support/v7/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lflyme/support/v7/widget/PinnedHeader/RecyclerPinnedHeaderDecoration;->mCurrentPosition:I

    .line 119
    invoke-virtual/range {p0 .. p0}, Lflyme/support/v7/widget/PinnedHeader/RecyclerPinnedHeaderDecoration;->getAdapter()Lflyme/support/v7/widget/PinnedHeader/RecyclerPinnedHeaderAdapter;

    move-result-object v2

    move-object/from16 v0, p0

    iget v5, v0, Lflyme/support/v7/widget/PinnedHeader/RecyclerPinnedHeaderDecoration;->mCurrentPosition:I

    invoke-interface {v2, v5}, Lflyme/support/v7/widget/PinnedHeader/RecyclerPinnedHeaderAdapter;->getHeaderId(I)J

    move-result-wide v8

    move-object/from16 v0, p0

    iput-wide v8, v0, Lflyme/support/v7/widget/PinnedHeader/RecyclerPinnedHeaderDecoration;->mCurrentHeaderId:J

    .line 120
    invoke-virtual/range {p0 .. p0}, Lflyme/support/v7/widget/PinnedHeader/RecyclerPinnedHeaderDecoration;->getAdapter()Lflyme/support/v7/widget/PinnedHeader/RecyclerPinnedHeaderAdapter;

    move-result-object v2

    move-object/from16 v0, p0

    iget v5, v0, Lflyme/support/v7/widget/PinnedHeader/RecyclerPinnedHeaderDecoration;->mLastPosition:I

    invoke-interface {v2, v5}, Lflyme/support/v7/widget/PinnedHeader/RecyclerPinnedHeaderAdapter;->getHeaderId(I)J

    move-result-wide v8

    move-object/from16 v0, p0

    iput-wide v8, v0, Lflyme/support/v7/widget/PinnedHeader/RecyclerPinnedHeaderDecoration;->mLastHeaderId:J

    .line 121
    move-object/from16 v0, p0

    iget-object v2, v0, Lflyme/support/v7/widget/PinnedHeader/RecyclerPinnedHeaderDecoration;->mHeaderProvider:Lflyme/support/v7/widget/PinnedHeader/helper/PinnedHeaderProvider;

    move-object/from16 v0, p0

    iget v5, v0, Lflyme/support/v7/widget/PinnedHeader/RecyclerPinnedHeaderDecoration;->mLastPosition:I

    invoke-interface {v2, v3, v5}, Lflyme/support/v7/widget/PinnedHeader/helper/PinnedHeaderProvider;->getHeader(Lflyme/support/v7/widget/MzRecyclerView;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lflyme/support/v7/widget/PinnedHeader/RecyclerPinnedHeaderDecoration;->mLastHeader:Landroid/view/View;

    .line 122
    move-object/from16 v0, p0

    iget-wide v8, v0, Lflyme/support/v7/widget/PinnedHeader/RecyclerPinnedHeaderDecoration;->mCurrentHeaderId:J

    move-object/from16 v0, p0

    iget-wide v10, v0, Lflyme/support/v7/widget/PinnedHeader/RecyclerPinnedHeaderDecoration;->mLastHeaderId:J

    cmp-long v2, v8, v10

    if-eqz v2, :cond_5

    .line 123
    move-object/from16 v0, p0

    iget-object v2, v0, Lflyme/support/v7/widget/PinnedHeader/RecyclerPinnedHeaderDecoration;->mOnPinnedHeaderChangeListener:Lflyme/support/v7/widget/PinnedHeader/RecyclerPinnedHeaderDecoration$OnPinnedHeaderChangeListener;

    move-object/from16 v0, p0

    iget v5, v0, Lflyme/support/v7/widget/PinnedHeader/RecyclerPinnedHeaderDecoration;->mCurrentPosition:I

    move-object/from16 v0, p0

    iget-wide v6, v0, Lflyme/support/v7/widget/PinnedHeader/RecyclerPinnedHeaderDecoration;->mCurrentHeaderId:J

    move-object/from16 v0, p0

    iget-object v8, v0, Lflyme/support/v7/widget/PinnedHeader/RecyclerPinnedHeaderDecoration;->mLastHeader:Landroid/view/View;

    move-object/from16 v0, p0

    iget v9, v0, Lflyme/support/v7/widget/PinnedHeader/RecyclerPinnedHeaderDecoration;->mLastPosition:I

    move-object/from16 v0, p0

    iget-wide v10, v0, Lflyme/support/v7/widget/PinnedHeader/RecyclerPinnedHeaderDecoration;->mLastHeaderId:J

    invoke-interface/range {v2 .. v11}, Lflyme/support/v7/widget/PinnedHeader/RecyclerPinnedHeaderDecoration$OnPinnedHeaderChangeListener;->OnPinnedHeaderChange(Lflyme/support/v7/widget/RecyclerView;Landroid/view/View;IJLandroid/view/View;IJ)V

    .line 124
    move-object/from16 v0, p0

    iget-wide v8, v0, Lflyme/support/v7/widget/PinnedHeader/RecyclerPinnedHeaderDecoration;->mCurrentHeaderId:J

    move-object/from16 v0, p0

    iput-wide v8, v0, Lflyme/support/v7/widget/PinnedHeader/RecyclerPinnedHeaderDecoration;->mLastHeaderId:J

    .line 125
    move-object/from16 v0, p0

    iget v2, v0, Lflyme/support/v7/widget/PinnedHeader/RecyclerPinnedHeaderDecoration;->mCurrentPosition:I

    move-object/from16 v0, p0

    iput v2, v0, Lflyme/support/v7/widget/PinnedHeader/RecyclerPinnedHeaderDecoration;->mLastPosition:I

    .line 129
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lflyme/support/v7/widget/PinnedHeader/RecyclerPinnedHeaderDecoration;->mHeaderRects:Landroid/util/SparseArray;

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/Rect;

    .line 130
    .local v6, "headerOffset":Landroid/graphics/Rect;
    if-nez v6, :cond_6

    .line 131
    new-instance v6, Landroid/graphics/Rect;

    .end local v6    # "headerOffset":Landroid/graphics/Rect;
    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    .line 132
    .restart local v6    # "headerOffset":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v2, v0, Lflyme/support/v7/widget/PinnedHeader/RecyclerPinnedHeaderDecoration;->mHeaderRects:Landroid/util/SparseArray;

    move/from16 v0, v16

    invoke-virtual {v2, v0, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 134
    :cond_6
    move-object/from16 v0, p0

    iget-object v5, v0, Lflyme/support/v7/widget/PinnedHeader/RecyclerPinnedHeaderDecoration;->mHeaderPositionCalculator:Lflyme/support/v7/widget/PinnedHeader/PinnedHeaderPositionCalculator;

    move-object v7, v3

    move-object v8, v4

    move-object v9, v15

    move v10, v13

    invoke-virtual/range {v5 .. v10}, Lflyme/support/v7/widget/PinnedHeader/PinnedHeaderPositionCalculator;->initHeaderBounds(Landroid/graphics/Rect;Lflyme/support/v7/widget/MzRecyclerView;Landroid/view/View;Landroid/view/View;Z)V

    .line 135
    move-object/from16 v0, p0

    iget-object v2, v0, Lflyme/support/v7/widget/PinnedHeader/RecyclerPinnedHeaderDecoration;->mRenderer:Lflyme/support/v7/widget/PinnedHeader/helper/PinnedHeaderRenderer;

    move-object/from16 v0, p1

    invoke-virtual {v2, v3, v0, v4, v6}, Lflyme/support/v7/widget/PinnedHeader/helper/PinnedHeaderRenderer;->drawHeader(Lflyme/support/v7/widget/MzRecyclerView;Landroid/graphics/Canvas;Landroid/view/View;Landroid/graphics/Rect;)V

    goto/16 :goto_1
.end method
