.class Lcom/meizu/common/widget/GalleryFlow$FlingRunnable;
.super Ljava/lang/Object;
.source "GalleryFlow.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/common/widget/GalleryFlow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FlingRunnable"
.end annotation


# instance fields
.field private mLastFlingX:I

.field private mScroller:Lcom/meizu/common/widget/OverScroller;

.field final synthetic this$0:Lcom/meizu/common/widget/GalleryFlow;


# direct methods
.method public constructor <init>(Lcom/meizu/common/widget/GalleryFlow;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1768
    iput-object p1, p0, Lcom/meizu/common/widget/GalleryFlow$FlingRunnable;->this$0:Lcom/meizu/common/widget/GalleryFlow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1770
    new-instance v0, Lcom/meizu/common/widget/OverScroller;

    invoke-virtual {p1}, Lcom/meizu/common/widget/GalleryFlow;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/meizu/common/widget/OverScroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/meizu/common/widget/GalleryFlow$FlingRunnable;->mScroller:Lcom/meizu/common/widget/OverScroller;

    .line 1771
    iget-object v0, p0, Lcom/meizu/common/widget/GalleryFlow$FlingRunnable;->mScroller:Lcom/meizu/common/widget/OverScroller;

    invoke-virtual {v0, v2, v2}, Lcom/meizu/common/widget/OverScroller;->setEnableMZOverScroll(ZZ)V

    .line 1772
    return-void
.end method

.method static synthetic access$100(Lcom/meizu/common/widget/GalleryFlow$FlingRunnable;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/meizu/common/widget/GalleryFlow$FlingRunnable;
    .param p1, "x1"    # Z

    .prologue
    .line 1756
    invoke-direct {p0, p1}, Lcom/meizu/common/widget/GalleryFlow$FlingRunnable;->endFling(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/meizu/common/widget/GalleryFlow$FlingRunnable;)Lcom/meizu/common/widget/OverScroller;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/widget/GalleryFlow$FlingRunnable;

    .prologue
    .line 1756
    iget-object v0, p0, Lcom/meizu/common/widget/GalleryFlow$FlingRunnable;->mScroller:Lcom/meizu/common/widget/OverScroller;

    return-object v0
.end method

.method private endFling(Z)V
    .locals 2
    .param p1, "scrollIntoSlots"    # Z

    .prologue
    .line 1819
    iget-object v0, p0, Lcom/meizu/common/widget/GalleryFlow$FlingRunnable;->mScroller:Lcom/meizu/common/widget/OverScroller;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/meizu/common/widget/OverScroller;->forceFinished(Z)V

    .line 1821
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/meizu/common/widget/GalleryFlow$FlingRunnable;->this$0:Lcom/meizu/common/widget/GalleryFlow;

    # invokes: Lcom/meizu/common/widget/GalleryFlow;->scrollIntoSlots()V
    invoke-static {v0}, Lcom/meizu/common/widget/GalleryFlow;->access$500(Lcom/meizu/common/widget/GalleryFlow;)V

    .line 1822
    :cond_0
    return-void
.end method

.method private startCommon()V
    .locals 1

    .prologue
    .line 1776
    iget-object v0, p0, Lcom/meizu/common/widget/GalleryFlow$FlingRunnable;->this$0:Lcom/meizu/common/widget/GalleryFlow;

    invoke-virtual {v0, p0}, Lcom/meizu/common/widget/GalleryFlow;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1777
    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x1

    .line 1827
    iget-object v4, p0, Lcom/meizu/common/widget/GalleryFlow$FlingRunnable;->this$0:Lcom/meizu/common/widget/GalleryFlow;

    iget v4, v4, Lcom/meizu/common/widget/GalleryFlow;->mItemCount:I

    if-nez v4, :cond_0

    .line 1828
    invoke-direct {p0, v6}, Lcom/meizu/common/widget/GalleryFlow$FlingRunnable;->endFling(Z)V

    .line 1860
    :goto_0
    return-void

    .line 1832
    :cond_0
    iget-object v4, p0, Lcom/meizu/common/widget/GalleryFlow$FlingRunnable;->this$0:Lcom/meizu/common/widget/GalleryFlow;

    const/4 v5, 0x0

    # setter for: Lcom/meizu/common/widget/GalleryFlow;->mShouldStopFling:Z
    invoke-static {v4, v5}, Lcom/meizu/common/widget/GalleryFlow;->access$602(Lcom/meizu/common/widget/GalleryFlow;Z)Z

    .line 1834
    iget-object v2, p0, Lcom/meizu/common/widget/GalleryFlow$FlingRunnable;->mScroller:Lcom/meizu/common/widget/OverScroller;

    .line 1836
    .local v2, "scroller":Lcom/meizu/common/widget/OverScroller;
    invoke-virtual {v2}, Lcom/meizu/common/widget/OverScroller;->computeScrollOffset()Z

    move-result v1

    .line 1837
    .local v1, "more":Z
    invoke-virtual {v2}, Lcom/meizu/common/widget/OverScroller;->getCurrX()I

    move-result v3

    .line 1841
    .local v3, "x":I
    iget v4, p0, Lcom/meizu/common/widget/GalleryFlow$FlingRunnable;->mLastFlingX:I

    sub-int v0, v4, v3

    .line 1843
    .local v0, "delta":I
    if-lez v0, :cond_2

    .line 1845
    iget-object v4, p0, Lcom/meizu/common/widget/GalleryFlow$FlingRunnable;->this$0:Lcom/meizu/common/widget/GalleryFlow;

    # getter for: Lcom/meizu/common/widget/GalleryFlow;->AREA_RANGE_LENGTH:[I
    invoke-static {v4}, Lcom/meizu/common/widget/GalleryFlow;->access$700(Lcom/meizu/common/widget/GalleryFlow;)[I

    move-result-object v4

    aget v4, v4, v7

    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1850
    :goto_1
    if-eqz v0, :cond_1

    .line 1851
    iget-object v4, p0, Lcom/meizu/common/widget/GalleryFlow$FlingRunnable;->this$0:Lcom/meizu/common/widget/GalleryFlow;

    invoke-virtual {v4, v0}, Lcom/meizu/common/widget/GalleryFlow;->trackMotionScroll(I)V

    .line 1854
    :cond_1
    if-eqz v1, :cond_3

    iget-object v4, p0, Lcom/meizu/common/widget/GalleryFlow$FlingRunnable;->this$0:Lcom/meizu/common/widget/GalleryFlow;

    # getter for: Lcom/meizu/common/widget/GalleryFlow;->mShouldStopFling:Z
    invoke-static {v4}, Lcom/meizu/common/widget/GalleryFlow;->access$600(Lcom/meizu/common/widget/GalleryFlow;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 1855
    iput v3, p0, Lcom/meizu/common/widget/GalleryFlow$FlingRunnable;->mLastFlingX:I

    .line 1856
    iget-object v4, p0, Lcom/meizu/common/widget/GalleryFlow$FlingRunnable;->this$0:Lcom/meizu/common/widget/GalleryFlow;

    invoke-virtual {v4, p0}, Lcom/meizu/common/widget/GalleryFlow;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 1848
    :cond_2
    iget-object v4, p0, Lcom/meizu/common/widget/GalleryFlow$FlingRunnable;->this$0:Lcom/meizu/common/widget/GalleryFlow;

    # getter for: Lcom/meizu/common/widget/GalleryFlow;->AREA_RANGE_LENGTH:[I
    invoke-static {v4}, Lcom/meizu/common/widget/GalleryFlow;->access$700(Lcom/meizu/common/widget/GalleryFlow;)[I

    move-result-object v4

    aget v4, v4, v7

    neg-int v4, v4

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_1

    .line 1858
    :cond_3
    invoke-direct {p0, v6}, Lcom/meizu/common/widget/GalleryFlow$FlingRunnable;->endFling(Z)V

    goto :goto_0
.end method

.method public startUsingDistance(I)V
    .locals 6
    .param p1, "distance"    # I

    .prologue
    const/4 v1, 0x0

    .line 1795
    if-nez p1, :cond_0

    .line 1807
    :goto_0
    return-void

    .line 1797
    :cond_0
    invoke-direct {p0}, Lcom/meizu/common/widget/GalleryFlow$FlingRunnable;->startCommon()V

    .line 1798
    iput v1, p0, Lcom/meizu/common/widget/GalleryFlow$FlingRunnable;->mLastFlingX:I

    .line 1799
    iget-object v0, p0, Lcom/meizu/common/widget/GalleryFlow$FlingRunnable;->mScroller:Lcom/meizu/common/widget/OverScroller;

    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v2}, Lcom/meizu/common/widget/OverScroller;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1805
    iget-object v0, p0, Lcom/meizu/common/widget/GalleryFlow$FlingRunnable;->mScroller:Lcom/meizu/common/widget/OverScroller;

    neg-int v3, p1

    iget-object v2, p0, Lcom/meizu/common/widget/GalleryFlow$FlingRunnable;->this$0:Lcom/meizu/common/widget/GalleryFlow;

    # getter for: Lcom/meizu/common/widget/GalleryFlow;->mAnimationDuration:I
    invoke-static {v2}, Lcom/meizu/common/widget/GalleryFlow;->access$400(Lcom/meizu/common/widget/GalleryFlow;)I

    move-result v5

    move v2, v1

    move v4, v1

    invoke-virtual/range {v0 .. v5}, Lcom/meizu/common/widget/OverScroller;->startScroll(IIIII)V

    .line 1806
    iget-object v0, p0, Lcom/meizu/common/widget/GalleryFlow$FlingRunnable;->this$0:Lcom/meizu/common/widget/GalleryFlow;

    invoke-virtual {v0, p0}, Lcom/meizu/common/widget/GalleryFlow;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public startUsingVelocity(I)V
    .locals 9
    .param p1, "initialVelocity"    # I

    .prologue
    const/16 v0, 0x1068

    const v6, 0x7fffffff

    const/4 v2, 0x0

    .line 1780
    if-eqz p1, :cond_0

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v3

    const/16 v4, 0xc8

    if-ge v3, v4, :cond_1

    .line 1792
    :cond_0
    :goto_0
    return-void

    .line 1782
    :cond_1
    invoke-direct {p0}, Lcom/meizu/common/widget/GalleryFlow$FlingRunnable;->startCommon()V

    .line 1783
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v3

    if-le v3, v0, :cond_2

    .line 1784
    if-lez p1, :cond_3

    move p1, v0

    .line 1786
    :cond_2
    :goto_1
    if-gez p1, :cond_4

    move v1, v6

    .line 1787
    .local v1, "initialX":I
    :goto_2
    iput v1, p0, Lcom/meizu/common/widget/GalleryFlow$FlingRunnable;->mLastFlingX:I

    .line 1788
    iget-object v0, p0, Lcom/meizu/common/widget/GalleryFlow$FlingRunnable;->mScroller:Lcom/meizu/common/widget/OverScroller;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/meizu/common/widget/OverScroller;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1789
    iget-object v0, p0, Lcom/meizu/common/widget/GalleryFlow$FlingRunnable;->mScroller:Lcom/meizu/common/widget/OverScroller;

    move v3, p1

    move v4, v2

    move v5, v2

    move v7, v2

    move v8, v6

    invoke-virtual/range {v0 .. v8}, Lcom/meizu/common/widget/OverScroller;->fling(IIIIIIII)V

    .line 1791
    iget-object v0, p0, Lcom/meizu/common/widget/GalleryFlow$FlingRunnable;->this$0:Lcom/meizu/common/widget/GalleryFlow;

    invoke-virtual {v0, p0}, Lcom/meizu/common/widget/GalleryFlow;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 1784
    .end local v1    # "initialX":I
    :cond_3
    const/16 p1, -0x1068

    goto :goto_1

    :cond_4
    move v1, v2

    .line 1786
    goto :goto_2
.end method

.method public stop(Z)V
    .locals 1
    .param p1, "scrollIntoSlots"    # Z

    .prologue
    .line 1810
    iget-object v0, p0, Lcom/meizu/common/widget/GalleryFlow$FlingRunnable;->this$0:Lcom/meizu/common/widget/GalleryFlow;

    invoke-virtual {v0, p0}, Lcom/meizu/common/widget/GalleryFlow;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1811
    invoke-direct {p0, p1}, Lcom/meizu/common/widget/GalleryFlow$FlingRunnable;->endFling(Z)V

    .line 1812
    return-void
.end method
