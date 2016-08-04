.class Landroid/support/v7/internal/widget/ScrollingTabContainerView$SlidingTabStrip$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ScrollingTabContainerView.java"


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

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Landroid/support/v7/internal/widget/ScrollingTabContainerView$SlidingTabStrip;I)V
    .locals 0

    .prologue
    .line 1006
    iput-object p1, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView$SlidingTabStrip$2;->this$1:Landroid/support/v7/internal/widget/ScrollingTabContainerView$SlidingTabStrip;

    iput p2, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView$SlidingTabStrip$2;->val$position:I

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 1015
    iget-object v0, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView$SlidingTabStrip$2;->this$1:Landroid/support/v7/internal/widget/ScrollingTabContainerView$SlidingTabStrip;

    iget v1, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView$SlidingTabStrip$2;->val$position:I

    # setter for: Landroid/support/v7/internal/widget/ScrollingTabContainerView$SlidingTabStrip;->mSelectedPosition:I
    invoke-static {v0, v1}, Landroid/support/v7/internal/widget/ScrollingTabContainerView$SlidingTabStrip;->access$902(Landroid/support/v7/internal/widget/ScrollingTabContainerView$SlidingTabStrip;I)I

    .line 1016
    iget-object v0, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView$SlidingTabStrip$2;->this$1:Landroid/support/v7/internal/widget/ScrollingTabContainerView$SlidingTabStrip;

    const/4 v1, 0x0

    # setter for: Landroid/support/v7/internal/widget/ScrollingTabContainerView$SlidingTabStrip;->mSelectionOffset:F
    invoke-static {v0, v1}, Landroid/support/v7/internal/widget/ScrollingTabContainerView$SlidingTabStrip;->access$1002(Landroid/support/v7/internal/widget/ScrollingTabContainerView$SlidingTabStrip;F)F

    .line 1017
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 1009
    iget-object v0, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView$SlidingTabStrip$2;->this$1:Landroid/support/v7/internal/widget/ScrollingTabContainerView$SlidingTabStrip;

    iget v1, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView$SlidingTabStrip$2;->val$position:I

    # setter for: Landroid/support/v7/internal/widget/ScrollingTabContainerView$SlidingTabStrip;->mSelectedPosition:I
    invoke-static {v0, v1}, Landroid/support/v7/internal/widget/ScrollingTabContainerView$SlidingTabStrip;->access$902(Landroid/support/v7/internal/widget/ScrollingTabContainerView$SlidingTabStrip;I)I

    .line 1010
    iget-object v0, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView$SlidingTabStrip$2;->this$1:Landroid/support/v7/internal/widget/ScrollingTabContainerView$SlidingTabStrip;

    const/4 v1, 0x0

    # setter for: Landroid/support/v7/internal/widget/ScrollingTabContainerView$SlidingTabStrip;->mSelectionOffset:F
    invoke-static {v0, v1}, Landroid/support/v7/internal/widget/ScrollingTabContainerView$SlidingTabStrip;->access$1002(Landroid/support/v7/internal/widget/ScrollingTabContainerView$SlidingTabStrip;F)F

    .line 1011
    return-void
.end method
