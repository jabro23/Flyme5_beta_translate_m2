.class Landroid/support/v7/internal/widget/ScrollingTabContainerView$SlidingTabStrip$1;
.super Ljava/lang/Object;
.source "ScrollingTabContainerView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v7/internal/widget/ScrollingTabContainerView$SlidingTabStrip;->animateIndicatorToPosition(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/support/v7/internal/widget/ScrollingTabContainerView$SlidingTabStrip;

.field final synthetic val$startLeft:I

.field final synthetic val$startRight:I

.field final synthetic val$targetLeft:I

.field final synthetic val$targetRight:I


# direct methods
.method constructor <init>(Landroid/support/v7/internal/widget/ScrollingTabContainerView$SlidingTabStrip;IIII)V
    .locals 0

    .prologue
    .line 997
    iput-object p1, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView$SlidingTabStrip$1;->this$1:Landroid/support/v7/internal/widget/ScrollingTabContainerView$SlidingTabStrip;

    iput p2, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView$SlidingTabStrip$1;->val$startLeft:I

    iput p3, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView$SlidingTabStrip$1;->val$targetLeft:I

    iput p4, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView$SlidingTabStrip$1;->val$startRight:I

    iput p5, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView$SlidingTabStrip$1;->val$targetRight:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 5
    .param p1, "animator"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 1000
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v0

    .line 1001
    .local v0, "fraction":F
    iget-object v1, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView$SlidingTabStrip$1;->this$1:Landroid/support/v7/internal/widget/ScrollingTabContainerView$SlidingTabStrip;

    iget v2, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView$SlidingTabStrip$1;->val$startLeft:I

    iget v3, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView$SlidingTabStrip$1;->val$targetLeft:I

    invoke-static {v2, v3, v0}, Landroid/support/v7/widget/AnimationUtils;->lerp(IIF)I

    move-result v2

    iget v3, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView$SlidingTabStrip$1;->val$startRight:I

    iget v4, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView$SlidingTabStrip$1;->val$targetRight:I

    invoke-static {v3, v4, v0}, Landroid/support/v7/widget/AnimationUtils;->lerp(IIF)I

    move-result v3

    # invokes: Landroid/support/v7/internal/widget/ScrollingTabContainerView$SlidingTabStrip;->setIndicatorPosition(II)V
    invoke-static {v1, v2, v3}, Landroid/support/v7/internal/widget/ScrollingTabContainerView$SlidingTabStrip;->access$800(Landroid/support/v7/internal/widget/ScrollingTabContainerView$SlidingTabStrip;II)V

    .line 1004
    return-void
.end method
