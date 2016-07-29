.class Lflyme/support/v7/widget/RecyclerView$6;
.super Ljava/lang/Object;
.source "RecyclerView.java"

# interfaces
.implements Lflyme/support/v7/widget/AdapterHelper$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lflyme/support/v7/widget/RecyclerView;->initAdapterManager()V
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
    .line 689
    iput-object p1, p0, Lflyme/support/v7/widget/RecyclerView$6;->this$0:Lflyme/support/v7/widget/RecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method dispatchUpdate(Lflyme/support/v7/widget/AdapterHelper$UpdateOp;)V
    .locals 5
    .param p1, "op"    # Lflyme/support/v7/widget/AdapterHelper$UpdateOp;

    .prologue
    .line 732
    iget v0, p1, Lflyme/support/v7/widget/AdapterHelper$UpdateOp;->cmd:I

    packed-switch v0, :pswitch_data_0

    .line 747
    :goto_0
    :pswitch_0
    return-void

    .line 734
    :pswitch_1
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView$6;->this$0:Lflyme/support/v7/widget/RecyclerView;

    iget-object v0, v0, Lflyme/support/v7/widget/RecyclerView;->mLayout:Lflyme/support/v7/widget/RecyclerView$LayoutManager;

    iget-object v1, p0, Lflyme/support/v7/widget/RecyclerView$6;->this$0:Lflyme/support/v7/widget/RecyclerView;

    iget v2, p1, Lflyme/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v3, p1, Lflyme/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    invoke-virtual {v0, v1, v2, v3}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->onItemsAdded(Lflyme/support/v7/widget/RecyclerView;II)V

    goto :goto_0

    .line 737
    :pswitch_2
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView$6;->this$0:Lflyme/support/v7/widget/RecyclerView;

    iget-object v0, v0, Lflyme/support/v7/widget/RecyclerView;->mLayout:Lflyme/support/v7/widget/RecyclerView$LayoutManager;

    iget-object v1, p0, Lflyme/support/v7/widget/RecyclerView$6;->this$0:Lflyme/support/v7/widget/RecyclerView;

    iget v2, p1, Lflyme/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v3, p1, Lflyme/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    invoke-virtual {v0, v1, v2, v3}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->onItemsRemoved(Lflyme/support/v7/widget/RecyclerView;II)V

    goto :goto_0

    .line 740
    :pswitch_3
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView$6;->this$0:Lflyme/support/v7/widget/RecyclerView;

    iget-object v0, v0, Lflyme/support/v7/widget/RecyclerView;->mLayout:Lflyme/support/v7/widget/RecyclerView$LayoutManager;

    iget-object v1, p0, Lflyme/support/v7/widget/RecyclerView$6;->this$0:Lflyme/support/v7/widget/RecyclerView;

    iget v2, p1, Lflyme/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v3, p1, Lflyme/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    iget-object v4, p1, Lflyme/support/v7/widget/AdapterHelper$UpdateOp;->payload:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2, v3, v4}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->onItemsUpdated(Lflyme/support/v7/widget/RecyclerView;IILjava/lang/Object;)V

    goto :goto_0

    .line 744
    :pswitch_4
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView$6;->this$0:Lflyme/support/v7/widget/RecyclerView;

    iget-object v0, v0, Lflyme/support/v7/widget/RecyclerView;->mLayout:Lflyme/support/v7/widget/RecyclerView$LayoutManager;

    iget-object v1, p0, Lflyme/support/v7/widget/RecyclerView$6;->this$0:Lflyme/support/v7/widget/RecyclerView;

    iget v2, p1, Lflyme/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v3, p1, Lflyme/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->onItemsMoved(Lflyme/support/v7/widget/RecyclerView;III)V

    goto :goto_0

    .line 732
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public findViewHolder(I)Lflyme/support/v7/widget/RecyclerView$ViewHolder;
    .locals 4
    .param p1, "position"    # I

    .prologue
    const/4 v1, 0x0

    .line 692
    iget-object v2, p0, Lflyme/support/v7/widget/RecyclerView$6;->this$0:Lflyme/support/v7/widget/RecyclerView;

    const/4 v3, 0x1

    invoke-virtual {v2, p1, v3}, Lflyme/support/v7/widget/RecyclerView;->findViewHolderForPosition(IZ)Lflyme/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    .line 693
    .local v0, "vh":Lflyme/support/v7/widget/RecyclerView$ViewHolder;
    if-nez v0, :cond_1

    move-object v0, v1

    .line 704
    .end local v0    # "vh":Lflyme/support/v7/widget/RecyclerView$ViewHolder;
    :cond_0
    :goto_0
    return-object v0

    .line 698
    .restart local v0    # "vh":Lflyme/support/v7/widget/RecyclerView$ViewHolder;
    :cond_1
    iget-object v2, p0, Lflyme/support/v7/widget/RecyclerView$6;->this$0:Lflyme/support/v7/widget/RecyclerView;

    iget-object v2, v2, Lflyme/support/v7/widget/RecyclerView;->mChildHelper:Lflyme/support/v7/widget/ChildHelper;

    iget-object v3, v0, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2, v3}, Lflyme/support/v7/widget/ChildHelper;->isHidden(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 702
    goto :goto_0
.end method

.method public markViewHoldersUpdated(IILjava/lang/Object;)V
    .locals 2
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I
    .param p3, "payload"    # Ljava/lang/Object;

    .prologue
    .line 722
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView$6;->this$0:Lflyme/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1, p2, p3}, Lflyme/support/v7/widget/RecyclerView;->viewRangeUpdate(IILjava/lang/Object;)V

    .line 723
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView$6;->this$0:Lflyme/support/v7/widget/RecyclerView;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lflyme/support/v7/widget/RecyclerView;->mItemsChanged:Z

    .line 724
    return-void
.end method

.method public offsetPositionsForAdd(II)V
    .locals 2
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I

    .prologue
    .line 756
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView$6;->this$0:Lflyme/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1, p2}, Lflyme/support/v7/widget/RecyclerView;->offsetPositionRecordsForInsert(II)V

    .line 757
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView$6;->this$0:Lflyme/support/v7/widget/RecyclerView;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lflyme/support/v7/widget/RecyclerView;->mItemsAddedOrRemoved:Z

    .line 758
    return-void
.end method

.method public offsetPositionsForMove(II)V
    .locals 2
    .param p1, "from"    # I
    .param p2, "to"    # I

    .prologue
    .line 762
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView$6;->this$0:Lflyme/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1, p2}, Lflyme/support/v7/widget/RecyclerView;->offsetPositionRecordsForMove(II)V

    .line 764
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView$6;->this$0:Lflyme/support/v7/widget/RecyclerView;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lflyme/support/v7/widget/RecyclerView;->mItemsAddedOrRemoved:Z

    .line 765
    return-void
.end method

.method public offsetPositionsForRemovingInvisible(II)V
    .locals 2
    .param p1, "start"    # I
    .param p2, "count"    # I

    .prologue
    const/4 v1, 0x1

    .line 709
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView$6;->this$0:Lflyme/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1, p2, v1}, Lflyme/support/v7/widget/RecyclerView;->offsetPositionRecordsForRemove(IIZ)V

    .line 710
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView$6;->this$0:Lflyme/support/v7/widget/RecyclerView;

    iput-boolean v1, v0, Lflyme/support/v7/widget/RecyclerView;->mItemsAddedOrRemoved:Z

    .line 711
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView$6;->this$0:Lflyme/support/v7/widget/RecyclerView;

    iget-object v0, v0, Lflyme/support/v7/widget/RecyclerView;->mState:Lflyme/support/v7/widget/RecyclerView$State;

    # += operator for: Lflyme/support/v7/widget/RecyclerView$State;->mDeletedInvisibleItemCountSincePreviousLayout:I
    invoke-static {v0, p2}, Lflyme/support/v7/widget/RecyclerView$State;->access$1712(Lflyme/support/v7/widget/RecyclerView$State;I)I

    .line 712
    return-void
.end method

.method public offsetPositionsForRemovingLaidOutOrNewView(II)V
    .locals 2
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I

    .prologue
    .line 716
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView$6;->this$0:Lflyme/support/v7/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lflyme/support/v7/widget/RecyclerView;->offsetPositionRecordsForRemove(IIZ)V

    .line 717
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView$6;->this$0:Lflyme/support/v7/widget/RecyclerView;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lflyme/support/v7/widget/RecyclerView;->mItemsAddedOrRemoved:Z

    .line 718
    return-void
.end method

.method public onDispatchFirstPass(Lflyme/support/v7/widget/AdapterHelper$UpdateOp;)V
    .locals 0
    .param p1, "op"    # Lflyme/support/v7/widget/AdapterHelper$UpdateOp;

    .prologue
    .line 728
    invoke-virtual {p0, p1}, Lflyme/support/v7/widget/RecyclerView$6;->dispatchUpdate(Lflyme/support/v7/widget/AdapterHelper$UpdateOp;)V

    .line 729
    return-void
.end method

.method public onDispatchSecondPass(Lflyme/support/v7/widget/AdapterHelper$UpdateOp;)V
    .locals 0
    .param p1, "op"    # Lflyme/support/v7/widget/AdapterHelper$UpdateOp;

    .prologue
    .line 751
    invoke-virtual {p0, p1}, Lflyme/support/v7/widget/RecyclerView$6;->dispatchUpdate(Lflyme/support/v7/widget/AdapterHelper$UpdateOp;)V

    .line 752
    return-void
.end method
