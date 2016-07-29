.class public abstract Lflyme/support/v7/widget/RecyclerView$LayoutManager;
.super Ljava/lang/Object;
.source "RecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lflyme/support/v7/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "LayoutManager"
.end annotation


# instance fields
.field private mAutoMeasure:Z

.field mChildHelper:Lflyme/support/v7/widget/ChildHelper;

.field private mHeightSpec:I

.field mIsAttachedToWindow:Z

.field private mMeasurementCacheEnabled:Z

.field mRecyclerView:Lflyme/support/v7/widget/RecyclerView;

.field private mRequestedSimpleAnimations:Z

.field mSmoothScroller:Lflyme/support/v7/widget/RecyclerView$SmoothScroller;

.field private mWidthSpec:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 6042
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6049
    iput-boolean v0, p0, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->mRequestedSimpleAnimations:Z

    .line 6051
    iput-boolean v0, p0, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->mIsAttachedToWindow:Z

    .line 6053
    iput-boolean v0, p0, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->mAutoMeasure:Z

    .line 6059
    const/4 v0, 0x1

    iput-boolean v0, p0, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->mMeasurementCacheEnabled:Z

    .line 8620
    return-void
.end method

.method static synthetic access$2000(Lflyme/support/v7/widget/RecyclerView$LayoutManager;)Z
    .locals 1
    .param p0, "x0"    # Lflyme/support/v7/widget/RecyclerView$LayoutManager;

    .prologue
    .line 6042
    iget-boolean v0, p0, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->mAutoMeasure:Z

    return v0
.end method

.method static synthetic access$2600(Lflyme/support/v7/widget/RecyclerView$LayoutManager;)Z
    .locals 1
    .param p0, "x0"    # Lflyme/support/v7/widget/RecyclerView$LayoutManager;

    .prologue
    .line 6042
    iget-boolean v0, p0, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->mRequestedSimpleAnimations:Z

    return v0
.end method

.method static synthetic access$2602(Lflyme/support/v7/widget/RecyclerView$LayoutManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lflyme/support/v7/widget/RecyclerView$LayoutManager;
    .param p1, "x1"    # Z

    .prologue
    .line 6042
    iput-boolean p1, p0, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->mRequestedSimpleAnimations:Z

    return p1
.end method

.method static synthetic access$5900(Lflyme/support/v7/widget/RecyclerView$LayoutManager;Lflyme/support/v7/widget/RecyclerView$SmoothScroller;)V
    .locals 0
    .param p0, "x0"    # Lflyme/support/v7/widget/RecyclerView$LayoutManager;
    .param p1, "x1"    # Lflyme/support/v7/widget/RecyclerView$SmoothScroller;

    .prologue
    .line 6042
    invoke-direct {p0, p1}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->onSmoothScrollerStopped(Lflyme/support/v7/widget/RecyclerView$SmoothScroller;)V

    return-void
.end method

.method private addViewInt(Landroid/view/View;IZ)V
    .locals 7
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "disappearing"    # Z

    .prologue
    const/4 v6, -0x1

    const/4 v5, 0x0

    .line 6745
    invoke-static {p1}, Lflyme/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lflyme/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v1

    .line 6746
    .local v1, "holder":Lflyme/support/v7/widget/RecyclerView$ViewHolder;
    if-nez p3, :cond_0

    invoke-virtual {v1}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->isRemoved()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 6748
    :cond_0
    iget-object v3, p0, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Lflyme/support/v7/widget/RecyclerView;

    iget-object v3, v3, Lflyme/support/v7/widget/RecyclerView;->mViewInfoStore:Lflyme/support/v7/widget/ViewInfoStore;

    invoke-virtual {v3, v1}, Lflyme/support/v7/widget/ViewInfoStore;->addToDisappearedInLayout(Lflyme/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 6757
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lflyme/support/v7/widget/RecyclerView$LayoutParams;

    .line 6758
    .local v2, "lp":Lflyme/support/v7/widget/RecyclerView$LayoutParams;
    invoke-virtual {v1}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->wasReturnedFromScrap()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v1}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->isScrap()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 6759
    :cond_1
    invoke-virtual {v1}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->isScrap()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 6760
    invoke-virtual {v1}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->unScrap()V

    .line 6764
    :goto_1
    iget-object v3, p0, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->mChildHelper:Lflyme/support/v7/widget/ChildHelper;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    invoke-virtual {v3, p1, p2, v4, v5}, Lflyme/support/v7/widget/ChildHelper;->attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)V

    .line 6789
    :cond_2
    :goto_2
    iget-boolean v3, v2, Lflyme/support/v7/widget/RecyclerView$LayoutParams;->mPendingInvalidate:Z

    if-eqz v3, :cond_3

    .line 6793
    iget-object v3, v1, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->invalidate()V

    .line 6794
    iput-boolean v5, v2, Lflyme/support/v7/widget/RecyclerView$LayoutParams;->mPendingInvalidate:Z

    .line 6796
    :cond_3
    return-void

    .line 6755
    .end local v2    # "lp":Lflyme/support/v7/widget/RecyclerView$LayoutParams;
    :cond_4
    iget-object v3, p0, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Lflyme/support/v7/widget/RecyclerView;

    iget-object v3, v3, Lflyme/support/v7/widget/RecyclerView;->mViewInfoStore:Lflyme/support/v7/widget/ViewInfoStore;

    invoke-virtual {v3, v1}, Lflyme/support/v7/widget/ViewInfoStore;->removeFromDisappearedInLayout(Lflyme/support/v7/widget/RecyclerView$ViewHolder;)V

    goto :goto_0

    .line 6762
    .restart local v2    # "lp":Lflyme/support/v7/widget/RecyclerView$LayoutParams;
    :cond_5
    invoke-virtual {v1}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->clearReturnedFromScrapFlag()V

    goto :goto_1

    .line 6768
    :cond_6
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    iget-object v4, p0, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Lflyme/support/v7/widget/RecyclerView;

    if-ne v3, v4, :cond_9

    .line 6770
    iget-object v3, p0, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->mChildHelper:Lflyme/support/v7/widget/ChildHelper;

    invoke-virtual {v3, p1}, Lflyme/support/v7/widget/ChildHelper;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 6771
    .local v0, "currentIndex":I
    if-ne p2, v6, :cond_7

    .line 6772
    iget-object v3, p0, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->mChildHelper:Lflyme/support/v7/widget/ChildHelper;

    invoke-virtual {v3}, Lflyme/support/v7/widget/ChildHelper;->getChildCount()I

    move-result p2

    .line 6774
    :cond_7
    if-ne v0, v6, :cond_8

    .line 6775
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Added View has RecyclerView as parent but view is not a real child. Unfiltered index:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Lflyme/support/v7/widget/RecyclerView;

    invoke-virtual {v5, p1}, Lflyme/support/v7/widget/RecyclerView;->indexOfChild(Landroid/view/View;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 6779
    :cond_8
    if-eq v0, p2, :cond_2

    .line 6780
    iget-object v3, p0, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Lflyme/support/v7/widget/RecyclerView;

    iget-object v3, v3, Lflyme/support/v7/widget/RecyclerView;->mLayout:Lflyme/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v3, v0, p2}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->moveView(II)V

    goto :goto_2

    .line 6783
    .end local v0    # "currentIndex":I
    :cond_9
    iget-object v3, p0, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->mChildHelper:Lflyme/support/v7/widget/ChildHelper;

    invoke-virtual {v3, p1, p2, v5}, Lflyme/support/v7/widget/ChildHelper;->addView(Landroid/view/View;IZ)V

    .line 6784
    const/4 v3, 0x1

    iput-boolean v3, v2, Lflyme/support/v7/widget/RecyclerView$LayoutParams;->mInsetsDirty:Z

    .line 6785
    iget-object v3, p0, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->mSmoothScroller:Lflyme/support/v7/widget/RecyclerView$SmoothScroller;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->mSmoothScroller:Lflyme/support/v7/widget/RecyclerView$SmoothScroller;

    invoke-virtual {v3}, Lflyme/support/v7/widget/RecyclerView$SmoothScroller;->isRunning()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 6786
    iget-object v3, p0, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->mSmoothScroller:Lflyme/support/v7/widget/RecyclerView$SmoothScroller;

    invoke-virtual {v3, p1}, Lflyme/support/v7/widget/RecyclerView$SmoothScroller;->onChildAttachedToWindow(Landroid/view/View;)V

    goto :goto_2
.end method

.method public static chooseSize(III)I
    .locals 3
    .param p0, "spec"    # I
    .param p1, "desired"    # I
    .param p2, "min"    # I

    .prologue
    .line 6199
    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 6200
    .local v0, "mode":I
    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 6201
    .local v1, "size":I
    sparse-switch v0, :sswitch_data_0

    .line 6208
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .end local v1    # "size":I
    :goto_0
    :sswitch_0
    return v1

    .line 6205
    .restart local v1    # "size":I
    :sswitch_1
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_0

    .line 6201
    nop

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0x40000000 -> :sswitch_0
    .end sparse-switch
.end method

.method private detachViewInternal(ILandroid/view/View;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 6972
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->mChildHelper:Lflyme/support/v7/widget/ChildHelper;

    invoke-virtual {v0, p1}, Lflyme/support/v7/widget/ChildHelper;->detachViewFromParent(I)V

    .line 6973
    return-void
.end method

.method public static getChildMeasureSpec(IIIIZ)I
    .locals 7
    .param p0, "parentSize"    # I
    .param p1, "parentMode"    # I
    .param p2, "padding"    # I
    .param p3, "childDimension"    # I
    .param p4, "canScroll"    # Z

    .prologue
    const/4 v6, -0x1

    const/4 v5, -0x2

    .line 7604
    const/4 v3, 0x0

    sub-int v4, p0, p2

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 7605
    .local v2, "size":I
    const/4 v1, 0x0

    .line 7606
    .local v1, "resultSize":I
    const/4 v0, 0x0

    .line 7607
    .local v0, "resultMode":I
    if-eqz p4, :cond_3

    .line 7608
    if-ltz p3, :cond_1

    .line 7609
    move v1, p3

    .line 7610
    const/high16 v0, 0x40000000    # 2.0f

    .line 7644
    :cond_0
    :goto_0
    invoke-static {v1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    return v3

    .line 7611
    :cond_1
    if-ne p3, v6, :cond_2

    .line 7612
    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    .line 7615
    :sswitch_0
    move v1, v2

    .line 7616
    move v0, p1

    .line 7617
    goto :goto_0

    .line 7619
    :sswitch_1
    const/4 v1, 0x0

    .line 7620
    const/4 v0, 0x0

    goto :goto_0

    .line 7623
    :cond_2
    if-ne p3, v5, :cond_0

    .line 7624
    const/4 v1, 0x0

    .line 7625
    const/4 v0, 0x0

    goto :goto_0

    .line 7628
    :cond_3
    if-ltz p3, :cond_4

    .line 7629
    move v1, p3

    .line 7630
    const/high16 v0, 0x40000000    # 2.0f

    goto :goto_0

    .line 7631
    :cond_4
    if-ne p3, v6, :cond_5

    .line 7632
    move v1, v2

    .line 7633
    move v0, p1

    goto :goto_0

    .line 7634
    :cond_5
    if-ne p3, v5, :cond_0

    .line 7635
    move v1, v2

    .line 7636
    const/high16 v3, -0x80000000

    if-eq p1, v3, :cond_6

    const/high16 v3, 0x40000000    # 2.0f

    if-ne p1, v3, :cond_7

    .line 7637
    :cond_6
    const/high16 v0, -0x80000000

    goto :goto_0

    .line 7639
    :cond_7
    const/4 v0, 0x0

    goto :goto_0

    .line 7612
    nop

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_0
        0x0 -> :sswitch_1
        0x40000000 -> :sswitch_0
    .end sparse-switch
.end method

.method private static isMeasurementUpToDate(III)Z
    .locals 4
    .param p0, "childSize"    # I
    .param p1, "spec"    # I
    .param p2, "dimension"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 7498
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 7499
    .local v0, "specMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 7500
    .local v1, "specSize":I
    if-lez p2, :cond_1

    if-eq p0, p2, :cond_1

    move v2, v3

    .line 7511
    :cond_0
    :goto_0
    :sswitch_0
    return v2

    .line 7503
    :cond_1
    sparse-switch v0, :sswitch_data_0

    move v2, v3

    .line 7511
    goto :goto_0

    .line 7507
    :sswitch_1
    if-ge v1, p0, :cond_0

    move v2, v3

    goto :goto_0

    .line 7509
    :sswitch_2
    if-eq v1, p0, :cond_0

    move v2, v3

    goto :goto_0

    .line 7503
    nop

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0x0 -> :sswitch_0
        0x40000000 -> :sswitch_2
    .end sparse-switch
.end method

.method private onSmoothScrollerStopped(Lflyme/support/v7/widget/RecyclerView$SmoothScroller;)V
    .locals 1
    .param p1, "smoothScroller"    # Lflyme/support/v7/widget/RecyclerView$SmoothScroller;

    .prologue
    .line 8251
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->mSmoothScroller:Lflyme/support/v7/widget/RecyclerView$SmoothScroller;

    if-ne v0, p1, :cond_0

    .line 8252
    const/4 v0, 0x0

    iput-object v0, p0, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->mSmoothScroller:Lflyme/support/v7/widget/RecyclerView$SmoothScroller;

    .line 8254
    :cond_0
    return-void
.end method

.method private scrapOrRecycleView(Lflyme/support/v7/widget/RecyclerView$Recycler;ILandroid/view/View;)V
    .locals 2
    .param p1, "recycler"    # Lflyme/support/v7/widget/RecyclerView$Recycler;
    .param p2, "index"    # I
    .param p3, "view"    # Landroid/view/View;

    .prologue
    .line 7358
    invoke-static {p3}, Lflyme/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lflyme/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    .line 7359
    .local v0, "viewHolder":Lflyme/support/v7/widget/RecyclerView$ViewHolder;
    invoke-virtual {v0}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 7374
    :goto_0
    return-void

    .line 7365
    :cond_0
    invoke-virtual {v0}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->isInvalid()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->isRemoved()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Lflyme/support/v7/widget/RecyclerView;

    # getter for: Lflyme/support/v7/widget/RecyclerView;->mAdapter:Lflyme/support/v7/widget/RecyclerView$Adapter;
    invoke-static {v1}, Lflyme/support/v7/widget/RecyclerView;->access$3100(Lflyme/support/v7/widget/RecyclerView;)Lflyme/support/v7/widget/RecyclerView$Adapter;

    move-result-object v1

    invoke-virtual {v1}, Lflyme/support/v7/widget/RecyclerView$Adapter;->hasStableIds()Z

    move-result v1

    if-nez v1, :cond_1

    .line 7367
    invoke-virtual {p0, p2}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->removeViewAt(I)V

    .line 7368
    invoke-virtual {p1, v0}, Lflyme/support/v7/widget/RecyclerView$Recycler;->recycleViewHolderInternal(Lflyme/support/v7/widget/RecyclerView$ViewHolder;)V

    goto :goto_0

    .line 7370
    :cond_1
    invoke-virtual {p0, p2}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->detachViewAt(I)V

    .line 7371
    invoke-virtual {p1, p3}, Lflyme/support/v7/widget/RecyclerView$Recycler;->scrapView(Landroid/view/View;)V

    .line 7372
    iget-object v1, p0, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Lflyme/support/v7/widget/RecyclerView;

    iget-object v1, v1, Lflyme/support/v7/widget/RecyclerView;->mViewInfoStore:Lflyme/support/v7/widget/ViewInfoStore;

    invoke-virtual {v1, v0}, Lflyme/support/v7/widget/ViewInfoStore;->onViewDetached(Lflyme/support/v7/widget/RecyclerView$ViewHolder;)V

    goto :goto_0
.end method


# virtual methods
.method public addDisappearingView(Landroid/view/View;)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 6700
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->addDisappearingView(Landroid/view/View;I)V

    .line 6701
    return-void
.end method

.method public addDisappearingView(Landroid/view/View;I)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I

    .prologue
    .line 6718
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->addViewInt(Landroid/view/View;IZ)V

    .line 6719
    return-void
.end method

.method public addView(Landroid/view/View;)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 6729
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->addView(Landroid/view/View;I)V

    .line 6730
    return-void
.end method

.method public addView(Landroid/view/View;I)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I

    .prologue
    .line 6741
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->addViewInt(Landroid/view/View;IZ)V

    .line 6742
    return-void
.end method

.method public assertNotInLayoutOrScroll(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 6220
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Lflyme/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_0

    .line 6221
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Lflyme/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1}, Lflyme/support/v7/widget/RecyclerView;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 6223
    :cond_0
    return-void
.end method

.method public attachView(Landroid/view/View;I)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I

    .prologue
    .line 7006
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lflyme/support/v7/widget/RecyclerView$LayoutParams;

    invoke-virtual {p0, p1, p2, v0}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->attachView(Landroid/view/View;ILflyme/support/v7/widget/RecyclerView$LayoutParams;)V

    .line 7007
    return-void
.end method

.method public attachView(Landroid/view/View;ILflyme/support/v7/widget/RecyclerView$LayoutParams;)V
    .locals 3
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "lp"    # Lflyme/support/v7/widget/RecyclerView$LayoutParams;

    .prologue
    .line 6985
    invoke-static {p1}, Lflyme/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lflyme/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    .line 6986
    .local v0, "vh":Lflyme/support/v7/widget/RecyclerView$ViewHolder;
    invoke-virtual {v0}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->isRemoved()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6987
    iget-object v1, p0, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Lflyme/support/v7/widget/RecyclerView;

    iget-object v1, v1, Lflyme/support/v7/widget/RecyclerView;->mViewInfoStore:Lflyme/support/v7/widget/ViewInfoStore;

    invoke-virtual {v1, v0}, Lflyme/support/v7/widget/ViewInfoStore;->addToDisappearedInLayout(Lflyme/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 6991
    :goto_0
    iget-object v1, p0, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->mChildHelper:Lflyme/support/v7/widget/ChildHelper;

    invoke-virtual {v0}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->isRemoved()Z

    move-result v2

    invoke-virtual {v1, p1, p2, p3, v2}, Lflyme/support/v7/widget/ChildHelper;->attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)V

    .line 6995
    return-void

    .line 6989
    :cond_0
    iget-object v1, p0, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Lflyme/support/v7/widget/RecyclerView;

    iget-object v1, v1, Lflyme/support/v7/widget/RecyclerView;->mViewInfoStore:Lflyme/support/v7/widget/ViewInfoStore;

    invoke-virtual {v1, v0}, Lflyme/support/v7/widget/ViewInfoStore;->removeFromDisappearedInLayout(Lflyme/support/v7/widget/RecyclerView$ViewHolder;)V

    goto :goto_0
.end method

.method public calculateItemDecorationsForChild(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 3
    .param p1, "child"    # Landroid/view/View;
    .param p2, "outRect"    # Landroid/graphics/Rect;

    .prologue
    const/4 v2, 0x0

    .line 7774
    iget-object v1, p0, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Lflyme/support/v7/widget/RecyclerView;

    if-nez v1, :cond_0

    .line 7775
    invoke-virtual {p2, v2, v2, v2, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 7780
    :goto_0
    return-void

    .line 7778
    :cond_0
    iget-object v1, p0, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Lflyme/support/v7/widget/RecyclerView;

    invoke-virtual {v1, p1}, Lflyme/support/v7/widget/RecyclerView;->getItemDecorInsetsForChild(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v0

    .line 7779
    .local v0, "insets":Landroid/graphics/Rect;
    invoke-virtual {p2, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_0
.end method

.method public canScrollHorizontally()Z
    .locals 1

    .prologue
    .line 6601
    const/4 v0, 0x0

    return v0
.end method

.method public canScrollVertically()Z
    .locals 1

    .prologue
    .line 6611
    const/4 v0, 0x0

    return v0
.end method

.method public checkLayoutParams(Lflyme/support/v7/widget/RecyclerView$LayoutParams;)Z
    .locals 1
    .param p1, "lp"    # Lflyme/support/v7/widget/RecyclerView$LayoutParams;

    .prologue
    .line 6516
    if-eqz p1, :cond_0

    const/4 v0, 0x1

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
    .line 8105
    const/4 v0, 0x0

    return v0
.end method

.method public computeHorizontalScrollOffset(Lflyme/support/v7/widget/RecyclerView$State;)I
    .locals 1
    .param p1, "state"    # Lflyme/support/v7/widget/RecyclerView$State;

    .prologue
    .line 8120
    const/4 v0, 0x0

    return v0
.end method

.method public computeHorizontalScrollRange(Lflyme/support/v7/widget/RecyclerView$State;)I
    .locals 1
    .param p1, "state"    # Lflyme/support/v7/widget/RecyclerView$State;

    .prologue
    .line 8135
    const/4 v0, 0x0

    return v0
.end method

.method public computeVerticalScrollExtent(Lflyme/support/v7/widget/RecyclerView$State;)I
    .locals 1
    .param p1, "state"    # Lflyme/support/v7/widget/RecyclerView$State;

    .prologue
    .line 8150
    const/4 v0, 0x0

    return v0
.end method

.method public computeVerticalScrollOffset(Lflyme/support/v7/widget/RecyclerView$State;)I
    .locals 1
    .param p1, "state"    # Lflyme/support/v7/widget/RecyclerView$State;

    .prologue
    .line 8165
    const/4 v0, 0x0

    return v0
.end method

.method public computeVerticalScrollRange(Lflyme/support/v7/widget/RecyclerView$State;)I
    .locals 1
    .param p1, "state"    # Lflyme/support/v7/widget/RecyclerView$State;

    .prologue
    .line 8180
    const/4 v0, 0x0

    return v0
.end method

.method public detachAndScrapAttachedViews(Lflyme/support/v7/widget/RecyclerView$Recycler;)V
    .locals 3
    .param p1, "recycler"    # Lflyme/support/v7/widget/RecyclerView$Recycler;

    .prologue
    .line 7350
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v0

    .line 7351
    .local v0, "childCount":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 7352
    invoke-virtual {p0, v1}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 7353
    .local v2, "v":Landroid/view/View;
    invoke-direct {p0, p1, v1, v2}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->scrapOrRecycleView(Lflyme/support/v7/widget/RecyclerView$Recycler;ILandroid/view/View;)V

    .line 7351
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 7355
    .end local v2    # "v":Landroid/view/View;
    :cond_0
    return-void
.end method

.method public detachViewAt(I)V
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 6965
    invoke-virtual {p0, p1}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->detachViewInternal(ILandroid/view/View;)V

    .line 6966
    return-void
.end method

.method dispatchAttachedToWindow(Lflyme/support/v7/widget/RecyclerView;)V
    .locals 1
    .param p1, "view"    # Lflyme/support/v7/widget/RecyclerView;

    .prologue
    .line 6330
    const/4 v0, 0x1

    iput-boolean v0, p0, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->mIsAttachedToWindow:Z

    .line 6331
    invoke-virtual {p0, p1}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->onAttachedToWindow(Lflyme/support/v7/widget/RecyclerView;)V

    .line 6332
    return-void
.end method

.method dispatchDetachedFromWindow(Lflyme/support/v7/widget/RecyclerView;Lflyme/support/v7/widget/RecyclerView$Recycler;)V
    .locals 1
    .param p1, "view"    # Lflyme/support/v7/widget/RecyclerView;
    .param p2, "recycler"    # Lflyme/support/v7/widget/RecyclerView$Recycler;

    .prologue
    .line 6335
    const/4 v0, 0x0

    iput-boolean v0, p0, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->mIsAttachedToWindow:Z

    .line 6336
    invoke-virtual {p0, p1, p2}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->onDetachedFromWindow(Lflyme/support/v7/widget/RecyclerView;Lflyme/support/v7/widget/RecyclerView$Recycler;)V

    .line 6337
    return-void
.end method

.method public findContainingItemView(Landroid/view/View;)Landroid/view/View;
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x0

    .line 6885
    iget-object v2, p0, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Lflyme/support/v7/widget/RecyclerView;

    if-nez v2, :cond_1

    move-object v0, v1

    .line 6895
    :cond_0
    :goto_0
    return-object v0

    .line 6888
    :cond_1
    iget-object v2, p0, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Lflyme/support/v7/widget/RecyclerView;

    invoke-virtual {v2, p1}, Lflyme/support/v7/widget/RecyclerView;->findContainingItemView(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    .line 6889
    .local v0, "found":Landroid/view/View;
    if-nez v0, :cond_2

    move-object v0, v1

    .line 6890
    goto :goto_0

    .line 6892
    :cond_2
    iget-object v2, p0, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->mChildHelper:Lflyme/support/v7/widget/ChildHelper;

    invoke-virtual {v2, v0}, Lflyme/support/v7/widget/ChildHelper;->isHidden(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 6893
    goto :goto_0
.end method

.method public findViewByPosition(I)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I

    .prologue
    .line 6912
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v1

    .line 6913
    .local v1, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_3

    .line 6914
    invoke-virtual {p0, v2}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 6915
    .local v0, "child":Landroid/view/View;
    invoke-static {v0}, Lflyme/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lflyme/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v3

    .line 6916
    .local v3, "vh":Lflyme/support/v7/widget/RecyclerView$ViewHolder;
    if-nez v3, :cond_1

    .line 6913
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 6919
    :cond_1
    invoke-virtual {v3}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v4

    if-ne v4, p1, :cond_0

    invoke-virtual {v3}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Lflyme/support/v7/widget/RecyclerView;

    iget-object v4, v4, Lflyme/support/v7/widget/RecyclerView;->mState:Lflyme/support/v7/widget/RecyclerView$State;

    invoke-virtual {v4}, Lflyme/support/v7/widget/RecyclerView$State;->isPreLayout()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v3}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->isRemoved()Z

    move-result v4

    if-nez v4, :cond_0

    .line 6924
    .end local v0    # "child":Landroid/view/View;
    .end local v3    # "vh":Lflyme/support/v7/widget/RecyclerView$ViewHolder;
    :cond_2
    :goto_1
    return-object v0

    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public abstract generateDefaultLayoutParams()Lflyme/support/v7/widget/RecyclerView$LayoutParams;
.end method

.method public generateLayoutParams(Landroid/content/Context;Landroid/util/AttributeSet;)Lflyme/support/v7/widget/RecyclerView$LayoutParams;
    .locals 1
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 6557
    new-instance v0, Lflyme/support/v7/widget/RecyclerView$LayoutParams;

    invoke-direct {v0, p1, p2}, Lflyme/support/v7/widget/RecyclerView$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lflyme/support/v7/widget/RecyclerView$LayoutParams;
    .locals 1
    .param p1, "lp"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 6533
    instance-of v0, p1, Lflyme/support/v7/widget/RecyclerView$LayoutParams;

    if-eqz v0, :cond_0

    .line 6534
    new-instance v0, Lflyme/support/v7/widget/RecyclerView$LayoutParams;

    check-cast p1, Lflyme/support/v7/widget/RecyclerView$LayoutParams;

    .end local p1    # "lp":Landroid/view/ViewGroup$LayoutParams;
    invoke-direct {v0, p1}, Lflyme/support/v7/widget/RecyclerView$LayoutParams;-><init>(Lflyme/support/v7/widget/RecyclerView$LayoutParams;)V

    .line 6538
    :goto_0
    return-object v0

    .line 6535
    .restart local p1    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_1

    .line 6536
    new-instance v0, Lflyme/support/v7/widget/RecyclerView$LayoutParams;

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    .end local p1    # "lp":Landroid/view/ViewGroup$LayoutParams;
    invoke-direct {v0, p1}, Lflyme/support/v7/widget/RecyclerView$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    goto :goto_0

    .line 6538
    .restart local p1    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_1
    new-instance v0, Lflyme/support/v7/widget/RecyclerView$LayoutParams;

    invoke-direct {v0, p1}, Lflyme/support/v7/widget/RecyclerView$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public getBaseline()I
    .locals 1

    .prologue
    .line 6844
    const/4 v0, -0x1

    return v0
.end method

.method public getBottomDecorationHeight(Landroid/view/View;)I
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 7809
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lflyme/support/v7/widget/RecyclerView$LayoutParams;

    iget-object v0, v0, Lflyme/support/v7/widget/RecyclerView$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    return v0
.end method

.method public getChildAt(I)Landroid/view/View;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 7113
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->mChildHelper:Lflyme/support/v7/widget/ChildHelper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->mChildHelper:Lflyme/support/v7/widget/ChildHelper;

    invoke-virtual {v0, p1}, Lflyme/support/v7/widget/ChildHelper;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getChildCount()I
    .locals 1

    .prologue
    .line 7104
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->mChildHelper:Lflyme/support/v7/widget/ChildHelper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->mChildHelper:Lflyme/support/v7/widget/ChildHelper;

    invoke-virtual {v0}, Lflyme/support/v7/widget/ChildHelper;->getChildCount()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getClipToPadding()Z
    .locals 1

    .prologue
    .line 6430
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Lflyme/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Lflyme/support/v7/widget/RecyclerView;

    # getter for: Lflyme/support/v7/widget/RecyclerView;->mClipToPadding:Z
    invoke-static {v0}, Lflyme/support/v7/widget/RecyclerView;->access$5400(Lflyme/support/v7/widget/RecyclerView;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getColumnCountForAccessibility(Lflyme/support/v7/widget/RecyclerView$Recycler;Lflyme/support/v7/widget/RecyclerView$State;)I
    .locals 2
    .param p1, "recycler"    # Lflyme/support/v7/widget/RecyclerView$Recycler;
    .param p2, "state"    # Lflyme/support/v7/widget/RecyclerView$State;

    .prologue
    const/4 v0, 0x1

    .line 8468
    iget-object v1, p0, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Lflyme/support/v7/widget/RecyclerView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Lflyme/support/v7/widget/RecyclerView;

    # getter for: Lflyme/support/v7/widget/RecyclerView;->mAdapter:Lflyme/support/v7/widget/RecyclerView$Adapter;
    invoke-static {v1}, Lflyme/support/v7/widget/RecyclerView;->access$3100(Lflyme/support/v7/widget/RecyclerView;)Lflyme/support/v7/widget/RecyclerView$Adapter;

    move-result-object v1

    if-nez v1, :cond_1

    .line 8471
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Lflyme/support/v7/widget/RecyclerView;

    # getter for: Lflyme/support/v7/widget/RecyclerView;->mAdapter:Lflyme/support/v7/widget/RecyclerView$Adapter;
    invoke-static {v0}, Lflyme/support/v7/widget/RecyclerView;->access$3100(Lflyme/support/v7/widget/RecyclerView;)Lflyme/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    invoke-virtual {v0}, Lflyme/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    goto :goto_0
.end method

.method public getDecoratedBottom(Landroid/view/View;)I
    .locals 2
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 7753
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v0

    invoke-virtual {p0, p1}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->getBottomDecorationHeight(Landroid/view/View;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getDecoratedLeft(Landroid/view/View;)I
    .locals 2
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 7717
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p0, p1}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->getLeftDecorationWidth(Landroid/view/View;)I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public getDecoratedMeasuredHeight(Landroid/view/View;)I
    .locals 3
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 7671
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lflyme/support/v7/widget/RecyclerView$LayoutParams;

    iget-object v0, v1, Lflyme/support/v7/widget/RecyclerView$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    .line 7672
    .local v0, "insets":Landroid/graphics/Rect;
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iget v2, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v2

    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v1, v2

    return v1
.end method

.method public getDecoratedMeasuredWidth(Landroid/view/View;)I
    .locals 3
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 7657
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lflyme/support/v7/widget/RecyclerView$LayoutParams;

    iget-object v0, v1, Lflyme/support/v7/widget/RecyclerView$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    .line 7658
    .local v0, "insets":Landroid/graphics/Rect;
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iget v2, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v2

    iget v2, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v2

    return v1
.end method

.method public getDecoratedRight(Landroid/view/View;)I
    .locals 2
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 7741
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v0

    invoke-virtual {p0, p1}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->getRightDecorationWidth(Landroid/view/View;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getDecoratedTop(Landroid/view/View;)I
    .locals 2
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 7729
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    invoke-virtual {p0, p1}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->getTopDecorationHeight(Landroid/view/View;)I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public getFocusedChild()Landroid/view/View;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 7250
    iget-object v2, p0, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Lflyme/support/v7/widget/RecyclerView;

    if-nez v2, :cond_1

    move-object v0, v1

    .line 7257
    :cond_0
    :goto_0
    return-object v0

    .line 7253
    :cond_1
    iget-object v2, p0, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Lflyme/support/v7/widget/RecyclerView;

    invoke-virtual {v2}, Lflyme/support/v7/widget/RecyclerView;->getFocusedChild()Landroid/view/View;

    move-result-object v0

    .line 7254
    .local v0, "focused":Landroid/view/View;
    if-eqz v0, :cond_2

    iget-object v2, p0, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->mChildHelper:Lflyme/support/v7/widget/ChildHelper;

    invoke-virtual {v2, v0}, Lflyme/support/v7/widget/ChildHelper;->isHidden(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_2
    move-object v0, v1

    .line 7255
    goto :goto_0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 7167
    iget v0, p0, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->mHeightSpec:I

    invoke-static {v0}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    return v0
.end method

.method public getHeightMode()I
    .locals 1

    .prologue
    .line 7149
    iget v0, p0, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->mHeightSpec:I

    invoke-static {v0}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    return v0
.end method

.method public getLayoutDirection()I
    .locals 1

    .prologue
    .line 6671
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Lflyme/support/v7/widget/RecyclerView;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public getLeftDecorationWidth(Landroid/view/View;)I
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 7824
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lflyme/support/v7/widget/RecyclerView$LayoutParams;

    iget-object v0, v0, Lflyme/support/v7/widget/RecyclerView$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    return v0
.end method

.method public getMinimumHeight()I
    .locals 1

    .prologue
    .line 8223
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Lflyme/support/v7/widget/RecyclerView;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public getMinimumWidth()I
    .locals 1

    .prologue
    .line 8216
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Lflyme/support/v7/widget/RecyclerView;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->getMinimumWidth(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public getPaddingBottom()I
    .locals 1

    .prologue
    .line 7203
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Lflyme/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Lflyme/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Lflyme/support/v7/widget/RecyclerView;->getPaddingBottom()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPaddingLeft()I
    .locals 1

    .prologue
    .line 7176
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Lflyme/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Lflyme/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Lflyme/support/v7/widget/RecyclerView;->getPaddingLeft()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPaddingRight()I
    .locals 1

    .prologue
    .line 7194
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Lflyme/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Lflyme/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Lflyme/support/v7/widget/RecyclerView;->getPaddingRight()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPaddingTop()I
    .locals 1

    .prologue
    .line 7185
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Lflyme/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Lflyme/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Lflyme/support/v7/widget/RecyclerView;->getPaddingTop()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPosition(Landroid/view/View;)I
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 6855
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lflyme/support/v7/widget/RecyclerView$LayoutParams;

    invoke-virtual {v0}, Lflyme/support/v7/widget/RecyclerView$LayoutParams;->getViewLayoutPosition()I

    move-result v0

    return v0
.end method

.method public getRightDecorationWidth(Landroid/view/View;)I
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 7839
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lflyme/support/v7/widget/RecyclerView$LayoutParams;

    iget-object v0, v0, Lflyme/support/v7/widget/RecyclerView$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    return v0
.end method

.method public getRowCountForAccessibility(Lflyme/support/v7/widget/RecyclerView$Recycler;Lflyme/support/v7/widget/RecyclerView$State;)I
    .locals 2
    .param p1, "recycler"    # Lflyme/support/v7/widget/RecyclerView$Recycler;
    .param p2, "state"    # Lflyme/support/v7/widget/RecyclerView$State;

    .prologue
    const/4 v0, 0x1

    .line 8449
    iget-object v1, p0, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Lflyme/support/v7/widget/RecyclerView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Lflyme/support/v7/widget/RecyclerView;

    # getter for: Lflyme/support/v7/widget/RecyclerView;->mAdapter:Lflyme/support/v7/widget/RecyclerView$Adapter;
    invoke-static {v1}, Lflyme/support/v7/widget/RecyclerView;->access$3100(Lflyme/support/v7/widget/RecyclerView;)Lflyme/support/v7/widget/RecyclerView$Adapter;

    move-result-object v1

    if-nez v1, :cond_1

    .line 8452
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Lflyme/support/v7/widget/RecyclerView;

    # getter for: Lflyme/support/v7/widget/RecyclerView;->mAdapter:Lflyme/support/v7/widget/RecyclerView$Adapter;
    invoke-static {v0}, Lflyme/support/v7/widget/RecyclerView;->access$3100(Lflyme/support/v7/widget/RecyclerView;)Lflyme/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    invoke-virtual {v0}, Lflyme/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    goto :goto_0
.end method

.method public getSelectionModeForAccessibility(Lflyme/support/v7/widget/RecyclerView$Recycler;Lflyme/support/v7/widget/RecyclerView$State;)I
    .locals 1
    .param p1, "recycler"    # Lflyme/support/v7/widget/RecyclerView$Recycler;
    .param p2, "state"    # Lflyme/support/v7/widget/RecyclerView$State;

    .prologue
    .line 8433
    const/4 v0, 0x0

    return v0
.end method

.method public getTopDecorationHeight(Landroid/view/View;)I
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 7794
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lflyme/support/v7/widget/RecyclerView$LayoutParams;

    iget-object v0, v0, Lflyme/support/v7/widget/RecyclerView$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 7158
    iget v0, p0, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->mWidthSpec:I

    invoke-static {v0}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    return v0
.end method

.method public getWidthMode()I
    .locals 1

    .prologue
    .line 7131
    iget v0, p0, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->mWidthSpec:I

    invoke-static {v0}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    return v0
.end method

.method hasFlexibleChildInBothOrientations()Z
    .locals 5

    .prologue
    .line 8606
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v1

    .line 8607
    .local v1, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 8608
    invoke-virtual {p0, v2}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 8609
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 8610
    .local v3, "lp":Landroid/view/ViewGroup$LayoutParams;
    iget v4, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-gez v4, :cond_0

    iget v4, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-gez v4, :cond_0

    .line 8611
    const/4 v4, 0x1

    .line 8614
    .end local v0    # "child":Landroid/view/View;
    .end local v3    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :goto_1
    return v4

    .line 8607
    .restart local v0    # "child":Landroid/view/View;
    .restart local v3    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 8614
    .end local v0    # "child":Landroid/view/View;
    .end local v3    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public isAttachedToWindow()Z
    .locals 1

    .prologue
    .line 6347
    iget-boolean v0, p0, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->mIsAttachedToWindow:Z

    return v0
.end method

.method public isLayoutHierarchical(Lflyme/support/v7/widget/RecyclerView$Recycler;Lflyme/support/v7/widget/RecyclerView$State;)Z
    .locals 1
    .param p1, "recycler"    # Lflyme/support/v7/widget/RecyclerView$Recycler;
    .param p2, "state"    # Lflyme/support/v7/widget/RecyclerView$State;

    .prologue
    .line 8485
    const/4 v0, 0x0

    return v0
.end method

.method public isSmoothScrolling()Z
    .locals 1

    .prologue
    .line 6658
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->mSmoothScroller:Lflyme/support/v7/widget/RecyclerView$SmoothScroller;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->mSmoothScroller:Lflyme/support/v7/widget/RecyclerView$SmoothScroller;

    invoke-virtual {v0}, Lflyme/support/v7/widget/RecyclerView$SmoothScroller;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public layoutDecorated(Landroid/view/View;IIII)V
    .locals 5
    .param p1, "child"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 7703
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lflyme/support/v7/widget/RecyclerView$LayoutParams;

    iget-object v0, v1, Lflyme/support/v7/widget/RecyclerView$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    .line 7704
    .local v0, "insets":Landroid/graphics/Rect;
    iget v1, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, p2

    iget v2, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, p3

    iget v3, v0, Landroid/graphics/Rect;->right:I

    sub-int v3, p4, v3

    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    sub-int v4, p5, v4

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    .line 7706
    return-void
.end method

.method public measureChildWithMargins(Landroid/view/View;II)V
    .locals 9
    .param p1, "child"    # Landroid/view/View;
    .param p2, "widthUsed"    # I
    .param p3, "heightUsed"    # I

    .prologue
    .line 7527
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lflyme/support/v7/widget/RecyclerView$LayoutParams;

    .line 7529
    .local v2, "lp":Lflyme/support/v7/widget/RecyclerView$LayoutParams;
    iget-object v4, p0, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Lflyme/support/v7/widget/RecyclerView;

    invoke-virtual {v4, p1}, Lflyme/support/v7/widget/RecyclerView;->getItemDecorInsetsForChild(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v1

    .line 7530
    .local v1, "insets":Landroid/graphics/Rect;
    iget v4, v1, Landroid/graphics/Rect;->left:I

    iget v5, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v5

    add-int/2addr p2, v4

    .line 7531
    iget v4, v1, Landroid/graphics/Rect;->top:I

    iget v5, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v4, v5

    add-int/2addr p3, v4

    .line 7533
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->getWidthMode()I

    move-result v5

    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->getPaddingLeft()I

    move-result v6

    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->getPaddingRight()I

    move-result v7

    add-int/2addr v6, v7

    iget v7, v2, Lflyme/support/v7/widget/RecyclerView$LayoutParams;->leftMargin:I

    add-int/2addr v6, v7

    iget v7, v2, Lflyme/support/v7/widget/RecyclerView$LayoutParams;->rightMargin:I

    add-int/2addr v6, v7

    add-int/2addr v6, p2

    iget v7, v2, Lflyme/support/v7/widget/RecyclerView$LayoutParams;->width:I

    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v8

    invoke-static {v4, v5, v6, v7, v8}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->getChildMeasureSpec(IIIIZ)I

    move-result v3

    .line 7537
    .local v3, "widthSpec":I
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->getHeight()I

    move-result v4

    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->getHeightMode()I

    move-result v5

    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->getPaddingTop()I

    move-result v6

    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->getPaddingBottom()I

    move-result v7

    add-int/2addr v6, v7

    iget v7, v2, Lflyme/support/v7/widget/RecyclerView$LayoutParams;->topMargin:I

    add-int/2addr v6, v7

    iget v7, v2, Lflyme/support/v7/widget/RecyclerView$LayoutParams;->bottomMargin:I

    add-int/2addr v6, v7

    add-int/2addr v6, p3

    iget v7, v2, Lflyme/support/v7/widget/RecyclerView$LayoutParams;->height:I

    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v8

    invoke-static {v4, v5, v6, v7, v8}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->getChildMeasureSpec(IIIIZ)I

    move-result v0

    .line 7541
    .local v0, "heightSpec":I
    invoke-virtual {p0, p1, v3, v0, v2}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->shouldMeasureChild(Landroid/view/View;IILflyme/support/v7/widget/RecyclerView$LayoutParams;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 7542
    invoke-virtual {p1, v3, v0}, Landroid/view/View;->measure(II)V

    .line 7544
    :cond_0
    return-void
.end method

.method public moveView(II)V
    .locals 4
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I

    .prologue
    .line 7037
    invoke-virtual {p0, p1}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 7038
    .local v0, "view":Landroid/view/View;
    if-nez v0, :cond_0

    .line 7039
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot move a child from non-existing index:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 7042
    :cond_0
    invoke-virtual {p0, p1}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->detachViewAt(I)V

    .line 7043
    invoke-virtual {p0, v0, p2}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->attachView(Landroid/view/View;I)V

    .line 7044
    return-void
.end method

.method public offsetChildrenHorizontal(I)V
    .locals 1
    .param p1, "dx"    # I

    .prologue
    .line 7282
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Lflyme/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_0

    .line 7283
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Lflyme/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1}, Lflyme/support/v7/widget/RecyclerView;->offsetChildrenHorizontal(I)V

    .line 7285
    :cond_0
    return-void
.end method

.method public offsetChildrenVertical(I)V
    .locals 1
    .param p1, "dy"    # I

    .prologue
    .line 7294
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Lflyme/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_0

    .line 7295
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Lflyme/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1}, Lflyme/support/v7/widget/RecyclerView;->offsetChildrenVertical(I)V

    .line 7297
    :cond_0
    return-void
.end method

.method public onAdapterChanged(Lflyme/support/v7/widget/RecyclerView$Adapter;Lflyme/support/v7/widget/RecyclerView$Adapter;)V
    .locals 0
    .param p1, "oldAdapter"    # Lflyme/support/v7/widget/RecyclerView$Adapter;
    .param p2, "newAdapter"    # Lflyme/support/v7/widget/RecyclerView$Adapter;

    .prologue
    .line 7988
    return-void
.end method

.method public onAddFocusables(Lflyme/support/v7/widget/RecyclerView;Ljava/util/ArrayList;II)Z
    .locals 1
    .param p1, "recyclerView"    # Lflyme/support/v7/widget/RecyclerView;
    .param p3, "direction"    # I
    .param p4, "focusableMode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lflyme/support/v7/widget/RecyclerView;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;II)Z"
        }
    .end annotation

    .prologue
    .line 8016
    .local p2, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public onAttachedToWindow(Lflyme/support/v7/widget/RecyclerView;)V
    .locals 0
    .param p1, "view"    # Lflyme/support/v7/widget/RecyclerView;

    .prologue
    .line 6397
    return-void
.end method

.method public onDetachedFromWindow(Lflyme/support/v7/widget/RecyclerView;)V
    .locals 0
    .param p1, "view"    # Lflyme/support/v7/widget/RecyclerView;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 6406
    return-void
.end method

.method public onDetachedFromWindow(Lflyme/support/v7/widget/RecyclerView;Lflyme/support/v7/widget/RecyclerView$Recycler;)V
    .locals 0
    .param p1, "view"    # Lflyme/support/v7/widget/RecyclerView;
    .param p2, "recycler"    # Lflyme/support/v7/widget/RecyclerView$Recycler;

    .prologue
    .line 6421
    invoke-virtual {p0, p1}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->onDetachedFromWindow(Lflyme/support/v7/widget/RecyclerView;)V

    .line 6422
    return-void
.end method

.method public onFocusSearchFailed(Landroid/view/View;ILflyme/support/v7/widget/RecyclerView$Recycler;Lflyme/support/v7/widget/RecyclerView$State;)Landroid/view/View;
    .locals 1
    .param p1, "focused"    # Landroid/view/View;
    .param p2, "direction"    # I
    .param p3, "recycler"    # Lflyme/support/v7/widget/RecyclerView$Recycler;
    .param p4, "state"    # Lflyme/support/v7/widget/RecyclerView$State;

    .prologue
    .line 7862
    const/4 v0, 0x0

    return-object v0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 8338
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Lflyme/support/v7/widget/RecyclerView;

    iget-object v0, v0, Lflyme/support/v7/widget/RecyclerView;->mRecycler:Lflyme/support/v7/widget/RecyclerView$Recycler;

    iget-object v1, p0, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Lflyme/support/v7/widget/RecyclerView;

    iget-object v1, v1, Lflyme/support/v7/widget/RecyclerView;->mState:Lflyme/support/v7/widget/RecyclerView$State;

    invoke-virtual {p0, v0, v1, p1}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->onInitializeAccessibilityEvent(Lflyme/support/v7/widget/RecyclerView$Recycler;Lflyme/support/v7/widget/RecyclerView$State;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 8339
    return-void
.end method

.method public onInitializeAccessibilityEvent(Lflyme/support/v7/widget/RecyclerView$Recycler;Lflyme/support/v7/widget/RecyclerView$State;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 4
    .param p1, "recycler"    # Lflyme/support/v7/widget/RecyclerView$Recycler;
    .param p2, "state"    # Lflyme/support/v7/widget/RecyclerView$State;
    .param p3, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    const/4 v3, -0x1

    const/4 v1, 0x1

    .line 8354
    invoke-static {p3}, Landroid/support/v4/view/accessibility/AccessibilityEventCompat;->asRecord(Landroid/view/accessibility/AccessibilityEvent;)Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;

    move-result-object v0

    .line 8356
    .local v0, "record":Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;
    iget-object v2, p0, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Lflyme/support/v7/widget/RecyclerView;

    if-eqz v2, :cond_0

    if-nez v0, :cond_1

    .line 8367
    :cond_0
    :goto_0
    return-void

    .line 8359
    :cond_1
    iget-object v2, p0, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Lflyme/support/v7/widget/RecyclerView;

    invoke-static {v2, v1}, Landroid/support/v4/view/ViewCompat;->canScrollVertically(Landroid/view/View;I)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Lflyme/support/v7/widget/RecyclerView;

    invoke-static {v2, v3}, Landroid/support/v4/view/ViewCompat;->canScrollVertically(Landroid/view/View;I)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Lflyme/support/v7/widget/RecyclerView;

    invoke-static {v2, v3}, Landroid/support/v4/view/ViewCompat;->canScrollHorizontally(Landroid/view/View;I)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Lflyme/support/v7/widget/RecyclerView;

    invoke-static {v2, v1}, Landroid/support/v4/view/ViewCompat;->canScrollHorizontally(Landroid/view/View;I)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    :goto_1
    invoke-virtual {v0, v1}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->setScrollable(Z)V

    .line 8364
    iget-object v1, p0, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Lflyme/support/v7/widget/RecyclerView;

    # getter for: Lflyme/support/v7/widget/RecyclerView;->mAdapter:Lflyme/support/v7/widget/RecyclerView$Adapter;
    invoke-static {v1}, Lflyme/support/v7/widget/RecyclerView;->access$3100(Lflyme/support/v7/widget/RecyclerView;)Lflyme/support/v7/widget/RecyclerView$Adapter;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 8365
    iget-object v1, p0, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Lflyme/support/v7/widget/RecyclerView;

    # getter for: Lflyme/support/v7/widget/RecyclerView;->mAdapter:Lflyme/support/v7/widget/RecyclerView$Adapter;
    invoke-static {v1}, Lflyme/support/v7/widget/RecyclerView;->access$3100(Lflyme/support/v7/widget/RecyclerView;)Lflyme/support/v7/widget/RecyclerView$Adapter;

    move-result-object v1

    invoke-virtual {v1}, Lflyme/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->setItemCount(I)V

    goto :goto_0

    .line 8359
    :cond_3
    const/4 v1, 0x0

    goto :goto_1
.end method

.method onInitializeAccessibilityNodeInfo(Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 2
    .param p1, "info"    # Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    .prologue
    .line 8287
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Lflyme/support/v7/widget/RecyclerView;

    iget-object v0, v0, Lflyme/support/v7/widget/RecyclerView;->mRecycler:Lflyme/support/v7/widget/RecyclerView$Recycler;

    iget-object v1, p0, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Lflyme/support/v7/widget/RecyclerView;

    iget-object v1, v1, Lflyme/support/v7/widget/RecyclerView;->mState:Lflyme/support/v7/widget/RecyclerView$State;

    invoke-virtual {p0, v0, v1, p1}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->onInitializeAccessibilityNodeInfo(Lflyme/support/v7/widget/RecyclerView$Recycler;Lflyme/support/v7/widget/RecyclerView$State;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 8288
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Lflyme/support/v7/widget/RecyclerView$Recycler;Lflyme/support/v7/widget/RecyclerView$State;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 5
    .param p1, "recycler"    # Lflyme/support/v7/widget/RecyclerView$Recycler;
    .param p2, "state"    # Lflyme/support/v7/widget/RecyclerView$State;
    .param p3, "info"    # Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x1

    .line 8317
    iget-object v1, p0, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Lflyme/support/v7/widget/RecyclerView;

    invoke-static {v1, v3}, Landroid/support/v4/view/ViewCompat;->canScrollVertically(Landroid/view/View;I)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Lflyme/support/v7/widget/RecyclerView;

    invoke-static {v1, v3}, Landroid/support/v4/view/ViewCompat;->canScrollHorizontally(Landroid/view/View;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 8319
    :cond_0
    const/16 v1, 0x2000

    invoke-virtual {p3, v1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    .line 8320
    invoke-virtual {p3, v2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setScrollable(Z)V

    .line 8322
    :cond_1
    iget-object v1, p0, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Lflyme/support/v7/widget/RecyclerView;

    invoke-static {v1, v2}, Landroid/support/v4/view/ViewCompat;->canScrollVertically(Landroid/view/View;I)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Lflyme/support/v7/widget/RecyclerView;

    invoke-static {v1, v2}, Landroid/support/v4/view/ViewCompat;->canScrollHorizontally(Landroid/view/View;I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 8324
    :cond_2
    const/16 v1, 0x1000

    invoke-virtual {p3, v1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    .line 8325
    invoke-virtual {p3, v2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setScrollable(Z)V

    .line 8327
    :cond_3
    invoke-virtual {p0, p1, p2}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->getRowCountForAccessibility(Lflyme/support/v7/widget/RecyclerView$Recycler;Lflyme/support/v7/widget/RecyclerView$State;)I

    move-result v1

    invoke-virtual {p0, p1, p2}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->getColumnCountForAccessibility(Lflyme/support/v7/widget/RecyclerView$Recycler;Lflyme/support/v7/widget/RecyclerView$State;)I

    move-result v2

    invoke-virtual {p0, p1, p2}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->isLayoutHierarchical(Lflyme/support/v7/widget/RecyclerView$Recycler;Lflyme/support/v7/widget/RecyclerView$State;)Z

    move-result v3

    invoke-virtual {p0, p1, p2}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->getSelectionModeForAccessibility(Lflyme/support/v7/widget/RecyclerView$Recycler;Lflyme/support/v7/widget/RecyclerView$State;)I

    move-result v4

    invoke-static {v1, v2, v3, v4}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$CollectionInfoCompat;->obtain(IIZI)Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$CollectionInfoCompat;

    move-result-object v0

    .line 8333
    .local v0, "collectionInfo":Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$CollectionInfoCompat;
    invoke-virtual {p3, v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setCollectionInfo(Ljava/lang/Object;)V

    .line 8334
    return-void
.end method

.method onInitializeAccessibilityNodeInfoForItem(Landroid/view/View;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 3
    .param p1, "host"    # Landroid/view/View;
    .param p2, "info"    # Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    .prologue
    .line 8371
    invoke-static {p1}, Lflyme/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lflyme/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    .line 8373
    .local v0, "vh":Lflyme/support/v7/widget/RecyclerView$ViewHolder;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->isRemoved()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->mChildHelper:Lflyme/support/v7/widget/ChildHelper;

    iget-object v2, v0, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1, v2}, Lflyme/support/v7/widget/ChildHelper;->isHidden(Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 8374
    iget-object v1, p0, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Lflyme/support/v7/widget/RecyclerView;

    iget-object v1, v1, Lflyme/support/v7/widget/RecyclerView;->mRecycler:Lflyme/support/v7/widget/RecyclerView$Recycler;

    iget-object v2, p0, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Lflyme/support/v7/widget/RecyclerView;

    iget-object v2, v2, Lflyme/support/v7/widget/RecyclerView;->mState:Lflyme/support/v7/widget/RecyclerView$State;

    invoke-virtual {p0, v1, v2, p1, p2}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->onInitializeAccessibilityNodeInfoForItem(Lflyme/support/v7/widget/RecyclerView$Recycler;Lflyme/support/v7/widget/RecyclerView$State;Landroid/view/View;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 8377
    :cond_0
    return-void
.end method

.method public onInitializeAccessibilityNodeInfoForItem(Lflyme/support/v7/widget/RecyclerView$Recycler;Lflyme/support/v7/widget/RecyclerView$State;Landroid/view/View;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 7
    .param p1, "recycler"    # Lflyme/support/v7/widget/RecyclerView$Recycler;
    .param p2, "state"    # Lflyme/support/v7/widget/RecyclerView$State;
    .param p3, "host"    # Landroid/view/View;
    .param p4, "info"    # Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    .prologue
    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 8395
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0, p3}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v0

    .line 8396
    .local v0, "rowIndexGuess":I
    :goto_0
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0, p3}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v2

    .local v2, "columnIndexGuess":I
    :goto_1
    move v3, v1

    move v5, v4

    .line 8397
    invoke-static/range {v0 .. v5}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;->obtain(IIIIZZ)Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;

    move-result-object v6

    .line 8400
    .local v6, "itemInfo":Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;
    invoke-virtual {p4, v6}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setCollectionItemInfo(Ljava/lang/Object;)V

    .line 8401
    return-void

    .end local v0    # "rowIndexGuess":I
    .end local v2    # "columnIndexGuess":I
    .end local v6    # "itemInfo":Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;
    :cond_0
    move v0, v4

    .line 8395
    goto :goto_0

    .restart local v0    # "rowIndexGuess":I
    :cond_1
    move v2, v4

    .line 8396
    goto :goto_1
.end method

.method public onInterceptFocusSearch(Landroid/view/View;I)Landroid/view/View;
    .locals 1
    .param p1, "focused"    # Landroid/view/View;
    .param p2, "direction"    # I

    .prologue
    .line 7882
    const/4 v0, 0x0

    return-object v0
.end method

.method public onItemsAdded(Lflyme/support/v7/widget/RecyclerView;II)V
    .locals 0
    .param p1, "recyclerView"    # Lflyme/support/v7/widget/RecyclerView;
    .param p2, "positionStart"    # I
    .param p3, "itemCount"    # I

    .prologue
    .line 8038
    return-void
.end method

.method public onItemsChanged(Lflyme/support/v7/widget/RecyclerView;)V
    .locals 0
    .param p1, "recyclerView"    # Lflyme/support/v7/widget/RecyclerView;

    .prologue
    .line 8026
    return-void
.end method

.method public onItemsMoved(Lflyme/support/v7/widget/RecyclerView;III)V
    .locals 0
    .param p1, "recyclerView"    # Lflyme/support/v7/widget/RecyclerView;
    .param p2, "from"    # I
    .param p3, "to"    # I
    .param p4, "itemCount"    # I

    .prologue
    .line 8090
    return-void
.end method

.method public onItemsRemoved(Lflyme/support/v7/widget/RecyclerView;II)V
    .locals 0
    .param p1, "recyclerView"    # Lflyme/support/v7/widget/RecyclerView;
    .param p2, "positionStart"    # I
    .param p3, "itemCount"    # I

    .prologue
    .line 8048
    return-void
.end method

.method public onItemsUpdated(Lflyme/support/v7/widget/RecyclerView;II)V
    .locals 0
    .param p1, "recyclerView"    # Lflyme/support/v7/widget/RecyclerView;
    .param p2, "positionStart"    # I
    .param p3, "itemCount"    # I

    .prologue
    .line 8060
    return-void
.end method

.method public onItemsUpdated(Lflyme/support/v7/widget/RecyclerView;IILjava/lang/Object;)V
    .locals 0
    .param p1, "recyclerView"    # Lflyme/support/v7/widget/RecyclerView;
    .param p2, "positionStart"    # I
    .param p3, "itemCount"    # I
    .param p4, "payload"    # Ljava/lang/Object;

    .prologue
    .line 8073
    invoke-virtual {p0, p1, p2, p3}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->onItemsUpdated(Lflyme/support/v7/widget/RecyclerView;II)V

    .line 8074
    return-void
.end method

.method public onLayoutChildren(Lflyme/support/v7/widget/RecyclerView$Recycler;Lflyme/support/v7/widget/RecyclerView$State;)V
    .locals 2
    .param p1, "recycler"    # Lflyme/support/v7/widget/RecyclerView$Recycler;
    .param p2, "state"    # Lflyme/support/v7/widget/RecyclerView$State;

    .prologue
    .line 6485
    const-string v0, "RecyclerView"

    const-string v1, "You must override onLayoutChildren(Recycler recycler, State state) "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6486
    return-void
.end method

.method public onMeasure(Lflyme/support/v7/widget/RecyclerView$Recycler;Lflyme/support/v7/widget/RecyclerView$State;II)V
    .locals 1
    .param p1, "recycler"    # Lflyme/support/v7/widget/RecyclerView$Recycler;
    .param p2, "state"    # Lflyme/support/v7/widget/RecyclerView$State;
    .param p3, "widthSpec"    # I
    .param p4, "heightSpec"    # I

    .prologue
    .line 8198
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Lflyme/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p3, p4}, Lflyme/support/v7/widget/RecyclerView;->defaultOnMeasure(II)V

    .line 8199
    return-void
.end method

.method public onRequestChildFocus(Lflyme/support/v7/widget/RecyclerView;Landroid/view/View;Landroid/view/View;)Z
    .locals 1
    .param p1, "parent"    # Lflyme/support/v7/widget/RecyclerView;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "focused"    # Landroid/view/View;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 7950
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->isSmoothScrolling()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lflyme/support/v7/widget/RecyclerView;->isComputingLayout()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onRequestChildFocus(Lflyme/support/v7/widget/RecyclerView;Lflyme/support/v7/widget/RecyclerView$State;Landroid/view/View;Landroid/view/View;)Z
    .locals 1
    .param p1, "parent"    # Lflyme/support/v7/widget/RecyclerView;
    .param p2, "state"    # Lflyme/support/v7/widget/RecyclerView$State;
    .param p3, "child"    # Landroid/view/View;
    .param p4, "focused"    # Landroid/view/View;

    .prologue
    .line 7972
    invoke-virtual {p0, p1, p3, p4}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->onRequestChildFocus(Lflyme/support/v7/widget/RecyclerView;Landroid/view/View;Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 0
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 8242
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 1

    .prologue
    .line 8236
    const/4 v0, 0x0

    return-object v0
.end method

.method public onScrollStateChanged(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 8262
    return-void
.end method

.method performAccessibilityAction(ILandroid/os/Bundle;)Z
    .locals 2
    .param p1, "action"    # I
    .param p2, "args"    # Landroid/os/Bundle;

    .prologue
    .line 8490
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Lflyme/support/v7/widget/RecyclerView;

    iget-object v0, v0, Lflyme/support/v7/widget/RecyclerView;->mRecycler:Lflyme/support/v7/widget/RecyclerView$Recycler;

    iget-object v1, p0, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Lflyme/support/v7/widget/RecyclerView;

    iget-object v1, v1, Lflyme/support/v7/widget/RecyclerView;->mState:Lflyme/support/v7/widget/RecyclerView$State;

    invoke-virtual {p0, v0, v1, p1, p2}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->performAccessibilityAction(Lflyme/support/v7/widget/RecyclerView$Recycler;Lflyme/support/v7/widget/RecyclerView$State;ILandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method public performAccessibilityAction(Lflyme/support/v7/widget/RecyclerView$Recycler;Lflyme/support/v7/widget/RecyclerView$State;ILandroid/os/Bundle;)Z
    .locals 7
    .param p1, "recycler"    # Lflyme/support/v7/widget/RecyclerView$Recycler;
    .param p2, "state"    # Lflyme/support/v7/widget/RecyclerView$State;
    .param p3, "action"    # I
    .param p4, "args"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    const/4 v6, -0x1

    const/4 v3, 0x1

    .line 8506
    iget-object v4, p0, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Lflyme/support/v7/widget/RecyclerView;

    if-nez v4, :cond_1

    .line 8532
    :cond_0
    :goto_0
    return v2

    .line 8509
    :cond_1
    const/4 v1, 0x0

    .local v1, "vScroll":I
    const/4 v0, 0x0

    .line 8510
    .local v0, "hScroll":I
    sparse-switch p3, :sswitch_data_0

    .line 8528
    :cond_2
    :goto_1
    if-nez v1, :cond_3

    if-eqz v0, :cond_0

    .line 8531
    :cond_3
    iget-object v2, p0, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Lflyme/support/v7/widget/RecyclerView;

    invoke-virtual {v2, v0, v1}, Lflyme/support/v7/widget/RecyclerView;->scrollBy(II)V

    move v2, v3

    .line 8532
    goto :goto_0

    .line 8512
    :sswitch_0
    iget-object v4, p0, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Lflyme/support/v7/widget/RecyclerView;

    invoke-static {v4, v6}, Landroid/support/v4/view/ViewCompat;->canScrollVertically(Landroid/view/View;I)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 8513
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->getHeight()I

    move-result v4

    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->getPaddingTop()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v4, v5

    neg-int v1, v4

    .line 8515
    :cond_4
    iget-object v4, p0, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Lflyme/support/v7/widget/RecyclerView;

    invoke-static {v4, v6}, Landroid/support/v4/view/ViewCompat;->canScrollHorizontally(Landroid/view/View;I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 8516
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->getPaddingLeft()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->getPaddingRight()I

    move-result v5

    sub-int/2addr v4, v5

    neg-int v0, v4

    goto :goto_1

    .line 8520
    :sswitch_1
    iget-object v4, p0, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Lflyme/support/v7/widget/RecyclerView;

    invoke-static {v4, v3}, Landroid/support/v4/view/ViewCompat;->canScrollVertically(Landroid/view/View;I)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 8521
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->getHeight()I

    move-result v4

    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->getPaddingTop()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->getPaddingBottom()I

    move-result v5

    sub-int v1, v4, v5

    .line 8523
    :cond_5
    iget-object v4, p0, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Lflyme/support/v7/widget/RecyclerView;

    invoke-static {v4, v3}, Landroid/support/v4/view/ViewCompat;->canScrollHorizontally(Landroid/view/View;I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 8524
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->getPaddingLeft()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->getPaddingRight()I

    move-result v5

    sub-int v0, v4, v5

    goto :goto_1

    .line 8510
    :sswitch_data_0
    .sparse-switch
        0x1000 -> :sswitch_1
        0x2000 -> :sswitch_0
    .end sparse-switch
.end method

.method performAccessibilityActionForItem(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "action"    # I
    .param p3, "args"    # Landroid/os/Bundle;

    .prologue
    .line 8537
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Lflyme/support/v7/widget/RecyclerView;

    iget-object v1, v0, Lflyme/support/v7/widget/RecyclerView;->mRecycler:Lflyme/support/v7/widget/RecyclerView$Recycler;

    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Lflyme/support/v7/widget/RecyclerView;

    iget-object v2, v0, Lflyme/support/v7/widget/RecyclerView;->mState:Lflyme/support/v7/widget/RecyclerView$State;

    move-object v0, p0

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->performAccessibilityActionForItem(Lflyme/support/v7/widget/RecyclerView$Recycler;Lflyme/support/v7/widget/RecyclerView$State;Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method public performAccessibilityActionForItem(Lflyme/support/v7/widget/RecyclerView$Recycler;Lflyme/support/v7/widget/RecyclerView$State;Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 1
    .param p1, "recycler"    # Lflyme/support/v7/widget/RecyclerView$Recycler;
    .param p2, "state"    # Lflyme/support/v7/widget/RecyclerView$State;
    .param p3, "view"    # Landroid/view/View;
    .param p4, "action"    # I
    .param p5, "args"    # Landroid/os/Bundle;

    .prologue
    .line 8558
    const/4 v0, 0x0

    return v0
.end method

.method public removeAndRecycleAllViews(Lflyme/support/v7/widget/RecyclerView$Recycler;)V
    .locals 3
    .param p1, "recycler"    # Lflyme/support/v7/widget/RecyclerView$Recycler;

    .prologue
    .line 8277
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 8278
    invoke-virtual {p0, v0}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 8279
    .local v1, "view":Landroid/view/View;
    invoke-static {v1}, Lflyme/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lflyme/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v2

    invoke-virtual {v2}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v2

    if-nez v2, :cond_0

    .line 8280
    invoke-virtual {p0, v0, p1}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->removeAndRecycleViewAt(ILflyme/support/v7/widget/RecyclerView$Recycler;)V

    .line 8277
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 8283
    .end local v1    # "view":Landroid/view/View;
    :cond_1
    return-void
.end method

.method removeAndRecycleScrapInt(Lflyme/support/v7/widget/RecyclerView$Recycler;)V
    .locals 6
    .param p1, "recycler"    # Lflyme/support/v7/widget/RecyclerView$Recycler;

    .prologue
    const/4 v5, 0x0

    .line 7386
    invoke-virtual {p1}, Lflyme/support/v7/widget/RecyclerView$Recycler;->getScrapCount()I

    move-result v2

    .line 7388
    .local v2, "scrapCount":I
    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_3

    .line 7389
    invoke-virtual {p1, v0}, Lflyme/support/v7/widget/RecyclerView$Recycler;->getScrapViewAt(I)Landroid/view/View;

    move-result-object v1

    .line 7390
    .local v1, "scrap":Landroid/view/View;
    invoke-static {v1}, Lflyme/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lflyme/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v3

    .line 7391
    .local v3, "vh":Lflyme/support/v7/widget/RecyclerView$ViewHolder;
    invoke-virtual {v3}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 7388
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 7399
    :cond_0
    invoke-virtual {v3, v5}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->setIsRecyclable(Z)V

    .line 7400
    invoke-virtual {v3}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->isTmpDetached()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 7401
    iget-object v4, p0, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Lflyme/support/v7/widget/RecyclerView;

    invoke-virtual {v4, v1, v5}, Lflyme/support/v7/widget/RecyclerView;->removeDetachedView(Landroid/view/View;Z)V

    .line 7403
    :cond_1
    iget-object v4, p0, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Lflyme/support/v7/widget/RecyclerView;

    iget-object v4, v4, Lflyme/support/v7/widget/RecyclerView;->mItemAnimator:Lflyme/support/v7/widget/RecyclerView$ItemAnimator;

    if-eqz v4, :cond_2

    .line 7404
    iget-object v4, p0, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Lflyme/support/v7/widget/RecyclerView;

    iget-object v4, v4, Lflyme/support/v7/widget/RecyclerView;->mItemAnimator:Lflyme/support/v7/widget/RecyclerView$ItemAnimator;

    invoke-virtual {v4, v3}, Lflyme/support/v7/widget/RecyclerView$ItemAnimator;->endAnimation(Lflyme/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 7406
    :cond_2
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->setIsRecyclable(Z)V

    .line 7407
    invoke-virtual {p1, v1}, Lflyme/support/v7/widget/RecyclerView$Recycler;->quickRecycleScrapView(Landroid/view/View;)V

    goto :goto_1

    .line 7409
    .end local v1    # "scrap":Landroid/view/View;
    .end local v3    # "vh":Lflyme/support/v7/widget/RecyclerView$ViewHolder;
    :cond_3
    invoke-virtual {p1}, Lflyme/support/v7/widget/RecyclerView$Recycler;->clearScrap()V

    .line 7410
    if-lez v2, :cond_4

    .line 7411
    iget-object v4, p0, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Lflyme/support/v7/widget/RecyclerView;

    invoke-virtual {v4}, Lflyme/support/v7/widget/RecyclerView;->invalidate()V

    .line 7413
    :cond_4
    return-void
.end method

.method public removeAndRecycleView(Landroid/view/View;Lflyme/support/v7/widget/RecyclerView$Recycler;)V
    .locals 0
    .param p1, "child"    # Landroid/view/View;
    .param p2, "recycler"    # Lflyme/support/v7/widget/RecyclerView$Recycler;

    .prologue
    .line 7081
    invoke-virtual {p0, p1}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->removeView(Landroid/view/View;)V

    .line 7082
    invoke-virtual {p2, p1}, Lflyme/support/v7/widget/RecyclerView$Recycler;->recycleView(Landroid/view/View;)V

    .line 7083
    return-void
.end method

.method public removeAndRecycleViewAt(ILflyme/support/v7/widget/RecyclerView$Recycler;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "recycler"    # Lflyme/support/v7/widget/RecyclerView$Recycler;

    .prologue
    .line 7092
    invoke-virtual {p0, p1}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 7093
    .local v0, "view":Landroid/view/View;
    invoke-virtual {p0, p1}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->removeViewAt(I)V

    .line 7094
    invoke-virtual {p2, v0}, Lflyme/support/v7/widget/RecyclerView$Recycler;->recycleView(Landroid/view/View;)V

    .line 7095
    return-void
.end method

.method public removeCallbacks(Ljava/lang/Runnable;)Z
    .locals 1
    .param p1, "action"    # Ljava/lang/Runnable;

    .prologue
    .line 6381
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Lflyme/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_0

    .line 6382
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Lflyme/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1}, Lflyme/support/v7/widget/RecyclerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    .line 6384
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeView(Landroid/view/View;)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 6807
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->mChildHelper:Lflyme/support/v7/widget/ChildHelper;

    invoke-virtual {v0, p1}, Lflyme/support/v7/widget/ChildHelper;->removeView(Landroid/view/View;)V

    .line 6808
    return-void
.end method

.method public removeViewAt(I)V
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 6819
    invoke-virtual {p0, p1}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 6820
    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 6821
    iget-object v1, p0, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->mChildHelper:Lflyme/support/v7/widget/ChildHelper;

    invoke-virtual {v1, p1}, Lflyme/support/v7/widget/ChildHelper;->removeViewAt(I)V

    .line 6823
    :cond_0
    return-void
.end method

.method public requestChildRectangleOnScreen(Lflyme/support/v7/widget/RecyclerView;Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 17
    .param p1, "parent"    # Lflyme/support/v7/widget/RecyclerView;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "rect"    # Landroid/graphics/Rect;
    .param p4, "immediate"    # Z

    .prologue
    .line 7902
    invoke-virtual/range {p0 .. p0}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->getPaddingLeft()I

    move-result v12

    .line 7903
    .local v12, "parentLeft":I
    invoke-virtual/range {p0 .. p0}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->getPaddingTop()I

    move-result v14

    .line 7904
    .local v14, "parentTop":I
    invoke-virtual/range {p0 .. p0}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->getWidth()I

    move-result v15

    invoke-virtual/range {p0 .. p0}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->getPaddingRight()I

    move-result v16

    sub-int v13, v15, v16

    .line 7905
    .local v13, "parentRight":I
    invoke-virtual/range {p0 .. p0}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->getHeight()I

    move-result v15

    invoke-virtual/range {p0 .. p0}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->getPaddingBottom()I

    move-result v16

    sub-int v11, v15, v16

    .line 7906
    .local v11, "parentBottom":I
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getLeft()I

    move-result v15

    move-object/from16 v0, p3

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v16, v0

    add-int v15, v15, v16

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getScrollX()I

    move-result v16

    sub-int v2, v15, v16

    .line 7907
    .local v2, "childLeft":I
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTop()I

    move-result v15

    move-object/from16 v0, p3

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v16, v0

    add-int v15, v15, v16

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getScrollY()I

    move-result v16

    sub-int v4, v15, v16

    .line 7908
    .local v4, "childTop":I
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->width()I

    move-result v15

    add-int v3, v2, v15

    .line 7909
    .local v3, "childRight":I
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->height()I

    move-result v15

    add-int v1, v4, v15

    .line 7911
    .local v1, "childBottom":I
    const/4 v15, 0x0

    sub-int v16, v2, v12

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 7912
    .local v8, "offScreenLeft":I
    const/4 v15, 0x0

    sub-int v16, v4, v14

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->min(II)I

    move-result v10

    .line 7913
    .local v10, "offScreenTop":I
    const/4 v15, 0x0

    sub-int v16, v3, v13

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 7914
    .local v9, "offScreenRight":I
    const/4 v15, 0x0

    sub-int v16, v1, v11

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 7920
    .local v7, "offScreenBottom":I
    invoke-virtual/range {p0 .. p0}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->getLayoutDirection()I

    move-result v15

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_2

    .line 7921
    if-eqz v9, :cond_1

    move v5, v9

    .line 7930
    .local v5, "dx":I
    :goto_0
    if-eqz v10, :cond_4

    move v6, v10

    .line 7933
    .local v6, "dy":I
    :goto_1
    if-nez v5, :cond_0

    if-eqz v6, :cond_6

    .line 7934
    :cond_0
    if-eqz p4, :cond_5

    .line 7935
    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v6}, Lflyme/support/v7/widget/RecyclerView;->scrollBy(II)V

    .line 7939
    :goto_2
    const/4 v15, 0x1

    .line 7941
    :goto_3
    return v15

    .line 7921
    .end local v5    # "dx":I
    .end local v6    # "dy":I
    :cond_1
    sub-int v15, v3, v13

    invoke-static {v8, v15}, Ljava/lang/Math;->max(II)I

    move-result v5

    goto :goto_0

    .line 7924
    :cond_2
    if-eqz v8, :cond_3

    move v5, v8

    .restart local v5    # "dx":I
    :goto_4
    goto :goto_0

    .end local v5    # "dx":I
    :cond_3
    sub-int v15, v2, v12

    invoke-static {v15, v9}, Ljava/lang/Math;->min(II)I

    move-result v5

    goto :goto_4

    .line 7930
    .restart local v5    # "dx":I
    :cond_4
    sub-int v15, v4, v14

    invoke-static {v15, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    goto :goto_1

    .line 7937
    .restart local v6    # "dy":I
    :cond_5
    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v6}, Lflyme/support/v7/widget/RecyclerView;->smoothScrollBy(II)V

    goto :goto_2

    .line 7941
    :cond_6
    const/4 v15, 0x0

    goto :goto_3
.end method

.method public requestLayout()V
    .locals 1

    .prologue
    .line 6170
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Lflyme/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_0

    .line 6171
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Lflyme/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Lflyme/support/v7/widget/RecyclerView;->requestLayout()V

    .line 6173
    :cond_0
    return-void
.end method

.method public requestSimpleAnimationsInNextLayout()V
    .locals 1

    .prologue
    .line 8414
    const/4 v0, 0x1

    iput-boolean v0, p0, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->mRequestedSimpleAnimations:Z

    .line 8415
    return-void
.end method

.method public scrollHorizontallyBy(ILflyme/support/v7/widget/RecyclerView$Recycler;Lflyme/support/v7/widget/RecyclerView$State;)I
    .locals 1
    .param p1, "dx"    # I
    .param p2, "recycler"    # Lflyme/support/v7/widget/RecyclerView$Recycler;
    .param p3, "state"    # Lflyme/support/v7/widget/RecyclerView$State;

    .prologue
    .line 6574
    const/4 v0, 0x0

    return v0
.end method

.method public scrollToPosition(I)V
    .locals 0
    .param p1, "position"    # I

    .prologue
    .line 6624
    return-void
.end method

.method public scrollVerticallyBy(ILflyme/support/v7/widget/RecyclerView$Recycler;Lflyme/support/v7/widget/RecyclerView$State;)I
    .locals 1
    .param p1, "dy"    # I
    .param p2, "recycler"    # Lflyme/support/v7/widget/RecyclerView$Recycler;
    .param p3, "state"    # Lflyme/support/v7/widget/RecyclerView$State;

    .prologue
    .line 6591
    const/4 v0, 0x0

    return v0
.end method

.method public setAutoMeasureEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 6290
    iput-boolean p1, p0, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->mAutoMeasure:Z

    .line 6291
    return-void
.end method

.method setExactMeasureSpecsFrom(Lflyme/support/v7/widget/RecyclerView;)V
    .locals 3
    .param p1, "recyclerView"    # Lflyme/support/v7/widget/RecyclerView;

    .prologue
    const/high16 v2, 0x40000000    # 2.0f

    .line 8585
    invoke-virtual {p1}, Lflyme/support/v7/widget/RecyclerView;->getWidth()I

    move-result v0

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-virtual {p1}, Lflyme/support/v7/widget/RecyclerView;->getHeight()I

    move-result v1

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->setMeasureSpecs(II)V

    .line 8589
    return-void
.end method

.method setMeasureSpecs(II)V
    .locals 0
    .param p1, "wSpec"    # I
    .param p2, "hSpec"    # I

    .prologue
    .line 6087
    iput p1, p0, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->mWidthSpec:I

    .line 6088
    iput p2, p0, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->mHeightSpec:I

    .line 6089
    return-void
.end method

.method public setMeasuredDimension(II)V
    .locals 1
    .param p1, "widthSize"    # I
    .param p2, "heightSize"    # I

    .prologue
    .line 8209
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Lflyme/support/v7/widget/RecyclerView;

    # invokes: Lflyme/support/v7/widget/RecyclerView;->setMeasuredDimension(II)V
    invoke-static {v0, p1, p2}, Lflyme/support/v7/widget/RecyclerView;->access$5500(Lflyme/support/v7/widget/RecyclerView;II)V

    .line 8210
    return-void
.end method

.method public setMeasuredDimension(Landroid/graphics/Rect;II)V
    .locals 6
    .param p1, "childrenBounds"    # Landroid/graphics/Rect;
    .param p2, "wSpec"    # I
    .param p3, "hSpec"    # I

    .prologue
    .line 6159
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->getPaddingLeft()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->getPaddingRight()I

    move-result v5

    add-int v2, v4, v5

    .line 6160
    .local v2, "usedWidth":I
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v4

    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->getPaddingTop()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->getPaddingBottom()I

    move-result v5

    add-int v1, v4, v5

    .line 6161
    .local v1, "usedHeight":I
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->getMinimumWidth()I

    move-result v4

    invoke-static {p2, v2, v4}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->chooseSize(III)I

    move-result v3

    .line 6162
    .local v3, "width":I
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->getMinimumHeight()I

    move-result v4

    invoke-static {p3, v1, v4}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->chooseSize(III)I

    move-result v0

    .line 6163
    .local v0, "height":I
    invoke-virtual {p0, v3, v0}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->setMeasuredDimension(II)V

    .line 6164
    return-void
.end method

.method setMeasuredDimensionFromChildren(II)V
    .locals 17
    .param p1, "widthSpec"    # I
    .param p2, "heightSpec"    # I

    .prologue
    .line 6105
    invoke-virtual/range {p0 .. p0}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v5

    .line 6106
    .local v5, "count":I
    if-nez v5, :cond_0

    .line 6107
    move-object/from16 v0, p0

    iget-object v15, v0, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Lflyme/support/v7/widget/RecyclerView;

    move/from16 v0, p1

    move/from16 v1, p2

    invoke-virtual {v15, v0, v1}, Lflyme/support/v7/widget/RecyclerView;->defaultOnMeasure(II)V

    .line 6137
    :goto_0
    return-void

    .line 6110
    :cond_0
    const v11, 0x7fffffff

    .line 6111
    .local v11, "minX":I
    const v12, 0x7fffffff

    .line 6112
    .local v12, "minY":I
    const/high16 v9, -0x80000000

    .line 6113
    .local v9, "maxX":I
    const/high16 v10, -0x80000000

    .line 6115
    .local v10, "maxY":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    if-ge v6, v5, :cond_5

    .line 6116
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 6117
    .local v4, "child":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Lflyme/support/v7/widget/RecyclerView$LayoutParams;

    .line 6118
    .local v8, "lp":Lflyme/support/v7/widget/RecyclerView$LayoutParams;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->getDecoratedLeft(Landroid/view/View;)I

    move-result v15

    iget v0, v8, Lflyme/support/v7/widget/RecyclerView$LayoutParams;->leftMargin:I

    move/from16 v16, v0

    sub-int v7, v15, v16

    .line 6119
    .local v7, "left":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->getDecoratedRight(Landroid/view/View;)I

    move-result v15

    iget v0, v8, Lflyme/support/v7/widget/RecyclerView$LayoutParams;->rightMargin:I

    move/from16 v16, v0

    add-int v13, v15, v16

    .line 6120
    .local v13, "right":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->getDecoratedTop(Landroid/view/View;)I

    move-result v15

    iget v0, v8, Lflyme/support/v7/widget/RecyclerView$LayoutParams;->topMargin:I

    move/from16 v16, v0

    sub-int v14, v15, v16

    .line 6121
    .local v14, "top":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->getDecoratedBottom(Landroid/view/View;)I

    move-result v15

    iget v0, v8, Lflyme/support/v7/widget/RecyclerView$LayoutParams;->bottomMargin:I

    move/from16 v16, v0

    add-int v3, v15, v16

    .line 6122
    .local v3, "bottom":I
    if-ge v7, v11, :cond_1

    .line 6123
    move v11, v7

    .line 6125
    :cond_1
    if-le v13, v9, :cond_2

    .line 6126
    move v9, v13

    .line 6128
    :cond_2
    if-ge v14, v12, :cond_3

    .line 6129
    move v12, v14

    .line 6131
    :cond_3
    if-le v3, v10, :cond_4

    .line 6132
    move v10, v3

    .line 6115
    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 6135
    .end local v3    # "bottom":I
    .end local v4    # "child":Landroid/view/View;
    .end local v7    # "left":I
    .end local v8    # "lp":Lflyme/support/v7/widget/RecyclerView$LayoutParams;
    .end local v13    # "right":I
    .end local v14    # "top":I
    :cond_5
    move-object/from16 v0, p0

    iget-object v15, v0, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Lflyme/support/v7/widget/RecyclerView;

    # getter for: Lflyme/support/v7/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;
    invoke-static {v15}, Lflyme/support/v7/widget/RecyclerView;->access$5300(Lflyme/support/v7/widget/RecyclerView;)Landroid/graphics/Rect;

    move-result-object v15

    invoke-virtual {v15, v11, v12, v9, v10}, Landroid/graphics/Rect;->set(IIII)V

    .line 6136
    move-object/from16 v0, p0

    iget-object v15, v0, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Lflyme/support/v7/widget/RecyclerView;

    # getter for: Lflyme/support/v7/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;
    invoke-static {v15}, Lflyme/support/v7/widget/RecyclerView;->access$5300(Lflyme/support/v7/widget/RecyclerView;)Landroid/graphics/Rect;

    move-result-object v15

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-virtual {v0, v15, v1, v2}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->setMeasuredDimension(Landroid/graphics/Rect;II)V

    goto :goto_0
.end method

.method setRecyclerView(Lflyme/support/v7/widget/RecyclerView;)V
    .locals 3
    .param p1, "recyclerView"    # Lflyme/support/v7/widget/RecyclerView;

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    const/high16 v1, 0x40000000    # 2.0f

    .line 6071
    if-nez p1, :cond_0

    .line 6072
    iput-object v0, p0, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Lflyme/support/v7/widget/RecyclerView;

    .line 6073
    iput-object v0, p0, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->mChildHelper:Lflyme/support/v7/widget/ChildHelper;

    .line 6074
    invoke-static {v2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    iput v0, p0, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->mWidthSpec:I

    .line 6075
    invoke-static {v2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    iput v0, p0, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->mHeightSpec:I

    .line 6084
    :goto_0
    return-void

    .line 6077
    :cond_0
    iput-object p1, p0, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Lflyme/support/v7/widget/RecyclerView;

    .line 6078
    iget-object v0, p1, Lflyme/support/v7/widget/RecyclerView;->mChildHelper:Lflyme/support/v7/widget/ChildHelper;

    iput-object v0, p0, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->mChildHelper:Lflyme/support/v7/widget/ChildHelper;

    .line 6079
    invoke-virtual {p1}, Lflyme/support/v7/widget/RecyclerView;->getWidth()I

    move-result v0

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    iput v0, p0, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->mWidthSpec:I

    .line 6081
    invoke-virtual {p1}, Lflyme/support/v7/widget/RecyclerView;->getHeight()I

    move-result v0

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    iput v0, p0, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->mHeightSpec:I

    goto :goto_0
.end method

.method shouldMeasureChild(Landroid/view/View;IILflyme/support/v7/widget/RecyclerView$LayoutParams;)Z
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "widthSpec"    # I
    .param p3, "heightSpec"    # I
    .param p4, "lp"    # Lflyme/support/v7/widget/RecyclerView$LayoutParams;

    .prologue
    .line 7465
    invoke-virtual {p1}, Landroid/view/View;->isLayoutRequested()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->mMeasurementCacheEnabled:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    iget v1, p4, Lflyme/support/v7/widget/RecyclerView$LayoutParams;->width:I

    invoke-static {v0, p2, v1}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->isMeasurementUpToDate(III)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    iget v1, p4, Lflyme/support/v7/widget/RecyclerView$LayoutParams;->height:I

    invoke-static {v0, p3, v1}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->isMeasurementUpToDate(III)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method shouldMeasureTwice()Z
    .locals 1

    .prologue
    .line 8602
    const/4 v0, 0x0

    return v0
.end method

.method shouldReMeasureChild(Landroid/view/View;IILflyme/support/v7/widget/RecyclerView$LayoutParams;)Z
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "widthSpec"    # I
    .param p3, "heightSpec"    # I
    .param p4, "lp"    # Lflyme/support/v7/widget/RecyclerView$LayoutParams;

    .prologue
    .line 7451
    iget-boolean v0, p0, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->mMeasurementCacheEnabled:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    iget v1, p4, Lflyme/support/v7/widget/RecyclerView$LayoutParams;->width:I

    invoke-static {v0, p2, v1}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->isMeasurementUpToDate(III)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iget v1, p4, Lflyme/support/v7/widget/RecyclerView$LayoutParams;->height:I

    invoke-static {v0, p3, v1}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->isMeasurementUpToDate(III)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public smoothScrollToPosition(Lflyme/support/v7/widget/RecyclerView;Lflyme/support/v7/widget/RecyclerView$State;I)V
    .locals 2
    .param p1, "recyclerView"    # Lflyme/support/v7/widget/RecyclerView;
    .param p2, "state"    # Lflyme/support/v7/widget/RecyclerView$State;
    .param p3, "position"    # I

    .prologue
    .line 6637
    const-string v0, "RecyclerView"

    const-string v1, "You must override smoothScrollToPosition to support smooth scrolling"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6638
    return-void
.end method

.method public startSmoothScroll(Lflyme/support/v7/widget/RecyclerView$SmoothScroller;)V
    .locals 2
    .param p1, "smoothScroller"    # Lflyme/support/v7/widget/RecyclerView$SmoothScroller;

    .prologue
    .line 6646
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->mSmoothScroller:Lflyme/support/v7/widget/RecyclerView$SmoothScroller;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->mSmoothScroller:Lflyme/support/v7/widget/RecyclerView$SmoothScroller;

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->mSmoothScroller:Lflyme/support/v7/widget/RecyclerView$SmoothScroller;

    invoke-virtual {v0}, Lflyme/support/v7/widget/RecyclerView$SmoothScroller;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6648
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->mSmoothScroller:Lflyme/support/v7/widget/RecyclerView$SmoothScroller;

    invoke-virtual {v0}, Lflyme/support/v7/widget/RecyclerView$SmoothScroller;->stop()V

    .line 6650
    :cond_0
    iput-object p1, p0, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->mSmoothScroller:Lflyme/support/v7/widget/RecyclerView$SmoothScroller;

    .line 6651
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->mSmoothScroller:Lflyme/support/v7/widget/RecyclerView$SmoothScroller;

    iget-object v1, p0, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Lflyme/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v1, p0}, Lflyme/support/v7/widget/RecyclerView$SmoothScroller;->start(Lflyme/support/v7/widget/RecyclerView;Lflyme/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 6652
    return-void
.end method

.method stopSmoothScroller()V
    .locals 1

    .prologue
    .line 8245
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->mSmoothScroller:Lflyme/support/v7/widget/RecyclerView$SmoothScroller;

    if-eqz v0, :cond_0

    .line 8246
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->mSmoothScroller:Lflyme/support/v7/widget/RecyclerView$SmoothScroller;

    invoke-virtual {v0}, Lflyme/support/v7/widget/RecyclerView$SmoothScroller;->stop()V

    .line 8248
    :cond_0
    return-void
.end method

.method public supportsPredictiveItemAnimations()Z
    .locals 1

    .prologue
    .line 6326
    const/4 v0, 0x0

    return v0
.end method
