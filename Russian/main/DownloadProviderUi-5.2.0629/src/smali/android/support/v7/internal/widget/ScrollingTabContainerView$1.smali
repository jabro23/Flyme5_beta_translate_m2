.class Landroid/support/v7/internal/widget/ScrollingTabContainerView$1;
.super Ljava/lang/Object;
.source "ScrollingTabContainerView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v7/internal/widget/ScrollingTabContainerView;->animateToTab(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v7/internal/widget/ScrollingTabContainerView;

.field final synthetic val$position:I

.field final synthetic val$tabView:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/support/v7/internal/widget/ScrollingTabContainerView;Landroid/view/View;I)V
    .locals 0

    .prologue
    .line 309
    iput-object p1, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView$1;->this$0:Landroid/support/v7/internal/widget/ScrollingTabContainerView;

    iput-object p2, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView$1;->val$tabView:Landroid/view/View;

    iput p3, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 311
    iget-object v1, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView$1;->val$tabView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    iget-object v2, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView$1;->this$0:Landroid/support/v7/internal/widget/ScrollingTabContainerView;

    invoke-virtual {v2}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->getWidth()I

    move-result v2

    iget-object v3, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView$1;->val$tabView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    sub-int v0, v1, v2

    .line 312
    .local v0, "scrollPos":I
    iget-object v1, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView$1;->this$0:Landroid/support/v7/internal/widget/ScrollingTabContainerView;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->smoothScrollTo(II)V

    .line 314
    iget-object v1, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView$1;->this$0:Landroid/support/v7/internal/widget/ScrollingTabContainerView;

    # getter for: Landroid/support/v7/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/support/v7/internal/widget/ScrollingTabContainerView$SlidingTabStrip;
    invoke-static {v1}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->access$100(Landroid/support/v7/internal/widget/ScrollingTabContainerView;)Landroid/support/v7/internal/widget/ScrollingTabContainerView$SlidingTabStrip;

    move-result-object v1

    iget v2, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView$1;->val$position:I

    const/16 v3, 0x12c

    invoke-virtual {v1, v2, v3}, Landroid/support/v7/internal/widget/ScrollingTabContainerView$SlidingTabStrip;->animateIndicatorToPosition(II)V

    .line 316
    iget-object v1, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView$1;->this$0:Landroid/support/v7/internal/widget/ScrollingTabContainerView;

    const/4 v2, 0x0

    iput-object v2, v1, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->mTabSelector:Ljava/lang/Runnable;

    .line 317
    return-void
.end method
