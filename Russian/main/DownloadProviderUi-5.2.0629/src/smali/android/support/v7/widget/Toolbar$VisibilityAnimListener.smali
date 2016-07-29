.class public Landroid/support/v7/widget/Toolbar$VisibilityAnimListener;
.super Ljava/lang/Object;
.source "Toolbar.java"

# interfaces
.implements Landroid/support/v4/view/ViewPropertyAnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/Toolbar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "VisibilityAnimListener"
.end annotation


# instance fields
.field private mCanceled:Z

.field mFinalVisibility:I

.field final synthetic this$0:Landroid/support/v7/widget/Toolbar;


# direct methods
.method protected constructor <init>(Landroid/support/v7/widget/Toolbar;)V
    .locals 1

    .prologue
    .line 2537
    iput-object p1, p0, Landroid/support/v7/widget/Toolbar$VisibilityAnimListener;->this$0:Landroid/support/v7/widget/Toolbar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2538
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/Toolbar$VisibilityAnimListener;->mCanceled:Z

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 2566
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/Toolbar$VisibilityAnimListener;->mCanceled:Z

    .line 2567
    return-void
.end method

.method public onAnimationEnd(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 2556
    iget-boolean v0, p0, Landroid/support/v7/widget/Toolbar$VisibilityAnimListener;->mCanceled:Z

    if-eqz v0, :cond_1

    .line 2562
    :cond_0
    :goto_0
    return-void

    .line 2558
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar$VisibilityAnimListener;->this$0:Landroid/support/v7/widget/Toolbar;

    const/4 v1, 0x0

    iput-object v1, v0, Landroid/support/v7/widget/Toolbar;->mMenuViewVisibilityAnim:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 2559
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar$VisibilityAnimListener;->this$0:Landroid/support/v7/widget/Toolbar;

    # getter for: Landroid/support/v7/widget/Toolbar;->mMenuView:Landroid/support/v7/widget/ActionMenuView;
    invoke-static {v0}, Landroid/support/v7/widget/Toolbar;->access$600(Landroid/support/v7/widget/Toolbar;)Landroid/support/v7/widget/ActionMenuView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2560
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar$VisibilityAnimListener;->this$0:Landroid/support/v7/widget/Toolbar;

    # getter for: Landroid/support/v7/widget/Toolbar;->mMenuView:Landroid/support/v7/widget/ActionMenuView;
    invoke-static {v0}, Landroid/support/v7/widget/Toolbar;->access$600(Landroid/support/v7/widget/Toolbar;)Landroid/support/v7/widget/ActionMenuView;

    move-result-object v0

    iget v1, p0, Landroid/support/v7/widget/Toolbar$VisibilityAnimListener;->mFinalVisibility:I

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ActionMenuView;->setVisibility(I)V

    goto :goto_0
.end method

.method public onAnimationStart(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x0

    .line 2550
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar$VisibilityAnimListener;->this$0:Landroid/support/v7/widget/Toolbar;

    # getter for: Landroid/support/v7/widget/Toolbar;->mMenuView:Landroid/support/v7/widget/ActionMenuView;
    invoke-static {v0}, Landroid/support/v7/widget/Toolbar;->access$600(Landroid/support/v7/widget/Toolbar;)Landroid/support/v7/widget/ActionMenuView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/Toolbar$VisibilityAnimListener;->this$0:Landroid/support/v7/widget/Toolbar;

    # getter for: Landroid/support/v7/widget/Toolbar;->mMenuView:Landroid/support/v7/widget/ActionMenuView;
    invoke-static {v0}, Landroid/support/v7/widget/Toolbar;->access$600(Landroid/support/v7/widget/Toolbar;)Landroid/support/v7/widget/ActionMenuView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ActionMenuView;->setVisibility(I)V

    .line 2551
    :cond_0
    iput-boolean v1, p0, Landroid/support/v7/widget/Toolbar$VisibilityAnimListener;->mCanceled:Z

    .line 2552
    return-void
.end method

.method public withFinalVisibility(Landroid/support/v4/view/ViewPropertyAnimatorCompat;I)Landroid/support/v7/widget/Toolbar$VisibilityAnimListener;
    .locals 1
    .param p1, "animation"    # Landroid/support/v4/view/ViewPropertyAnimatorCompat;
    .param p2, "visibility"    # I

    .prologue
    .line 2543
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar$VisibilityAnimListener;->this$0:Landroid/support/v7/widget/Toolbar;

    iput-object p1, v0, Landroid/support/v7/widget/Toolbar;->mMenuViewVisibilityAnim:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 2544
    iput p2, p0, Landroid/support/v7/widget/Toolbar$VisibilityAnimListener;->mFinalVisibility:I

    .line 2545
    return-object p0
.end method
