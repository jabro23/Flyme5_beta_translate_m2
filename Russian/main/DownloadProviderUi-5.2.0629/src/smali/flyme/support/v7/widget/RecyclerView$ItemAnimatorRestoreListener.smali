.class Lflyme/support/v7/widget/RecyclerView$ItemAnimatorRestoreListener;
.super Ljava/lang/Object;
.source "RecyclerView.java"

# interfaces
.implements Lflyme/support/v7/widget/RecyclerView$ItemAnimator$ItemAnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lflyme/support/v7/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ItemAnimatorRestoreListener"
.end annotation


# instance fields
.field final synthetic this$0:Lflyme/support/v7/widget/RecyclerView;


# direct methods
.method private constructor <init>(Lflyme/support/v7/widget/RecyclerView;)V
    .locals 0

    .prologue
    .line 10336
    iput-object p1, p0, Lflyme/support/v7/widget/RecyclerView$ItemAnimatorRestoreListener;->this$0:Lflyme/support/v7/widget/RecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lflyme/support/v7/widget/RecyclerView;Lflyme/support/v7/widget/RecyclerView$1;)V
    .locals 0
    .param p1, "x0"    # Lflyme/support/v7/widget/RecyclerView;
    .param p2, "x1"    # Lflyme/support/v7/widget/RecyclerView$1;

    .prologue
    .line 10336
    invoke-direct {p0, p1}, Lflyme/support/v7/widget/RecyclerView$ItemAnimatorRestoreListener;-><init>(Lflyme/support/v7/widget/RecyclerView;)V

    return-void
.end method


# virtual methods
.method public onAnimationFinished(Lflyme/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 3
    .param p1, "item"    # Lflyme/support/v7/widget/RecyclerView$ViewHolder;

    .prologue
    const/4 v1, 0x0

    .line 10340
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->setIsRecyclable(Z)V

    .line 10341
    iget-object v0, p1, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->mShadowedHolder:Lflyme/support/v7/widget/RecyclerView$ViewHolder;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->mShadowingHolder:Lflyme/support/v7/widget/RecyclerView$ViewHolder;

    if-nez v0, :cond_0

    .line 10342
    iput-object v1, p1, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->mShadowedHolder:Lflyme/support/v7/widget/RecyclerView$ViewHolder;

    .line 10346
    :cond_0
    iput-object v1, p1, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->mShadowingHolder:Lflyme/support/v7/widget/RecyclerView$ViewHolder;

    .line 10347
    # invokes: Lflyme/support/v7/widget/RecyclerView$ViewHolder;->shouldBeKeptAsChild()Z
    invoke-static {p1}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->access$6200(Lflyme/support/v7/widget/RecyclerView$ViewHolder;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 10348
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView$ItemAnimatorRestoreListener;->this$0:Lflyme/support/v7/widget/RecyclerView;

    iget-object v1, p1, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    # invokes: Lflyme/support/v7/widget/RecyclerView;->removeAnimatingView(Landroid/view/View;)Z
    invoke-static {v0, v1}, Lflyme/support/v7/widget/RecyclerView;->access$6300(Lflyme/support/v7/widget/RecyclerView;Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->isTmpDetached()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 10349
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView$ItemAnimatorRestoreListener;->this$0:Lflyme/support/v7/widget/RecyclerView;

    iget-object v1, p1, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lflyme/support/v7/widget/RecyclerView;->removeDetachedView(Landroid/view/View;Z)V

    .line 10352
    :cond_1
    return-void
.end method
