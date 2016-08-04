.class Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener$1;
.super Ljava/lang/Object;
.source "MzRecyclerView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;->onSingleTapUp(Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;


# direct methods
.method constructor <init>(Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;)V
    .locals 0

    .prologue
    .line 639
    iput-object p1, p0, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener$1;->this$1:Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 642
    iget-object v0, p0, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener$1;->this$1:Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;

    # getter for: Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;->clickView:Landroid/view/View;
    invoke-static {v0}, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;->access$1100(Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 643
    iget-object v0, p0, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener$1;->this$1:Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;

    iget-object v0, v0, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;->this$0:Lflyme/support/v7/widget/MzRecyclerView;

    invoke-virtual {v0, v7}, Lflyme/support/v7/widget/MzRecyclerView;->setPressed(Z)V

    .line 644
    iget-object v0, p0, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener$1;->this$1:Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;

    # getter for: Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;->clickView:Landroid/view/View;
    invoke-static {v0}, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;->access$1100(Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/view/View;->setPressed(Z)V

    .line 645
    iget-object v0, p0, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener$1;->this$1:Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;

    iget-object v0, v0, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;->this$0:Lflyme/support/v7/widget/MzRecyclerView;

    iget-object v1, p0, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener$1;->this$1:Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;

    # getter for: Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;->clickView:Landroid/view/View;
    invoke-static {v1}, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;->access$1100(Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;)Landroid/view/View;

    move-result-object v1

    # invokes: Lflyme/support/v7/widget/MzRecyclerView;->getChildPositionExt(Landroid/view/View;)I
    invoke-static {v0, v1}, Lflyme/support/v7/widget/MzRecyclerView;->access$700(Lflyme/support/v7/widget/MzRecyclerView;Landroid/view/View;)I

    move-result v3

    .line 646
    .local v3, "position":I
    if-ltz v3, :cond_0

    iget-object v0, p0, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener$1;->this$1:Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;

    iget-object v0, v0, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;->this$0:Lflyme/support/v7/widget/MzRecyclerView;

    iget-object v0, v0, Lflyme/support/v7/widget/MzRecyclerView;->mState:Lflyme/support/v7/widget/RecyclerView$State;

    invoke-virtual {v0}, Lflyme/support/v7/widget/RecyclerView$State;->didStructureChange()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener$1;->this$1:Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;

    iget-object v0, v0, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;->this$0:Lflyme/support/v7/widget/MzRecyclerView;

    invoke-virtual {v0}, Lflyme/support/v7/widget/MzRecyclerView;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 647
    iget-object v0, p0, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener$1;->this$1:Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;

    iget-object v0, v0, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;->this$0:Lflyme/support/v7/widget/MzRecyclerView;

    invoke-virtual {v0}, Lflyme/support/v7/widget/MzRecyclerView;->getAdapter()Lflyme/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    invoke-virtual {v0, v3}, Lflyme/support/v7/widget/RecyclerView$Adapter;->getItemId(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    .line 648
    .local v6, "id":Ljava/lang/Long;
    iget-object v0, p0, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener$1;->this$1:Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;

    iget-object v1, p0, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener$1;->this$1:Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;

    iget-object v1, v1, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;->this$0:Lflyme/support/v7/widget/MzRecyclerView;

    iget-object v2, p0, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener$1;->this$1:Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;

    # getter for: Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;->clickView:Landroid/view/View;
    invoke-static {v2}, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;->access$1100(Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    # invokes: Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;->performItemClick(Lflyme/support/v7/widget/RecyclerView;Landroid/view/View;IJ)Z
    invoke-static/range {v0 .. v5}, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;->access$1200(Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;Lflyme/support/v7/widget/RecyclerView;Landroid/view/View;IJ)Z

    .line 650
    .end local v6    # "id":Ljava/lang/Long;
    :cond_0
    iget-object v0, p0, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener$1;->this$1:Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;

    const/4 v1, 0x0

    # setter for: Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;->clickView:Landroid/view/View;
    invoke-static {v0, v1}, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;->access$1102(Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;Landroid/view/View;)Landroid/view/View;

    .line 651
    iget-object v0, p0, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener$1;->this$1:Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;

    # setter for: Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;->isTapDown:Z
    invoke-static {v0, v7}, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;->access$1302(Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;Z)Z

    .line 653
    .end local v3    # "position":I
    :cond_1
    return-void
.end method
