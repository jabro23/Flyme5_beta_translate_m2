.class Lflyme/support/v7/widget/MzRecyclerView$FlingRunnable;
.super Ljava/lang/Object;
.source "MzRecyclerView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lflyme/support/v7/widget/MzRecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FlingRunnable"
.end annotation


# instance fields
.field private mLastOverFlingY:I

.field private mScroller:Landroid/widget/OverScroller;

.field final synthetic this$0:Lflyme/support/v7/widget/MzRecyclerView;


# direct methods
.method constructor <init>(Lflyme/support/v7/widget/MzRecyclerView;)V
    .locals 2

    .prologue
    .line 1859
    iput-object p1, p0, Lflyme/support/v7/widget/MzRecyclerView$FlingRunnable;->this$0:Lflyme/support/v7/widget/MzRecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1857
    const/4 v0, 0x0

    iput v0, p0, Lflyme/support/v7/widget/MzRecyclerView$FlingRunnable;->mLastOverFlingY:I

    .line 1860
    new-instance v0, Landroid/widget/OverScroller;

    invoke-virtual {p1}, Lflyme/support/v7/widget/MzRecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lflyme/support/v7/widget/MzRecyclerView$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    .line 1861
    return-void
.end method


# virtual methods
.method endFling()V
    .locals 2

    .prologue
    .line 1882
    iget-object v0, p0, Lflyme/support/v7/widget/MzRecyclerView$FlingRunnable;->this$0:Lflyme/support/v7/widget/MzRecyclerView;

    const/4 v1, -0x1

    iput v1, v0, Lflyme/support/v7/widget/MzRecyclerView;->mTouchMode:I

    .line 1883
    iget-object v0, p0, Lflyme/support/v7/widget/MzRecyclerView$FlingRunnable;->this$0:Lflyme/support/v7/widget/MzRecyclerView;

    invoke-virtual {v0, p0}, Lflyme/support/v7/widget/MzRecyclerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1884
    iget-object v0, p0, Lflyme/support/v7/widget/MzRecyclerView$FlingRunnable;->this$0:Lflyme/support/v7/widget/MzRecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lflyme/support/v7/widget/MzRecyclerView;->setScrollState(I)V

    .line 1885
    iget-object v0, p0, Lflyme/support/v7/widget/MzRecyclerView$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 1886
    return-void
.end method

.method public run()V
    .locals 6

    .prologue
    .line 1865
    iget-object v2, p0, Lflyme/support/v7/widget/MzRecyclerView$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    .line 1866
    .local v2, "scroller":Landroid/widget/OverScroller;
    invoke-virtual {v2}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1868
    invoke-virtual {v2}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v0

    .line 1869
    .local v0, "currY":I
    invoke-virtual {v2}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v3

    iget v4, p0, Lflyme/support/v7/widget/MzRecyclerView$FlingRunnable;->mLastOverFlingY:I

    sub-int v1, v3, v4

    .line 1870
    .local v1, "deltaY":I
    iput v0, p0, Lflyme/support/v7/widget/MzRecyclerView$FlingRunnable;->mLastOverFlingY:I

    .line 1871
    if-eqz v1, :cond_0

    .line 1872
    iget-object v3, p0, Lflyme/support/v7/widget/MzRecyclerView$FlingRunnable;->this$0:Lflyme/support/v7/widget/MzRecyclerView;

    neg-int v4, v1

    const/4 v5, 0x1

    # invokes: Lflyme/support/v7/widget/MzRecyclerView;->trackMotionScroll(IZ)V
    invoke-static {v3, v4, v5}, Lflyme/support/v7/widget/MzRecyclerView;->access$2400(Lflyme/support/v7/widget/MzRecyclerView;IZ)V

    .line 1873
    :cond_0
    iget-object v3, p0, Lflyme/support/v7/widget/MzRecyclerView$FlingRunnable;->this$0:Lflyme/support/v7/widget/MzRecyclerView;

    invoke-virtual {v3}, Lflyme/support/v7/widget/MzRecyclerView;->invalidate()V

    .line 1874
    iget-object v3, p0, Lflyme/support/v7/widget/MzRecyclerView$FlingRunnable;->this$0:Lflyme/support/v7/widget/MzRecyclerView;

    invoke-virtual {v3, p0}, Lflyme/support/v7/widget/MzRecyclerView;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 1879
    .end local v0    # "currY":I
    .end local v1    # "deltaY":I
    :goto_0
    return-void

    .line 1877
    :cond_1
    invoke-virtual {p0}, Lflyme/support/v7/widget/MzRecyclerView$FlingRunnable;->endFling()V

    goto :goto_0
.end method
