.class public Lflyme/support/v7/widget/PinnedHeader/PinnedHeaderPositionCalculator;
.super Ljava/lang/Object;
.source "PinnedHeaderPositionCalculator.java"


# instance fields
.field private final mDimensionCalculator:Lflyme/support/v7/widget/PinnedHeader/helper/DimensionCalculator;

.field private final mHeaderAdapter:Lflyme/support/v7/widget/PinnedHeader/RecyclerPinnedHeaderAdapter;

.field private final mHeaderProvider:Lflyme/support/v7/widget/PinnedHeader/helper/PinnedHeaderProvider;

.field private final mOrientationProvider:Lflyme/support/v7/widget/PinnedHeader/helper/OrientationProvider;

.field private final mTempRect1:Landroid/graphics/Rect;

.field private final mTempRect2:Landroid/graphics/Rect;


# direct methods
.method private getFirstViewUnobscuredByHeader(Lflyme/support/v7/widget/MzRecyclerView;Landroid/view/View;)Landroid/view/View;
    .locals 6
    .param p1, "parent"    # Lflyme/support/v7/widget/MzRecyclerView;
    .param p2, "firstHeader"    # Landroid/view/View;

    .prologue
    .line 170
    iget-object v5, p0, Lflyme/support/v7/widget/PinnedHeader/PinnedHeaderPositionCalculator;->mOrientationProvider:Lflyme/support/v7/widget/PinnedHeader/helper/OrientationProvider;

    invoke-interface {v5, p1}, Lflyme/support/v7/widget/PinnedHeader/helper/OrientationProvider;->isReverseLayout(Lflyme/support/v7/widget/MzRecyclerView;)Z

    move-result v3

    .line 171
    .local v3, "isReverseLayout":Z
    if-eqz v3, :cond_0

    const/4 v4, -0x1

    .line 172
    .local v4, "step":I
    :goto_0
    if-eqz v3, :cond_1

    invoke-virtual {p1}, Lflyme/support/v7/widget/MzRecyclerView;->getChildCount()I

    move-result v5

    add-int/lit8 v1, v5, -0x1

    .line 173
    .local v1, "from":I
    :goto_1
    move v2, v1

    .local v2, "i":I
    :goto_2
    if-ltz v2, :cond_3

    invoke-virtual {p1}, Lflyme/support/v7/widget/MzRecyclerView;->getChildCount()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-gt v2, v5, :cond_3

    .line 174
    invoke-virtual {p1, v2}, Lflyme/support/v7/widget/MzRecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 175
    .local v0, "child":Landroid/view/View;
    iget-object v5, p0, Lflyme/support/v7/widget/PinnedHeader/PinnedHeaderPositionCalculator;->mOrientationProvider:Lflyme/support/v7/widget/PinnedHeader/helper/OrientationProvider;

    invoke-interface {v5, p1}, Lflyme/support/v7/widget/PinnedHeader/helper/OrientationProvider;->getOrientation(Lflyme/support/v7/widget/MzRecyclerView;)I

    move-result v5

    invoke-direct {p0, p1, v0, p2, v5}, Lflyme/support/v7/widget/PinnedHeader/PinnedHeaderPositionCalculator;->itemIsObscuredByHeader(Lflyme/support/v7/widget/MzRecyclerView;Landroid/view/View;Landroid/view/View;I)Z

    move-result v5

    if-nez v5, :cond_2

    .line 179
    .end local v0    # "child":Landroid/view/View;
    :goto_3
    return-object v0

    .line 171
    .end local v1    # "from":I
    .end local v2    # "i":I
    .end local v4    # "step":I
    :cond_0
    const/4 v4, 0x1

    goto :goto_0

    .line 172
    .restart local v4    # "step":I
    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    .line 173
    .restart local v0    # "child":Landroid/view/View;
    .restart local v1    # "from":I
    .restart local v2    # "i":I
    :cond_2
    add-int/2addr v2, v4

    goto :goto_2

    .line 179
    .end local v0    # "child":Landroid/view/View;
    :cond_3
    const/4 v0, 0x0

    goto :goto_3
.end method

.method private getListLeft(Lflyme/support/v7/widget/RecyclerView;)I
    .locals 1
    .param p1, "view"    # Lflyme/support/v7/widget/RecyclerView;

    .prologue
    .line 217
    invoke-virtual {p1}, Lflyme/support/v7/widget/RecyclerView;->getLayoutManager()Lflyme/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v0

    invoke-virtual {v0}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->getClipToPadding()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 218
    invoke-virtual {p1}, Lflyme/support/v7/widget/RecyclerView;->getPaddingLeft()I

    move-result v0

    .line 220
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getListTop(Lflyme/support/v7/widget/RecyclerView;)I
    .locals 1
    .param p1, "view"    # Lflyme/support/v7/widget/RecyclerView;

    .prologue
    .line 209
    invoke-virtual {p1}, Lflyme/support/v7/widget/RecyclerView;->getLayoutManager()Lflyme/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v0

    invoke-virtual {v0}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->getClipToPadding()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 210
    invoke-virtual {p1}, Lflyme/support/v7/widget/RecyclerView;->getPaddingTop()I

    move-result v0

    .line 212
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private indexOutOfBounds(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 72
    if-ltz p1, :cond_0

    iget-object v0, p0, Lflyme/support/v7/widget/PinnedHeader/PinnedHeaderPositionCalculator;->mHeaderAdapter:Lflyme/support/v7/widget/PinnedHeader/RecyclerPinnedHeaderAdapter;

    invoke-interface {v0}, Lflyme/support/v7/widget/PinnedHeader/RecyclerPinnedHeaderAdapter;->getItemCount()I

    move-result v0

    if-lt p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private initDefaultHeaderOffset(Landroid/graphics/Rect;Lflyme/support/v7/widget/RecyclerView;Landroid/view/View;Landroid/view/View;I)V
    .locals 9
    .param p1, "headerMargins"    # Landroid/graphics/Rect;
    .param p2, "recyclerView"    # Lflyme/support/v7/widget/RecyclerView;
    .param p3, "header"    # Landroid/view/View;
    .param p4, "firstView"    # Landroid/view/View;
    .param p5, "orientation"    # I

    .prologue
    .line 90
    iget-object v6, p0, Lflyme/support/v7/widget/PinnedHeader/PinnedHeaderPositionCalculator;->mDimensionCalculator:Lflyme/support/v7/widget/PinnedHeader/helper/DimensionCalculator;

    iget-object v7, p0, Lflyme/support/v7/widget/PinnedHeader/PinnedHeaderPositionCalculator;->mTempRect1:Landroid/graphics/Rect;

    invoke-virtual {v6, v7, p3}, Lflyme/support/v7/widget/PinnedHeader/helper/DimensionCalculator;->initMargins(Landroid/graphics/Rect;Landroid/view/View;)V

    .line 92
    invoke-virtual {p4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 93
    .local v0, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    const/4 v1, 0x0

    .line 94
    .local v1, "leftMargin":I
    const/4 v3, 0x0

    .line 95
    .local v3, "topMargin":I
    instance-of v6, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v6, :cond_0

    move-object v2, v0

    .line 96
    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 97
    .local v2, "marginLayoutParams":Landroid/view/ViewGroup$MarginLayoutParams;
    iget v1, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 98
    iget v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 101
    .end local v2    # "marginLayoutParams":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_0
    const/4 v6, 0x1

    if-ne p5, v6, :cond_1

    .line 102
    invoke-virtual {p4}, Landroid/view/View;->getLeft()I

    move-result v6

    sub-int/2addr v6, v1

    iget-object v7, p0, Lflyme/support/v7/widget/PinnedHeader/PinnedHeaderPositionCalculator;->mTempRect1:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    add-int v4, v6, v7

    .line 103
    .local v4, "translationX":I
    invoke-virtual {p4}, Landroid/view/View;->getTop()I

    move-result v6

    sub-int/2addr v6, v3

    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    move-result v7

    sub-int/2addr v6, v7

    iget-object v7, p0, Lflyme/support/v7/widget/PinnedHeader/PinnedHeaderPositionCalculator;->mTempRect1:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v6, v7

    invoke-direct {p0, p2}, Lflyme/support/v7/widget/PinnedHeader/PinnedHeaderPositionCalculator;->getListTop(Lflyme/support/v7/widget/RecyclerView;)I

    move-result v7

    iget-object v8, p0, Lflyme/support/v7/widget/PinnedHeader/PinnedHeaderPositionCalculator;->mTempRect1:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    add-int/2addr v7, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 113
    .local v5, "translationY":I
    :goto_0
    invoke-virtual {p3}, Landroid/view/View;->getWidth()I

    move-result v6

    add-int/2addr v6, v4

    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    move-result v7

    add-int/2addr v7, v5

    invoke-virtual {p1, v4, v5, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 115
    return-void

    .line 107
    .end local v4    # "translationX":I
    .end local v5    # "translationY":I
    :cond_1
    invoke-virtual {p4}, Landroid/view/View;->getTop()I

    move-result v6

    sub-int/2addr v6, v3

    iget-object v7, p0, Lflyme/support/v7/widget/PinnedHeader/PinnedHeaderPositionCalculator;->mTempRect1:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    add-int v5, v6, v7

    .line 108
    .restart local v5    # "translationY":I
    invoke-virtual {p4}, Landroid/view/View;->getLeft()I

    move-result v6

    sub-int/2addr v6, v1

    invoke-virtual {p3}, Landroid/view/View;->getWidth()I

    move-result v7

    sub-int/2addr v6, v7

    iget-object v7, p0, Lflyme/support/v7/widget/PinnedHeader/PinnedHeaderPositionCalculator;->mTempRect1:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->right:I

    sub-int/2addr v6, v7

    invoke-direct {p0, p2}, Lflyme/support/v7/widget/PinnedHeader/PinnedHeaderPositionCalculator;->getListLeft(Lflyme/support/v7/widget/RecyclerView;)I

    move-result v7

    iget-object v8, p0, Lflyme/support/v7/widget/PinnedHeader/PinnedHeaderPositionCalculator;->mTempRect1:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->left:I

    add-int/2addr v7, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v4

    .restart local v4    # "translationX":I
    goto :goto_0
.end method

.method private isStickyHeaderBeingPushedOffscreen(Lflyme/support/v7/widget/MzRecyclerView;Landroid/view/View;)Z
    .locals 12
    .param p1, "recyclerView"    # Lflyme/support/v7/widget/MzRecyclerView;
    .param p2, "pinnedHeader"    # Landroid/view/View;

    .prologue
    const/4 v8, 0x0

    const/4 v9, 0x1

    .line 118
    invoke-direct {p0, p1, p2}, Lflyme/support/v7/widget/PinnedHeader/PinnedHeaderPositionCalculator;->getFirstViewUnobscuredByHeader(Lflyme/support/v7/widget/MzRecyclerView;Landroid/view/View;)Landroid/view/View;

    move-result-object v7

    .line 119
    .local v7, "viewAfterHeader":Landroid/view/View;
    invoke-virtual {p1, v7}, Lflyme/support/v7/widget/MzRecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v1

    .line 120
    .local v1, "firstViewUnderHeaderPosition":I
    const/4 v10, -0x1

    if-ne v1, v10, :cond_1

    .line 145
    :cond_0
    :goto_0
    return v8

    .line 124
    :cond_1
    iget-object v10, p0, Lflyme/support/v7/widget/PinnedHeader/PinnedHeaderPositionCalculator;->mOrientationProvider:Lflyme/support/v7/widget/PinnedHeader/helper/OrientationProvider;

    invoke-interface {v10, p1}, Lflyme/support/v7/widget/PinnedHeader/helper/OrientationProvider;->isReverseLayout(Lflyme/support/v7/widget/MzRecyclerView;)Z

    move-result v2

    .line 125
    .local v2, "isReverseLayout":Z
    if-lez v1, :cond_0

    invoke-virtual {p0, v1, v2}, Lflyme/support/v7/widget/PinnedHeader/PinnedHeaderPositionCalculator;->hasNewHeader(IZ)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 126
    iget-object v10, p0, Lflyme/support/v7/widget/PinnedHeader/PinnedHeaderPositionCalculator;->mHeaderProvider:Lflyme/support/v7/widget/PinnedHeader/helper/PinnedHeaderProvider;

    invoke-interface {v10, p1, v1}, Lflyme/support/v7/widget/PinnedHeader/helper/PinnedHeaderProvider;->getHeader(Lflyme/support/v7/widget/MzRecyclerView;I)Landroid/view/View;

    move-result-object v4

    .line 127
    .local v4, "nextHeader":Landroid/view/View;
    iget-object v10, p0, Lflyme/support/v7/widget/PinnedHeader/PinnedHeaderPositionCalculator;->mDimensionCalculator:Lflyme/support/v7/widget/PinnedHeader/helper/DimensionCalculator;

    iget-object v11, p0, Lflyme/support/v7/widget/PinnedHeader/PinnedHeaderPositionCalculator;->mTempRect1:Landroid/graphics/Rect;

    invoke-virtual {v10, v11, v4}, Lflyme/support/v7/widget/PinnedHeader/helper/DimensionCalculator;->initMargins(Landroid/graphics/Rect;Landroid/view/View;)V

    .line 128
    iget-object v10, p0, Lflyme/support/v7/widget/PinnedHeader/PinnedHeaderPositionCalculator;->mDimensionCalculator:Lflyme/support/v7/widget/PinnedHeader/helper/DimensionCalculator;

    iget-object v11, p0, Lflyme/support/v7/widget/PinnedHeader/PinnedHeaderPositionCalculator;->mTempRect2:Landroid/graphics/Rect;

    invoke-virtual {v10, v11, p2}, Lflyme/support/v7/widget/PinnedHeader/helper/DimensionCalculator;->initMargins(Landroid/graphics/Rect;Landroid/view/View;)V

    .line 130
    iget-object v10, p0, Lflyme/support/v7/widget/PinnedHeader/PinnedHeaderPositionCalculator;->mOrientationProvider:Lflyme/support/v7/widget/PinnedHeader/helper/OrientationProvider;

    invoke-interface {v10, p1}, Lflyme/support/v7/widget/PinnedHeader/helper/OrientationProvider;->getOrientation(Lflyme/support/v7/widget/MzRecyclerView;)I

    move-result v10

    if-ne v10, v9, :cond_2

    .line 131
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v10

    iget-object v11, p0, Lflyme/support/v7/widget/PinnedHeader/PinnedHeaderPositionCalculator;->mTempRect1:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v10, v11

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v11

    sub-int/2addr v10, v11

    iget-object v11, p0, Lflyme/support/v7/widget/PinnedHeader/PinnedHeaderPositionCalculator;->mTempRect1:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->top:I

    sub-int v6, v10, v11

    .line 132
    .local v6, "topOfNextHeader":I
    invoke-virtual {p1}, Lflyme/support/v7/widget/MzRecyclerView;->getPaddingTop()I

    move-result v10

    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result v11

    add-int/2addr v10, v11

    iget-object v11, p0, Lflyme/support/v7/widget/PinnedHeader/PinnedHeaderPositionCalculator;->mTempRect2:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->top:I

    add-int/2addr v10, v11

    iget-object v11, p0, Lflyme/support/v7/widget/PinnedHeader/PinnedHeaderPositionCalculator;->mTempRect2:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->bottom:I

    add-int v0, v10, v11

    .line 133
    .local v0, "bottomOfThisHeader":I
    if-ge v6, v0, :cond_0

    move v8, v9

    .line 134
    goto :goto_0

    .line 137
    .end local v0    # "bottomOfThisHeader":I
    .end local v6    # "topOfNextHeader":I
    :cond_2
    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v10

    iget-object v11, p0, Lflyme/support/v7/widget/PinnedHeader/PinnedHeaderPositionCalculator;->mTempRect1:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->right:I

    sub-int/2addr v10, v11

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v11

    sub-int/2addr v10, v11

    iget-object v11, p0, Lflyme/support/v7/widget/PinnedHeader/PinnedHeaderPositionCalculator;->mTempRect1:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->left:I

    sub-int v3, v10, v11

    .line 138
    .local v3, "leftOfNextHeader":I
    invoke-virtual {p1}, Lflyme/support/v7/widget/MzRecyclerView;->getPaddingLeft()I

    move-result v10

    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result v11

    add-int/2addr v10, v11

    iget-object v11, p0, Lflyme/support/v7/widget/PinnedHeader/PinnedHeaderPositionCalculator;->mTempRect2:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->left:I

    add-int/2addr v10, v11

    iget-object v11, p0, Lflyme/support/v7/widget/PinnedHeader/PinnedHeaderPositionCalculator;->mTempRect2:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->right:I

    add-int v5, v10, v11

    .line 139
    .local v5, "rightOfThisHeader":I
    if-ge v3, v5, :cond_0

    move v8, v9

    .line 140
    goto/16 :goto_0
.end method

.method private itemIsObscuredByHeader(Lflyme/support/v7/widget/MzRecyclerView;Landroid/view/View;Landroid/view/View;I)Z
    .locals 10
    .param p1, "parent"    # Lflyme/support/v7/widget/MzRecyclerView;
    .param p2, "item"    # Landroid/view/View;
    .param p3, "header"    # Landroid/view/View;
    .param p4, "orientation"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 183
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Lflyme/support/v7/widget/RecyclerView$LayoutParams;

    .line 184
    .local v5, "layoutParams":Lflyme/support/v7/widget/RecyclerView$LayoutParams;
    iget-object v8, p0, Lflyme/support/v7/widget/PinnedHeader/PinnedHeaderPositionCalculator;->mDimensionCalculator:Lflyme/support/v7/widget/PinnedHeader/helper/DimensionCalculator;

    iget-object v9, p0, Lflyme/support/v7/widget/PinnedHeader/PinnedHeaderPositionCalculator;->mTempRect1:Landroid/graphics/Rect;

    invoke-virtual {v8, v9, p3}, Lflyme/support/v7/widget/PinnedHeader/helper/DimensionCalculator;->initMargins(Landroid/graphics/Rect;Landroid/view/View;)V

    .line 186
    invoke-virtual {p1, p2}, Lflyme/support/v7/widget/MzRecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v0

    .line 187
    .local v0, "adapterPosition":I
    const/4 v8, -0x1

    if-eq v0, v8, :cond_0

    iget-object v8, p0, Lflyme/support/v7/widget/PinnedHeader/PinnedHeaderPositionCalculator;->mHeaderProvider:Lflyme/support/v7/widget/PinnedHeader/helper/PinnedHeaderProvider;

    invoke-interface {v8, p1, v0}, Lflyme/support/v7/widget/PinnedHeader/helper/PinnedHeaderProvider;->getHeader(Lflyme/support/v7/widget/MzRecyclerView;I)Landroid/view/View;

    move-result-object v8

    if-eq v8, p3, :cond_1

    .line 205
    :cond_0
    :goto_0
    return v6

    .line 191
    :cond_1
    if-ne p4, v7, :cond_3

    .line 192
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v8

    iget v9, v5, Lflyme/support/v7/widget/RecyclerView$LayoutParams;->topMargin:I

    sub-int v4, v8, v9

    .line 193
    .local v4, "itemTop":I
    invoke-virtual {p3}, Landroid/view/View;->getBottom()I

    move-result v8

    iget-object v9, p0, Lflyme/support/v7/widget/PinnedHeader/PinnedHeaderPositionCalculator;->mTempRect1:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v8, v9

    iget-object v9, p0, Lflyme/support/v7/widget/PinnedHeader/PinnedHeaderPositionCalculator;->mTempRect1:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->top:I

    add-int v1, v8, v9

    .line 194
    .local v1, "headerBottom":I
    if-gt v4, v1, :cond_0

    .end local v1    # "headerBottom":I
    .end local v4    # "itemTop":I
    :cond_2
    move v6, v7

    .line 205
    goto :goto_0

    .line 198
    :cond_3
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v8

    iget v9, v5, Lflyme/support/v7/widget/RecyclerView$LayoutParams;->leftMargin:I

    sub-int v3, v8, v9

    .line 199
    .local v3, "itemLeft":I
    invoke-virtual {p3}, Landroid/view/View;->getRight()I

    move-result v8

    iget-object v9, p0, Lflyme/support/v7/widget/PinnedHeader/PinnedHeaderPositionCalculator;->mTempRect1:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->right:I

    add-int/2addr v8, v9

    iget-object v9, p0, Lflyme/support/v7/widget/PinnedHeader/PinnedHeaderPositionCalculator;->mTempRect1:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->left:I

    add-int v2, v8, v9

    .line 200
    .local v2, "headerRight":I
    if-le v3, v2, :cond_2

    goto :goto_0
.end method

.method private translateHeaderWithNextHeader(Lflyme/support/v7/widget/MzRecyclerView;ILandroid/graphics/Rect;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V
    .locals 5
    .param p1, "recyclerView"    # Lflyme/support/v7/widget/MzRecyclerView;
    .param p2, "orientation"    # I
    .param p3, "translation"    # Landroid/graphics/Rect;
    .param p4, "currentHeader"    # Landroid/view/View;
    .param p5, "viewAfterNextHeader"    # Landroid/view/View;
    .param p6, "nextHeader"    # Landroid/view/View;

    .prologue
    .line 150
    iget-object v3, p0, Lflyme/support/v7/widget/PinnedHeader/PinnedHeaderPositionCalculator;->mDimensionCalculator:Lflyme/support/v7/widget/PinnedHeader/helper/DimensionCalculator;

    iget-object v4, p0, Lflyme/support/v7/widget/PinnedHeader/PinnedHeaderPositionCalculator;->mTempRect1:Landroid/graphics/Rect;

    invoke-virtual {v3, v4, p6}, Lflyme/support/v7/widget/PinnedHeader/helper/DimensionCalculator;->initMargins(Landroid/graphics/Rect;Landroid/view/View;)V

    .line 151
    iget-object v3, p0, Lflyme/support/v7/widget/PinnedHeader/PinnedHeaderPositionCalculator;->mDimensionCalculator:Lflyme/support/v7/widget/PinnedHeader/helper/DimensionCalculator;

    iget-object v4, p0, Lflyme/support/v7/widget/PinnedHeader/PinnedHeaderPositionCalculator;->mTempRect2:Landroid/graphics/Rect;

    invoke-virtual {v3, v4, p4}, Lflyme/support/v7/widget/PinnedHeader/helper/DimensionCalculator;->initMargins(Landroid/graphics/Rect;Landroid/view/View;)V

    .line 152
    const/4 v3, 0x1

    if-ne p2, v3, :cond_1

    .line 153
    invoke-direct {p0, p1}, Lflyme/support/v7/widget/PinnedHeader/PinnedHeaderPositionCalculator;->getListTop(Lflyme/support/v7/widget/RecyclerView;)I

    move-result v3

    iget-object v4, p0, Lflyme/support/v7/widget/PinnedHeader/PinnedHeaderPositionCalculator;->mTempRect2:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v4

    iget-object v4, p0, Lflyme/support/v7/widget/PinnedHeader/PinnedHeaderPositionCalculator;->mTempRect2:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    add-int v2, v3, v4

    .line 154
    .local v2, "topOfStickyHeader":I
    invoke-virtual {p5}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-virtual {p6}, Landroid/view/View;->getHeight()I

    move-result v4

    sub-int/2addr v3, v4

    iget-object v4, p0, Lflyme/support/v7/widget/PinnedHeader/PinnedHeaderPositionCalculator;->mTempRect1:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v4

    iget-object v4, p0, Lflyme/support/v7/widget/PinnedHeader/PinnedHeaderPositionCalculator;->mTempRect1:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v4

    invoke-virtual {p4}, Landroid/view/View;->getHeight()I

    move-result v4

    sub-int/2addr v3, v4

    sub-int v1, v3, v2

    .line 155
    .local v1, "shiftFromNextHeader":I
    if-ge v1, v2, :cond_0

    .line 156
    iget v3, p3, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v1

    iput v3, p3, Landroid/graphics/Rect;->top:I

    .line 157
    iget v3, p3, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v3, v1

    iput v3, p3, Landroid/graphics/Rect;->bottom:I

    .line 167
    .end local v2    # "topOfStickyHeader":I
    :cond_0
    :goto_0
    return-void

    .line 160
    .end local v1    # "shiftFromNextHeader":I
    :cond_1
    invoke-direct {p0, p1}, Lflyme/support/v7/widget/PinnedHeader/PinnedHeaderPositionCalculator;->getListLeft(Lflyme/support/v7/widget/RecyclerView;)I

    move-result v3

    iget-object v4, p0, Lflyme/support/v7/widget/PinnedHeader/PinnedHeaderPositionCalculator;->mTempRect2:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v4

    iget-object v4, p0, Lflyme/support/v7/widget/PinnedHeader/PinnedHeaderPositionCalculator;->mTempRect2:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    add-int v0, v3, v4

    .line 161
    .local v0, "leftOfStickyHeader":I
    invoke-virtual {p5}, Landroid/view/View;->getLeft()I

    move-result v3

    invoke-virtual {p6}, Landroid/view/View;->getWidth()I

    move-result v4

    sub-int/2addr v3, v4

    iget-object v4, p0, Lflyme/support/v7/widget/PinnedHeader/PinnedHeaderPositionCalculator;->mTempRect1:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v4

    iget-object v4, p0, Lflyme/support/v7/widget/PinnedHeader/PinnedHeaderPositionCalculator;->mTempRect1:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v4

    invoke-virtual {p4}, Landroid/view/View;->getWidth()I

    move-result v4

    sub-int/2addr v3, v4

    sub-int v1, v3, v0

    .line 162
    .restart local v1    # "shiftFromNextHeader":I
    if-ge v1, v0, :cond_0

    .line 163
    iget v3, p3, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v1

    iput v3, p3, Landroid/graphics/Rect;->left:I

    .line 164
    iget v3, p3, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v1

    iput v3, p3, Landroid/graphics/Rect;->right:I

    goto :goto_0
.end method


# virtual methods
.method public hasNewHeader(IZ)Z
    .locals 12
    .param p1, "position"    # I
    .param p2, "isReverseLayout"    # Z

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 51
    invoke-direct {p0, p1}, Lflyme/support/v7/widget/PinnedHeader/PinnedHeaderPositionCalculator;->indexOutOfBounds(I)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 68
    :cond_0
    :goto_0
    return v8

    .line 55
    :cond_1
    iget-object v6, p0, Lflyme/support/v7/widget/PinnedHeader/PinnedHeaderPositionCalculator;->mHeaderAdapter:Lflyme/support/v7/widget/PinnedHeader/RecyclerPinnedHeaderAdapter;

    invoke-interface {v6, p1}, Lflyme/support/v7/widget/PinnedHeader/RecyclerPinnedHeaderAdapter;->getHeaderId(I)J

    move-result-wide v2

    .line 57
    .local v2, "headerId":J
    const-wide/16 v10, 0x0

    cmp-long v6, v2, v10

    if-ltz v6, :cond_0

    .line 61
    const-wide/16 v4, -0x1

    .line 62
    .local v4, "nextItemHeaderId":J
    if-eqz p2, :cond_4

    move v6, v7

    :goto_1
    add-int v1, p1, v6

    .line 63
    .local v1, "nextItemPosition":I
    invoke-direct {p0, v1}, Lflyme/support/v7/widget/PinnedHeader/PinnedHeaderPositionCalculator;->indexOutOfBounds(I)Z

    move-result v6

    if-nez v6, :cond_2

    .line 64
    iget-object v6, p0, Lflyme/support/v7/widget/PinnedHeader/PinnedHeaderPositionCalculator;->mHeaderAdapter:Lflyme/support/v7/widget/PinnedHeader/RecyclerPinnedHeaderAdapter;

    invoke-interface {v6, v1}, Lflyme/support/v7/widget/PinnedHeader/RecyclerPinnedHeaderAdapter;->getHeaderId(I)J

    move-result-wide v4

    .line 66
    :cond_2
    if-eqz p2, :cond_5

    iget-object v6, p0, Lflyme/support/v7/widget/PinnedHeader/PinnedHeaderPositionCalculator;->mHeaderAdapter:Lflyme/support/v7/widget/PinnedHeader/RecyclerPinnedHeaderAdapter;

    invoke-interface {v6}, Lflyme/support/v7/widget/PinnedHeader/RecyclerPinnedHeaderAdapter;->getItemCount()I

    move-result v6

    add-int/lit8 v0, v6, -0x1

    .line 68
    .local v0, "firstItemPosition":I
    :goto_2
    if-eq p1, v0, :cond_3

    cmp-long v6, v2, v4

    if-eqz v6, :cond_6

    :cond_3
    :goto_3
    move v8, v7

    goto :goto_0

    .line 62
    .end local v0    # "firstItemPosition":I
    .end local v1    # "nextItemPosition":I
    :cond_4
    const/4 v6, -0x1

    goto :goto_1

    .restart local v1    # "nextItemPosition":I
    :cond_5
    move v0, v8

    .line 66
    goto :goto_2

    .restart local v0    # "firstItemPosition":I
    :cond_6
    move v7, v8

    .line 68
    goto :goto_3
.end method

.method public hasPinnedHeader(Landroid/view/View;II)Z
    .locals 8
    .param p1, "itemView"    # Landroid/view/View;
    .param p2, "orientation"    # I
    .param p3, "position"    # I

    .prologue
    const/4 v2, 0x1

    .line 38
    iget-object v3, p0, Lflyme/support/v7/widget/PinnedHeader/PinnedHeaderPositionCalculator;->mDimensionCalculator:Lflyme/support/v7/widget/PinnedHeader/helper/DimensionCalculator;

    iget-object v4, p0, Lflyme/support/v7/widget/PinnedHeader/PinnedHeaderPositionCalculator;->mTempRect1:Landroid/graphics/Rect;

    invoke-virtual {v3, v4, p1}, Lflyme/support/v7/widget/PinnedHeader/helper/DimensionCalculator;->initMargins(Landroid/graphics/Rect;Landroid/view/View;)V

    .line 39
    if-ne p2, v2, :cond_0

    .line 40
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    .line 41
    .local v1, "offset":I
    iget-object v3, p0, Lflyme/support/v7/widget/PinnedHeader/PinnedHeaderPositionCalculator;->mTempRect1:Landroid/graphics/Rect;

    iget v0, v3, Landroid/graphics/Rect;->top:I

    .line 47
    .local v0, "margin":I
    :goto_0
    if-gt v1, v0, :cond_1

    iget-object v3, p0, Lflyme/support/v7/widget/PinnedHeader/PinnedHeaderPositionCalculator;->mHeaderAdapter:Lflyme/support/v7/widget/PinnedHeader/RecyclerPinnedHeaderAdapter;

    invoke-interface {v3, p3}, Lflyme/support/v7/widget/PinnedHeader/RecyclerPinnedHeaderAdapter;->getHeaderId(I)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-ltz v3, :cond_1

    :goto_1
    return v2

    .line 43
    .end local v0    # "margin":I
    .end local v1    # "offset":I
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    .line 44
    .restart local v1    # "offset":I
    iget-object v3, p0, Lflyme/support/v7/widget/PinnedHeader/PinnedHeaderPositionCalculator;->mTempRect1:Landroid/graphics/Rect;

    iget v0, v3, Landroid/graphics/Rect;->left:I

    .restart local v0    # "margin":I
    goto :goto_0

    .line 47
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public initHeaderBounds(Landroid/graphics/Rect;Lflyme/support/v7/widget/MzRecyclerView;Landroid/view/View;Landroid/view/View;Z)V
    .locals 17
    .param p1, "bounds"    # Landroid/graphics/Rect;
    .param p2, "recyclerView"    # Lflyme/support/v7/widget/MzRecyclerView;
    .param p3, "header"    # Landroid/view/View;
    .param p4, "firstView"    # Landroid/view/View;
    .param p5, "firstHeader"    # Z

    .prologue
    .line 76
    move-object/from16 v0, p0

    iget-object v3, v0, Lflyme/support/v7/widget/PinnedHeader/PinnedHeaderPositionCalculator;->mOrientationProvider:Lflyme/support/v7/widget/PinnedHeader/helper/OrientationProvider;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Lflyme/support/v7/widget/PinnedHeader/helper/OrientationProvider;->getOrientation(Lflyme/support/v7/widget/MzRecyclerView;)I

    move-result v8

    .local v8, "orientation":I
    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    .line 77
    invoke-direct/range {v3 .. v8}, Lflyme/support/v7/widget/PinnedHeader/PinnedHeaderPositionCalculator;->initDefaultHeaderOffset(Landroid/graphics/Rect;Lflyme/support/v7/widget/RecyclerView;Landroid/view/View;Landroid/view/View;I)V

    .line 79
    if-eqz p5, :cond_0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lflyme/support/v7/widget/PinnedHeader/PinnedHeaderPositionCalculator;->isStickyHeaderBeingPushedOffscreen(Lflyme/support/v7/widget/MzRecyclerView;Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 80
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lflyme/support/v7/widget/PinnedHeader/PinnedHeaderPositionCalculator;->getFirstViewUnobscuredByHeader(Lflyme/support/v7/widget/MzRecyclerView;Landroid/view/View;)Landroid/view/View;

    move-result-object v14

    .line 81
    .local v14, "viewAfterNextHeader":Landroid/view/View;
    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Lflyme/support/v7/widget/MzRecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v16

    .line 82
    .local v16, "firstViewUnderHeaderPosition":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lflyme/support/v7/widget/PinnedHeader/PinnedHeaderPositionCalculator;->mHeaderProvider:Lflyme/support/v7/widget/PinnedHeader/helper/PinnedHeaderProvider;

    move-object/from16 v0, p2

    move/from16 v1, v16

    invoke-interface {v3, v0, v1}, Lflyme/support/v7/widget/PinnedHeader/helper/PinnedHeaderProvider;->getHeader(Lflyme/support/v7/widget/MzRecyclerView;I)Landroid/view/View;

    move-result-object v15

    .line 83
    .local v15, "secondHeader":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v3, v0, Lflyme/support/v7/widget/PinnedHeader/PinnedHeaderPositionCalculator;->mOrientationProvider:Lflyme/support/v7/widget/PinnedHeader/helper/OrientationProvider;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Lflyme/support/v7/widget/PinnedHeader/helper/OrientationProvider;->getOrientation(Lflyme/support/v7/widget/MzRecyclerView;)I

    move-result v11

    move-object/from16 v9, p0

    move-object/from16 v10, p2

    move-object/from16 v12, p1

    move-object/from16 v13, p3

    invoke-direct/range {v9 .. v15}, Lflyme/support/v7/widget/PinnedHeader/PinnedHeaderPositionCalculator;->translateHeaderWithNextHeader(Lflyme/support/v7/widget/MzRecyclerView;ILandroid/graphics/Rect;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    .line 86
    .end local v14    # "viewAfterNextHeader":Landroid/view/View;
    .end local v15    # "secondHeader":Landroid/view/View;
    .end local v16    # "firstViewUnderHeaderPosition":I
    :cond_0
    return-void
.end method
