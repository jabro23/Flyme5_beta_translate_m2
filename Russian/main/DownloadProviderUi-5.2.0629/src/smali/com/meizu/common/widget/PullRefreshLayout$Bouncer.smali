.class Lcom/meizu/common/widget/PullRefreshLayout$Bouncer;
.super Ljava/lang/Object;
.source "PullRefreshLayout.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/common/widget/PullRefreshLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Bouncer"
.end annotation


# instance fields
.field private mAnimator:Landroid/animation/ValueAnimator;

.field private mCanceled:Z

.field private mLastOffset:I

.field final synthetic this$0:Lcom/meizu/common/widget/PullRefreshLayout;


# direct methods
.method private constructor <init>(Lcom/meizu/common/widget/PullRefreshLayout;)V
    .locals 0

    .prologue
    .line 660
    iput-object p1, p0, Lcom/meizu/common/widget/PullRefreshLayout$Bouncer;->this$0:Lcom/meizu/common/widget/PullRefreshLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/meizu/common/widget/PullRefreshLayout;Lcom/meizu/common/widget/PullRefreshLayout$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/meizu/common/widget/PullRefreshLayout;
    .param p2, "x1"    # Lcom/meizu/common/widget/PullRefreshLayout$1;

    .prologue
    .line 660
    invoke-direct {p0, p1}, Lcom/meizu/common/widget/PullRefreshLayout$Bouncer;-><init>(Lcom/meizu/common/widget/PullRefreshLayout;)V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .prologue
    .line 697
    iget-object v0, p0, Lcom/meizu/common/widget/PullRefreshLayout$Bouncer;->mAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meizu/common/widget/PullRefreshLayout$Bouncer;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 698
    iget-object v0, p0, Lcom/meizu/common/widget/PullRefreshLayout$Bouncer;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 699
    iget-object v0, p0, Lcom/meizu/common/widget/PullRefreshLayout$Bouncer;->this$0:Lcom/meizu/common/widget/PullRefreshLayout;

    const/4 v1, 0x0

    # setter for: Lcom/meizu/common/widget/PullRefreshLayout;->mSpringBack:Z
    invoke-static {v0, v1}, Lcom/meizu/common/widget/PullRefreshLayout;->access$302(Lcom/meizu/common/widget/PullRefreshLayout;Z)Z

    .line 701
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/meizu/common/widget/PullRefreshLayout$Bouncer;->mAnimator:Landroid/animation/ValueAnimator;

    .line 702
    return-void
.end method

.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 741
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/meizu/common/widget/PullRefreshLayout$Bouncer;->mCanceled:Z

    .line 742
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/4 v2, 0x1

    .line 720
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/meizu/common/widget/PullRefreshLayout$Bouncer;->mAnimator:Landroid/animation/ValueAnimator;

    .line 721
    iget-boolean v0, p0, Lcom/meizu/common/widget/PullRefreshLayout$Bouncer;->mCanceled:Z

    if-nez v0, :cond_1

    .line 722
    iget-object v0, p0, Lcom/meizu/common/widget/PullRefreshLayout$Bouncer;->this$0:Lcom/meizu/common/widget/PullRefreshLayout;

    # getter for: Lcom/meizu/common/widget/PullRefreshLayout;->mScrollState:Lcom/meizu/common/widget/PullRefreshLayout$ScrollState;
    invoke-static {v0}, Lcom/meizu/common/widget/PullRefreshLayout;->access$700(Lcom/meizu/common/widget/PullRefreshLayout;)Lcom/meizu/common/widget/PullRefreshLayout$ScrollState;

    move-result-object v0

    sget-object v1, Lcom/meizu/common/widget/PullRefreshLayout$ScrollState;->STATE_LINE_END:Lcom/meizu/common/widget/PullRefreshLayout$ScrollState;

    if-ne v0, v1, :cond_2

    .line 723
    iget-object v0, p0, Lcom/meizu/common/widget/PullRefreshLayout$Bouncer;->this$0:Lcom/meizu/common/widget/PullRefreshLayout;

    # getter for: Lcom/meizu/common/widget/PullRefreshLayout;->mPullRefreshAnimationView:Lcom/meizu/common/widget/PullRefreshAnimationView;
    invoke-static {v0}, Lcom/meizu/common/widget/PullRefreshLayout;->access$800(Lcom/meizu/common/widget/PullRefreshLayout;)Lcom/meizu/common/widget/PullRefreshAnimationView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/common/widget/PullRefreshAnimationView;->setStartTime()V

    .line 724
    iget-object v0, p0, Lcom/meizu/common/widget/PullRefreshLayout$Bouncer;->this$0:Lcom/meizu/common/widget/PullRefreshLayout;

    # setter for: Lcom/meizu/common/widget/PullRefreshLayout;->mIsAnimation:Z
    invoke-static {v0, v2}, Lcom/meizu/common/widget/PullRefreshLayout;->access$902(Lcom/meizu/common/widget/PullRefreshLayout;Z)Z

    .line 725
    iget-object v0, p0, Lcom/meizu/common/widget/PullRefreshLayout$Bouncer;->this$0:Lcom/meizu/common/widget/PullRefreshLayout;

    # getter for: Lcom/meizu/common/widget/PullRefreshLayout;->mPullRefreshListener:Lcom/meizu/common/widget/PullRefreshLayout$PullRefreshGetData;
    invoke-static {v0}, Lcom/meizu/common/widget/PullRefreshLayout;->access$1000(Lcom/meizu/common/widget/PullRefreshLayout;)Lcom/meizu/common/widget/PullRefreshLayout$PullRefreshGetData;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 726
    iget-object v0, p0, Lcom/meizu/common/widget/PullRefreshLayout$Bouncer;->this$0:Lcom/meizu/common/widget/PullRefreshLayout;

    # getter for: Lcom/meizu/common/widget/PullRefreshLayout;->mPullRefreshListener:Lcom/meizu/common/widget/PullRefreshLayout$PullRefreshGetData;
    invoke-static {v0}, Lcom/meizu/common/widget/PullRefreshLayout;->access$1000(Lcom/meizu/common/widget/PullRefreshLayout;)Lcom/meizu/common/widget/PullRefreshLayout$PullRefreshGetData;

    move-result-object v0

    invoke-interface {v0}, Lcom/meizu/common/widget/PullRefreshLayout$PullRefreshGetData;->startGetData()V

    .line 735
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/meizu/common/widget/PullRefreshLayout$Bouncer;->this$0:Lcom/meizu/common/widget/PullRefreshLayout;

    const/4 v1, 0x0

    # setter for: Lcom/meizu/common/widget/PullRefreshLayout;->mSpringBack:Z
    invoke-static {v0, v1}, Lcom/meizu/common/widget/PullRefreshLayout;->access$302(Lcom/meizu/common/widget/PullRefreshLayout;Z)Z

    .line 737
    :cond_1
    return-void

    .line 728
    :cond_2
    iget-object v0, p0, Lcom/meizu/common/widget/PullRefreshLayout$Bouncer;->this$0:Lcom/meizu/common/widget/PullRefreshLayout;

    # getter for: Lcom/meizu/common/widget/PullRefreshLayout;->mScrollState:Lcom/meizu/common/widget/PullRefreshLayout$ScrollState;
    invoke-static {v0}, Lcom/meizu/common/widget/PullRefreshLayout;->access$700(Lcom/meizu/common/widget/PullRefreshLayout;)Lcom/meizu/common/widget/PullRefreshLayout$ScrollState;

    move-result-object v0

    sget-object v1, Lcom/meizu/common/widget/PullRefreshLayout$ScrollState;->STATE_ARC_END:Lcom/meizu/common/widget/PullRefreshLayout$ScrollState;

    if-ne v0, v1, :cond_0

    .line 729
    iget-object v0, p0, Lcom/meizu/common/widget/PullRefreshLayout$Bouncer;->this$0:Lcom/meizu/common/widget/PullRefreshLayout;

    # getter for: Lcom/meizu/common/widget/PullRefreshLayout;->mPullRefreshAnimationView:Lcom/meizu/common/widget/PullRefreshAnimationView;
    invoke-static {v0}, Lcom/meizu/common/widget/PullRefreshLayout;->access$800(Lcom/meizu/common/widget/PullRefreshLayout;)Lcom/meizu/common/widget/PullRefreshAnimationView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/common/widget/PullRefreshAnimationView;->setStartTime()V

    .line 730
    iget-object v0, p0, Lcom/meizu/common/widget/PullRefreshLayout$Bouncer;->this$0:Lcom/meizu/common/widget/PullRefreshLayout;

    # setter for: Lcom/meizu/common/widget/PullRefreshLayout;->mIsAnimation:Z
    invoke-static {v0, v2}, Lcom/meizu/common/widget/PullRefreshLayout;->access$902(Lcom/meizu/common/widget/PullRefreshLayout;Z)Z

    .line 731
    iget-object v0, p0, Lcom/meizu/common/widget/PullRefreshLayout$Bouncer;->this$0:Lcom/meizu/common/widget/PullRefreshLayout;

    # getter for: Lcom/meizu/common/widget/PullRefreshLayout;->mPullRefreshListener:Lcom/meizu/common/widget/PullRefreshLayout$PullRefreshGetData;
    invoke-static {v0}, Lcom/meizu/common/widget/PullRefreshLayout;->access$1000(Lcom/meizu/common/widget/PullRefreshLayout;)Lcom/meizu/common/widget/PullRefreshLayout$PullRefreshGetData;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 732
    iget-object v0, p0, Lcom/meizu/common/widget/PullRefreshLayout$Bouncer;->this$0:Lcom/meizu/common/widget/PullRefreshLayout;

    # getter for: Lcom/meizu/common/widget/PullRefreshLayout;->mPullRefreshListener:Lcom/meizu/common/widget/PullRefreshLayout$PullRefreshGetData;
    invoke-static {v0}, Lcom/meizu/common/widget/PullRefreshLayout;->access$1000(Lcom/meizu/common/widget/PullRefreshLayout;)Lcom/meizu/common/widget/PullRefreshLayout$PullRefreshGetData;

    move-result-object v0

    invoke-interface {v0}, Lcom/meizu/common/widget/PullRefreshLayout$PullRefreshGetData;->startGetData()V

    goto :goto_0
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 747
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 716
    return-void
.end method

.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4
    .param p1, "va"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 706
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 707
    .local v0, "currentOffset":I
    iget v2, p0, Lcom/meizu/common/widget/PullRefreshLayout$Bouncer;->mLastOffset:I

    sub-int v1, v2, v0

    .line 708
    .local v1, "delta":I
    iget-object v2, p0, Lcom/meizu/common/widget/PullRefreshLayout$Bouncer;->this$0:Lcom/meizu/common/widget/PullRefreshLayout;

    # invokes: Lcom/meizu/common/widget/PullRefreshLayout;->offsetContent(I)V
    invoke-static {v2, v1}, Lcom/meizu/common/widget/PullRefreshLayout;->access$400(Lcom/meizu/common/widget/PullRefreshLayout;I)V

    .line 709
    iput v0, p0, Lcom/meizu/common/widget/PullRefreshLayout$Bouncer;->mLastOffset:I

    .line 710
    iget-object v2, p0, Lcom/meizu/common/widget/PullRefreshLayout$Bouncer;->this$0:Lcom/meizu/common/widget/PullRefreshLayout;

    iget-object v3, p0, Lcom/meizu/common/widget/PullRefreshLayout$Bouncer;->this$0:Lcom/meizu/common/widget/PullRefreshLayout;

    # getter for: Lcom/meizu/common/widget/PullRefreshLayout;->mContentView:Landroid/view/View;
    invoke-static {v3}, Lcom/meizu/common/widget/PullRefreshLayout;->access$600(Lcom/meizu/common/widget/PullRefreshLayout;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    # setter for: Lcom/meizu/common/widget/PullRefreshLayout;->mCurrentOverScrollDistance:I
    invoke-static {v2, v3}, Lcom/meizu/common/widget/PullRefreshLayout;->access$502(Lcom/meizu/common/widget/PullRefreshLayout;I)I

    .line 711
    return-void
.end method

.method public recover(I)V
    .locals 7
    .param p1, "offset"    # I

    .prologue
    const/4 v6, 0x1

    const v5, 0x3ea8f5c3    # 0.33f

    const/4 v4, 0x0

    .line 671
    invoke-virtual {p0}, Lcom/meizu/common/widget/PullRefreshLayout$Bouncer;->cancel()V

    .line 672
    iput-boolean v4, p0, Lcom/meizu/common/widget/PullRefreshLayout$Bouncer;->mCanceled:Z

    .line 673
    mul-int/lit16 v1, p1, 0x190

    iget-object v2, p0, Lcom/meizu/common/widget/PullRefreshLayout$Bouncer;->this$0:Lcom/meizu/common/widget/PullRefreshLayout;

    # getter for: Lcom/meizu/common/widget/PullRefreshLayout;->mOverScrollDistance:I
    invoke-static {v2}, Lcom/meizu/common/widget/PullRefreshLayout;->access$100(Lcom/meizu/common/widget/PullRefreshLayout;)I

    move-result v2

    div-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 675
    .local v0, "duration":I
    new-instance v1, Landroid/animation/ValueAnimator;

    invoke-direct {v1}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v1, p0, Lcom/meizu/common/widget/PullRefreshLayout$Bouncer;->mAnimator:Landroid/animation/ValueAnimator;

    .line 676
    iget-object v1, p0, Lcom/meizu/common/widget/PullRefreshLayout$Bouncer;->mAnimator:Landroid/animation/ValueAnimator;

    const/4 v2, 0x2

    new-array v2, v2, [I

    aput v4, v2, v4

    aput p1, v2, v6

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    .line 677
    iput v4, p0, Lcom/meizu/common/widget/PullRefreshLayout$Bouncer;->mLastOffset:I

    .line 678
    iget-object v1, p0, Lcom/meizu/common/widget/PullRefreshLayout$Bouncer;->mAnimator:Landroid/animation/ValueAnimator;

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 679
    iget-object v1, p0, Lcom/meizu/common/widget/PullRefreshLayout$Bouncer;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1, v4}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 681
    iget-object v1, p0, Lcom/meizu/common/widget/PullRefreshLayout$Bouncer;->this$0:Lcom/meizu/common/widget/PullRefreshLayout;

    # getter for: Lcom/meizu/common/widget/PullRefreshLayout;->mInterpolator:Landroid/animation/TimeInterpolator;
    invoke-static {v1}, Lcom/meizu/common/widget/PullRefreshLayout;->access$200(Lcom/meizu/common/widget/PullRefreshLayout;)Landroid/animation/TimeInterpolator;

    move-result-object v1

    if-nez v1, :cond_0

    .line 682
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-ge v1, v2, :cond_1

    .line 683
    iget-object v1, p0, Lcom/meizu/common/widget/PullRefreshLayout$Bouncer;->this$0:Lcom/meizu/common/widget/PullRefreshLayout;

    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    # setter for: Lcom/meizu/common/widget/PullRefreshLayout;->mInterpolator:Landroid/animation/TimeInterpolator;
    invoke-static {v1, v2}, Lcom/meizu/common/widget/PullRefreshLayout;->access$202(Lcom/meizu/common/widget/PullRefreshLayout;Landroid/animation/TimeInterpolator;)Landroid/animation/TimeInterpolator;

    .line 689
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/meizu/common/widget/PullRefreshLayout$Bouncer;->mAnimator:Landroid/animation/ValueAnimator;

    iget-object v2, p0, Lcom/meizu/common/widget/PullRefreshLayout$Bouncer;->this$0:Lcom/meizu/common/widget/PullRefreshLayout;

    # getter for: Lcom/meizu/common/widget/PullRefreshLayout;->mInterpolator:Landroid/animation/TimeInterpolator;
    invoke-static {v2}, Lcom/meizu/common/widget/PullRefreshLayout;->access$200(Lcom/meizu/common/widget/PullRefreshLayout;)Landroid/animation/TimeInterpolator;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 690
    iget-object v1, p0, Lcom/meizu/common/widget/PullRefreshLayout$Bouncer;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1, p0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 691
    iget-object v1, p0, Lcom/meizu/common/widget/PullRefreshLayout$Bouncer;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1, p0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 692
    iget-object v1, p0, Lcom/meizu/common/widget/PullRefreshLayout$Bouncer;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    .line 693
    iget-object v1, p0, Lcom/meizu/common/widget/PullRefreshLayout$Bouncer;->this$0:Lcom/meizu/common/widget/PullRefreshLayout;

    # setter for: Lcom/meizu/common/widget/PullRefreshLayout;->mSpringBack:Z
    invoke-static {v1, v6}, Lcom/meizu/common/widget/PullRefreshLayout;->access$302(Lcom/meizu/common/widget/PullRefreshLayout;Z)Z

    .line 694
    return-void

    .line 685
    :cond_1
    iget-object v1, p0, Lcom/meizu/common/widget/PullRefreshLayout$Bouncer;->this$0:Lcom/meizu/common/widget/PullRefreshLayout;

    new-instance v2, Landroid/view/animation/PathInterpolator;

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v2, v5, v3, v5, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    # setter for: Lcom/meizu/common/widget/PullRefreshLayout;->mInterpolator:Landroid/animation/TimeInterpolator;
    invoke-static {v1, v2}, Lcom/meizu/common/widget/PullRefreshLayout;->access$202(Lcom/meizu/common/widget/PullRefreshLayout;Landroid/animation/TimeInterpolator;)Landroid/animation/TimeInterpolator;

    goto :goto_0
.end method
