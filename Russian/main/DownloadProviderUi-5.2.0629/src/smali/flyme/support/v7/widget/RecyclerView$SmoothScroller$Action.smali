.class public Lflyme/support/v7/widget/RecyclerView$SmoothScroller$Action;
.super Ljava/lang/Object;
.source "RecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lflyme/support/v7/widget/RecyclerView$SmoothScroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Action"
.end annotation


# instance fields
.field private changed:Z

.field private consecutiveUpdates:I

.field private mDuration:I

.field private mDx:I

.field private mDy:I

.field private mInterpolator:Landroid/view/animation/Interpolator;

.field private mJumpToPosition:I


# direct methods
.method public constructor <init>(II)V
    .locals 2
    .param p1, "dx"    # I
    .param p2, "dy"    # I

    .prologue
    .line 9838
    const/high16 v0, -0x80000000

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lflyme/support/v7/widget/RecyclerView$SmoothScroller$Action;-><init>(IIILandroid/view/animation/Interpolator;)V

    .line 9839
    return-void
.end method

.method public constructor <init>(IIILandroid/view/animation/Interpolator;)V
    .locals 2
    .param p1, "dx"    # I
    .param p2, "dy"    # I
    .param p3, "duration"    # I
    .param p4, "interpolator"    # Landroid/view/animation/Interpolator;

    .prologue
    const/4 v1, 0x0

    .line 9857
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9823
    const/4 v0, -0x1

    iput v0, p0, Lflyme/support/v7/widget/RecyclerView$SmoothScroller$Action;->mJumpToPosition:I

    .line 9827
    iput-boolean v1, p0, Lflyme/support/v7/widget/RecyclerView$SmoothScroller$Action;->changed:Z

    .line 9831
    iput v1, p0, Lflyme/support/v7/widget/RecyclerView$SmoothScroller$Action;->consecutiveUpdates:I

    .line 9858
    iput p1, p0, Lflyme/support/v7/widget/RecyclerView$SmoothScroller$Action;->mDx:I

    .line 9859
    iput p2, p0, Lflyme/support/v7/widget/RecyclerView$SmoothScroller$Action;->mDy:I

    .line 9860
    iput p3, p0, Lflyme/support/v7/widget/RecyclerView$SmoothScroller$Action;->mDuration:I

    .line 9861
    iput-object p4, p0, Lflyme/support/v7/widget/RecyclerView$SmoothScroller$Action;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 9862
    return-void
.end method

.method static synthetic access$6000(Lflyme/support/v7/widget/RecyclerView$SmoothScroller$Action;Lflyme/support/v7/widget/RecyclerView;)V
    .locals 0
    .param p0, "x0"    # Lflyme/support/v7/widget/RecyclerView$SmoothScroller$Action;
    .param p1, "x1"    # Lflyme/support/v7/widget/RecyclerView;

    .prologue
    .line 9813
    invoke-direct {p0, p1}, Lflyme/support/v7/widget/RecyclerView$SmoothScroller$Action;->runIfNecessary(Lflyme/support/v7/widget/RecyclerView;)V

    return-void
.end method

.method private runIfNecessary(Lflyme/support/v7/widget/RecyclerView;)V
    .locals 7
    .param p1, "recyclerView"    # Lflyme/support/v7/widget/RecyclerView;

    .prologue
    const/4 v6, 0x0

    .line 9888
    iget v1, p0, Lflyme/support/v7/widget/RecyclerView$SmoothScroller$Action;->mJumpToPosition:I

    if-ltz v1, :cond_0

    .line 9889
    iget v0, p0, Lflyme/support/v7/widget/RecyclerView$SmoothScroller$Action;->mJumpToPosition:I

    .line 9890
    .local v0, "position":I
    const/4 v1, -0x1

    iput v1, p0, Lflyme/support/v7/widget/RecyclerView$SmoothScroller$Action;->mJumpToPosition:I

    .line 9891
    # invokes: Lflyme/support/v7/widget/RecyclerView;->jumpToPositionForSmoothScroller(I)V
    invoke-static {p1, v0}, Lflyme/support/v7/widget/RecyclerView;->access$6100(Lflyme/support/v7/widget/RecyclerView;I)V

    .line 9892
    iput-boolean v6, p0, Lflyme/support/v7/widget/RecyclerView$SmoothScroller$Action;->changed:Z

    .line 9917
    .end local v0    # "position":I
    :goto_0
    return-void

    .line 9895
    :cond_0
    iget-boolean v1, p0, Lflyme/support/v7/widget/RecyclerView$SmoothScroller$Action;->changed:Z

    if-eqz v1, :cond_4

    .line 9896
    invoke-direct {p0}, Lflyme/support/v7/widget/RecyclerView$SmoothScroller$Action;->validate()V

    .line 9897
    iget-object v1, p0, Lflyme/support/v7/widget/RecyclerView$SmoothScroller$Action;->mInterpolator:Landroid/view/animation/Interpolator;

    if-nez v1, :cond_3

    .line 9898
    iget v1, p0, Lflyme/support/v7/widget/RecyclerView$SmoothScroller$Action;->mDuration:I

    const/high16 v2, -0x80000000

    if-ne v1, v2, :cond_2

    .line 9899
    # getter for: Lflyme/support/v7/widget/RecyclerView;->mViewFlinger:Lflyme/support/v7/widget/RecyclerView$ViewFlinger;
    invoke-static {p1}, Lflyme/support/v7/widget/RecyclerView;->access$5800(Lflyme/support/v7/widget/RecyclerView;)Lflyme/support/v7/widget/RecyclerView$ViewFlinger;

    move-result-object v1

    iget v2, p0, Lflyme/support/v7/widget/RecyclerView$SmoothScroller$Action;->mDx:I

    iget v3, p0, Lflyme/support/v7/widget/RecyclerView$SmoothScroller$Action;->mDy:I

    invoke-virtual {v1, v2, v3}, Lflyme/support/v7/widget/RecyclerView$ViewFlinger;->smoothScrollBy(II)V

    .line 9906
    :goto_1
    iget v1, p0, Lflyme/support/v7/widget/RecyclerView$SmoothScroller$Action;->consecutiveUpdates:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lflyme/support/v7/widget/RecyclerView$SmoothScroller$Action;->consecutiveUpdates:I

    .line 9907
    iget v1, p0, Lflyme/support/v7/widget/RecyclerView$SmoothScroller$Action;->consecutiveUpdates:I

    const/16 v2, 0xa

    if-le v1, v2, :cond_1

    .line 9910
    const-string v1, "RecyclerView"

    const-string v2, "Smooth Scroll action is being updated too frequently. Make sure you are not changing it unless necessary"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 9913
    :cond_1
    iput-boolean v6, p0, Lflyme/support/v7/widget/RecyclerView$SmoothScroller$Action;->changed:Z

    goto :goto_0

    .line 9901
    :cond_2
    # getter for: Lflyme/support/v7/widget/RecyclerView;->mViewFlinger:Lflyme/support/v7/widget/RecyclerView$ViewFlinger;
    invoke-static {p1}, Lflyme/support/v7/widget/RecyclerView;->access$5800(Lflyme/support/v7/widget/RecyclerView;)Lflyme/support/v7/widget/RecyclerView$ViewFlinger;

    move-result-object v1

    iget v2, p0, Lflyme/support/v7/widget/RecyclerView$SmoothScroller$Action;->mDx:I

    iget v3, p0, Lflyme/support/v7/widget/RecyclerView$SmoothScroller$Action;->mDy:I

    iget v4, p0, Lflyme/support/v7/widget/RecyclerView$SmoothScroller$Action;->mDuration:I

    invoke-virtual {v1, v2, v3, v4}, Lflyme/support/v7/widget/RecyclerView$ViewFlinger;->smoothScrollBy(III)V

    goto :goto_1

    .line 9904
    :cond_3
    # getter for: Lflyme/support/v7/widget/RecyclerView;->mViewFlinger:Lflyme/support/v7/widget/RecyclerView$ViewFlinger;
    invoke-static {p1}, Lflyme/support/v7/widget/RecyclerView;->access$5800(Lflyme/support/v7/widget/RecyclerView;)Lflyme/support/v7/widget/RecyclerView$ViewFlinger;

    move-result-object v1

    iget v2, p0, Lflyme/support/v7/widget/RecyclerView$SmoothScroller$Action;->mDx:I

    iget v3, p0, Lflyme/support/v7/widget/RecyclerView$SmoothScroller$Action;->mDy:I

    iget v4, p0, Lflyme/support/v7/widget/RecyclerView$SmoothScroller$Action;->mDuration:I

    iget-object v5, p0, Lflyme/support/v7/widget/RecyclerView$SmoothScroller$Action;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v2, v3, v4, v5}, Lflyme/support/v7/widget/RecyclerView$ViewFlinger;->smoothScrollBy(IIILandroid/view/animation/Interpolator;)V

    goto :goto_1

    .line 9915
    :cond_4
    iput v6, p0, Lflyme/support/v7/widget/RecyclerView$SmoothScroller$Action;->consecutiveUpdates:I

    goto :goto_0
.end method

.method private validate()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 9920
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView$SmoothScroller$Action;->mInterpolator:Landroid/view/animation/Interpolator;

    if-eqz v0, :cond_0

    iget v0, p0, Lflyme/support/v7/widget/RecyclerView$SmoothScroller$Action;->mDuration:I

    if-ge v0, v1, :cond_0

    .line 9921
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "If you provide an interpolator, you must set a positive duration"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 9923
    :cond_0
    iget v0, p0, Lflyme/support/v7/widget/RecyclerView$SmoothScroller$Action;->mDuration:I

    if-ge v0, v1, :cond_1

    .line 9924
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Scroll duration must be a positive number"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 9926
    :cond_1
    return-void
.end method


# virtual methods
.method hasJumpTarget()Z
    .locals 1

    .prologue
    .line 9884
    iget v0, p0, Lflyme/support/v7/widget/RecyclerView$SmoothScroller$Action;->mJumpToPosition:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public jumpTo(I)V
    .locals 0
    .param p1, "targetPosition"    # I

    .prologue
    .line 9880
    iput p1, p0, Lflyme/support/v7/widget/RecyclerView$SmoothScroller$Action;->mJumpToPosition:I

    .line 9881
    return-void
.end method

.method public update(IIILandroid/view/animation/Interpolator;)V
    .locals 1
    .param p1, "dx"    # I
    .param p2, "dy"    # I
    .param p3, "duration"    # I
    .param p4, "interpolator"    # Landroid/view/animation/Interpolator;

    .prologue
    .line 9979
    iput p1, p0, Lflyme/support/v7/widget/RecyclerView$SmoothScroller$Action;->mDx:I

    .line 9980
    iput p2, p0, Lflyme/support/v7/widget/RecyclerView$SmoothScroller$Action;->mDy:I

    .line 9981
    iput p3, p0, Lflyme/support/v7/widget/RecyclerView$SmoothScroller$Action;->mDuration:I

    .line 9982
    iput-object p4, p0, Lflyme/support/v7/widget/RecyclerView$SmoothScroller$Action;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 9983
    const/4 v0, 0x1

    iput-boolean v0, p0, Lflyme/support/v7/widget/RecyclerView$SmoothScroller$Action;->changed:Z

    .line 9984
    return-void
.end method
