.class public Landroid/support/v7/internal/widget/ActionBarContextView$ContextViewVisibilityAnimListener;
.super Landroid/support/v7/internal/widget/AbsActionBarView$VisibilityAnimListener;
.source "ActionBarContextView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/internal/widget/ActionBarContextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "ContextViewVisibilityAnimListener"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v7/internal/widget/ActionBarContextView;


# direct methods
.method protected constructor <init>(Landroid/support/v7/internal/widget/ActionBarContextView;)V
    .locals 0

    .prologue
    .line 727
    iput-object p1, p0, Landroid/support/v7/internal/widget/ActionBarContextView$ContextViewVisibilityAnimListener;->this$0:Landroid/support/v7/internal/widget/ActionBarContextView;

    invoke-direct {p0, p1}, Landroid/support/v7/internal/widget/AbsActionBarView$VisibilityAnimListener;-><init>(Landroid/support/v7/internal/widget/AbsActionBarView;)V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 730
    invoke-super {p0, p1}, Landroid/support/v7/internal/widget/AbsActionBarView$VisibilityAnimListener;->onAnimationEnd(Landroid/view/View;)V

    .line 731
    iget v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView$ContextViewVisibilityAnimListener;->mFinalVisibility:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 732
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView$ContextViewVisibilityAnimListener;->this$0:Landroid/support/v7/internal/widget/ActionBarContextView;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ActionBarContextView;->killMode()V

    .line 734
    :cond_0
    return-void
.end method
