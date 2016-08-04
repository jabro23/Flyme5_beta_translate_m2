.class Lflyme/support/v7/widget/RecyclerView$4;
.super Ljava/lang/Object;
.source "RecyclerView.java"

# interfaces
.implements Lflyme/support/v7/widget/ViewInfoStore$ProcessCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lflyme/support/v7/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lflyme/support/v7/widget/RecyclerView;


# direct methods
.method constructor <init>(Lflyme/support/v7/widget/RecyclerView;)V
    .locals 0

    .prologue
    .line 423
    iput-object p1, p0, Lflyme/support/v7/widget/RecyclerView$4;->this$0:Lflyme/support/v7/widget/RecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public processAppeared(Lflyme/support/v7/widget/RecyclerView$ViewHolder;Lflyme/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Lflyme/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V
    .locals 1
    .param p1, "viewHolder"    # Lflyme/support/v7/widget/RecyclerView$ViewHolder;
    .param p2, "preInfo"    # Lflyme/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
    .param p3, "info"    # Lflyme/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    .prologue
    .line 433
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView$4;->this$0:Lflyme/support/v7/widget/RecyclerView;

    # invokes: Lflyme/support/v7/widget/RecyclerView;->animateAppearance(Lflyme/support/v7/widget/RecyclerView$ViewHolder;Lflyme/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Lflyme/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V
    invoke-static {v0, p1, p2, p3}, Lflyme/support/v7/widget/RecyclerView;->access$800(Lflyme/support/v7/widget/RecyclerView;Lflyme/support/v7/widget/RecyclerView$ViewHolder;Lflyme/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Lflyme/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V

    .line 434
    return-void
.end method

.method public processDisappeared(Lflyme/support/v7/widget/RecyclerView$ViewHolder;Lflyme/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Lflyme/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V
    .locals 1
    .param p1, "viewHolder"    # Lflyme/support/v7/widget/RecyclerView$ViewHolder;
    .param p2, "info"    # Lflyme/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
    .param p3, "postInfo"    # Lflyme/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    .prologue
    .line 427
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView$4;->this$0:Lflyme/support/v7/widget/RecyclerView;

    iget-object v0, v0, Lflyme/support/v7/widget/RecyclerView;->mRecycler:Lflyme/support/v7/widget/RecyclerView$Recycler;

    invoke-virtual {v0, p1}, Lflyme/support/v7/widget/RecyclerView$Recycler;->unscrapView(Lflyme/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 428
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView$4;->this$0:Lflyme/support/v7/widget/RecyclerView;

    # invokes: Lflyme/support/v7/widget/RecyclerView;->animateDisappearance(Lflyme/support/v7/widget/RecyclerView$ViewHolder;Lflyme/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Lflyme/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V
    invoke-static {v0, p1, p2, p3}, Lflyme/support/v7/widget/RecyclerView;->access$700(Lflyme/support/v7/widget/RecyclerView;Lflyme/support/v7/widget/RecyclerView$ViewHolder;Lflyme/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Lflyme/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V

    .line 429
    return-void
.end method

.method public processPersistent(Lflyme/support/v7/widget/RecyclerView$ViewHolder;Lflyme/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Lflyme/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V
    .locals 1
    .param p1, "viewHolder"    # Lflyme/support/v7/widget/RecyclerView$ViewHolder;
    .param p2, "preInfo"    # Lflyme/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
    .param p3, "postInfo"    # Lflyme/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    .prologue
    .line 439
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->setIsRecyclable(Z)V

    .line 440
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView$4;->this$0:Lflyme/support/v7/widget/RecyclerView;

    # getter for: Lflyme/support/v7/widget/RecyclerView;->mDataSetHasChangedAfterLayout:Z
    invoke-static {v0}, Lflyme/support/v7/widget/RecyclerView;->access$900(Lflyme/support/v7/widget/RecyclerView;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 444
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView$4;->this$0:Lflyme/support/v7/widget/RecyclerView;

    iget-object v0, v0, Lflyme/support/v7/widget/RecyclerView;->mItemAnimator:Lflyme/support/v7/widget/RecyclerView$ItemAnimator;

    invoke-virtual {v0, p1, p1, p2, p3}, Lflyme/support/v7/widget/RecyclerView$ItemAnimator;->animateChange(Lflyme/support/v7/widget/RecyclerView$ViewHolder;Lflyme/support/v7/widget/RecyclerView$ViewHolder;Lflyme/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Lflyme/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 445
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView$4;->this$0:Lflyme/support/v7/widget/RecyclerView;

    # invokes: Lflyme/support/v7/widget/RecyclerView;->postAnimationRunner()V
    invoke-static {v0}, Lflyme/support/v7/widget/RecyclerView;->access$1000(Lflyme/support/v7/widget/RecyclerView;)V

    .line 450
    :cond_0
    :goto_0
    return-void

    .line 447
    :cond_1
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView$4;->this$0:Lflyme/support/v7/widget/RecyclerView;

    iget-object v0, v0, Lflyme/support/v7/widget/RecyclerView;->mItemAnimator:Lflyme/support/v7/widget/RecyclerView$ItemAnimator;

    invoke-virtual {v0, p1, p2, p3}, Lflyme/support/v7/widget/RecyclerView$ItemAnimator;->animatePersistence(Lflyme/support/v7/widget/RecyclerView$ViewHolder;Lflyme/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Lflyme/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 448
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView$4;->this$0:Lflyme/support/v7/widget/RecyclerView;

    # invokes: Lflyme/support/v7/widget/RecyclerView;->postAnimationRunner()V
    invoke-static {v0}, Lflyme/support/v7/widget/RecyclerView;->access$1000(Lflyme/support/v7/widget/RecyclerView;)V

    goto :goto_0
.end method

.method public unused(Lflyme/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 3
    .param p1, "viewHolder"    # Lflyme/support/v7/widget/RecyclerView$ViewHolder;

    .prologue
    .line 453
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView$4;->this$0:Lflyme/support/v7/widget/RecyclerView;

    iget-object v0, v0, Lflyme/support/v7/widget/RecyclerView;->mLayout:Lflyme/support/v7/widget/RecyclerView$LayoutManager;

    iget-object v1, p1, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget-object v2, p0, Lflyme/support/v7/widget/RecyclerView$4;->this$0:Lflyme/support/v7/widget/RecyclerView;

    iget-object v2, v2, Lflyme/support/v7/widget/RecyclerView;->mRecycler:Lflyme/support/v7/widget/RecyclerView$Recycler;

    invoke-virtual {v0, v1, v2}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->removeAndRecycleView(Landroid/view/View;Lflyme/support/v7/widget/RecyclerView$Recycler;)V

    .line 454
    return-void
.end method
