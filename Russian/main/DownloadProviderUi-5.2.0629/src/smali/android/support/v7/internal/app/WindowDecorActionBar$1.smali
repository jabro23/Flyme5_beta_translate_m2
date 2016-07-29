.class Landroid/support/v7/internal/app/WindowDecorActionBar$1;
.super Landroid/support/v4/view/ViewPropertyAnimatorListenerAdapter;
.source "WindowDecorActionBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/internal/app/WindowDecorActionBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v7/internal/app/WindowDecorActionBar;


# direct methods
.method constructor <init>(Landroid/support/v7/internal/app/WindowDecorActionBar;)V
    .locals 0

    .prologue
    .line 148
    iput-object p1, p0, Landroid/support/v7/internal/app/WindowDecorActionBar$1;->this$0:Landroid/support/v7/internal/app/WindowDecorActionBar;

    invoke-direct {p0}, Landroid/support/v4/view/ViewPropertyAnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 151
    iget-object v0, p0, Landroid/support/v7/internal/app/WindowDecorActionBar$1;->this$0:Landroid/support/v7/internal/app/WindowDecorActionBar;

    # getter for: Landroid/support/v7/internal/app/WindowDecorActionBar;->mSplitView:Landroid/support/v7/internal/widget/ActionBarContainer;
    invoke-static {v0}, Landroid/support/v7/internal/app/WindowDecorActionBar;->access$000(Landroid/support/v7/internal/app/WindowDecorActionBar;)Landroid/support/v7/internal/widget/ActionBarContainer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Landroid/support/v7/internal/app/WindowDecorActionBar$1;->this$0:Landroid/support/v7/internal/app/WindowDecorActionBar;

    # getter for: Landroid/support/v7/internal/app/WindowDecorActionBar;->mSplitView:Landroid/support/v7/internal/widget/ActionBarContainer;
    invoke-static {v0}, Landroid/support/v7/internal/app/WindowDecorActionBar;->access$000(Landroid/support/v7/internal/app/WindowDecorActionBar;)Landroid/support/v7/internal/widget/ActionBarContainer;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/widget/ActionBarContainer;->setVisibility(I)V

    .line 154
    :cond_0
    iget-object v0, p0, Landroid/support/v7/internal/app/WindowDecorActionBar$1;->this$0:Landroid/support/v7/internal/app/WindowDecorActionBar;

    const/4 v1, 0x0

    # setter for: Landroid/support/v7/internal/app/WindowDecorActionBar;->mIsSplitActionBarShow:Z
    invoke-static {v0, v1}, Landroid/support/v7/internal/app/WindowDecorActionBar;->access$102(Landroid/support/v7/internal/app/WindowDecorActionBar;Z)Z

    .line 155
    iget-object v0, p0, Landroid/support/v7/internal/app/WindowDecorActionBar$1;->this$0:Landroid/support/v7/internal/app/WindowDecorActionBar;

    const/4 v1, 0x0

    # setter for: Landroid/support/v7/internal/app/WindowDecorActionBar;->mCurrentShowAnim:Landroid/support/v7/internal/view/ViewPropertyAnimatorCompatSet;
    invoke-static {v0, v1}, Landroid/support/v7/internal/app/WindowDecorActionBar;->access$202(Landroid/support/v7/internal/app/WindowDecorActionBar;Landroid/support/v7/internal/view/ViewPropertyAnimatorCompatSet;)Landroid/support/v7/internal/view/ViewPropertyAnimatorCompatSet;

    .line 156
    return-void
.end method
