.class public Lflyme/support/v7/widget/LinearLayoutManager;
.super Lflyme/support/v7/widget/RecyclerView$LayoutManager;
.source "LinearLayoutManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lflyme/support/v7/widget/LinearLayoutManager$LayoutChunkResult;,
        Lflyme/support/v7/widget/LinearLayoutManager$AnchorInfo;,
        Lflyme/support/v7/widget/LinearLayoutManager$SavedState;,
        Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;
    }
.end annotation


# instance fields
.field final mAnchorInfo:Lflyme/support/v7/widget/LinearLayoutManager$AnchorInfo;

.field private mLastStackFromEnd:Z

.field private mLayoutState:Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;

.field mOrientation:I

.field mOrientationHelper:Lflyme/support/v7/widget/OrientationHelper;

.field mPendingSavedState:Lflyme/support/v7/widget/LinearLayoutManager$SavedState;

.field mPendingScrollPosition:I

.field mPendingScrollPositionOffset:I

.field private mRecycleChildrenOnDetach:Z

.field private mReverseLayout:Z

.field mShouldReverseLayout:Z

.field private mSmoothScrollbarEnabled:Z

.field private mStackFromEnd:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;IZ)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "orientation"    # I
    .param p3, "reverseLayout"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 155
    invoke-direct {p0}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;-><init>()V

    .line 96
    iput-boolean v0, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mReverseLayout:Z

    .line 103
    iput-boolean v0, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    .line 110
    iput-boolean v0, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mStackFromEnd:Z

    .line 116
    iput-boolean v1, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mSmoothScrollbarEnabled:Z

    .line 122
    const/4 v0, -0x1

    iput v0, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mPendingScrollPosition:I

    .line 128
    const/high16 v0, -0x80000000

    iput v0, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mPendingScrollPositionOffset:I

    .line 132
    const/4 v0, 0x0

    iput-object v0, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mPendingSavedState:Lflyme/support/v7/widget/LinearLayoutManager$SavedState;

    .line 138
    new-instance v0, Lflyme/support/v7/widget/LinearLayoutManager$AnchorInfo;

    invoke-direct {v0, p0}, Lflyme/support/v7/widget/LinearLayoutManager$AnchorInfo;-><init>(Lflyme/support/v7/widget/LinearLayoutManager;)V

    iput-object v0, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mAnchorInfo:Lflyme/support/v7/widget/LinearLayoutManager$AnchorInfo;

    .line 156
    invoke-virtual {p0, p2}, Lflyme/support/v7/widget/LinearLayoutManager;->setOrientation(I)V

    .line 157
    invoke-virtual {p0, p3}, Lflyme/support/v7/widget/LinearLayoutManager;->setReverseLayout(Z)V

    .line 158
    invoke-virtual {p0, v1}, Lflyme/support/v7/widget/LinearLayoutManager;->setAutoMeasureEnabled(Z)V

    .line 159
    return-void
.end method

.method private computeScrollExtent(Lflyme/support/v7/widget/RecyclerView$State;)I
    .locals 6
    .param p1, "state"    # Lflyme/support/v7/widget/RecyclerView$State;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1079
    invoke-virtual {p0}, Lflyme/support/v7/widget/LinearLayoutManager;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 1083
    :goto_0
    return v4

    .line 1082
    :cond_0
    invoke-virtual {p0}, Lflyme/support/v7/widget/LinearLayoutManager;->ensureLayoutState()V

    .line 1083
    iget-object v1, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Lflyme/support/v7/widget/OrientationHelper;

    iget-boolean v0, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mSmoothScrollbarEnabled:Z

    if-nez v0, :cond_2

    move v0, v3

    :goto_1
    invoke-direct {p0, v0, v3}, Lflyme/support/v7/widget/LinearLayoutManager;->findFirstVisibleChildClosestToStart(ZZ)Landroid/view/View;

    move-result-object v2

    iget-boolean v0, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mSmoothScrollbarEnabled:Z

    if-nez v0, :cond_1

    move v4, v3

    :cond_1
    invoke-direct {p0, v4, v3}, Lflyme/support/v7/widget/LinearLayoutManager;->findFirstVisibleChildClosestToEnd(ZZ)Landroid/view/View;

    move-result-object v3

    iget-boolean v5, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mSmoothScrollbarEnabled:Z

    move-object v0, p1

    move-object v4, p0

    invoke-static/range {v0 .. v5}, Lflyme/support/v7/widget/ScrollbarHelper;->computeScrollExtent(Lflyme/support/v7/widget/RecyclerView$State;Lflyme/support/v7/widget/OrientationHelper;Landroid/view/View;Landroid/view/View;Lflyme/support/v7/widget/RecyclerView$LayoutManager;Z)I

    move-result v4

    goto :goto_0

    :cond_2
    move v0, v4

    goto :goto_1
.end method

.method private computeScrollOffset(Lflyme/support/v7/widget/RecyclerView$State;)I
    .locals 7
    .param p1, "state"    # Lflyme/support/v7/widget/RecyclerView$State;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1068
    invoke-virtual {p0}, Lflyme/support/v7/widget/LinearLayoutManager;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 1072
    :goto_0
    return v4

    .line 1071
    :cond_0
    invoke-virtual {p0}, Lflyme/support/v7/widget/LinearLayoutManager;->ensureLayoutState()V

    .line 1072
    iget-object v1, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Lflyme/support/v7/widget/OrientationHelper;

    iget-boolean v0, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mSmoothScrollbarEnabled:Z

    if-nez v0, :cond_2

    move v0, v3

    :goto_1
    invoke-direct {p0, v0, v3}, Lflyme/support/v7/widget/LinearLayoutManager;->findFirstVisibleChildClosestToStart(ZZ)Landroid/view/View;

    move-result-object v2

    iget-boolean v0, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mSmoothScrollbarEnabled:Z

    if-nez v0, :cond_1

    move v4, v3

    :cond_1
    invoke-direct {p0, v4, v3}, Lflyme/support/v7/widget/LinearLayoutManager;->findFirstVisibleChildClosestToEnd(ZZ)Landroid/view/View;

    move-result-object v3

    iget-boolean v5, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mSmoothScrollbarEnabled:Z

    iget-boolean v6, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    move-object v0, p1

    move-object v4, p0

    invoke-static/range {v0 .. v6}, Lflyme/support/v7/widget/ScrollbarHelper;->computeScrollOffset(Lflyme/support/v7/widget/RecyclerView$State;Lflyme/support/v7/widget/OrientationHelper;Landroid/view/View;Landroid/view/View;Lflyme/support/v7/widget/RecyclerView$LayoutManager;ZZ)I

    move-result v4

    goto :goto_0

    :cond_2
    move v0, v4

    goto :goto_1
.end method

.method private computeScrollRange(Lflyme/support/v7/widget/RecyclerView$State;)I
    .locals 6
    .param p1, "state"    # Lflyme/support/v7/widget/RecyclerView$State;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1090
    invoke-virtual {p0}, Lflyme/support/v7/widget/LinearLayoutManager;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 1094
    :goto_0
    return v4

    .line 1093
    :cond_0
    invoke-virtual {p0}, Lflyme/support/v7/widget/LinearLayoutManager;->ensureLayoutState()V

    .line 1094
    iget-object v1, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Lflyme/support/v7/widget/OrientationHelper;

    iget-boolean v0, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mSmoothScrollbarEnabled:Z

    if-nez v0, :cond_2

    move v0, v3

    :goto_1
    invoke-direct {p0, v0, v3}, Lflyme/support/v7/widget/LinearLayoutManager;->findFirstVisibleChildClosestToStart(ZZ)Landroid/view/View;

    move-result-object v2

    iget-boolean v0, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mSmoothScrollbarEnabled:Z

    if-nez v0, :cond_1

    move v4, v3

    :cond_1
    invoke-direct {p0, v4, v3}, Lflyme/support/v7/widget/LinearLayoutManager;->findFirstVisibleChildClosestToEnd(ZZ)Landroid/view/View;

    move-result-object v3

    iget-boolean v5, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mSmoothScrollbarEnabled:Z

    move-object v0, p1

    move-object v4, p0

    invoke-static/range {v0 .. v5}, Lflyme/support/v7/widget/ScrollbarHelper;->computeScrollRange(Lflyme/support/v7/widget/RecyclerView$State;Lflyme/support/v7/widget/OrientationHelper;Landroid/view/View;Landroid/view/View;Lflyme/support/v7/widget/RecyclerView$LayoutManager;Z)I

    move-result v4

    goto :goto_0

    :cond_2
    move v0, v4

    goto :goto_1
.end method

.method private findFirstReferenceChild(Lflyme/support/v7/widget/RecyclerView$Recycler;Lflyme/support/v7/widget/RecyclerView$State;)Landroid/view/View;
    .locals 6
    .param p1, "recycler"    # Lflyme/support/v7/widget/RecyclerView$Recycler;
    .param p2, "state"    # Lflyme/support/v7/widget/RecyclerView$State;

    .prologue
    .line 1597
    const/4 v3, 0x0

    invoke-virtual {p0}, Lflyme/support/v7/widget/LinearLayoutManager;->getChildCount()I

    move-result v4

    invoke-virtual {p2}, Lflyme/support/v7/widget/RecyclerView$State;->getItemCount()I

    move-result v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lflyme/support/v7/widget/LinearLayoutManager;->findReferenceChild(Lflyme/support/v7/widget/RecyclerView$Recycler;Lflyme/support/v7/widget/RecyclerView$State;III)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private findFirstVisibleChildClosestToEnd(ZZ)Landroid/view/View;
    .locals 2
    .param p1, "completelyVisible"    # Z
    .param p2, "acceptPartiallyVisible"    # Z

    .prologue
    .line 1553
    iget-boolean v0, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v0, :cond_0

    .line 1554
    const/4 v0, 0x0

    invoke-virtual {p0}, Lflyme/support/v7/widget/LinearLayoutManager;->getChildCount()I

    move-result v1

    invoke-virtual {p0, v0, v1, p1, p2}, Lflyme/support/v7/widget/LinearLayoutManager;->findOneVisibleChild(IIZZ)Landroid/view/View;

    move-result-object v0

    .line 1557
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lflyme/support/v7/widget/LinearLayoutManager;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1, p1, p2}, Lflyme/support/v7/widget/LinearLayoutManager;->findOneVisibleChild(IIZZ)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method private findFirstVisibleChildClosestToStart(ZZ)Landroid/view/View;
    .locals 2
    .param p1, "completelyVisible"    # Z
    .param p2, "acceptPartiallyVisible"    # Z

    .prologue
    .line 1535
    iget-boolean v0, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v0, :cond_0

    .line 1536
    invoke-virtual {p0}, Lflyme/support/v7/widget/LinearLayoutManager;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1, p1, p2}, Lflyme/support/v7/widget/LinearLayoutManager;->findOneVisibleChild(IIZZ)Landroid/view/View;

    move-result-object v0

    .line 1539
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0}, Lflyme/support/v7/widget/LinearLayoutManager;->getChildCount()I

    move-result v1

    invoke-virtual {p0, v0, v1, p1, p2}, Lflyme/support/v7/widget/LinearLayoutManager;->findOneVisibleChild(IIZZ)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method private findLastReferenceChild(Lflyme/support/v7/widget/RecyclerView$Recycler;Lflyme/support/v7/widget/RecyclerView$State;)Landroid/view/View;
    .locals 6
    .param p1, "recycler"    # Lflyme/support/v7/widget/RecyclerView$Recycler;
    .param p2, "state"    # Lflyme/support/v7/widget/RecyclerView$State;

    .prologue
    .line 1601
    invoke-virtual {p0}, Lflyme/support/v7/widget/LinearLayoutManager;->getChildCount()I

    move-result v0

    add-int/lit8 v3, v0, -0x1

    const/4 v4, -0x1

    invoke-virtual {p2}, Lflyme/support/v7/widget/RecyclerView$State;->getItemCount()I

    move-result v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lflyme/support/v7/widget/LinearLayoutManager;->findReferenceChild(Lflyme/support/v7/widget/RecyclerView$Recycler;Lflyme/support/v7/widget/RecyclerView$State;III)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private findReferenceChildClosestToEnd(Lflyme/support/v7/widget/RecyclerView$Recycler;Lflyme/support/v7/widget/RecyclerView$State;)Landroid/view/View;
    .locals 1
    .param p1, "recycler"    # Lflyme/support/v7/widget/RecyclerView$Recycler;
    .param p2, "state"    # Lflyme/support/v7/widget/RecyclerView$State;

    .prologue
    .line 1575
    iget-boolean v0, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2}, Lflyme/support/v7/widget/LinearLayoutManager;->findFirstReferenceChild(Lflyme/support/v7/widget/RecyclerView$Recycler;Lflyme/support/v7/widget/RecyclerView$State;)Landroid/view/View;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0, p1, p2}, Lflyme/support/v7/widget/LinearLayoutManager;->findLastReferenceChild(Lflyme/support/v7/widget/RecyclerView$Recycler;Lflyme/support/v7/widget/RecyclerView$State;)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method private findReferenceChildClosestToStart(Lflyme/support/v7/widget/RecyclerView$Recycler;Lflyme/support/v7/widget/RecyclerView$State;)Landroid/view/View;
    .locals 1
    .param p1, "recycler"    # Lflyme/support/v7/widget/RecyclerView$Recycler;
    .param p2, "state"    # Lflyme/support/v7/widget/RecyclerView$State;

    .prologue
    .line 1592
    iget-boolean v0, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2}, Lflyme/support/v7/widget/LinearLayoutManager;->findLastReferenceChild(Lflyme/support/v7/widget/RecyclerView$Recycler;Lflyme/support/v7/widget/RecyclerView$State;)Landroid/view/View;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0, p1, p2}, Lflyme/support/v7/widget/LinearLayoutManager;->findFirstReferenceChild(Lflyme/support/v7/widget/RecyclerView$Recycler;Lflyme/support/v7/widget/RecyclerView$State;)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method private fixLayoutEndGap(ILflyme/support/v7/widget/RecyclerView$Recycler;Lflyme/support/v7/widget/RecyclerView$State;Z)I
    .locals 3
    .param p1, "endOffset"    # I
    .param p2, "recycler"    # Lflyme/support/v7/widget/RecyclerView$Recycler;
    .param p3, "state"    # Lflyme/support/v7/widget/RecyclerView$State;
    .param p4, "canOffsetChildren"    # Z

    .prologue
    .line 864
    iget-object v2, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Lflyme/support/v7/widget/OrientationHelper;

    invoke-virtual {v2}, Lflyme/support/v7/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v2

    sub-int v1, v2, p1

    .line 865
    .local v1, "gap":I
    const/4 v0, 0x0

    .line 866
    .local v0, "fixOffset":I
    if-lez v1, :cond_0

    .line 867
    neg-int v2, v1

    invoke-virtual {p0, v2, p2, p3}, Lflyme/support/v7/widget/LinearLayoutManager;->scrollBy(ILflyme/support/v7/widget/RecyclerView$Recycler;Lflyme/support/v7/widget/RecyclerView$State;)I

    move-result v2

    neg-int v0, v2

    .line 872
    add-int/2addr p1, v0

    .line 873
    if-eqz p4, :cond_1

    .line 875
    iget-object v2, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Lflyme/support/v7/widget/OrientationHelper;

    invoke-virtual {v2}, Lflyme/support/v7/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v2

    sub-int v1, v2, p1

    .line 876
    if-lez v1, :cond_1

    .line 877
    iget-object v2, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Lflyme/support/v7/widget/OrientationHelper;

    invoke-virtual {v2, v1}, Lflyme/support/v7/widget/OrientationHelper;->offsetChildren(I)V

    .line 878
    add-int v2, v1, v0

    .line 881
    :goto_0
    return v2

    .line 869
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    move v2, v0

    .line 881
    goto :goto_0
.end method

.method private fixLayoutStartGap(ILflyme/support/v7/widget/RecyclerView$Recycler;Lflyme/support/v7/widget/RecyclerView$State;Z)I
    .locals 4
    .param p1, "startOffset"    # I
    .param p2, "recycler"    # Lflyme/support/v7/widget/RecyclerView$Recycler;
    .param p3, "state"    # Lflyme/support/v7/widget/RecyclerView$State;
    .param p4, "canOffsetChildren"    # Z

    .prologue
    .line 889
    iget-object v2, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Lflyme/support/v7/widget/OrientationHelper;

    invoke-virtual {v2}, Lflyme/support/v7/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v2

    sub-int v1, p1, v2

    .line 890
    .local v1, "gap":I
    const/4 v0, 0x0

    .line 891
    .local v0, "fixOffset":I
    if-lez v1, :cond_0

    .line 893
    invoke-virtual {p0, v1, p2, p3}, Lflyme/support/v7/widget/LinearLayoutManager;->scrollBy(ILflyme/support/v7/widget/RecyclerView$Recycler;Lflyme/support/v7/widget/RecyclerView$State;)I

    move-result v2

    neg-int v0, v2

    .line 897
    add-int/2addr p1, v0

    .line 898
    if-eqz p4, :cond_1

    .line 900
    iget-object v2, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Lflyme/support/v7/widget/OrientationHelper;

    invoke-virtual {v2}, Lflyme/support/v7/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v2

    sub-int v1, p1, v2

    .line 901
    if-lez v1, :cond_1

    .line 902
    iget-object v2, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Lflyme/support/v7/widget/OrientationHelper;

    neg-int v3, v1

    invoke-virtual {v2, v3}, Lflyme/support/v7/widget/OrientationHelper;->offsetChildren(I)V

    .line 903
    sub-int v2, v0, v1

    .line 906
    :goto_0
    return v2

    .line 895
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    move v2, v0

    .line 906
    goto :goto_0
.end method

.method private getChildClosestToEnd()Landroid/view/View;
    .locals 1

    .prologue
    .line 1523
    iget-boolean v0, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lflyme/support/v7/widget/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lflyme/support/v7/widget/LinearLayoutManager;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method private getChildClosestToStart()Landroid/view/View;
    .locals 1

    .prologue
    .line 1513
    iget-boolean v0, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lflyme/support/v7/widget/LinearLayoutManager;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    invoke-virtual {p0, v0}, Lflyme/support/v7/widget/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private layoutForPredictiveAnimations(Lflyme/support/v7/widget/RecyclerView$Recycler;Lflyme/support/v7/widget/RecyclerView$State;II)V
    .locals 13
    .param p1, "recycler"    # Lflyme/support/v7/widget/RecyclerView$Recycler;
    .param p2, "state"    # Lflyme/support/v7/widget/RecyclerView$State;
    .param p3, "startOffset"    # I
    .param p4, "endOffset"    # I

    .prologue
    .line 658
    invoke-virtual {p2}, Lflyme/support/v7/widget/RecyclerView$State;->willRunPredictiveAnimations()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-virtual {p0}, Lflyme/support/v7/widget/LinearLayoutManager;->getChildCount()I

    move-result v11

    if-eqz v11, :cond_0

    invoke-virtual {p2}, Lflyme/support/v7/widget/RecyclerView$State;->isPreLayout()Z

    move-result v11

    if-nez v11, :cond_0

    invoke-virtual {p0}, Lflyme/support/v7/widget/LinearLayoutManager;->supportsPredictiveItemAnimations()Z

    move-result v11

    if-nez v11, :cond_1

    .line 705
    :cond_0
    :goto_0
    return-void

    .line 663
    :cond_1
    const/4 v8, 0x0

    .local v8, "scrapExtraStart":I
    const/4 v7, 0x0

    .line 664
    .local v7, "scrapExtraEnd":I
    invoke-virtual {p1}, Lflyme/support/v7/widget/RecyclerView$Recycler;->getScrapList()Ljava/util/List;

    move-result-object v9

    .line 665
    .local v9, "scrapList":Ljava/util/List;, "Ljava/util/List<Lflyme/support/v7/widget/RecyclerView$ViewHolder;>;"
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v10

    .line 666
    .local v10, "scrapSize":I
    const/4 v11, 0x0

    invoke-virtual {p0, v11}, Lflyme/support/v7/widget/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    invoke-virtual {p0, v11}, Lflyme/support/v7/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v3

    .line 667
    .local v3, "firstChildPos":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v10, :cond_6

    .line 668
    invoke-interface {v9, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lflyme/support/v7/widget/RecyclerView$ViewHolder;

    .line 669
    .local v6, "scrap":Lflyme/support/v7/widget/RecyclerView$ViewHolder;
    invoke-virtual {v6}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->isRemoved()Z

    move-result v11

    if-eqz v11, :cond_2

    .line 667
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 672
    :cond_2
    invoke-virtual {v6}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v5

    .line 673
    .local v5, "position":I
    if-ge v5, v3, :cond_3

    const/4 v11, 0x1

    :goto_3
    iget-boolean v12, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    if-eq v11, v12, :cond_4

    const/4 v2, -0x1

    .line 675
    .local v2, "direction":I
    :goto_4
    const/4 v11, -0x1

    if-ne v2, v11, :cond_5

    .line 676
    iget-object v11, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Lflyme/support/v7/widget/OrientationHelper;

    iget-object v12, v6, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v11, v12}, Lflyme/support/v7/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v11

    add-int/2addr v8, v11

    goto :goto_2

    .line 673
    .end local v2    # "direction":I
    :cond_3
    const/4 v11, 0x0

    goto :goto_3

    :cond_4
    const/4 v2, 0x1

    goto :goto_4

    .line 678
    .restart local v2    # "direction":I
    :cond_5
    iget-object v11, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Lflyme/support/v7/widget/OrientationHelper;

    iget-object v12, v6, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v11, v12}, Lflyme/support/v7/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v11

    add-int/2addr v7, v11

    goto :goto_2

    .line 686
    .end local v2    # "direction":I
    .end local v5    # "position":I
    .end local v6    # "scrap":Lflyme/support/v7/widget/RecyclerView$ViewHolder;
    :cond_6
    iget-object v11, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mLayoutState:Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;

    iput-object v9, v11, Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;->mScrapList:Ljava/util/List;

    .line 687
    if-lez v8, :cond_7

    .line 688
    invoke-direct {p0}, Lflyme/support/v7/widget/LinearLayoutManager;->getChildClosestToStart()Landroid/view/View;

    move-result-object v1

    .line 689
    .local v1, "anchor":Landroid/view/View;
    invoke-virtual {p0, v1}, Lflyme/support/v7/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v11

    move/from16 v0, p3

    invoke-direct {p0, v11, v0}, Lflyme/support/v7/widget/LinearLayoutManager;->updateLayoutStateToFillStart(II)V

    .line 690
    iget-object v11, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mLayoutState:Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;

    iput v8, v11, Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;->mExtra:I

    .line 691
    iget-object v11, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mLayoutState:Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;

    const/4 v12, 0x0

    iput v12, v11, Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;->mAvailable:I

    .line 692
    iget-object v11, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mLayoutState:Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;

    invoke-virtual {v11}, Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;->assignPositionFromScrapList()V

    .line 693
    iget-object v11, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mLayoutState:Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;

    const/4 v12, 0x0

    invoke-virtual {p0, p1, v11, p2, v12}, Lflyme/support/v7/widget/LinearLayoutManager;->fill(Lflyme/support/v7/widget/RecyclerView$Recycler;Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;Lflyme/support/v7/widget/RecyclerView$State;Z)I

    .line 696
    .end local v1    # "anchor":Landroid/view/View;
    :cond_7
    if-lez v7, :cond_8

    .line 697
    invoke-direct {p0}, Lflyme/support/v7/widget/LinearLayoutManager;->getChildClosestToEnd()Landroid/view/View;

    move-result-object v1

    .line 698
    .restart local v1    # "anchor":Landroid/view/View;
    invoke-virtual {p0, v1}, Lflyme/support/v7/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v11

    move/from16 v0, p4

    invoke-direct {p0, v11, v0}, Lflyme/support/v7/widget/LinearLayoutManager;->updateLayoutStateToFillEnd(II)V

    .line 699
    iget-object v11, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mLayoutState:Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;

    iput v7, v11, Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;->mExtra:I

    .line 700
    iget-object v11, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mLayoutState:Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;

    const/4 v12, 0x0

    iput v12, v11, Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;->mAvailable:I

    .line 701
    iget-object v11, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mLayoutState:Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;

    invoke-virtual {v11}, Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;->assignPositionFromScrapList()V

    .line 702
    iget-object v11, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mLayoutState:Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;

    const/4 v12, 0x0

    invoke-virtual {p0, p1, v11, p2, v12}, Lflyme/support/v7/widget/LinearLayoutManager;->fill(Lflyme/support/v7/widget/RecyclerView$Recycler;Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;Lflyme/support/v7/widget/RecyclerView$State;Z)I

    .line 704
    .end local v1    # "anchor":Landroid/view/View;
    :cond_8
    iget-object v11, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mLayoutState:Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;

    const/4 v12, 0x0

    iput-object v12, v11, Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;->mScrapList:Ljava/util/List;

    goto/16 :goto_0
.end method

.method private recycleByLayoutState(Lflyme/support/v7/widget/RecyclerView$Recycler;Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;)V
    .locals 2
    .param p1, "recycler"    # Lflyme/support/v7/widget/RecyclerView$Recycler;
    .param p2, "layoutState"    # Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;

    .prologue
    .line 1315
    iget-boolean v0, p2, Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;->mRecycle:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p2, Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;->mInfinite:Z

    if-eqz v0, :cond_1

    .line 1323
    :cond_0
    :goto_0
    return-void

    .line 1318
    :cond_1
    iget v0, p2, Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;->mLayoutDirection:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    .line 1319
    iget v0, p2, Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;->mScrollingOffset:I

    invoke-direct {p0, p1, v0}, Lflyme/support/v7/widget/LinearLayoutManager;->recycleViewsFromEnd(Lflyme/support/v7/widget/RecyclerView$Recycler;I)V

    goto :goto_0

    .line 1321
    :cond_2
    iget v0, p2, Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;->mScrollingOffset:I

    invoke-direct {p0, p1, v0}, Lflyme/support/v7/widget/LinearLayoutManager;->recycleViewsFromStart(Lflyme/support/v7/widget/RecyclerView$Recycler;I)V

    goto :goto_0
.end method

.method private recycleChildren(Lflyme/support/v7/widget/RecyclerView$Recycler;II)V
    .locals 1
    .param p1, "recycler"    # Lflyme/support/v7/widget/RecyclerView$Recycler;
    .param p2, "startIndex"    # I
    .param p3, "endIndex"    # I

    .prologue
    .line 1209
    if-ne p2, p3, :cond_1

    .line 1224
    :cond_0
    return-void

    .line 1215
    :cond_1
    if-le p3, p2, :cond_2

    .line 1216
    add-int/lit8 v0, p3, -0x1

    .local v0, "i":I
    :goto_0
    if-lt v0, p2, :cond_0

    .line 1217
    invoke-virtual {p0, v0, p1}, Lflyme/support/v7/widget/LinearLayoutManager;->removeAndRecycleViewAt(ILflyme/support/v7/widget/RecyclerView$Recycler;)V

    .line 1216
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1220
    .end local v0    # "i":I
    :cond_2
    move v0, p2

    .restart local v0    # "i":I
    :goto_1
    if-le v0, p3, :cond_0

    .line 1221
    invoke-virtual {p0, v0, p1}, Lflyme/support/v7/widget/LinearLayoutManager;->removeAndRecycleViewAt(ILflyme/support/v7/widget/RecyclerView$Recycler;)V

    .line 1220
    add-int/lit8 v0, v0, -0x1

    goto :goto_1
.end method

.method private recycleViewsFromEnd(Lflyme/support/v7/widget/RecyclerView$Recycler;I)V
    .locals 5
    .param p1, "recycler"    # Lflyme/support/v7/widget/RecyclerView$Recycler;
    .param p2, "dt"    # I

    .prologue
    .line 1274
    invoke-virtual {p0}, Lflyme/support/v7/widget/LinearLayoutManager;->getChildCount()I

    move-result v1

    .line 1275
    .local v1, "childCount":I
    if-gez p2, :cond_1

    .line 1301
    :cond_0
    :goto_0
    return-void

    .line 1282
    :cond_1
    iget-object v4, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Lflyme/support/v7/widget/OrientationHelper;

    invoke-virtual {v4}, Lflyme/support/v7/widget/OrientationHelper;->getEnd()I

    move-result v4

    sub-int v3, v4, p2

    .line 1283
    .local v3, "limit":I
    iget-boolean v4, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v4, :cond_3

    .line 1284
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v1, :cond_0

    .line 1285
    invoke-virtual {p0, v2}, Lflyme/support/v7/widget/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1286
    .local v0, "child":Landroid/view/View;
    iget-object v4, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Lflyme/support/v7/widget/OrientationHelper;

    invoke-virtual {v4, v0}, Lflyme/support/v7/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v4

    if-ge v4, v3, :cond_2

    .line 1287
    const/4 v4, 0x0

    invoke-direct {p0, p1, v4, v2}, Lflyme/support/v7/widget/LinearLayoutManager;->recycleChildren(Lflyme/support/v7/widget/RecyclerView$Recycler;II)V

    goto :goto_0

    .line 1284
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1292
    .end local v0    # "child":Landroid/view/View;
    .end local v2    # "i":I
    :cond_3
    add-int/lit8 v2, v1, -0x1

    .restart local v2    # "i":I
    :goto_2
    if-ltz v2, :cond_0

    .line 1293
    invoke-virtual {p0, v2}, Lflyme/support/v7/widget/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1294
    .restart local v0    # "child":Landroid/view/View;
    iget-object v4, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Lflyme/support/v7/widget/OrientationHelper;

    invoke-virtual {v4, v0}, Lflyme/support/v7/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v4

    if-ge v4, v3, :cond_4

    .line 1295
    add-int/lit8 v4, v1, -0x1

    invoke-direct {p0, p1, v4, v2}, Lflyme/support/v7/widget/LinearLayoutManager;->recycleChildren(Lflyme/support/v7/widget/RecyclerView$Recycler;II)V

    goto :goto_0

    .line 1292
    :cond_4
    add-int/lit8 v2, v2, -0x1

    goto :goto_2
.end method

.method private recycleViewsFromStart(Lflyme/support/v7/widget/RecyclerView$Recycler;I)V
    .locals 5
    .param p1, "recycler"    # Lflyme/support/v7/widget/RecyclerView$Recycler;
    .param p2, "dt"    # I

    .prologue
    .line 1235
    if-gez p2, :cond_1

    .line 1262
    :cond_0
    :goto_0
    return-void

    .line 1243
    :cond_1
    move v3, p2

    .line 1244
    .local v3, "limit":I
    invoke-virtual {p0}, Lflyme/support/v7/widget/LinearLayoutManager;->getChildCount()I

    move-result v1

    .line 1245
    .local v1, "childCount":I
    iget-boolean v4, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v4, :cond_3

    .line 1246
    add-int/lit8 v2, v1, -0x1

    .local v2, "i":I
    :goto_1
    if-ltz v2, :cond_0

    .line 1247
    invoke-virtual {p0, v2}, Lflyme/support/v7/widget/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1248
    .local v0, "child":Landroid/view/View;
    iget-object v4, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Lflyme/support/v7/widget/OrientationHelper;

    invoke-virtual {v4, v0}, Lflyme/support/v7/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v4

    if-le v4, v3, :cond_2

    .line 1249
    add-int/lit8 v4, v1, -0x1

    invoke-direct {p0, p1, v4, v2}, Lflyme/support/v7/widget/LinearLayoutManager;->recycleChildren(Lflyme/support/v7/widget/RecyclerView$Recycler;II)V

    goto :goto_0

    .line 1246
    :cond_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 1254
    .end local v0    # "child":Landroid/view/View;
    .end local v2    # "i":I
    :cond_3
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_2
    if-ge v2, v1, :cond_0

    .line 1255
    invoke-virtual {p0, v2}, Lflyme/support/v7/widget/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1256
    .restart local v0    # "child":Landroid/view/View;
    iget-object v4, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Lflyme/support/v7/widget/OrientationHelper;

    invoke-virtual {v4, v0}, Lflyme/support/v7/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v4

    if-le v4, v3, :cond_4

    .line 1257
    const/4 v4, 0x0

    invoke-direct {p0, p1, v4, v2}, Lflyme/support/v7/widget/LinearLayoutManager;->recycleChildren(Lflyme/support/v7/widget/RecyclerView$Recycler;II)V

    goto :goto_0

    .line 1254
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2
.end method

.method private resolveShouldLayoutReverse()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 343
    iget v1, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mOrientation:I

    if-eq v1, v0, :cond_0

    invoke-virtual {p0}, Lflyme/support/v7/widget/LinearLayoutManager;->isLayoutRTL()Z

    move-result v1

    if-nez v1, :cond_1

    .line 344
    :cond_0
    iget-boolean v0, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mReverseLayout:Z

    iput-boolean v0, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    .line 348
    :goto_0
    return-void

    .line 346
    :cond_1
    iget-boolean v1, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mReverseLayout:Z

    if-nez v1, :cond_2

    :goto_1
    iput-boolean v0, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private updateAnchorFromChildren(Lflyme/support/v7/widget/RecyclerView$Recycler;Lflyme/support/v7/widget/RecyclerView$State;Lflyme/support/v7/widget/LinearLayoutManager$AnchorInfo;)Z
    .locals 7
    .param p1, "recycler"    # Lflyme/support/v7/widget/RecyclerView$Recycler;
    .param p2, "state"    # Lflyme/support/v7/widget/RecyclerView$State;
    .param p3, "anchorInfo"    # Lflyme/support/v7/widget/LinearLayoutManager$AnchorInfo;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 737
    invoke-virtual {p0}, Lflyme/support/v7/widget/LinearLayoutManager;->getChildCount()I

    move-result v5

    if-nez v5, :cond_1

    .line 770
    :cond_0
    :goto_0
    return v3

    .line 740
    :cond_1
    invoke-virtual {p0}, Lflyme/support/v7/widget/LinearLayoutManager;->getFocusedChild()Landroid/view/View;

    move-result-object v0

    .line 741
    .local v0, "focused":Landroid/view/View;
    if-eqz v0, :cond_2

    # invokes: Lflyme/support/v7/widget/LinearLayoutManager$AnchorInfo;->isViewValidAsAnchor(Landroid/view/View;Lflyme/support/v7/widget/RecyclerView$State;)Z
    invoke-static {p3, v0, p2}, Lflyme/support/v7/widget/LinearLayoutManager$AnchorInfo;->access$000(Lflyme/support/v7/widget/LinearLayoutManager$AnchorInfo;Landroid/view/View;Lflyme/support/v7/widget/RecyclerView$State;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 742
    invoke-virtual {p3, v0}, Lflyme/support/v7/widget/LinearLayoutManager$AnchorInfo;->assignFromViewAndKeepVisibleRect(Landroid/view/View;)V

    move v3, v4

    .line 743
    goto :goto_0

    .line 745
    :cond_2
    iget-boolean v5, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mLastStackFromEnd:Z

    iget-boolean v6, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mStackFromEnd:Z

    if-ne v5, v6, :cond_0

    .line 748
    iget-boolean v5, p3, Lflyme/support/v7/widget/LinearLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    if-eqz v5, :cond_5

    invoke-direct {p0, p1, p2}, Lflyme/support/v7/widget/LinearLayoutManager;->findReferenceChildClosestToEnd(Lflyme/support/v7/widget/RecyclerView$Recycler;Lflyme/support/v7/widget/RecyclerView$State;)Landroid/view/View;

    move-result-object v2

    .line 751
    .local v2, "referenceChild":Landroid/view/View;
    :goto_1
    if-eqz v2, :cond_0

    .line 752
    invoke-virtual {p3, v2}, Lflyme/support/v7/widget/LinearLayoutManager$AnchorInfo;->assignFromView(Landroid/view/View;)V

    .line 755
    invoke-virtual {p2}, Lflyme/support/v7/widget/RecyclerView$State;->isPreLayout()Z

    move-result v5

    if-nez v5, :cond_4

    invoke-virtual {p0}, Lflyme/support/v7/widget/LinearLayoutManager;->supportsPredictiveItemAnimations()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 757
    iget-object v5, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Lflyme/support/v7/widget/OrientationHelper;

    invoke-virtual {v5, v2}, Lflyme/support/v7/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v5

    iget-object v6, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Lflyme/support/v7/widget/OrientationHelper;

    invoke-virtual {v6}, Lflyme/support/v7/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v6

    if-ge v5, v6, :cond_3

    iget-object v5, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Lflyme/support/v7/widget/OrientationHelper;

    invoke-virtual {v5, v2}, Lflyme/support/v7/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v5

    iget-object v6, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Lflyme/support/v7/widget/OrientationHelper;

    invoke-virtual {v6}, Lflyme/support/v7/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v6

    if-ge v5, v6, :cond_6

    :cond_3
    move v1, v4

    .line 762
    .local v1, "notVisible":Z
    :goto_2
    if-eqz v1, :cond_4

    .line 763
    iget-boolean v3, p3, Lflyme/support/v7/widget/LinearLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    if-eqz v3, :cond_7

    iget-object v3, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Lflyme/support/v7/widget/OrientationHelper;

    invoke-virtual {v3}, Lflyme/support/v7/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v3

    :goto_3
    iput v3, p3, Lflyme/support/v7/widget/LinearLayoutManager$AnchorInfo;->mCoordinate:I

    .end local v1    # "notVisible":Z
    :cond_4
    move v3, v4

    .line 768
    goto :goto_0

    .line 748
    .end local v2    # "referenceChild":Landroid/view/View;
    :cond_5
    invoke-direct {p0, p1, p2}, Lflyme/support/v7/widget/LinearLayoutManager;->findReferenceChildClosestToStart(Lflyme/support/v7/widget/RecyclerView$Recycler;Lflyme/support/v7/widget/RecyclerView$State;)Landroid/view/View;

    move-result-object v2

    goto :goto_1

    .restart local v2    # "referenceChild":Landroid/view/View;
    :cond_6
    move v1, v3

    .line 757
    goto :goto_2

    .line 763
    .restart local v1    # "notVisible":Z
    :cond_7
    iget-object v3, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Lflyme/support/v7/widget/OrientationHelper;

    invoke-virtual {v3}, Lflyme/support/v7/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v3

    goto :goto_3
.end method

.method private updateAnchorFromPendingData(Lflyme/support/v7/widget/RecyclerView$State;Lflyme/support/v7/widget/LinearLayoutManager$AnchorInfo;)Z
    .locals 11
    .param p1, "state"    # Lflyme/support/v7/widget/RecyclerView$State;
    .param p2, "anchorInfo"    # Lflyme/support/v7/widget/LinearLayoutManager$AnchorInfo;

    .prologue
    const/4 v10, -0x1

    const/high16 v9, -0x80000000

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 778
    invoke-virtual {p1}, Lflyme/support/v7/widget/RecyclerView$State;->isPreLayout()Z

    move-result v5

    if-nez v5, :cond_0

    iget v5, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mPendingScrollPosition:I

    if-ne v5, v10, :cond_1

    :cond_0
    move v6, v7

    .line 856
    :goto_0
    return v6

    .line 782
    :cond_1
    iget v5, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mPendingScrollPosition:I

    if-ltz v5, :cond_2

    iget v5, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mPendingScrollPosition:I

    invoke-virtual {p1}, Lflyme/support/v7/widget/RecyclerView$State;->getItemCount()I

    move-result v8

    if-lt v5, v8, :cond_3

    .line 783
    :cond_2
    iput v10, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mPendingScrollPosition:I

    .line 784
    iput v9, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mPendingScrollPositionOffset:I

    move v6, v7

    .line 788
    goto :goto_0

    .line 793
    :cond_3
    iget v5, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mPendingScrollPosition:I

    iput v5, p2, Lflyme/support/v7/widget/LinearLayoutManager$AnchorInfo;->mPosition:I

    .line 794
    iget-object v5, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mPendingSavedState:Lflyme/support/v7/widget/LinearLayoutManager$SavedState;

    if-eqz v5, :cond_5

    iget-object v5, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mPendingSavedState:Lflyme/support/v7/widget/LinearLayoutManager$SavedState;

    invoke-virtual {v5}, Lflyme/support/v7/widget/LinearLayoutManager$SavedState;->hasValidAnchor()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 797
    iget-object v5, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mPendingSavedState:Lflyme/support/v7/widget/LinearLayoutManager$SavedState;

    iget-boolean v5, v5, Lflyme/support/v7/widget/LinearLayoutManager$SavedState;->mAnchorLayoutFromEnd:Z

    iput-boolean v5, p2, Lflyme/support/v7/widget/LinearLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    .line 798
    iget-boolean v5, p2, Lflyme/support/v7/widget/LinearLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    if-eqz v5, :cond_4

    .line 799
    iget-object v5, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Lflyme/support/v7/widget/OrientationHelper;

    invoke-virtual {v5}, Lflyme/support/v7/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v5

    iget-object v7, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mPendingSavedState:Lflyme/support/v7/widget/LinearLayoutManager$SavedState;

    iget v7, v7, Lflyme/support/v7/widget/LinearLayoutManager$SavedState;->mAnchorOffset:I

    sub-int/2addr v5, v7

    iput v5, p2, Lflyme/support/v7/widget/LinearLayoutManager$AnchorInfo;->mCoordinate:I

    goto :goto_0

    .line 802
    :cond_4
    iget-object v5, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Lflyme/support/v7/widget/OrientationHelper;

    invoke-virtual {v5}, Lflyme/support/v7/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v5

    iget-object v7, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mPendingSavedState:Lflyme/support/v7/widget/LinearLayoutManager$SavedState;

    iget v7, v7, Lflyme/support/v7/widget/LinearLayoutManager$SavedState;->mAnchorOffset:I

    add-int/2addr v5, v7

    iput v5, p2, Lflyme/support/v7/widget/LinearLayoutManager$AnchorInfo;->mCoordinate:I

    goto :goto_0

    .line 808
    :cond_5
    iget v5, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mPendingScrollPositionOffset:I

    if-ne v5, v9, :cond_e

    .line 809
    iget v5, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mPendingScrollPosition:I

    invoke-virtual {p0, v5}, Lflyme/support/v7/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v0

    .line 810
    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_a

    .line 811
    iget-object v5, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Lflyme/support/v7/widget/OrientationHelper;

    invoke-virtual {v5, v0}, Lflyme/support/v7/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v1

    .line 812
    .local v1, "childSize":I
    iget-object v5, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Lflyme/support/v7/widget/OrientationHelper;

    invoke-virtual {v5}, Lflyme/support/v7/widget/OrientationHelper;->getTotalSpace()I

    move-result v5

    if-le v1, v5, :cond_6

    .line 814
    invoke-virtual {p2}, Lflyme/support/v7/widget/LinearLayoutManager$AnchorInfo;->assignCoordinateFromPadding()V

    goto :goto_0

    .line 817
    :cond_6
    iget-object v5, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Lflyme/support/v7/widget/OrientationHelper;

    invoke-virtual {v5, v0}, Lflyme/support/v7/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v5

    iget-object v8, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Lflyme/support/v7/widget/OrientationHelper;

    invoke-virtual {v8}, Lflyme/support/v7/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v8

    sub-int v4, v5, v8

    .line 819
    .local v4, "startGap":I
    if-gez v4, :cond_7

    .line 820
    iget-object v5, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Lflyme/support/v7/widget/OrientationHelper;

    invoke-virtual {v5}, Lflyme/support/v7/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v5

    iput v5, p2, Lflyme/support/v7/widget/LinearLayoutManager$AnchorInfo;->mCoordinate:I

    .line 821
    iput-boolean v7, p2, Lflyme/support/v7/widget/LinearLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    goto/16 :goto_0

    .line 824
    :cond_7
    iget-object v5, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Lflyme/support/v7/widget/OrientationHelper;

    invoke-virtual {v5}, Lflyme/support/v7/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v5

    iget-object v7, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Lflyme/support/v7/widget/OrientationHelper;

    invoke-virtual {v7, v0}, Lflyme/support/v7/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v7

    sub-int v2, v5, v7

    .line 826
    .local v2, "endGap":I
    if-gez v2, :cond_8

    .line 827
    iget-object v5, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Lflyme/support/v7/widget/OrientationHelper;

    invoke-virtual {v5}, Lflyme/support/v7/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v5

    iput v5, p2, Lflyme/support/v7/widget/LinearLayoutManager$AnchorInfo;->mCoordinate:I

    .line 828
    iput-boolean v6, p2, Lflyme/support/v7/widget/LinearLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    goto/16 :goto_0

    .line 831
    :cond_8
    iget-boolean v5, p2, Lflyme/support/v7/widget/LinearLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    if-eqz v5, :cond_9

    iget-object v5, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Lflyme/support/v7/widget/OrientationHelper;

    invoke-virtual {v5, v0}, Lflyme/support/v7/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v5

    iget-object v7, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Lflyme/support/v7/widget/OrientationHelper;

    invoke-virtual {v7}, Lflyme/support/v7/widget/OrientationHelper;->getTotalSpaceChange()I

    move-result v7

    add-int/2addr v5, v7

    :goto_1
    iput v5, p2, Lflyme/support/v7/widget/LinearLayoutManager$AnchorInfo;->mCoordinate:I

    goto/16 :goto_0

    :cond_9
    iget-object v5, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Lflyme/support/v7/widget/OrientationHelper;

    invoke-virtual {v5, v0}, Lflyme/support/v7/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v5

    goto :goto_1

    .line 836
    .end local v1    # "childSize":I
    .end local v2    # "endGap":I
    .end local v4    # "startGap":I
    :cond_a
    invoke-virtual {p0}, Lflyme/support/v7/widget/LinearLayoutManager;->getChildCount()I

    move-result v5

    if-lez v5, :cond_c

    .line 838
    invoke-virtual {p0, v7}, Lflyme/support/v7/widget/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {p0, v5}, Lflyme/support/v7/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v3

    .line 839
    .local v3, "pos":I
    iget v5, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mPendingScrollPosition:I

    if-ge v5, v3, :cond_d

    move v5, v6

    :goto_2
    iget-boolean v8, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    if-ne v5, v8, :cond_b

    move v7, v6

    :cond_b
    iput-boolean v7, p2, Lflyme/support/v7/widget/LinearLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    .line 842
    .end local v3    # "pos":I
    :cond_c
    invoke-virtual {p2}, Lflyme/support/v7/widget/LinearLayoutManager$AnchorInfo;->assignCoordinateFromPadding()V

    goto/16 :goto_0

    .restart local v3    # "pos":I
    :cond_d
    move v5, v7

    .line 839
    goto :goto_2

    .line 847
    .end local v0    # "child":Landroid/view/View;
    .end local v3    # "pos":I
    :cond_e
    iget-boolean v5, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    iput-boolean v5, p2, Lflyme/support/v7/widget/LinearLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    .line 849
    iget-boolean v5, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v5, :cond_f

    .line 850
    iget-object v5, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Lflyme/support/v7/widget/OrientationHelper;

    invoke-virtual {v5}, Lflyme/support/v7/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v5

    iget v7, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mPendingScrollPositionOffset:I

    sub-int/2addr v5, v7

    iput v5, p2, Lflyme/support/v7/widget/LinearLayoutManager$AnchorInfo;->mCoordinate:I

    goto/16 :goto_0

    .line 853
    :cond_f
    iget-object v5, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Lflyme/support/v7/widget/OrientationHelper;

    invoke-virtual {v5}, Lflyme/support/v7/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v5

    iget v7, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mPendingScrollPositionOffset:I

    add-int/2addr v5, v7

    iput v5, p2, Lflyme/support/v7/widget/LinearLayoutManager$AnchorInfo;->mCoordinate:I

    goto/16 :goto_0
.end method

.method private updateAnchorInfoForLayout(Lflyme/support/v7/widget/RecyclerView$Recycler;Lflyme/support/v7/widget/RecyclerView$State;Lflyme/support/v7/widget/LinearLayoutManager$AnchorInfo;)V
    .locals 1
    .param p1, "recycler"    # Lflyme/support/v7/widget/RecyclerView$Recycler;
    .param p2, "state"    # Lflyme/support/v7/widget/RecyclerView$State;
    .param p3, "anchorInfo"    # Lflyme/support/v7/widget/LinearLayoutManager$AnchorInfo;

    .prologue
    .line 709
    invoke-direct {p0, p2, p3}, Lflyme/support/v7/widget/LinearLayoutManager;->updateAnchorFromPendingData(Lflyme/support/v7/widget/RecyclerView$State;Lflyme/support/v7/widget/LinearLayoutManager$AnchorInfo;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 727
    :cond_0
    :goto_0
    return-void

    .line 716
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lflyme/support/v7/widget/LinearLayoutManager;->updateAnchorFromChildren(Lflyme/support/v7/widget/RecyclerView$Recycler;Lflyme/support/v7/widget/RecyclerView$State;Lflyme/support/v7/widget/LinearLayoutManager$AnchorInfo;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 725
    invoke-virtual {p3}, Lflyme/support/v7/widget/LinearLayoutManager$AnchorInfo;->assignCoordinateFromPadding()V

    .line 726
    iget-boolean v0, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mStackFromEnd:Z

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Lflyme/support/v7/widget/RecyclerView$State;->getItemCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_1
    iput v0, p3, Lflyme/support/v7/widget/LinearLayoutManager$AnchorInfo;->mPosition:I

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private updateLayoutState(IIZLflyme/support/v7/widget/RecyclerView$State;)V
    .locals 7
    .param p1, "layoutDirection"    # I
    .param p2, "requiredSpace"    # I
    .param p3, "canUseExistingSpace"    # Z
    .param p4, "state"    # Lflyme/support/v7/widget/RecyclerView$State;

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x1

    .line 1134
    iget-object v5, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mLayoutState:Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;

    iget-object v2, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Lflyme/support/v7/widget/OrientationHelper;

    invoke-virtual {v2}, Lflyme/support/v7/widget/OrientationHelper;->getMode()I

    move-result v2

    if-nez v2, :cond_2

    move v2, v3

    :goto_0
    iput-boolean v2, v5, Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;->mInfinite:Z

    .line 1135
    iget-object v2, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mLayoutState:Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;

    invoke-virtual {p0, p4}, Lflyme/support/v7/widget/LinearLayoutManager;->getExtraLayoutSpace(Lflyme/support/v7/widget/RecyclerView$State;)I

    move-result v5

    iput v5, v2, Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;->mExtra:I

    .line 1136
    iget-object v2, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mLayoutState:Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;

    iput p1, v2, Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;->mLayoutDirection:I

    .line 1138
    if-ne p1, v3, :cond_3

    .line 1139
    iget-object v2, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mLayoutState:Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;

    iget v5, v2, Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;->mExtra:I

    iget-object v6, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Lflyme/support/v7/widget/OrientationHelper;

    invoke-virtual {v6}, Lflyme/support/v7/widget/OrientationHelper;->getEndPadding()I

    move-result v6

    add-int/2addr v5, v6

    iput v5, v2, Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;->mExtra:I

    .line 1141
    invoke-direct {p0}, Lflyme/support/v7/widget/LinearLayoutManager;->getChildClosestToEnd()Landroid/view/View;

    move-result-object v0

    .line 1143
    .local v0, "child":Landroid/view/View;
    iget-object v2, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mLayoutState:Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;

    iget-boolean v5, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v5, :cond_0

    move v3, v4

    :cond_0
    iput v3, v2, Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;->mItemDirection:I

    .line 1145
    iget-object v2, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mLayoutState:Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;

    invoke-virtual {p0, v0}, Lflyme/support/v7/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v3

    iget-object v4, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mLayoutState:Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;

    iget v4, v4, Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;->mItemDirection:I

    add-int/2addr v3, v4

    iput v3, v2, Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    .line 1146
    iget-object v2, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mLayoutState:Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;

    iget-object v3, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Lflyme/support/v7/widget/OrientationHelper;

    invoke-virtual {v3, v0}, Lflyme/support/v7/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v3

    iput v3, v2, Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;->mOffset:I

    .line 1148
    iget-object v2, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Lflyme/support/v7/widget/OrientationHelper;

    invoke-virtual {v2, v0}, Lflyme/support/v7/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v2

    iget-object v3, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Lflyme/support/v7/widget/OrientationHelper;

    invoke-virtual {v3}, Lflyme/support/v7/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v3

    sub-int v1, v2, v3

    .line 1161
    .local v1, "scrollingOffset":I
    :goto_1
    iget-object v2, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mLayoutState:Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;

    iput p2, v2, Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;->mAvailable:I

    .line 1162
    if-eqz p3, :cond_1

    .line 1163
    iget-object v2, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mLayoutState:Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;

    iget v3, v2, Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;->mAvailable:I

    sub-int/2addr v3, v1

    iput v3, v2, Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;->mAvailable:I

    .line 1165
    :cond_1
    iget-object v2, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mLayoutState:Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;

    iput v1, v2, Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;->mScrollingOffset:I

    .line 1166
    return-void

    .line 1134
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "scrollingOffset":I
    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    .line 1152
    :cond_3
    invoke-direct {p0}, Lflyme/support/v7/widget/LinearLayoutManager;->getChildClosestToStart()Landroid/view/View;

    move-result-object v0

    .line 1153
    .restart local v0    # "child":Landroid/view/View;
    iget-object v2, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mLayoutState:Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;

    iget v5, v2, Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;->mExtra:I

    iget-object v6, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Lflyme/support/v7/widget/OrientationHelper;

    invoke-virtual {v6}, Lflyme/support/v7/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v6

    add-int/2addr v5, v6

    iput v5, v2, Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;->mExtra:I

    .line 1154
    iget-object v2, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mLayoutState:Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;

    iget-boolean v5, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v5, :cond_4

    :goto_2
    iput v3, v2, Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;->mItemDirection:I

    .line 1156
    iget-object v2, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mLayoutState:Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;

    invoke-virtual {p0, v0}, Lflyme/support/v7/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v3

    iget-object v4, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mLayoutState:Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;

    iget v4, v4, Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;->mItemDirection:I

    add-int/2addr v3, v4

    iput v3, v2, Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    .line 1157
    iget-object v2, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mLayoutState:Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;

    iget-object v3, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Lflyme/support/v7/widget/OrientationHelper;

    invoke-virtual {v3, v0}, Lflyme/support/v7/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v3

    iput v3, v2, Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;->mOffset:I

    .line 1158
    iget-object v2, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Lflyme/support/v7/widget/OrientationHelper;

    invoke-virtual {v2, v0}, Lflyme/support/v7/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v2

    neg-int v2, v2

    iget-object v3, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Lflyme/support/v7/widget/OrientationHelper;

    invoke-virtual {v3}, Lflyme/support/v7/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v3

    add-int v1, v2, v3

    .restart local v1    # "scrollingOffset":I
    goto :goto_1

    .end local v1    # "scrollingOffset":I
    :cond_4
    move v3, v4

    .line 1154
    goto :goto_2
.end method

.method private updateLayoutStateToFillEnd(II)V
    .locals 3
    .param p1, "itemPosition"    # I
    .param p2, "offset"    # I

    .prologue
    const/4 v1, 0x1

    .line 914
    iget-object v0, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mLayoutState:Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;

    iget-object v2, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Lflyme/support/v7/widget/OrientationHelper;

    invoke-virtual {v2}, Lflyme/support/v7/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v2

    sub-int/2addr v2, p2

    iput v2, v0, Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;->mAvailable:I

    .line 915
    iget-object v2, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mLayoutState:Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;

    iget-boolean v0, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    iput v0, v2, Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;->mItemDirection:I

    .line 917
    iget-object v0, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mLayoutState:Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;

    iput p1, v0, Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    .line 918
    iget-object v0, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mLayoutState:Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;

    iput v1, v0, Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;->mLayoutDirection:I

    .line 919
    iget-object v0, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mLayoutState:Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;

    iput p2, v0, Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;->mOffset:I

    .line 920
    iget-object v0, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mLayoutState:Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;

    const/high16 v1, -0x80000000

    iput v1, v0, Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;->mScrollingOffset:I

    .line 921
    return-void

    :cond_0
    move v0, v1

    .line 915
    goto :goto_0
.end method

.method private updateLayoutStateToFillEnd(Lflyme/support/v7/widget/LinearLayoutManager$AnchorInfo;)V
    .locals 2
    .param p1, "anchorInfo"    # Lflyme/support/v7/widget/LinearLayoutManager$AnchorInfo;

    .prologue
    .line 910
    iget v0, p1, Lflyme/support/v7/widget/LinearLayoutManager$AnchorInfo;->mPosition:I

    iget v1, p1, Lflyme/support/v7/widget/LinearLayoutManager$AnchorInfo;->mCoordinate:I

    invoke-direct {p0, v0, v1}, Lflyme/support/v7/widget/LinearLayoutManager;->updateLayoutStateToFillEnd(II)V

    .line 911
    return-void
.end method

.method private updateLayoutStateToFillStart(II)V
    .locals 3
    .param p1, "itemPosition"    # I
    .param p2, "offset"    # I

    .prologue
    const/4 v1, -0x1

    .line 928
    iget-object v0, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mLayoutState:Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;

    iget-object v2, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Lflyme/support/v7/widget/OrientationHelper;

    invoke-virtual {v2}, Lflyme/support/v7/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v2

    sub-int v2, p2, v2

    iput v2, v0, Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;->mAvailable:I

    .line 929
    iget-object v0, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mLayoutState:Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;

    iput p1, v0, Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    .line 930
    iget-object v2, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mLayoutState:Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;

    iget-boolean v0, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput v0, v2, Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;->mItemDirection:I

    .line 932
    iget-object v0, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mLayoutState:Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;

    iput v1, v0, Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;->mLayoutDirection:I

    .line 933
    iget-object v0, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mLayoutState:Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;

    iput p2, v0, Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;->mOffset:I

    .line 934
    iget-object v0, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mLayoutState:Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;

    const/high16 v1, -0x80000000

    iput v1, v0, Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;->mScrollingOffset:I

    .line 936
    return-void

    :cond_0
    move v0, v1

    .line 930
    goto :goto_0
.end method

.method private updateLayoutStateToFillStart(Lflyme/support/v7/widget/LinearLayoutManager$AnchorInfo;)V
    .locals 2
    .param p1, "anchorInfo"    # Lflyme/support/v7/widget/LinearLayoutManager$AnchorInfo;

    .prologue
    .line 924
    iget v0, p1, Lflyme/support/v7/widget/LinearLayoutManager$AnchorInfo;->mPosition:I

    iget v1, p1, Lflyme/support/v7/widget/LinearLayoutManager$AnchorInfo;->mCoordinate:I

    invoke-direct {p0, v0, v1}, Lflyme/support/v7/widget/LinearLayoutManager;->updateLayoutStateToFillStart(II)V

    .line 925
    return-void
.end method


# virtual methods
.method public assertNotInLayoutOrScroll(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 1197
    iget-object v0, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mPendingSavedState:Lflyme/support/v7/widget/LinearLayoutManager$SavedState;

    if-nez v0, :cond_0

    .line 1198
    invoke-super {p0, p1}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 1200
    :cond_0
    return-void
.end method

.method public canScrollHorizontally()Z
    .locals 1

    .prologue
    .line 280
    iget v0, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mOrientation:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public canScrollVertically()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 288
    iget v1, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mOrientation:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public computeHorizontalScrollExtent(Lflyme/support/v7/widget/RecyclerView$State;)I
    .locals 1
    .param p1, "state"    # Lflyme/support/v7/widget/RecyclerView$State;

    .prologue
    .line 1049
    invoke-direct {p0, p1}, Lflyme/support/v7/widget/LinearLayoutManager;->computeScrollExtent(Lflyme/support/v7/widget/RecyclerView$State;)I

    move-result v0

    return v0
.end method

.method public computeHorizontalScrollOffset(Lflyme/support/v7/widget/RecyclerView$State;)I
    .locals 1
    .param p1, "state"    # Lflyme/support/v7/widget/RecyclerView$State;

    .prologue
    .line 1039
    invoke-direct {p0, p1}, Lflyme/support/v7/widget/LinearLayoutManager;->computeScrollOffset(Lflyme/support/v7/widget/RecyclerView$State;)I

    move-result v0

    return v0
.end method

.method public computeHorizontalScrollRange(Lflyme/support/v7/widget/RecyclerView$State;)I
    .locals 1
    .param p1, "state"    # Lflyme/support/v7/widget/RecyclerView$State;

    .prologue
    .line 1059
    invoke-direct {p0, p1}, Lflyme/support/v7/widget/LinearLayoutManager;->computeScrollRange(Lflyme/support/v7/widget/RecyclerView$State;)I

    move-result v0

    return v0
.end method

.method public computeScrollVectorForPosition(I)Landroid/graphics/PointF;
    .locals 6
    .param p1, "targetPosition"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v5, 0x0

    .line 440
    invoke-virtual {p0}, Lflyme/support/v7/widget/LinearLayoutManager;->getChildCount()I

    move-result v4

    if-nez v4, :cond_0

    .line 441
    const/4 v2, 0x0

    .line 448
    :goto_0
    return-object v2

    .line 443
    :cond_0
    invoke-virtual {p0, v2}, Lflyme/support/v7/widget/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {p0, v4}, Lflyme/support/v7/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v1

    .line 444
    .local v1, "firstChildPos":I
    if-ge p1, v1, :cond_1

    move v2, v3

    :cond_1
    iget-boolean v4, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    if-eq v2, v4, :cond_2

    const/4 v0, -0x1

    .line 445
    .local v0, "direction":I
    :goto_1
    iget v2, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mOrientation:I

    if-nez v2, :cond_3

    .line 446
    new-instance v2, Landroid/graphics/PointF;

    int-to-float v3, v0

    invoke-direct {v2, v3, v5}, Landroid/graphics/PointF;-><init>(FF)V

    goto :goto_0

    .end local v0    # "direction":I
    :cond_2
    move v0, v3

    .line 444
    goto :goto_1

    .line 448
    .restart local v0    # "direction":I
    :cond_3
    new-instance v2, Landroid/graphics/PointF;

    int-to-float v3, v0

    invoke-direct {v2, v5, v3}, Landroid/graphics/PointF;-><init>(FF)V

    goto :goto_0
.end method

.method public computeVerticalScrollExtent(Lflyme/support/v7/widget/RecyclerView$State;)I
    .locals 1
    .param p1, "state"    # Lflyme/support/v7/widget/RecyclerView$State;

    .prologue
    .line 1054
    invoke-direct {p0, p1}, Lflyme/support/v7/widget/LinearLayoutManager;->computeScrollExtent(Lflyme/support/v7/widget/RecyclerView$State;)I

    move-result v0

    return v0
.end method

.method public computeVerticalScrollOffset(Lflyme/support/v7/widget/RecyclerView$State;)I
    .locals 1
    .param p1, "state"    # Lflyme/support/v7/widget/RecyclerView$State;

    .prologue
    .line 1044
    invoke-direct {p0, p1}, Lflyme/support/v7/widget/LinearLayoutManager;->computeScrollOffset(Lflyme/support/v7/widget/RecyclerView$State;)I

    move-result v0

    return v0
.end method

.method public computeVerticalScrollRange(Lflyme/support/v7/widget/RecyclerView$State;)I
    .locals 1
    .param p1, "state"    # Lflyme/support/v7/widget/RecyclerView$State;

    .prologue
    .line 1064
    invoke-direct {p0, p1}, Lflyme/support/v7/widget/LinearLayoutManager;->computeScrollRange(Lflyme/support/v7/widget/RecyclerView$State;)I

    move-result v0

    return v0
.end method

.method convertFocusDirectionToLayoutDirection(I)I
    .locals 4
    .param p1, "focusDirection"    # I

    .prologue
    const/4 v0, -0x1

    const/4 v2, 0x1

    const/high16 v1, -0x80000000

    .line 1480
    sparse-switch p1, :sswitch_data_0

    move v0, v1

    .line 1501
    :cond_0
    :goto_0
    :sswitch_0
    return v0

    :sswitch_1
    move v0, v2

    .line 1484
    goto :goto_0

    .line 1486
    :sswitch_2
    iget v3, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mOrientation:I

    if-eq v3, v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 1489
    :sswitch_3
    iget v0, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mOrientation:I

    if-ne v0, v2, :cond_1

    move v1, v2

    :cond_1
    move v0, v1

    goto :goto_0

    .line 1492
    :sswitch_4
    iget v2, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mOrientation:I

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 1495
    :sswitch_5
    iget v0, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mOrientation:I

    if-nez v0, :cond_2

    :goto_1
    move v0, v2

    goto :goto_0

    :cond_2
    move v2, v1

    goto :goto_1

    .line 1480
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x11 -> :sswitch_4
        0x21 -> :sswitch_2
        0x42 -> :sswitch_5
        0x82 -> :sswitch_3
    .end sparse-switch
.end method

.method createLayoutState()Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;
    .locals 1

    .prologue
    .line 957
    new-instance v0, Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;

    invoke-direct {v0}, Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;-><init>()V

    return-object v0
.end method

.method ensureLayoutState()V
    .locals 1

    .prologue
    .line 943
    iget-object v0, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mLayoutState:Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;

    if-nez v0, :cond_0

    .line 944
    invoke-virtual {p0}, Lflyme/support/v7/widget/LinearLayoutManager;->createLayoutState()Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;

    move-result-object v0

    iput-object v0, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mLayoutState:Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;

    .line 946
    :cond_0
    iget-object v0, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Lflyme/support/v7/widget/OrientationHelper;

    if-nez v0, :cond_1

    .line 947
    iget v0, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mOrientation:I

    invoke-static {p0, v0}, Lflyme/support/v7/widget/OrientationHelper;->createOrientationHelper(Lflyme/support/v7/widget/RecyclerView$LayoutManager;I)Lflyme/support/v7/widget/OrientationHelper;

    move-result-object v0

    iput-object v0, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Lflyme/support/v7/widget/OrientationHelper;

    .line 949
    :cond_1
    return-void
.end method

.method fill(Lflyme/support/v7/widget/RecyclerView$Recycler;Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;Lflyme/support/v7/widget/RecyclerView$State;Z)I
    .locals 7
    .param p1, "recycler"    # Lflyme/support/v7/widget/RecyclerView$Recycler;
    .param p2, "layoutState"    # Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;
    .param p3, "state"    # Lflyme/support/v7/widget/RecyclerView$State;
    .param p4, "stopOnFocusable"    # Z

    .prologue
    const/high16 v6, -0x80000000

    .line 1339
    iget v2, p2, Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;->mAvailable:I

    .line 1340
    .local v2, "start":I
    iget v3, p2, Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;->mScrollingOffset:I

    if-eq v3, v6, :cond_1

    .line 1342
    iget v3, p2, Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;->mAvailable:I

    if-gez v3, :cond_0

    .line 1343
    iget v3, p2, Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;->mScrollingOffset:I

    iget v4, p2, Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;->mAvailable:I

    add-int/2addr v3, v4

    iput v3, p2, Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;->mScrollingOffset:I

    .line 1345
    :cond_0
    invoke-direct {p0, p1, p2}, Lflyme/support/v7/widget/LinearLayoutManager;->recycleByLayoutState(Lflyme/support/v7/widget/RecyclerView$Recycler;Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;)V

    .line 1347
    :cond_1
    iget v3, p2, Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;->mAvailable:I

    iget v4, p2, Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;->mExtra:I

    add-int v1, v3, v4

    .line 1348
    .local v1, "remainingSpace":I
    new-instance v0, Lflyme/support/v7/widget/LinearLayoutManager$LayoutChunkResult;

    invoke-direct {v0}, Lflyme/support/v7/widget/LinearLayoutManager$LayoutChunkResult;-><init>()V

    .line 1350
    .local v0, "layoutChunkResult":Lflyme/support/v7/widget/LinearLayoutManager$LayoutChunkResult;
    :cond_2
    iget-boolean v3, p2, Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;->mInfinite:Z

    if-nez v3, :cond_3

    if-lez v1, :cond_4

    :cond_3
    invoke-virtual {p2, p3}, Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;->hasMore(Lflyme/support/v7/widget/RecyclerView$State;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1351
    invoke-virtual {v0}, Lflyme/support/v7/widget/LinearLayoutManager$LayoutChunkResult;->resetInternal()V

    .line 1352
    invoke-virtual {p0, p1, p3, p2, v0}, Lflyme/support/v7/widget/LinearLayoutManager;->layoutChunk(Lflyme/support/v7/widget/RecyclerView$Recycler;Lflyme/support/v7/widget/RecyclerView$State;Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;Lflyme/support/v7/widget/LinearLayoutManager$LayoutChunkResult;)V

    .line 1353
    iget-boolean v3, v0, Lflyme/support/v7/widget/LinearLayoutManager$LayoutChunkResult;->mFinished:Z

    if-eqz v3, :cond_5

    .line 1384
    :cond_4
    :goto_0
    iget v3, p2, Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;->mAvailable:I

    sub-int v3, v2, v3

    return v3

    .line 1356
    :cond_5
    iget v3, p2, Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;->mOffset:I

    iget v4, v0, Lflyme/support/v7/widget/LinearLayoutManager$LayoutChunkResult;->mConsumed:I

    iget v5, p2, Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;->mLayoutDirection:I

    mul-int/2addr v4, v5

    add-int/2addr v3, v4

    iput v3, p2, Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;->mOffset:I

    .line 1363
    iget-boolean v3, v0, Lflyme/support/v7/widget/LinearLayoutManager$LayoutChunkResult;->mIgnoreConsumed:Z

    if-eqz v3, :cond_6

    iget-object v3, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mLayoutState:Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;

    iget-object v3, v3, Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;->mScrapList:Ljava/util/List;

    if-nez v3, :cond_6

    invoke-virtual {p3}, Lflyme/support/v7/widget/RecyclerView$State;->isPreLayout()Z

    move-result v3

    if-nez v3, :cond_7

    .line 1365
    :cond_6
    iget v3, p2, Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;->mAvailable:I

    iget v4, v0, Lflyme/support/v7/widget/LinearLayoutManager$LayoutChunkResult;->mConsumed:I

    sub-int/2addr v3, v4

    iput v3, p2, Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;->mAvailable:I

    .line 1367
    iget v3, v0, Lflyme/support/v7/widget/LinearLayoutManager$LayoutChunkResult;->mConsumed:I

    sub-int/2addr v1, v3

    .line 1370
    :cond_7
    iget v3, p2, Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;->mScrollingOffset:I

    if-eq v3, v6, :cond_9

    .line 1371
    iget v3, p2, Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;->mScrollingOffset:I

    iget v4, v0, Lflyme/support/v7/widget/LinearLayoutManager$LayoutChunkResult;->mConsumed:I

    add-int/2addr v3, v4

    iput v3, p2, Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;->mScrollingOffset:I

    .line 1372
    iget v3, p2, Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;->mAvailable:I

    if-gez v3, :cond_8

    .line 1373
    iget v3, p2, Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;->mScrollingOffset:I

    iget v4, p2, Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;->mAvailable:I

    add-int/2addr v3, v4

    iput v3, p2, Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;->mScrollingOffset:I

    .line 1375
    :cond_8
    invoke-direct {p0, p1, p2}, Lflyme/support/v7/widget/LinearLayoutManager;->recycleByLayoutState(Lflyme/support/v7/widget/RecyclerView$Recycler;Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;)V

    .line 1377
    :cond_9
    if-eqz p4, :cond_2

    iget-boolean v3, v0, Lflyme/support/v7/widget/LinearLayoutManager$LayoutChunkResult;->mFocusable:Z

    if-eqz v3, :cond_2

    goto :goto_0
.end method

.method public findFirstVisibleItemPosition()I
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1653
    invoke-virtual {p0}, Lflyme/support/v7/widget/LinearLayoutManager;->getChildCount()I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {p0, v3, v1, v3, v2}, Lflyme/support/v7/widget/LinearLayoutManager;->findOneVisibleChild(IIZZ)Landroid/view/View;

    move-result-object v0

    .line 1654
    .local v0, "child":Landroid/view/View;
    if-nez v0, :cond_0

    const/4 v1, -0x1

    :goto_0
    return v1

    :cond_0
    invoke-virtual {p0, v0}, Lflyme/support/v7/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v1

    goto :goto_0
.end method

.method public findLastVisibleItemPosition()I
    .locals 5

    .prologue
    const/4 v1, -0x1

    .line 1693
    invoke-virtual {p0}, Lflyme/support/v7/widget/LinearLayoutManager;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {p0, v2, v1, v3, v4}, Lflyme/support/v7/widget/LinearLayoutManager;->findOneVisibleChild(IIZZ)Landroid/view/View;

    move-result-object v0

    .line 1694
    .local v0, "child":Landroid/view/View;
    if-nez v0, :cond_0

    :goto_0
    return v1

    :cond_0
    invoke-virtual {p0, v0}, Lflyme/support/v7/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v1

    goto :goto_0
.end method

.method findOneVisibleChild(IIZZ)Landroid/view/View;
    .locals 9
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .param p3, "completelyVisible"    # Z
    .param p4, "acceptPartiallyVisible"    # Z

    .prologue
    .line 1716
    invoke-virtual {p0}, Lflyme/support/v7/widget/LinearLayoutManager;->ensureLayoutState()V

    .line 1717
    iget-object v8, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Lflyme/support/v7/widget/OrientationHelper;

    invoke-virtual {v8}, Lflyme/support/v7/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v7

    .line 1718
    .local v7, "start":I
    iget-object v8, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Lflyme/support/v7/widget/OrientationHelper;

    invoke-virtual {v8}, Lflyme/support/v7/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v3

    .line 1719
    .local v3, "end":I
    if-le p2, p1, :cond_1

    const/4 v5, 0x1

    .line 1720
    .local v5, "next":I
    :goto_0
    const/4 v6, 0x0

    .line 1721
    .local v6, "partiallyVisible":Landroid/view/View;
    move v4, p1

    .local v4, "i":I
    :goto_1
    if-eq v4, p2, :cond_4

    .line 1722
    invoke-virtual {p0, v4}, Lflyme/support/v7/widget/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1723
    .local v0, "child":Landroid/view/View;
    iget-object v8, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Lflyme/support/v7/widget/OrientationHelper;

    invoke-virtual {v8, v0}, Lflyme/support/v7/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v2

    .line 1724
    .local v2, "childStart":I
    iget-object v8, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Lflyme/support/v7/widget/OrientationHelper;

    invoke-virtual {v8, v0}, Lflyme/support/v7/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v1

    .line 1725
    .local v1, "childEnd":I
    if-ge v2, v3, :cond_3

    if-le v1, v7, :cond_3

    .line 1726
    if-eqz p3, :cond_0

    .line 1727
    if-lt v2, v7, :cond_2

    if-gt v1, v3, :cond_2

    .line 1737
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "childEnd":I
    .end local v2    # "childStart":I
    :cond_0
    :goto_2
    return-object v0

    .line 1719
    .end local v4    # "i":I
    .end local v5    # "next":I
    .end local v6    # "partiallyVisible":Landroid/view/View;
    :cond_1
    const/4 v5, -0x1

    goto :goto_0

    .line 1729
    .restart local v0    # "child":Landroid/view/View;
    .restart local v1    # "childEnd":I
    .restart local v2    # "childStart":I
    .restart local v4    # "i":I
    .restart local v5    # "next":I
    .restart local v6    # "partiallyVisible":Landroid/view/View;
    :cond_2
    if-eqz p4, :cond_3

    if-nez v6, :cond_3

    .line 1730
    move-object v6, v0

    .line 1721
    :cond_3
    add-int/2addr v4, v5

    goto :goto_1

    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "childEnd":I
    .end local v2    # "childStart":I
    :cond_4
    move-object v0, v6

    .line 1737
    goto :goto_2
.end method

.method findReferenceChild(Lflyme/support/v7/widget/RecyclerView$Recycler;Lflyme/support/v7/widget/RecyclerView$State;III)Landroid/view/View;
    .locals 9
    .param p1, "recycler"    # Lflyme/support/v7/widget/RecyclerView$Recycler;
    .param p2, "state"    # Lflyme/support/v7/widget/RecyclerView$State;
    .param p3, "start"    # I
    .param p4, "end"    # I
    .param p5, "itemCount"    # I

    .prologue
    .line 1607
    invoke-virtual {p0}, Lflyme/support/v7/widget/LinearLayoutManager;->ensureLayoutState()V

    .line 1608
    const/4 v4, 0x0

    .line 1609
    .local v4, "invalidMatch":Landroid/view/View;
    const/4 v5, 0x0

    .line 1610
    .local v5, "outOfBoundsMatch":Landroid/view/View;
    iget-object v8, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Lflyme/support/v7/widget/OrientationHelper;

    invoke-virtual {v8}, Lflyme/support/v7/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v1

    .line 1611
    .local v1, "boundsStart":I
    iget-object v8, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Lflyme/support/v7/widget/OrientationHelper;

    invoke-virtual {v8}, Lflyme/support/v7/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v0

    .line 1612
    .local v0, "boundsEnd":I
    if-le p4, p3, :cond_1

    const/4 v2, 0x1

    .line 1613
    .local v2, "diff":I
    :goto_0
    move v3, p3

    .local v3, "i":I
    :goto_1
    if-eq v3, p4, :cond_4

    .line 1614
    invoke-virtual {p0, v3}, Lflyme/support/v7/widget/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 1615
    .local v7, "view":Landroid/view/View;
    invoke-virtual {p0, v7}, Lflyme/support/v7/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v6

    .line 1616
    .local v6, "position":I
    if-ltz v6, :cond_0

    if-ge v6, p5, :cond_0

    .line 1617
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Lflyme/support/v7/widget/RecyclerView$LayoutParams;

    invoke-virtual {v8}, Lflyme/support/v7/widget/RecyclerView$LayoutParams;->isItemRemoved()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1618
    if-nez v4, :cond_0

    .line 1619
    move-object v4, v7

    .line 1613
    :cond_0
    :goto_2
    add-int/2addr v3, v2

    goto :goto_1

    .line 1612
    .end local v2    # "diff":I
    .end local v3    # "i":I
    .end local v6    # "position":I
    .end local v7    # "view":Landroid/view/View;
    :cond_1
    const/4 v2, -0x1

    goto :goto_0

    .line 1621
    .restart local v2    # "diff":I
    .restart local v3    # "i":I
    .restart local v6    # "position":I
    .restart local v7    # "view":Landroid/view/View;
    :cond_2
    iget-object v8, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Lflyme/support/v7/widget/OrientationHelper;

    invoke-virtual {v8, v7}, Lflyme/support/v7/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v8

    if-ge v8, v0, :cond_3

    iget-object v8, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Lflyme/support/v7/widget/OrientationHelper;

    invoke-virtual {v8, v7}, Lflyme/support/v7/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v8

    if-ge v8, v1, :cond_5

    .line 1623
    :cond_3
    if-nez v5, :cond_0

    .line 1624
    move-object v5, v7

    goto :goto_2

    .line 1631
    .end local v6    # "position":I
    .end local v7    # "view":Landroid/view/View;
    :cond_4
    if-eqz v5, :cond_6

    .end local v5    # "outOfBoundsMatch":Landroid/view/View;
    :goto_3
    move-object v7, v5

    :cond_5
    return-object v7

    .restart local v5    # "outOfBoundsMatch":Landroid/view/View;
    :cond_6
    move-object v5, v4

    goto :goto_3
.end method

.method public findViewByPosition(I)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I

    .prologue
    .line 388
    invoke-virtual {p0}, Lflyme/support/v7/widget/LinearLayoutManager;->getChildCount()I

    move-result v1

    .line 389
    .local v1, "childCount":I
    if-nez v1, :cond_1

    .line 390
    const/4 v0, 0x0

    .line 401
    :cond_0
    :goto_0
    return-object v0

    .line 392
    :cond_1
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lflyme/support/v7/widget/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {p0, v4}, Lflyme/support/v7/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v2

    .line 393
    .local v2, "firstChild":I
    sub-int v3, p1, v2

    .line 394
    .local v3, "viewPosition":I
    if-ltz v3, :cond_2

    if-ge v3, v1, :cond_2

    .line 395
    invoke-virtual {p0, v3}, Lflyme/support/v7/widget/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 396
    .local v0, "child":Landroid/view/View;
    invoke-virtual {p0, v0}, Lflyme/support/v7/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v4

    if-eq v4, p1, :cond_0

    .line 401
    .end local v0    # "child":Landroid/view/View;
    :cond_2
    invoke-super {p0, p1}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public generateDefaultLayoutParams()Lflyme/support/v7/widget/RecyclerView$LayoutParams;
    .locals 2

    .prologue
    const/4 v1, -0x2

    .line 183
    new-instance v0, Lflyme/support/v7/widget/RecyclerView$LayoutParams;

    invoke-direct {v0, v1, v1}, Lflyme/support/v7/widget/RecyclerView$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method protected getExtraLayoutSpace(Lflyme/support/v7/widget/RecyclerView$State;)I
    .locals 1
    .param p1, "state"    # Lflyme/support/v7/widget/RecyclerView$State;

    .prologue
    .line 417
    invoke-virtual {p1}, Lflyme/support/v7/widget/RecyclerView$State;->hasTargetScrollPosition()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 418
    iget-object v0, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Lflyme/support/v7/widget/OrientationHelper;

    invoke-virtual {v0}, Lflyme/support/v7/widget/OrientationHelper;->getTotalSpace()I

    move-result v0

    .line 420
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getOrientation()I
    .locals 1

    .prologue
    .line 314
    iget v0, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mOrientation:I

    return v0
.end method

.method public getReverseLayout()Z
    .locals 1

    .prologue
    .line 357
    iget-boolean v0, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mReverseLayout:Z

    return v0
.end method

.method protected isLayoutRTL()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 939
    invoke-virtual {p0}, Lflyme/support/v7/widget/LinearLayoutManager;->getLayoutDirection()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method layoutChunk(Lflyme/support/v7/widget/RecyclerView$Recycler;Lflyme/support/v7/widget/RecyclerView$State;Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;Lflyme/support/v7/widget/LinearLayoutManager$LayoutChunkResult;)V
    .locals 11
    .param p1, "recycler"    # Lflyme/support/v7/widget/RecyclerView$Recycler;
    .param p2, "state"    # Lflyme/support/v7/widget/RecyclerView$State;
    .param p3, "layoutState"    # Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;
    .param p4, "result"    # Lflyme/support/v7/widget/LinearLayoutManager$LayoutChunkResult;

    .prologue
    .line 1390
    invoke-virtual {p3, p1}, Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;->next(Lflyme/support/v7/widget/RecyclerView$Recycler;)Landroid/view/View;

    move-result-object v1

    .line 1391
    .local v1, "view":Landroid/view/View;
    if-nez v1, :cond_0

    .line 1397
    const/4 v0, 0x1

    iput-boolean v0, p4, Lflyme/support/v7/widget/LinearLayoutManager$LayoutChunkResult;->mFinished:Z

    .line 1460
    :goto_0
    return-void

    .line 1400
    :cond_0
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Lflyme/support/v7/widget/RecyclerView$LayoutParams;

    .line 1401
    .local v8, "params":Lflyme/support/v7/widget/RecyclerView$LayoutParams;
    iget-object v0, p3, Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;->mScrapList:Ljava/util/List;

    if-nez v0, :cond_5

    .line 1402
    iget-boolean v2, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    iget v0, p3, Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;->mLayoutDirection:I

    const/4 v3, -0x1

    if-ne v0, v3, :cond_3

    const/4 v0, 0x1

    :goto_1
    if-ne v2, v0, :cond_4

    .line 1404
    invoke-virtual {p0, v1}, Lflyme/support/v7/widget/LinearLayoutManager;->addView(Landroid/view/View;)V

    .line 1416
    :goto_2
    const/4 v0, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v0, v2}, Lflyme/support/v7/widget/LinearLayoutManager;->measureChildWithMargins(Landroid/view/View;II)V

    .line 1417
    iget-object v0, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Lflyme/support/v7/widget/OrientationHelper;

    invoke-virtual {v0, v1}, Lflyme/support/v7/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v0

    iput v0, p4, Lflyme/support/v7/widget/LinearLayoutManager$LayoutChunkResult;->mConsumed:I

    .line 1419
    iget v0, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mOrientation:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_a

    .line 1420
    invoke-virtual {p0}, Lflyme/support/v7/widget/LinearLayoutManager;->isLayoutRTL()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1421
    invoke-virtual {p0}, Lflyme/support/v7/widget/LinearLayoutManager;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lflyme/support/v7/widget/LinearLayoutManager;->getPaddingRight()I

    move-result v2

    sub-int v9, v0, v2

    .line 1422
    .local v9, "right":I
    iget-object v0, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Lflyme/support/v7/widget/OrientationHelper;

    invoke-virtual {v0, v1}, Lflyme/support/v7/widget/OrientationHelper;->getDecoratedMeasurementInOther(Landroid/view/View;)I

    move-result v0

    sub-int v7, v9, v0

    .line 1427
    .local v7, "left":I
    :goto_3
    iget v0, p3, Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;->mLayoutDirection:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_9

    .line 1428
    iget v6, p3, Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;->mOffset:I

    .line 1429
    .local v6, "bottom":I
    iget v0, p3, Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;->mOffset:I

    iget v2, p4, Lflyme/support/v7/widget/LinearLayoutManager$LayoutChunkResult;->mConsumed:I

    sub-int v10, v0, v2

    .line 1448
    .local v10, "top":I
    :goto_4
    iget v0, v8, Lflyme/support/v7/widget/RecyclerView$LayoutParams;->leftMargin:I

    add-int v2, v7, v0

    iget v0, v8, Lflyme/support/v7/widget/RecyclerView$LayoutParams;->topMargin:I

    add-int v3, v10, v0

    iget v0, v8, Lflyme/support/v7/widget/RecyclerView$LayoutParams;->rightMargin:I

    sub-int v4, v9, v0

    iget v0, v8, Lflyme/support/v7/widget/RecyclerView$LayoutParams;->bottomMargin:I

    sub-int v5, v6, v0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lflyme/support/v7/widget/LinearLayoutManager;->layoutDecorated(Landroid/view/View;IIII)V

    .line 1456
    invoke-virtual {v8}, Lflyme/support/v7/widget/RecyclerView$LayoutParams;->isItemRemoved()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v8}, Lflyme/support/v7/widget/RecyclerView$LayoutParams;->isItemChanged()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1457
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p4, Lflyme/support/v7/widget/LinearLayoutManager$LayoutChunkResult;->mIgnoreConsumed:Z

    .line 1459
    :cond_2
    invoke-virtual {v1}, Landroid/view/View;->isFocusable()Z

    move-result v0

    iput-boolean v0, p4, Lflyme/support/v7/widget/LinearLayoutManager$LayoutChunkResult;->mFocusable:Z

    goto :goto_0

    .line 1402
    .end local v6    # "bottom":I
    .end local v7    # "left":I
    .end local v9    # "right":I
    .end local v10    # "top":I
    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    .line 1406
    :cond_4
    const/4 v0, 0x0

    invoke-virtual {p0, v1, v0}, Lflyme/support/v7/widget/LinearLayoutManager;->addView(Landroid/view/View;I)V

    goto :goto_2

    .line 1409
    :cond_5
    iget-boolean v2, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    iget v0, p3, Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;->mLayoutDirection:I

    const/4 v3, -0x1

    if-ne v0, v3, :cond_6

    const/4 v0, 0x1

    :goto_5
    if-ne v2, v0, :cond_7

    .line 1411
    invoke-virtual {p0, v1}, Lflyme/support/v7/widget/LinearLayoutManager;->addDisappearingView(Landroid/view/View;)V

    goto :goto_2

    .line 1409
    :cond_6
    const/4 v0, 0x0

    goto :goto_5

    .line 1413
    :cond_7
    const/4 v0, 0x0

    invoke-virtual {p0, v1, v0}, Lflyme/support/v7/widget/LinearLayoutManager;->addDisappearingView(Landroid/view/View;I)V

    goto :goto_2

    .line 1424
    :cond_8
    invoke-virtual {p0}, Lflyme/support/v7/widget/LinearLayoutManager;->getPaddingLeft()I

    move-result v7

    .line 1425
    .restart local v7    # "left":I
    iget-object v0, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Lflyme/support/v7/widget/OrientationHelper;

    invoke-virtual {v0, v1}, Lflyme/support/v7/widget/OrientationHelper;->getDecoratedMeasurementInOther(Landroid/view/View;)I

    move-result v0

    add-int v9, v7, v0

    .restart local v9    # "right":I
    goto :goto_3

    .line 1431
    :cond_9
    iget v10, p3, Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;->mOffset:I

    .line 1432
    .restart local v10    # "top":I
    iget v0, p3, Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;->mOffset:I

    iget v2, p4, Lflyme/support/v7/widget/LinearLayoutManager$LayoutChunkResult;->mConsumed:I

    add-int v6, v0, v2

    .restart local v6    # "bottom":I
    goto :goto_4

    .line 1435
    .end local v6    # "bottom":I
    .end local v7    # "left":I
    .end local v9    # "right":I
    .end local v10    # "top":I
    :cond_a
    invoke-virtual {p0}, Lflyme/support/v7/widget/LinearLayoutManager;->getPaddingTop()I

    move-result v10

    .line 1436
    .restart local v10    # "top":I
    iget-object v0, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Lflyme/support/v7/widget/OrientationHelper;

    invoke-virtual {v0, v1}, Lflyme/support/v7/widget/OrientationHelper;->getDecoratedMeasurementInOther(Landroid/view/View;)I

    move-result v0

    add-int v6, v10, v0

    .line 1438
    .restart local v6    # "bottom":I
    iget v0, p3, Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;->mLayoutDirection:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_b

    .line 1439
    iget v9, p3, Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;->mOffset:I

    .line 1440
    .restart local v9    # "right":I
    iget v0, p3, Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;->mOffset:I

    iget v2, p4, Lflyme/support/v7/widget/LinearLayoutManager$LayoutChunkResult;->mConsumed:I

    sub-int v7, v0, v2

    .restart local v7    # "left":I
    goto :goto_4

    .line 1442
    .end local v7    # "left":I
    .end local v9    # "right":I
    :cond_b
    iget v7, p3, Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;->mOffset:I

    .line 1443
    .restart local v7    # "left":I
    iget v0, p3, Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;->mOffset:I

    iget v2, p4, Lflyme/support/v7/widget/LinearLayoutManager$LayoutChunkResult;->mConsumed:I

    add-int v9, v0, v2

    .restart local v9    # "right":I
    goto :goto_4
.end method

.method onAnchorReady(Lflyme/support/v7/widget/RecyclerView$Recycler;Lflyme/support/v7/widget/RecyclerView$State;Lflyme/support/v7/widget/LinearLayoutManager$AnchorInfo;I)V
    .locals 0
    .param p1, "recycler"    # Lflyme/support/v7/widget/RecyclerView$Recycler;
    .param p2, "state"    # Lflyme/support/v7/widget/RecyclerView$State;
    .param p3, "anchorInfo"    # Lflyme/support/v7/widget/LinearLayoutManager$AnchorInfo;
    .param p4, "firstLayoutItemDirection"    # I

    .prologue
    .line 647
    return-void
.end method

.method public onDetachedFromWindow(Lflyme/support/v7/widget/RecyclerView;Lflyme/support/v7/widget/RecyclerView$Recycler;)V
    .locals 1
    .param p1, "view"    # Lflyme/support/v7/widget/RecyclerView;
    .param p2, "recycler"    # Lflyme/support/v7/widget/RecyclerView$Recycler;

    .prologue
    .line 217
    invoke-super {p0, p1, p2}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->onDetachedFromWindow(Lflyme/support/v7/widget/RecyclerView;Lflyme/support/v7/widget/RecyclerView$Recycler;)V

    .line 218
    iget-boolean v0, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mRecycleChildrenOnDetach:Z

    if-eqz v0, :cond_0

    .line 219
    invoke-virtual {p0, p2}, Lflyme/support/v7/widget/LinearLayoutManager;->removeAndRecycleAllViews(Lflyme/support/v7/widget/RecyclerView$Recycler;)V

    .line 220
    invoke-virtual {p2}, Lflyme/support/v7/widget/RecyclerView$Recycler;->clear()V

    .line 222
    :cond_0
    return-void
.end method

.method public onFocusSearchFailed(Landroid/view/View;ILflyme/support/v7/widget/RecyclerView$Recycler;Lflyme/support/v7/widget/RecyclerView$State;)Landroid/view/View;
    .locals 10
    .param p1, "focused"    # Landroid/view/View;
    .param p2, "focusDirection"    # I
    .param p3, "recycler"    # Lflyme/support/v7/widget/RecyclerView$Recycler;
    .param p4, "state"    # Lflyme/support/v7/widget/RecyclerView$State;

    .prologue
    const/4 v9, 0x0

    const/4 v8, -0x1

    const/high16 v7, -0x80000000

    const/4 v4, 0x0

    .line 1743
    invoke-direct {p0}, Lflyme/support/v7/widget/LinearLayoutManager;->resolveShouldLayoutReverse()V

    .line 1744
    invoke-virtual {p0}, Lflyme/support/v7/widget/LinearLayoutManager;->getChildCount()I

    move-result v5

    if-nez v5, :cond_1

    move-object v2, v4

    .line 1781
    :cond_0
    :goto_0
    return-object v2

    .line 1748
    :cond_1
    invoke-virtual {p0, p2}, Lflyme/support/v7/widget/LinearLayoutManager;->convertFocusDirectionToLayoutDirection(I)I

    move-result v0

    .line 1749
    .local v0, "layoutDir":I
    if-ne v0, v7, :cond_2

    move-object v2, v4

    .line 1750
    goto :goto_0

    .line 1752
    :cond_2
    invoke-virtual {p0}, Lflyme/support/v7/widget/LinearLayoutManager;->ensureLayoutState()V

    .line 1754
    if-ne v0, v8, :cond_3

    .line 1755
    invoke-direct {p0, p3, p4}, Lflyme/support/v7/widget/LinearLayoutManager;->findReferenceChildClosestToStart(Lflyme/support/v7/widget/RecyclerView$Recycler;Lflyme/support/v7/widget/RecyclerView$State;)Landroid/view/View;

    move-result-object v3

    .line 1759
    .local v3, "referenceChild":Landroid/view/View;
    :goto_1
    if-nez v3, :cond_4

    move-object v2, v4

    .line 1764
    goto :goto_0

    .line 1757
    .end local v3    # "referenceChild":Landroid/view/View;
    :cond_3
    invoke-direct {p0, p3, p4}, Lflyme/support/v7/widget/LinearLayoutManager;->findReferenceChildClosestToEnd(Lflyme/support/v7/widget/RecyclerView$Recycler;Lflyme/support/v7/widget/RecyclerView$State;)Landroid/view/View;

    move-result-object v3

    .restart local v3    # "referenceChild":Landroid/view/View;
    goto :goto_1

    .line 1766
    :cond_4
    invoke-virtual {p0}, Lflyme/support/v7/widget/LinearLayoutManager;->ensureLayoutState()V

    .line 1767
    const v5, 0x3ea8f5c3    # 0.33f

    iget-object v6, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Lflyme/support/v7/widget/OrientationHelper;

    invoke-virtual {v6}, Lflyme/support/v7/widget/OrientationHelper;->getTotalSpace()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v5, v6

    float-to-int v1, v5

    .line 1768
    .local v1, "maxScroll":I
    invoke-direct {p0, v0, v1, v9, p4}, Lflyme/support/v7/widget/LinearLayoutManager;->updateLayoutState(IIZLflyme/support/v7/widget/RecyclerView$State;)V

    .line 1769
    iget-object v5, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mLayoutState:Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;

    iput v7, v5, Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;->mScrollingOffset:I

    .line 1770
    iget-object v5, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mLayoutState:Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;

    iput-boolean v9, v5, Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;->mRecycle:Z

    .line 1771
    iget-object v5, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mLayoutState:Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;

    const/4 v6, 0x1

    invoke-virtual {p0, p3, v5, p4, v6}, Lflyme/support/v7/widget/LinearLayoutManager;->fill(Lflyme/support/v7/widget/RecyclerView$Recycler;Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;Lflyme/support/v7/widget/RecyclerView$State;Z)I

    .line 1773
    if-ne v0, v8, :cond_6

    .line 1774
    invoke-direct {p0}, Lflyme/support/v7/widget/LinearLayoutManager;->getChildClosestToStart()Landroid/view/View;

    move-result-object v2

    .line 1778
    .local v2, "nextFocus":Landroid/view/View;
    :goto_2
    if-eq v2, v3, :cond_5

    invoke-virtual {v2}, Landroid/view/View;->isFocusable()Z

    move-result v5

    if-nez v5, :cond_0

    :cond_5
    move-object v2, v4

    .line 1779
    goto :goto_0

    .line 1776
    .end local v2    # "nextFocus":Landroid/view/View;
    :cond_6
    invoke-direct {p0}, Lflyme/support/v7/widget/LinearLayoutManager;->getChildClosestToEnd()Landroid/view/View;

    move-result-object v2

    .restart local v2    # "nextFocus":Landroid/view/View;
    goto :goto_2
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 226
    invoke-super {p0, p1}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 227
    invoke-virtual {p0}, Lflyme/support/v7/widget/LinearLayoutManager;->getChildCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 228
    invoke-static {p1}, Landroid/support/v4/view/accessibility/AccessibilityEventCompat;->asRecord(Landroid/view/accessibility/AccessibilityEvent;)Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;

    move-result-object v0

    .line 230
    .local v0, "record":Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;
    invoke-virtual {p0}, Lflyme/support/v7/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->setFromIndex(I)V

    .line 231
    invoke-virtual {p0}, Lflyme/support/v7/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->setToIndex(I)V

    .line 233
    .end local v0    # "record":Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;
    :cond_0
    return-void
.end method

.method public onLayoutChildren(Lflyme/support/v7/widget/RecyclerView$Recycler;Lflyme/support/v7/widget/RecyclerView$State;)V
    .locals 20
    .param p1, "recycler"    # Lflyme/support/v7/widget/RecyclerView$Recycler;
    .param p2, "state"    # Lflyme/support/v7/widget/RecyclerView$State;

    .prologue
    .line 467
    move-object/from16 v0, p0

    iget-object v0, v0, Lflyme/support/v7/widget/LinearLayoutManager;->mPendingSavedState:Lflyme/support/v7/widget/LinearLayoutManager$SavedState;

    move-object/from16 v17, v0

    if-nez v17, :cond_0

    move-object/from16 v0, p0

    iget v0, v0, Lflyme/support/v7/widget/LinearLayoutManager;->mPendingScrollPosition:I

    move/from16 v17, v0

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_1

    .line 468
    :cond_0
    invoke-virtual/range {p2 .. p2}, Lflyme/support/v7/widget/RecyclerView$State;->getItemCount()I

    move-result v17

    if-nez v17, :cond_1

    .line 469
    invoke-virtual/range {p0 .. p1}, Lflyme/support/v7/widget/LinearLayoutManager;->removeAndRecycleAllViews(Lflyme/support/v7/widget/RecyclerView$Recycler;)V

    .line 634
    :goto_0
    return-void

    .line 473
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lflyme/support/v7/widget/LinearLayoutManager;->mPendingSavedState:Lflyme/support/v7/widget/LinearLayoutManager$SavedState;

    move-object/from16 v17, v0

    if-eqz v17, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lflyme/support/v7/widget/LinearLayoutManager;->mPendingSavedState:Lflyme/support/v7/widget/LinearLayoutManager$SavedState;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lflyme/support/v7/widget/LinearLayoutManager$SavedState;->hasValidAnchor()Z

    move-result v17

    if-eqz v17, :cond_2

    .line 474
    move-object/from16 v0, p0

    iget-object v0, v0, Lflyme/support/v7/widget/LinearLayoutManager;->mPendingSavedState:Lflyme/support/v7/widget/LinearLayoutManager$SavedState;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lflyme/support/v7/widget/LinearLayoutManager$SavedState;->mAnchorPosition:I

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lflyme/support/v7/widget/LinearLayoutManager;->mPendingScrollPosition:I

    .line 477
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lflyme/support/v7/widget/LinearLayoutManager;->ensureLayoutState()V

    .line 478
    move-object/from16 v0, p0

    iget-object v0, v0, Lflyme/support/v7/widget/LinearLayoutManager;->mLayoutState:Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput-boolean v0, v1, Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;->mRecycle:Z

    .line 480
    invoke-direct/range {p0 .. p0}, Lflyme/support/v7/widget/LinearLayoutManager;->resolveShouldLayoutReverse()V

    .line 482
    move-object/from16 v0, p0

    iget-object v0, v0, Lflyme/support/v7/widget/LinearLayoutManager;->mAnchorInfo:Lflyme/support/v7/widget/LinearLayoutManager$AnchorInfo;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lflyme/support/v7/widget/LinearLayoutManager$AnchorInfo;->reset()V

    .line 483
    move-object/from16 v0, p0

    iget-object v0, v0, Lflyme/support/v7/widget/LinearLayoutManager;->mAnchorInfo:Lflyme/support/v7/widget/LinearLayoutManager$AnchorInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lflyme/support/v7/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lflyme/support/v7/widget/LinearLayoutManager;->mStackFromEnd:Z

    move/from16 v19, v0

    xor-int v18, v18, v19

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput-boolean v0, v1, Lflyme/support/v7/widget/LinearLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    .line 486
    move-object/from16 v0, p0

    iget-object v0, v0, Lflyme/support/v7/widget/LinearLayoutManager;->mAnchorInfo:Lflyme/support/v7/widget/LinearLayoutManager$AnchorInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, v17

    invoke-direct {v0, v1, v2, v3}, Lflyme/support/v7/widget/LinearLayoutManager;->updateAnchorInfoForLayout(Lflyme/support/v7/widget/RecyclerView$Recycler;Lflyme/support/v7/widget/RecyclerView$State;Lflyme/support/v7/widget/LinearLayoutManager$AnchorInfo;)V

    .line 495
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lflyme/support/v7/widget/LinearLayoutManager;->getExtraLayoutSpace(Lflyme/support/v7/widget/RecyclerView$State;)I

    move-result v8

    .line 498
    .local v8, "extra":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lflyme/support/v7/widget/LinearLayoutManager;->mLayoutState:Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;->mLastScrollDelta:I

    move/from16 v17, v0

    if-ltz v17, :cond_8

    .line 499
    move v9, v8

    .line 500
    .local v9, "extraForEnd":I
    const/4 v10, 0x0

    .line 505
    .local v10, "extraForStart":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lflyme/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Lflyme/support/v7/widget/OrientationHelper;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lflyme/support/v7/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v17

    add-int v10, v10, v17

    .line 506
    move-object/from16 v0, p0

    iget-object v0, v0, Lflyme/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Lflyme/support/v7/widget/OrientationHelper;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lflyme/support/v7/widget/OrientationHelper;->getEndPadding()I

    move-result v17

    add-int v9, v9, v17

    .line 507
    invoke-virtual/range {p2 .. p2}, Lflyme/support/v7/widget/RecyclerView$State;->isPreLayout()Z

    move-result v17

    if-eqz v17, :cond_3

    move-object/from16 v0, p0

    iget v0, v0, Lflyme/support/v7/widget/LinearLayoutManager;->mPendingScrollPosition:I

    move/from16 v17, v0

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_3

    move-object/from16 v0, p0

    iget v0, v0, Lflyme/support/v7/widget/LinearLayoutManager;->mPendingScrollPositionOffset:I

    move/from16 v17, v0

    const/high16 v18, -0x80000000

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_3

    .line 512
    move-object/from16 v0, p0

    iget v0, v0, Lflyme/support/v7/widget/LinearLayoutManager;->mPendingScrollPosition:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lflyme/support/v7/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v7

    .line 513
    .local v7, "existing":Landroid/view/View;
    if-eqz v7, :cond_3

    .line 516
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lflyme/support/v7/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    move/from16 v17, v0

    if-eqz v17, :cond_9

    .line 517
    move-object/from16 v0, p0

    iget-object v0, v0, Lflyme/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Lflyme/support/v7/widget/OrientationHelper;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lflyme/support/v7/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lflyme/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Lflyme/support/v7/widget/OrientationHelper;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Lflyme/support/v7/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v18

    sub-int v5, v17, v18

    .line 519
    .local v5, "current":I
    move-object/from16 v0, p0

    iget v0, v0, Lflyme/support/v7/widget/LinearLayoutManager;->mPendingScrollPositionOffset:I

    move/from16 v17, v0

    sub-int v16, v5, v17

    .line 525
    .local v16, "upcomingOffset":I
    :goto_2
    if-lez v16, :cond_a

    .line 526
    add-int v10, v10, v16

    .line 535
    .end local v5    # "current":I
    .end local v7    # "existing":Landroid/view/View;
    .end local v16    # "upcomingOffset":I
    :cond_3
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lflyme/support/v7/widget/LinearLayoutManager;->mAnchorInfo:Lflyme/support/v7/widget/LinearLayoutManager$AnchorInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-boolean v0, v0, Lflyme/support/v7/widget/LinearLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    move/from16 v17, v0

    if-eqz v17, :cond_c

    .line 536
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lflyme/support/v7/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    move/from16 v17, v0

    if-eqz v17, :cond_b

    const/4 v12, 0x1

    .line 543
    .local v12, "firstLayoutDirection":I
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lflyme/support/v7/widget/LinearLayoutManager;->mAnchorInfo:Lflyme/support/v7/widget/LinearLayoutManager$AnchorInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, v17

    invoke-virtual {v0, v1, v2, v3, v12}, Lflyme/support/v7/widget/LinearLayoutManager;->onAnchorReady(Lflyme/support/v7/widget/RecyclerView$Recycler;Lflyme/support/v7/widget/RecyclerView$State;Lflyme/support/v7/widget/LinearLayoutManager$AnchorInfo;I)V

    .line 545
    invoke-virtual/range {p0 .. p1}, Lflyme/support/v7/widget/LinearLayoutManager;->detachAndScrapAttachedViews(Lflyme/support/v7/widget/RecyclerView$Recycler;)V

    .line 546
    move-object/from16 v0, p0

    iget-object v0, v0, Lflyme/support/v7/widget/LinearLayoutManager;->mLayoutState:Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lflyme/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Lflyme/support/v7/widget/OrientationHelper;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lflyme/support/v7/widget/OrientationHelper;->getMode()I

    move-result v17

    if-nez v17, :cond_e

    const/16 v17, 0x1

    :goto_5
    move/from16 v0, v17

    move-object/from16 v1, v18

    iput-boolean v0, v1, Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;->mInfinite:Z

    .line 547
    move-object/from16 v0, p0

    iget-object v0, v0, Lflyme/support/v7/widget/LinearLayoutManager;->mLayoutState:Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;

    move-object/from16 v17, v0

    invoke-virtual/range {p2 .. p2}, Lflyme/support/v7/widget/RecyclerView$State;->isPreLayout()Z

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput-boolean v0, v1, Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;->mIsPreLayout:Z

    .line 548
    move-object/from16 v0, p0

    iget-object v0, v0, Lflyme/support/v7/widget/LinearLayoutManager;->mAnchorInfo:Lflyme/support/v7/widget/LinearLayoutManager$AnchorInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-boolean v0, v0, Lflyme/support/v7/widget/LinearLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    move/from16 v17, v0

    if-eqz v17, :cond_f

    .line 550
    move-object/from16 v0, p0

    iget-object v0, v0, Lflyme/support/v7/widget/LinearLayoutManager;->mAnchorInfo:Lflyme/support/v7/widget/LinearLayoutManager$AnchorInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lflyme/support/v7/widget/LinearLayoutManager;->updateLayoutStateToFillStart(Lflyme/support/v7/widget/LinearLayoutManager$AnchorInfo;)V

    .line 551
    move-object/from16 v0, p0

    iget-object v0, v0, Lflyme/support/v7/widget/LinearLayoutManager;->mLayoutState:Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iput v10, v0, Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;->mExtra:I

    .line 552
    move-object/from16 v0, p0

    iget-object v0, v0, Lflyme/support/v7/widget/LinearLayoutManager;->mLayoutState:Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v17

    move-object/from16 v3, p2

    move/from16 v4, v18

    invoke-virtual {v0, v1, v2, v3, v4}, Lflyme/support/v7/widget/LinearLayoutManager;->fill(Lflyme/support/v7/widget/RecyclerView$Recycler;Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;Lflyme/support/v7/widget/RecyclerView$State;Z)I

    .line 553
    move-object/from16 v0, p0

    iget-object v0, v0, Lflyme/support/v7/widget/LinearLayoutManager;->mLayoutState:Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v15, v0, Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;->mOffset:I

    .line 554
    .local v15, "startOffset":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lflyme/support/v7/widget/LinearLayoutManager;->mLayoutState:Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v11, v0, Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    .line 555
    .local v11, "firstElement":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lflyme/support/v7/widget/LinearLayoutManager;->mLayoutState:Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;->mAvailable:I

    move/from16 v17, v0

    if-lez v17, :cond_4

    .line 556
    move-object/from16 v0, p0

    iget-object v0, v0, Lflyme/support/v7/widget/LinearLayoutManager;->mLayoutState:Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;->mAvailable:I

    move/from16 v17, v0

    add-int v9, v9, v17

    .line 559
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lflyme/support/v7/widget/LinearLayoutManager;->mAnchorInfo:Lflyme/support/v7/widget/LinearLayoutManager$AnchorInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lflyme/support/v7/widget/LinearLayoutManager;->updateLayoutStateToFillEnd(Lflyme/support/v7/widget/LinearLayoutManager$AnchorInfo;)V

    .line 560
    move-object/from16 v0, p0

    iget-object v0, v0, Lflyme/support/v7/widget/LinearLayoutManager;->mLayoutState:Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iput v9, v0, Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;->mExtra:I

    .line 561
    move-object/from16 v0, p0

    iget-object v0, v0, Lflyme/support/v7/widget/LinearLayoutManager;->mLayoutState:Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lflyme/support/v7/widget/LinearLayoutManager;->mLayoutState:Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;->mItemDirection:I

    move/from16 v19, v0

    add-int v18, v18, v19

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    .line 562
    move-object/from16 v0, p0

    iget-object v0, v0, Lflyme/support/v7/widget/LinearLayoutManager;->mLayoutState:Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v17

    move-object/from16 v3, p2

    move/from16 v4, v18

    invoke-virtual {v0, v1, v2, v3, v4}, Lflyme/support/v7/widget/LinearLayoutManager;->fill(Lflyme/support/v7/widget/RecyclerView$Recycler;Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;Lflyme/support/v7/widget/RecyclerView$State;Z)I

    .line 563
    move-object/from16 v0, p0

    iget-object v0, v0, Lflyme/support/v7/widget/LinearLayoutManager;->mLayoutState:Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v6, v0, Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;->mOffset:I

    .line 565
    .local v6, "endOffset":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lflyme/support/v7/widget/LinearLayoutManager;->mLayoutState:Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;->mAvailable:I

    move/from16 v17, v0

    if-lez v17, :cond_5

    .line 567
    move-object/from16 v0, p0

    iget-object v0, v0, Lflyme/support/v7/widget/LinearLayoutManager;->mLayoutState:Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v10, v0, Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;->mAvailable:I

    .line 568
    move-object/from16 v0, p0

    invoke-direct {v0, v11, v15}, Lflyme/support/v7/widget/LinearLayoutManager;->updateLayoutStateToFillStart(II)V

    .line 569
    move-object/from16 v0, p0

    iget-object v0, v0, Lflyme/support/v7/widget/LinearLayoutManager;->mLayoutState:Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iput v10, v0, Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;->mExtra:I

    .line 570
    move-object/from16 v0, p0

    iget-object v0, v0, Lflyme/support/v7/widget/LinearLayoutManager;->mLayoutState:Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v17

    move-object/from16 v3, p2

    move/from16 v4, v18

    invoke-virtual {v0, v1, v2, v3, v4}, Lflyme/support/v7/widget/LinearLayoutManager;->fill(Lflyme/support/v7/widget/RecyclerView$Recycler;Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;Lflyme/support/v7/widget/RecyclerView$State;Z)I

    .line 571
    move-object/from16 v0, p0

    iget-object v0, v0, Lflyme/support/v7/widget/LinearLayoutManager;->mLayoutState:Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v15, v0, Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;->mOffset:I

    .line 603
    .end local v11    # "firstElement":I
    :cond_5
    :goto_6
    invoke-virtual/range {p0 .. p0}, Lflyme/support/v7/widget/LinearLayoutManager;->getChildCount()I

    move-result v17

    if-lez v17, :cond_6

    .line 607
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lflyme/support/v7/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lflyme/support/v7/widget/LinearLayoutManager;->mStackFromEnd:Z

    move/from16 v18, v0

    xor-int v17, v17, v18

    if-eqz v17, :cond_11

    .line 608
    const/16 v17, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, v17

    invoke-direct {v0, v6, v1, v2, v3}, Lflyme/support/v7/widget/LinearLayoutManager;->fixLayoutEndGap(ILflyme/support/v7/widget/RecyclerView$Recycler;Lflyme/support/v7/widget/RecyclerView$State;Z)I

    move-result v13

    .line 609
    .local v13, "fixOffset":I
    add-int/2addr v15, v13

    .line 610
    add-int/2addr v6, v13

    .line 611
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, v17

    invoke-direct {v0, v15, v1, v2, v3}, Lflyme/support/v7/widget/LinearLayoutManager;->fixLayoutStartGap(ILflyme/support/v7/widget/RecyclerView$Recycler;Lflyme/support/v7/widget/RecyclerView$State;Z)I

    move-result v13

    .line 612
    add-int/2addr v15, v13

    .line 613
    add-int/2addr v6, v13

    .line 623
    .end local v13    # "fixOffset":I
    :cond_6
    :goto_7
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2, v15, v6}, Lflyme/support/v7/widget/LinearLayoutManager;->layoutForPredictiveAnimations(Lflyme/support/v7/widget/RecyclerView$Recycler;Lflyme/support/v7/widget/RecyclerView$State;II)V

    .line 624
    invoke-virtual/range {p2 .. p2}, Lflyme/support/v7/widget/RecyclerView$State;->isPreLayout()Z

    move-result v17

    if-nez v17, :cond_7

    .line 625
    const/16 v17, -0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lflyme/support/v7/widget/LinearLayoutManager;->mPendingScrollPosition:I

    .line 626
    const/high16 v17, -0x80000000

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lflyme/support/v7/widget/LinearLayoutManager;->mPendingScrollPositionOffset:I

    .line 627
    move-object/from16 v0, p0

    iget-object v0, v0, Lflyme/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Lflyme/support/v7/widget/OrientationHelper;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lflyme/support/v7/widget/OrientationHelper;->onLayoutComplete()V

    .line 629
    :cond_7
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lflyme/support/v7/widget/LinearLayoutManager;->mStackFromEnd:Z

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lflyme/support/v7/widget/LinearLayoutManager;->mLastStackFromEnd:Z

    .line 630
    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lflyme/support/v7/widget/LinearLayoutManager;->mPendingSavedState:Lflyme/support/v7/widget/LinearLayoutManager$SavedState;

    goto/16 :goto_0

    .line 502
    .end local v6    # "endOffset":I
    .end local v9    # "extraForEnd":I
    .end local v10    # "extraForStart":I
    .end local v12    # "firstLayoutDirection":I
    .end local v15    # "startOffset":I
    :cond_8
    move v10, v8

    .line 503
    .restart local v10    # "extraForStart":I
    const/4 v9, 0x0

    .restart local v9    # "extraForEnd":I
    goto/16 :goto_1

    .line 521
    .restart local v7    # "existing":Landroid/view/View;
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lflyme/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Lflyme/support/v7/widget/OrientationHelper;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Lflyme/support/v7/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lflyme/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Lflyme/support/v7/widget/OrientationHelper;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lflyme/support/v7/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v18

    sub-int v5, v17, v18

    .line 523
    .restart local v5    # "current":I
    move-object/from16 v0, p0

    iget v0, v0, Lflyme/support/v7/widget/LinearLayoutManager;->mPendingScrollPositionOffset:I

    move/from16 v17, v0

    sub-int v16, v17, v5

    .restart local v16    # "upcomingOffset":I
    goto/16 :goto_2

    .line 528
    :cond_a
    sub-int v9, v9, v16

    goto/16 :goto_3

    .line 536
    .end local v5    # "current":I
    .end local v7    # "existing":Landroid/view/View;
    .end local v16    # "upcomingOffset":I
    :cond_b
    const/4 v12, -0x1

    goto/16 :goto_4

    .line 539
    :cond_c
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lflyme/support/v7/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    move/from16 v17, v0

    if-eqz v17, :cond_d

    const/4 v12, -0x1

    .restart local v12    # "firstLayoutDirection":I
    :goto_8
    goto/16 :goto_4

    .end local v12    # "firstLayoutDirection":I
    :cond_d
    const/4 v12, 0x1

    goto :goto_8

    .line 546
    .restart local v12    # "firstLayoutDirection":I
    :cond_e
    const/16 v17, 0x0

    goto/16 :goto_5

    .line 575
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lflyme/support/v7/widget/LinearLayoutManager;->mAnchorInfo:Lflyme/support/v7/widget/LinearLayoutManager$AnchorInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lflyme/support/v7/widget/LinearLayoutManager;->updateLayoutStateToFillEnd(Lflyme/support/v7/widget/LinearLayoutManager$AnchorInfo;)V

    .line 576
    move-object/from16 v0, p0

    iget-object v0, v0, Lflyme/support/v7/widget/LinearLayoutManager;->mLayoutState:Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iput v9, v0, Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;->mExtra:I

    .line 577
    move-object/from16 v0, p0

    iget-object v0, v0, Lflyme/support/v7/widget/LinearLayoutManager;->mLayoutState:Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v17

    move-object/from16 v3, p2

    move/from16 v4, v18

    invoke-virtual {v0, v1, v2, v3, v4}, Lflyme/support/v7/widget/LinearLayoutManager;->fill(Lflyme/support/v7/widget/RecyclerView$Recycler;Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;Lflyme/support/v7/widget/RecyclerView$State;Z)I

    .line 578
    move-object/from16 v0, p0

    iget-object v0, v0, Lflyme/support/v7/widget/LinearLayoutManager;->mLayoutState:Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v6, v0, Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;->mOffset:I

    .line 579
    .restart local v6    # "endOffset":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lflyme/support/v7/widget/LinearLayoutManager;->mLayoutState:Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v14, v0, Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    .line 580
    .local v14, "lastElement":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lflyme/support/v7/widget/LinearLayoutManager;->mLayoutState:Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;->mAvailable:I

    move/from16 v17, v0

    if-lez v17, :cond_10

    .line 581
    move-object/from16 v0, p0

    iget-object v0, v0, Lflyme/support/v7/widget/LinearLayoutManager;->mLayoutState:Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;->mAvailable:I

    move/from16 v17, v0

    add-int v10, v10, v17

    .line 584
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lflyme/support/v7/widget/LinearLayoutManager;->mAnchorInfo:Lflyme/support/v7/widget/LinearLayoutManager$AnchorInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lflyme/support/v7/widget/LinearLayoutManager;->updateLayoutStateToFillStart(Lflyme/support/v7/widget/LinearLayoutManager$AnchorInfo;)V

    .line 585
    move-object/from16 v0, p0

    iget-object v0, v0, Lflyme/support/v7/widget/LinearLayoutManager;->mLayoutState:Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iput v10, v0, Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;->mExtra:I

    .line 586
    move-object/from16 v0, p0

    iget-object v0, v0, Lflyme/support/v7/widget/LinearLayoutManager;->mLayoutState:Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lflyme/support/v7/widget/LinearLayoutManager;->mLayoutState:Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;->mItemDirection:I

    move/from16 v19, v0

    add-int v18, v18, v19

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    .line 587
    move-object/from16 v0, p0

    iget-object v0, v0, Lflyme/support/v7/widget/LinearLayoutManager;->mLayoutState:Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v17

    move-object/from16 v3, p2

    move/from16 v4, v18

    invoke-virtual {v0, v1, v2, v3, v4}, Lflyme/support/v7/widget/LinearLayoutManager;->fill(Lflyme/support/v7/widget/RecyclerView$Recycler;Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;Lflyme/support/v7/widget/RecyclerView$State;Z)I

    .line 588
    move-object/from16 v0, p0

    iget-object v0, v0, Lflyme/support/v7/widget/LinearLayoutManager;->mLayoutState:Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v15, v0, Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;->mOffset:I

    .line 590
    .restart local v15    # "startOffset":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lflyme/support/v7/widget/LinearLayoutManager;->mLayoutState:Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;->mAvailable:I

    move/from16 v17, v0

    if-lez v17, :cond_5

    .line 591
    move-object/from16 v0, p0

    iget-object v0, v0, Lflyme/support/v7/widget/LinearLayoutManager;->mLayoutState:Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v9, v0, Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;->mAvailable:I

    .line 593
    move-object/from16 v0, p0

    invoke-direct {v0, v14, v6}, Lflyme/support/v7/widget/LinearLayoutManager;->updateLayoutStateToFillEnd(II)V

    .line 594
    move-object/from16 v0, p0

    iget-object v0, v0, Lflyme/support/v7/widget/LinearLayoutManager;->mLayoutState:Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iput v9, v0, Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;->mExtra:I

    .line 595
    move-object/from16 v0, p0

    iget-object v0, v0, Lflyme/support/v7/widget/LinearLayoutManager;->mLayoutState:Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v17

    move-object/from16 v3, p2

    move/from16 v4, v18

    invoke-virtual {v0, v1, v2, v3, v4}, Lflyme/support/v7/widget/LinearLayoutManager;->fill(Lflyme/support/v7/widget/RecyclerView$Recycler;Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;Lflyme/support/v7/widget/RecyclerView$State;Z)I

    .line 596
    move-object/from16 v0, p0

    iget-object v0, v0, Lflyme/support/v7/widget/LinearLayoutManager;->mLayoutState:Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v6, v0, Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;->mOffset:I

    goto/16 :goto_6

    .line 615
    .end local v14    # "lastElement":I
    :cond_11
    const/16 v17, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, v17

    invoke-direct {v0, v15, v1, v2, v3}, Lflyme/support/v7/widget/LinearLayoutManager;->fixLayoutStartGap(ILflyme/support/v7/widget/RecyclerView$Recycler;Lflyme/support/v7/widget/RecyclerView$State;Z)I

    move-result v13

    .line 616
    .restart local v13    # "fixOffset":I
    add-int/2addr v15, v13

    .line 617
    add-int/2addr v6, v13

    .line 618
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, v17

    invoke-direct {v0, v6, v1, v2, v3}, Lflyme/support/v7/widget/LinearLayoutManager;->fixLayoutEndGap(ILflyme/support/v7/widget/RecyclerView$Recycler;Lflyme/support/v7/widget/RecyclerView$State;Z)I

    move-result v13

    .line 619
    add-int/2addr v15, v13

    .line 620
    add-int/2addr v6, v13

    goto/16 :goto_7
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 264
    instance-of v0, p1, Lflyme/support/v7/widget/LinearLayoutManager$SavedState;

    if-eqz v0, :cond_0

    .line 265
    check-cast p1, Lflyme/support/v7/widget/LinearLayoutManager$SavedState;

    .end local p1    # "state":Landroid/os/Parcelable;
    iput-object p1, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mPendingSavedState:Lflyme/support/v7/widget/LinearLayoutManager$SavedState;

    .line 266
    invoke-virtual {p0}, Lflyme/support/v7/widget/LinearLayoutManager;->requestLayout()V

    .line 273
    :cond_0
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 5

    .prologue
    .line 237
    iget-object v3, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mPendingSavedState:Lflyme/support/v7/widget/LinearLayoutManager$SavedState;

    if-eqz v3, :cond_0

    .line 238
    new-instance v2, Lflyme/support/v7/widget/LinearLayoutManager$SavedState;

    iget-object v3, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mPendingSavedState:Lflyme/support/v7/widget/LinearLayoutManager$SavedState;

    invoke-direct {v2, v3}, Lflyme/support/v7/widget/LinearLayoutManager$SavedState;-><init>(Lflyme/support/v7/widget/LinearLayoutManager$SavedState;)V

    .line 259
    :goto_0
    return-object v2

    .line 240
    :cond_0
    new-instance v2, Lflyme/support/v7/widget/LinearLayoutManager$SavedState;

    invoke-direct {v2}, Lflyme/support/v7/widget/LinearLayoutManager$SavedState;-><init>()V

    .line 241
    .local v2, "state":Lflyme/support/v7/widget/LinearLayoutManager$SavedState;
    invoke-virtual {p0}, Lflyme/support/v7/widget/LinearLayoutManager;->getChildCount()I

    move-result v3

    if-lez v3, :cond_2

    .line 242
    invoke-virtual {p0}, Lflyme/support/v7/widget/LinearLayoutManager;->ensureLayoutState()V

    .line 243
    iget-boolean v3, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mLastStackFromEnd:Z

    iget-boolean v4, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    xor-int v0, v3, v4

    .line 244
    .local v0, "didLayoutFromEnd":Z
    iput-boolean v0, v2, Lflyme/support/v7/widget/LinearLayoutManager$SavedState;->mAnchorLayoutFromEnd:Z

    .line 245
    if-eqz v0, :cond_1

    .line 246
    invoke-direct {p0}, Lflyme/support/v7/widget/LinearLayoutManager;->getChildClosestToEnd()Landroid/view/View;

    move-result-object v1

    .line 247
    .local v1, "refChild":Landroid/view/View;
    iget-object v3, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Lflyme/support/v7/widget/OrientationHelper;

    invoke-virtual {v3}, Lflyme/support/v7/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v3

    iget-object v4, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Lflyme/support/v7/widget/OrientationHelper;

    invoke-virtual {v4, v1}, Lflyme/support/v7/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v4

    sub-int/2addr v3, v4

    iput v3, v2, Lflyme/support/v7/widget/LinearLayoutManager$SavedState;->mAnchorOffset:I

    .line 249
    invoke-virtual {p0, v1}, Lflyme/support/v7/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v3

    iput v3, v2, Lflyme/support/v7/widget/LinearLayoutManager$SavedState;->mAnchorPosition:I

    goto :goto_0

    .line 251
    .end local v1    # "refChild":Landroid/view/View;
    :cond_1
    invoke-direct {p0}, Lflyme/support/v7/widget/LinearLayoutManager;->getChildClosestToStart()Landroid/view/View;

    move-result-object v1

    .line 252
    .restart local v1    # "refChild":Landroid/view/View;
    invoke-virtual {p0, v1}, Lflyme/support/v7/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v3

    iput v3, v2, Lflyme/support/v7/widget/LinearLayoutManager$SavedState;->mAnchorPosition:I

    .line 253
    iget-object v3, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Lflyme/support/v7/widget/OrientationHelper;

    invoke-virtual {v3, v1}, Lflyme/support/v7/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v3

    iget-object v4, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Lflyme/support/v7/widget/OrientationHelper;

    invoke-virtual {v4}, Lflyme/support/v7/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v4

    sub-int/2addr v3, v4

    iput v3, v2, Lflyme/support/v7/widget/LinearLayoutManager$SavedState;->mAnchorOffset:I

    goto :goto_0

    .line 257
    .end local v0    # "didLayoutFromEnd":Z
    .end local v1    # "refChild":Landroid/view/View;
    :cond_2
    invoke-virtual {v2}, Lflyme/support/v7/widget/LinearLayoutManager$SavedState;->invalidateAnchor()V

    goto :goto_0
.end method

.method scrollBy(ILflyme/support/v7/widget/RecyclerView$Recycler;Lflyme/support/v7/widget/RecyclerView$State;)I
    .locals 6
    .param p1, "dy"    # I
    .param p2, "recycler"    # Lflyme/support/v7/widget/RecyclerView$Recycler;
    .param p3, "state"    # Lflyme/support/v7/widget/RecyclerView$State;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1169
    invoke-virtual {p0}, Lflyme/support/v7/widget/LinearLayoutManager;->getChildCount()I

    move-result v5

    if-eqz v5, :cond_0

    if-nez p1, :cond_1

    .line 1192
    :cond_0
    :goto_0
    return v3

    .line 1172
    :cond_1
    iget-object v5, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mLayoutState:Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;

    iput-boolean v4, v5, Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;->mRecycle:Z

    .line 1173
    invoke-virtual {p0}, Lflyme/support/v7/widget/LinearLayoutManager;->ensureLayoutState()V

    .line 1174
    if-lez p1, :cond_2

    move v2, v4

    .line 1175
    .local v2, "layoutDirection":I
    :goto_1
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 1176
    .local v0, "absDy":I
    invoke-direct {p0, v2, v0, v4, p3}, Lflyme/support/v7/widget/LinearLayoutManager;->updateLayoutState(IIZLflyme/support/v7/widget/RecyclerView$State;)V

    .line 1177
    iget-object v4, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mLayoutState:Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;

    iget v4, v4, Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;->mScrollingOffset:I

    iget-object v5, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mLayoutState:Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;

    invoke-virtual {p0, p2, v5, p3, v3}, Lflyme/support/v7/widget/LinearLayoutManager;->fill(Lflyme/support/v7/widget/RecyclerView$Recycler;Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;Lflyme/support/v7/widget/RecyclerView$State;Z)I

    move-result v5

    add-int v1, v4, v5

    .line 1179
    .local v1, "consumed":I
    if-ltz v1, :cond_0

    .line 1185
    if-le v0, v1, :cond_3

    mul-int v3, v2, v1

    .line 1187
    .local v3, "scrolled":I
    :goto_2
    iget-object v4, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Lflyme/support/v7/widget/OrientationHelper;

    neg-int v5, v3

    invoke-virtual {v4, v5}, Lflyme/support/v7/widget/OrientationHelper;->offsetChildren(I)V

    .line 1191
    iget-object v4, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mLayoutState:Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;

    iput v3, v4, Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;->mLastScrollDelta:I

    goto :goto_0

    .line 1174
    .end local v0    # "absDy":I
    .end local v1    # "consumed":I
    .end local v2    # "layoutDirection":I
    .end local v3    # "scrolled":I
    :cond_2
    const/4 v2, -0x1

    goto :goto_1

    .restart local v0    # "absDy":I
    .restart local v1    # "consumed":I
    .restart local v2    # "layoutDirection":I
    :cond_3
    move v3, p1

    .line 1185
    goto :goto_2
.end method

.method public scrollHorizontallyBy(ILflyme/support/v7/widget/RecyclerView$Recycler;Lflyme/support/v7/widget/RecyclerView$State;)I
    .locals 2
    .param p1, "dx"    # I
    .param p2, "recycler"    # Lflyme/support/v7/widget/RecyclerView$Recycler;
    .param p3, "state"    # Lflyme/support/v7/widget/RecyclerView$State;

    .prologue
    .line 1019
    iget v0, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1020
    const/4 v0, 0x0

    .line 1022
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lflyme/support/v7/widget/LinearLayoutManager;->scrollBy(ILflyme/support/v7/widget/RecyclerView$Recycler;Lflyme/support/v7/widget/RecyclerView$State;)I

    move-result v0

    goto :goto_0
.end method

.method public scrollToPosition(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 976
    iput p1, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mPendingScrollPosition:I

    .line 977
    const/high16 v0, -0x80000000

    iput v0, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mPendingScrollPositionOffset:I

    .line 978
    iget-object v0, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mPendingSavedState:Lflyme/support/v7/widget/LinearLayoutManager$SavedState;

    if-eqz v0, :cond_0

    .line 979
    iget-object v0, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mPendingSavedState:Lflyme/support/v7/widget/LinearLayoutManager$SavedState;

    invoke-virtual {v0}, Lflyme/support/v7/widget/LinearLayoutManager$SavedState;->invalidateAnchor()V

    .line 981
    :cond_0
    invoke-virtual {p0}, Lflyme/support/v7/widget/LinearLayoutManager;->requestLayout()V

    .line 982
    return-void
.end method

.method public scrollVerticallyBy(ILflyme/support/v7/widget/RecyclerView$Recycler;Lflyme/support/v7/widget/RecyclerView$State;)I
    .locals 1
    .param p1, "dy"    # I
    .param p2, "recycler"    # Lflyme/support/v7/widget/RecyclerView$Recycler;
    .param p3, "state"    # Lflyme/support/v7/widget/RecyclerView$State;

    .prologue
    .line 1031
    iget v0, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mOrientation:I

    if-nez v0, :cond_0

    .line 1032
    const/4 v0, 0x0

    .line 1034
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lflyme/support/v7/widget/LinearLayoutManager;->scrollBy(ILflyme/support/v7/widget/RecyclerView$Recycler;Lflyme/support/v7/widget/RecyclerView$State;)I

    move-result v0

    goto :goto_0
.end method

.method public setOrientation(I)V
    .locals 3
    .param p1, "orientation"    # I

    .prologue
    const/4 v1, 0x0

    .line 324
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 325
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid orientation:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 327
    :cond_0
    invoke-virtual {p0, v1}, Lflyme/support/v7/widget/LinearLayoutManager;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 328
    iget v0, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mOrientation:I

    if-ne p1, v0, :cond_1

    .line 334
    :goto_0
    return-void

    .line 331
    :cond_1
    iput p1, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mOrientation:I

    .line 332
    iput-object v1, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Lflyme/support/v7/widget/OrientationHelper;

    .line 333
    invoke-virtual {p0}, Lflyme/support/v7/widget/LinearLayoutManager;->requestLayout()V

    goto :goto_0
.end method

.method public setReverseLayout(Z)V
    .locals 1
    .param p1, "reverseLayout"    # Z

    .prologue
    .line 375
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lflyme/support/v7/widget/LinearLayoutManager;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 376
    iget-boolean v0, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mReverseLayout:Z

    if-ne p1, v0, :cond_0

    .line 381
    :goto_0
    return-void

    .line 379
    :cond_0
    iput-boolean p1, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mReverseLayout:Z

    .line 380
    invoke-virtual {p0}, Lflyme/support/v7/widget/LinearLayoutManager;->requestLayout()V

    goto :goto_0
.end method

.method shouldMeasureTwice()Z
    .locals 2

    .prologue
    const/high16 v1, 0x40000000    # 2.0f

    .line 1464
    invoke-virtual {p0}, Lflyme/support/v7/widget/LinearLayoutManager;->getHeightMode()I

    move-result v0

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lflyme/support/v7/widget/LinearLayoutManager;->getWidthMode()I

    move-result v0

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lflyme/support/v7/widget/LinearLayoutManager;->hasFlexibleChildInBothOrientations()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public smoothScrollToPosition(Lflyme/support/v7/widget/RecyclerView;Lflyme/support/v7/widget/RecyclerView$State;I)V
    .locals 2
    .param p1, "recyclerView"    # Lflyme/support/v7/widget/RecyclerView;
    .param p2, "state"    # Lflyme/support/v7/widget/RecyclerView$State;
    .param p3, "position"    # I

    .prologue
    .line 427
    new-instance v0, Lflyme/support/v7/widget/LinearLayoutManager$1;

    invoke-virtual {p1}, Lflyme/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lflyme/support/v7/widget/LinearLayoutManager$1;-><init>(Lflyme/support/v7/widget/LinearLayoutManager;Landroid/content/Context;)V

    .line 435
    .local v0, "linearSmoothScroller":Lflyme/support/v7/widget/LinearSmoothScroller;
    invoke-virtual {v0, p3}, Lflyme/support/v7/widget/LinearSmoothScroller;->setTargetPosition(I)V

    .line 436
    invoke-virtual {p0, v0}, Lflyme/support/v7/widget/LinearLayoutManager;->startSmoothScroll(Lflyme/support/v7/widget/RecyclerView$SmoothScroller;)V

    .line 437
    return-void
.end method

.method public supportsPredictiveItemAnimations()Z
    .locals 2

    .prologue
    .line 1850
    iget-object v0, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mPendingSavedState:Lflyme/support/v7/widget/LinearLayoutManager$SavedState;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mLastStackFromEnd:Z

    iget-boolean v1, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mStackFromEnd:Z

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
