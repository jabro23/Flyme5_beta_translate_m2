.class public abstract Lflyme/support/v7/widget/RecyclerView$SmoothScroller;
.super Ljava/lang/Object;
.source "RecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lflyme/support/v7/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "SmoothScroller"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lflyme/support/v7/widget/RecyclerView$SmoothScroller$Action;
    }
.end annotation


# instance fields
.field private mLayoutManager:Lflyme/support/v7/widget/RecyclerView$LayoutManager;

.field private mPendingInitialRun:Z

.field private mRecyclerView:Lflyme/support/v7/widget/RecyclerView;

.field private final mRecyclingAction:Lflyme/support/v7/widget/RecyclerView$SmoothScroller$Action;

.field private mRunning:Z

.field private mTargetPosition:I

.field private mTargetView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 9596
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9582
    const/4 v0, -0x1

    iput v0, p0, Lflyme/support/v7/widget/RecyclerView$SmoothScroller;->mTargetPosition:I

    .line 9597
    new-instance v0, Lflyme/support/v7/widget/RecyclerView$SmoothScroller$Action;

    invoke-direct {v0, v1, v1}, Lflyme/support/v7/widget/RecyclerView$SmoothScroller$Action;-><init>(II)V

    iput-object v0, p0, Lflyme/support/v7/widget/RecyclerView$SmoothScroller;->mRecyclingAction:Lflyme/support/v7/widget/RecyclerView$SmoothScroller$Action;

    .line 9598
    return-void
.end method

.method static synthetic access$3500(Lflyme/support/v7/widget/RecyclerView$SmoothScroller;II)V
    .locals 0
    .param p0, "x0"    # Lflyme/support/v7/widget/RecyclerView$SmoothScroller;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 9580
    invoke-direct {p0, p1, p2}, Lflyme/support/v7/widget/RecyclerView$SmoothScroller;->onAnimation(II)V

    return-void
.end method

.method private onAnimation(II)V
    .locals 5
    .param p1, "dx"    # I
    .param p2, "dy"    # I

    .prologue
    .line 9692
    iget-object v1, p0, Lflyme/support/v7/widget/RecyclerView$SmoothScroller;->mRecyclerView:Lflyme/support/v7/widget/RecyclerView;

    .line 9693
    .local v1, "recyclerView":Lflyme/support/v7/widget/RecyclerView;
    iget-boolean v2, p0, Lflyme/support/v7/widget/RecyclerView$SmoothScroller;->mRunning:Z

    if-eqz v2, :cond_0

    iget v2, p0, Lflyme/support/v7/widget/RecyclerView$SmoothScroller;->mTargetPosition:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    if-nez v1, :cond_1

    .line 9694
    :cond_0
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView$SmoothScroller;->stop()V

    .line 9696
    :cond_1
    const/4 v2, 0x0

    iput-boolean v2, p0, Lflyme/support/v7/widget/RecyclerView$SmoothScroller;->mPendingInitialRun:Z

    .line 9697
    iget-object v2, p0, Lflyme/support/v7/widget/RecyclerView$SmoothScroller;->mTargetView:Landroid/view/View;

    if-eqz v2, :cond_2

    .line 9699
    iget-object v2, p0, Lflyme/support/v7/widget/RecyclerView$SmoothScroller;->mTargetView:Landroid/view/View;

    invoke-virtual {p0, v2}, Lflyme/support/v7/widget/RecyclerView$SmoothScroller;->getChildPosition(Landroid/view/View;)I

    move-result v2

    iget v3, p0, Lflyme/support/v7/widget/RecyclerView$SmoothScroller;->mTargetPosition:I

    if-ne v2, v3, :cond_4

    .line 9700
    iget-object v2, p0, Lflyme/support/v7/widget/RecyclerView$SmoothScroller;->mTargetView:Landroid/view/View;

    iget-object v3, v1, Lflyme/support/v7/widget/RecyclerView;->mState:Lflyme/support/v7/widget/RecyclerView$State;

    iget-object v4, p0, Lflyme/support/v7/widget/RecyclerView$SmoothScroller;->mRecyclingAction:Lflyme/support/v7/widget/RecyclerView$SmoothScroller$Action;

    invoke-virtual {p0, v2, v3, v4}, Lflyme/support/v7/widget/RecyclerView$SmoothScroller;->onTargetFound(Landroid/view/View;Lflyme/support/v7/widget/RecyclerView$State;Lflyme/support/v7/widget/RecyclerView$SmoothScroller$Action;)V

    .line 9701
    iget-object v2, p0, Lflyme/support/v7/widget/RecyclerView$SmoothScroller;->mRecyclingAction:Lflyme/support/v7/widget/RecyclerView$SmoothScroller$Action;

    # invokes: Lflyme/support/v7/widget/RecyclerView$SmoothScroller$Action;->runIfNecessary(Lflyme/support/v7/widget/RecyclerView;)V
    invoke-static {v2, v1}, Lflyme/support/v7/widget/RecyclerView$SmoothScroller$Action;->access$6000(Lflyme/support/v7/widget/RecyclerView$SmoothScroller$Action;Lflyme/support/v7/widget/RecyclerView;)V

    .line 9702
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView$SmoothScroller;->stop()V

    .line 9708
    :cond_2
    :goto_0
    iget-boolean v2, p0, Lflyme/support/v7/widget/RecyclerView$SmoothScroller;->mRunning:Z

    if-eqz v2, :cond_3

    .line 9709
    iget-object v2, v1, Lflyme/support/v7/widget/RecyclerView;->mState:Lflyme/support/v7/widget/RecyclerView$State;

    iget-object v3, p0, Lflyme/support/v7/widget/RecyclerView$SmoothScroller;->mRecyclingAction:Lflyme/support/v7/widget/RecyclerView$SmoothScroller$Action;

    invoke-virtual {p0, p1, p2, v2, v3}, Lflyme/support/v7/widget/RecyclerView$SmoothScroller;->onSeekTargetStep(IILflyme/support/v7/widget/RecyclerView$State;Lflyme/support/v7/widget/RecyclerView$SmoothScroller$Action;)V

    .line 9710
    iget-object v2, p0, Lflyme/support/v7/widget/RecyclerView$SmoothScroller;->mRecyclingAction:Lflyme/support/v7/widget/RecyclerView$SmoothScroller$Action;

    invoke-virtual {v2}, Lflyme/support/v7/widget/RecyclerView$SmoothScroller$Action;->hasJumpTarget()Z

    move-result v0

    .line 9711
    .local v0, "hadJumpTarget":Z
    iget-object v2, p0, Lflyme/support/v7/widget/RecyclerView$SmoothScroller;->mRecyclingAction:Lflyme/support/v7/widget/RecyclerView$SmoothScroller$Action;

    # invokes: Lflyme/support/v7/widget/RecyclerView$SmoothScroller$Action;->runIfNecessary(Lflyme/support/v7/widget/RecyclerView;)V
    invoke-static {v2, v1}, Lflyme/support/v7/widget/RecyclerView$SmoothScroller$Action;->access$6000(Lflyme/support/v7/widget/RecyclerView$SmoothScroller$Action;Lflyme/support/v7/widget/RecyclerView;)V

    .line 9712
    if-eqz v0, :cond_3

    .line 9714
    iget-boolean v2, p0, Lflyme/support/v7/widget/RecyclerView$SmoothScroller;->mRunning:Z

    if-eqz v2, :cond_5

    .line 9715
    const/4 v2, 0x1

    iput-boolean v2, p0, Lflyme/support/v7/widget/RecyclerView$SmoothScroller;->mPendingInitialRun:Z

    .line 9716
    # getter for: Lflyme/support/v7/widget/RecyclerView;->mViewFlinger:Lflyme/support/v7/widget/RecyclerView$ViewFlinger;
    invoke-static {v1}, Lflyme/support/v7/widget/RecyclerView;->access$5800(Lflyme/support/v7/widget/RecyclerView;)Lflyme/support/v7/widget/RecyclerView$ViewFlinger;

    move-result-object v2

    invoke-virtual {v2}, Lflyme/support/v7/widget/RecyclerView$ViewFlinger;->postOnAnimation()V

    .line 9722
    .end local v0    # "hadJumpTarget":Z
    :cond_3
    :goto_1
    return-void

    .line 9704
    :cond_4
    const-string v2, "RecyclerView"

    const-string v3, "Passed over target position while smooth scrolling."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 9705
    const/4 v2, 0x0

    iput-object v2, p0, Lflyme/support/v7/widget/RecyclerView$SmoothScroller;->mTargetView:Landroid/view/View;

    goto :goto_0

    .line 9718
    .restart local v0    # "hadJumpTarget":Z
    :cond_5
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView$SmoothScroller;->stop()V

    goto :goto_1
.end method


# virtual methods
.method public findViewByPosition(I)Landroid/view/View;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 9742
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView$SmoothScroller;->mRecyclerView:Lflyme/support/v7/widget/RecyclerView;

    iget-object v0, v0, Lflyme/support/v7/widget/RecyclerView;->mLayout:Lflyme/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, p1}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getChildCount()I
    .locals 1

    .prologue
    .line 9735
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView$SmoothScroller;->mRecyclerView:Lflyme/support/v7/widget/RecyclerView;

    iget-object v0, v0, Lflyme/support/v7/widget/RecyclerView;->mLayout:Lflyme/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v0

    return v0
.end method

.method public getChildPosition(Landroid/view/View;)I
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 9728
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView$SmoothScroller;->mRecyclerView:Lflyme/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1}, Lflyme/support/v7/widget/RecyclerView;->getChildLayoutPosition(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public getLayoutManager()Lflyme/support/v7/widget/RecyclerView$LayoutManager;
    .locals 1

    .prologue
    .line 9636
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView$SmoothScroller;->mLayoutManager:Lflyme/support/v7/widget/RecyclerView$LayoutManager;

    return-object v0
.end method

.method public getTargetPosition()I
    .locals 1

    .prologue
    .line 9688
    iget v0, p0, Lflyme/support/v7/widget/RecyclerView$SmoothScroller;->mTargetPosition:I

    return v0
.end method

.method public isPendingInitialRun()Z
    .locals 1

    .prologue
    .line 9670
    iget-boolean v0, p0, Lflyme/support/v7/widget/RecyclerView$SmoothScroller;->mPendingInitialRun:Z

    return v0
.end method

.method public isRunning()Z
    .locals 1

    .prologue
    .line 9678
    iget-boolean v0, p0, Lflyme/support/v7/widget/RecyclerView$SmoothScroller;->mRunning:Z

    return v0
.end method

.method protected normalize(Landroid/graphics/PointF;)V
    .locals 5
    .param p1, "scrollVector"    # Landroid/graphics/PointF;

    .prologue
    .line 9768
    iget v2, p1, Landroid/graphics/PointF;->x:F

    iget v3, p1, Landroid/graphics/PointF;->x:F

    mul-float/2addr v2, v3

    iget v3, p1, Landroid/graphics/PointF;->y:F

    iget v4, p1, Landroid/graphics/PointF;->y:F

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    .line 9770
    .local v0, "magnitute":D
    iget v2, p1, Landroid/graphics/PointF;->x:F

    float-to-double v2, v2

    div-double/2addr v2, v0

    double-to-float v2, v2

    iput v2, p1, Landroid/graphics/PointF;->x:F

    .line 9771
    iget v2, p1, Landroid/graphics/PointF;->y:F

    float-to-double v2, v2

    div-double/2addr v2, v0

    double-to-float v2, v2

    iput v2, p1, Landroid/graphics/PointF;->y:F

    .line 9772
    return-void
.end method

.method protected onChildAttachedToWindow(Landroid/view/View;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 9755
    invoke-virtual {p0, p1}, Lflyme/support/v7/widget/RecyclerView$SmoothScroller;->getChildPosition(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView$SmoothScroller;->getTargetPosition()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 9756
    iput-object p1, p0, Lflyme/support/v7/widget/RecyclerView$SmoothScroller;->mTargetView:Landroid/view/View;

    .line 9761
    :cond_0
    return-void
.end method

.method protected abstract onSeekTargetStep(IILflyme/support/v7/widget/RecyclerView$State;Lflyme/support/v7/widget/RecyclerView$SmoothScroller$Action;)V
.end method

.method protected abstract onStart()V
.end method

.method protected abstract onStop()V
.end method

.method protected abstract onTargetFound(Landroid/view/View;Lflyme/support/v7/widget/RecyclerView$State;Lflyme/support/v7/widget/RecyclerView$SmoothScroller$Action;)V
.end method

.method public setTargetPosition(I)V
    .locals 0
    .param p1, "targetPosition"    # I

    .prologue
    .line 9627
    iput p1, p0, Lflyme/support/v7/widget/RecyclerView$SmoothScroller;->mTargetPosition:I

    .line 9628
    return-void
.end method

.method start(Lflyme/support/v7/widget/RecyclerView;Lflyme/support/v7/widget/RecyclerView$LayoutManager;)V
    .locals 3
    .param p1, "recyclerView"    # Lflyme/support/v7/widget/RecyclerView;
    .param p2, "layoutManager"    # Lflyme/support/v7/widget/RecyclerView$LayoutManager;

    .prologue
    const/4 v2, 0x1

    .line 9613
    iput-object p1, p0, Lflyme/support/v7/widget/RecyclerView$SmoothScroller;->mRecyclerView:Lflyme/support/v7/widget/RecyclerView;

    .line 9614
    iput-object p2, p0, Lflyme/support/v7/widget/RecyclerView$SmoothScroller;->mLayoutManager:Lflyme/support/v7/widget/RecyclerView$LayoutManager;

    .line 9615
    iget v0, p0, Lflyme/support/v7/widget/RecyclerView$SmoothScroller;->mTargetPosition:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 9616
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid target position"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 9618
    :cond_0
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView$SmoothScroller;->mRecyclerView:Lflyme/support/v7/widget/RecyclerView;

    iget-object v0, v0, Lflyme/support/v7/widget/RecyclerView;->mState:Lflyme/support/v7/widget/RecyclerView$State;

    iget v1, p0, Lflyme/support/v7/widget/RecyclerView$SmoothScroller;->mTargetPosition:I

    # setter for: Lflyme/support/v7/widget/RecyclerView$State;->mTargetPosition:I
    invoke-static {v0, v1}, Lflyme/support/v7/widget/RecyclerView$State;->access$5702(Lflyme/support/v7/widget/RecyclerView$State;I)I

    .line 9619
    iput-boolean v2, p0, Lflyme/support/v7/widget/RecyclerView$SmoothScroller;->mRunning:Z

    .line 9620
    iput-boolean v2, p0, Lflyme/support/v7/widget/RecyclerView$SmoothScroller;->mPendingInitialRun:Z

    .line 9621
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView$SmoothScroller;->getTargetPosition()I

    move-result v0

    invoke-virtual {p0, v0}, Lflyme/support/v7/widget/RecyclerView$SmoothScroller;->findViewByPosition(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lflyme/support/v7/widget/RecyclerView$SmoothScroller;->mTargetView:Landroid/view/View;

    .line 9622
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView$SmoothScroller;->onStart()V

    .line 9623
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView$SmoothScroller;->mRecyclerView:Lflyme/support/v7/widget/RecyclerView;

    # getter for: Lflyme/support/v7/widget/RecyclerView;->mViewFlinger:Lflyme/support/v7/widget/RecyclerView$ViewFlinger;
    invoke-static {v0}, Lflyme/support/v7/widget/RecyclerView;->access$5800(Lflyme/support/v7/widget/RecyclerView;)Lflyme/support/v7/widget/RecyclerView$ViewFlinger;

    move-result-object v0

    invoke-virtual {v0}, Lflyme/support/v7/widget/RecyclerView$ViewFlinger;->postOnAnimation()V

    .line 9624
    return-void
.end method

.method protected final stop()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 9646
    iget-boolean v0, p0, Lflyme/support/v7/widget/RecyclerView$SmoothScroller;->mRunning:Z

    if-nez v0, :cond_0

    .line 9660
    :goto_0
    return-void

    .line 9649
    :cond_0
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView$SmoothScroller;->onStop()V

    .line 9650
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView$SmoothScroller;->mRecyclerView:Lflyme/support/v7/widget/RecyclerView;

    iget-object v0, v0, Lflyme/support/v7/widget/RecyclerView;->mState:Lflyme/support/v7/widget/RecyclerView$State;

    # setter for: Lflyme/support/v7/widget/RecyclerView$State;->mTargetPosition:I
    invoke-static {v0, v2}, Lflyme/support/v7/widget/RecyclerView$State;->access$5702(Lflyme/support/v7/widget/RecyclerView$State;I)I

    .line 9651
    iput-object v1, p0, Lflyme/support/v7/widget/RecyclerView$SmoothScroller;->mTargetView:Landroid/view/View;

    .line 9652
    iput v2, p0, Lflyme/support/v7/widget/RecyclerView$SmoothScroller;->mTargetPosition:I

    .line 9653
    iput-boolean v3, p0, Lflyme/support/v7/widget/RecyclerView$SmoothScroller;->mPendingInitialRun:Z

    .line 9654
    iput-boolean v3, p0, Lflyme/support/v7/widget/RecyclerView$SmoothScroller;->mRunning:Z

    .line 9656
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView$SmoothScroller;->mLayoutManager:Lflyme/support/v7/widget/RecyclerView$LayoutManager;

    # invokes: Lflyme/support/v7/widget/RecyclerView$LayoutManager;->onSmoothScrollerStopped(Lflyme/support/v7/widget/RecyclerView$SmoothScroller;)V
    invoke-static {v0, p0}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->access$5900(Lflyme/support/v7/widget/RecyclerView$LayoutManager;Lflyme/support/v7/widget/RecyclerView$SmoothScroller;)V

    .line 9658
    iput-object v1, p0, Lflyme/support/v7/widget/RecyclerView$SmoothScroller;->mLayoutManager:Lflyme/support/v7/widget/RecyclerView$LayoutManager;

    .line 9659
    iput-object v1, p0, Lflyme/support/v7/widget/RecyclerView$SmoothScroller;->mRecyclerView:Lflyme/support/v7/widget/RecyclerView;

    goto :goto_0
.end method
