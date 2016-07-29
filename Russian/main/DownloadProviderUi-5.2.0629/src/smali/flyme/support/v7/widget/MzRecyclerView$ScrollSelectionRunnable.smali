.class final Lflyme/support/v7/widget/MzRecyclerView$ScrollSelectionRunnable;
.super Ljava/lang/Object;
.source "MzRecyclerView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lflyme/support/v7/widget/MzRecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ScrollSelectionRunnable"
.end annotation


# instance fields
.field private mStart:Z

.field private mUpSelect:Z

.field final synthetic this$0:Lflyme/support/v7/widget/MzRecyclerView;


# direct methods
.method constructor <init>(Lflyme/support/v7/widget/MzRecyclerView;)V
    .locals 1

    .prologue
    .line 1643
    iput-object p1, p0, Lflyme/support/v7/widget/MzRecyclerView$ScrollSelectionRunnable;->this$0:Lflyme/support/v7/widget/MzRecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1645
    const/4 v0, 0x1

    iput-boolean v0, p0, Lflyme/support/v7/widget/MzRecyclerView$ScrollSelectionRunnable;->mUpSelect:Z

    .line 1646
    const/4 v0, 0x0

    iput-boolean v0, p0, Lflyme/support/v7/widget/MzRecyclerView$ScrollSelectionRunnable;->mStart:Z

    return-void
.end method


# virtual methods
.method public finish()V
    .locals 1

    .prologue
    .line 1716
    const/4 v0, 0x0

    iput-boolean v0, p0, Lflyme/support/v7/widget/MzRecyclerView$ScrollSelectionRunnable;->mStart:Z

    .line 1717
    iget-object v0, p0, Lflyme/support/v7/widget/MzRecyclerView$ScrollSelectionRunnable;->this$0:Lflyme/support/v7/widget/MzRecyclerView;

    invoke-virtual {v0, p0}, Lflyme/support/v7/widget/MzRecyclerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1718
    return-void
.end method

.method public isStarted()Z
    .locals 1

    .prologue
    .line 1712
    iget-boolean v0, p0, Lflyme/support/v7/widget/MzRecyclerView$ScrollSelectionRunnable;->mStart:Z

    return v0
.end method

.method public run()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v8, -0x1

    const/4 v7, 0x0

    .line 1658
    const/16 v3, -0xa

    .line 1659
    .local v3, "speed":I
    const/4 v2, 0x0

    .line 1660
    .local v2, "moved":Z
    const/4 v0, 0x0

    .line 1661
    .local v0, "atEnd":Z
    iget-object v4, p0, Lflyme/support/v7/widget/MzRecyclerView$ScrollSelectionRunnable;->this$0:Lflyme/support/v7/widget/MzRecyclerView;

    # getter for: Lflyme/support/v7/widget/MzRecyclerView;->DEBUG:Z
    invoke-static {v4}, Lflyme/support/v7/widget/MzRecyclerView;->access$100(Lflyme/support/v7/widget/MzRecyclerView;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lflyme/support/v7/widget/MzRecyclerView$ScrollSelectionRunnable;->this$0:Lflyme/support/v7/widget/MzRecyclerView;

    # getter for: Lflyme/support/v7/widget/MzRecyclerView;->DEBUG_DRAG_SCROLL:Z
    invoke-static {v4}, Lflyme/support/v7/widget/MzRecyclerView;->access$2300(Lflyme/support/v7/widget/MzRecyclerView;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1662
    :cond_0
    const-string v4, "MzRecyclerView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "startScroll 1 run mUpSelect = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lflyme/support/v7/widget/MzRecyclerView$ScrollSelectionRunnable;->mUpSelect:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " atEnd = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " speed = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " firstposition = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lflyme/support/v7/widget/MzRecyclerView$ScrollSelectionRunnable;->this$0:Lflyme/support/v7/widget/MzRecyclerView;

    invoke-virtual {v6}, Lflyme/support/v7/widget/MzRecyclerView;->getFirstPosition()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " mIsBeginDragSelect = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lflyme/support/v7/widget/MzRecyclerView$ScrollSelectionRunnable;->this$0:Lflyme/support/v7/widget/MzRecyclerView;

    # getter for: Lflyme/support/v7/widget/MzRecyclerView;->mIsBeginDragSelect:Z
    invoke-static {v6}, Lflyme/support/v7/widget/MzRecyclerView;->access$300(Lflyme/support/v7/widget/MzRecyclerView;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ***********"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1665
    :cond_1
    iget-boolean v4, p0, Lflyme/support/v7/widget/MzRecyclerView$ScrollSelectionRunnable;->mUpSelect:Z

    if-eqz v4, :cond_8

    .line 1667
    iget-object v4, p0, Lflyme/support/v7/widget/MzRecyclerView$ScrollSelectionRunnable;->this$0:Lflyme/support/v7/widget/MzRecyclerView;

    invoke-virtual {v4, v7, v3, v9}, Lflyme/support/v7/widget/MzRecyclerView;->scrollByInternal(IILandroid/view/MotionEvent;)Z

    move-result v2

    .line 1668
    iget-object v4, p0, Lflyme/support/v7/widget/MzRecyclerView$ScrollSelectionRunnable;->this$0:Lflyme/support/v7/widget/MzRecyclerView;

    # invokes: Lflyme/support/v7/widget/MzRecyclerView;->trackMotionScroll(IZ)V
    invoke-static {v4, v3, v7}, Lflyme/support/v7/widget/MzRecyclerView;->access$2400(Lflyme/support/v7/widget/MzRecyclerView;IZ)V

    .line 1669
    iget-object v4, p0, Lflyme/support/v7/widget/MzRecyclerView$ScrollSelectionRunnable;->this$0:Lflyme/support/v7/widget/MzRecyclerView;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lflyme/support/v7/widget/MzRecyclerView;->findCandidateScrollSelection(Z)I

    move-result v1

    .line 1670
    .local v1, "candidatePosition":I
    if-ne v1, v8, :cond_2

    .line 1671
    const/4 v0, 0x1

    .line 1674
    :cond_2
    iget-object v4, p0, Lflyme/support/v7/widget/MzRecyclerView$ScrollSelectionRunnable;->this$0:Lflyme/support/v7/widget/MzRecyclerView;

    iget v4, v4, Lflyme/support/v7/widget/MzRecyclerView;->mLastUpSelectPosition:I

    if-eq v4, v1, :cond_3

    .line 1675
    iget-object v4, p0, Lflyme/support/v7/widget/MzRecyclerView$ScrollSelectionRunnable;->this$0:Lflyme/support/v7/widget/MzRecyclerView;

    iget-object v5, p0, Lflyme/support/v7/widget/MzRecyclerView$ScrollSelectionRunnable;->this$0:Lflyme/support/v7/widget/MzRecyclerView;

    iget v5, v5, Lflyme/support/v7/widget/MzRecyclerView;->mLastUpSelectPosition:I

    invoke-virtual {v4, v5, v1}, Lflyme/support/v7/widget/MzRecyclerView;->upSelect(II)V

    .line 1678
    :cond_3
    if-nez v2, :cond_4

    iget-object v4, p0, Lflyme/support/v7/widget/MzRecyclerView$ScrollSelectionRunnable;->this$0:Lflyme/support/v7/widget/MzRecyclerView;

    invoke-virtual {v4}, Lflyme/support/v7/widget/MzRecyclerView;->getFirstPosition()I

    move-result v4

    if-nez v4, :cond_4

    .line 1679
    const/4 v0, 0x1

    .line 1703
    :cond_4
    :goto_0
    iget-object v4, p0, Lflyme/support/v7/widget/MzRecyclerView$ScrollSelectionRunnable;->this$0:Lflyme/support/v7/widget/MzRecyclerView;

    # getter for: Lflyme/support/v7/widget/MzRecyclerView;->DEBUG:Z
    invoke-static {v4}, Lflyme/support/v7/widget/MzRecyclerView;->access$100(Lflyme/support/v7/widget/MzRecyclerView;)Z

    move-result v4

    if-nez v4, :cond_5

    iget-object v4, p0, Lflyme/support/v7/widget/MzRecyclerView$ScrollSelectionRunnable;->this$0:Lflyme/support/v7/widget/MzRecyclerView;

    # getter for: Lflyme/support/v7/widget/MzRecyclerView;->DEBUG_DRAG_SCROLL:Z
    invoke-static {v4}, Lflyme/support/v7/widget/MzRecyclerView;->access$2300(Lflyme/support/v7/widget/MzRecyclerView;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1704
    :cond_5
    const-string v4, "MzRecyclerView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "startScroll 2 run mUpSelect = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lflyme/support/v7/widget/MzRecyclerView$ScrollSelectionRunnable;->mUpSelect:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " moved = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " atEnd = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " speed = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " firstposition = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lflyme/support/v7/widget/MzRecyclerView$ScrollSelectionRunnable;->this$0:Lflyme/support/v7/widget/MzRecyclerView;

    invoke-virtual {v6}, Lflyme/support/v7/widget/MzRecyclerView;->getFirstPosition()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " &&&&&&&&&&&&"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1706
    :cond_6
    if-nez v0, :cond_7

    .line 1707
    iget-object v4, p0, Lflyme/support/v7/widget/MzRecyclerView$ScrollSelectionRunnable;->this$0:Lflyme/support/v7/widget/MzRecyclerView;

    const-wide/16 v6, 0xa

    invoke-virtual {v4, p0, v6, v7}, Lflyme/support/v7/widget/MzRecyclerView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1709
    :cond_7
    return-void

    .line 1684
    .end local v1    # "candidatePosition":I
    :cond_8
    mul-int/lit8 v3, v3, -0x1

    .line 1685
    iget-object v4, p0, Lflyme/support/v7/widget/MzRecyclerView$ScrollSelectionRunnable;->this$0:Lflyme/support/v7/widget/MzRecyclerView;

    invoke-virtual {v4, v7, v3, v9}, Lflyme/support/v7/widget/MzRecyclerView;->scrollByInternal(IILandroid/view/MotionEvent;)Z

    move-result v2

    .line 1686
    iget-object v4, p0, Lflyme/support/v7/widget/MzRecyclerView$ScrollSelectionRunnable;->this$0:Lflyme/support/v7/widget/MzRecyclerView;

    # invokes: Lflyme/support/v7/widget/MzRecyclerView;->trackMotionScroll(IZ)V
    invoke-static {v4, v3, v7}, Lflyme/support/v7/widget/MzRecyclerView;->access$2400(Lflyme/support/v7/widget/MzRecyclerView;IZ)V

    .line 1689
    iget-object v4, p0, Lflyme/support/v7/widget/MzRecyclerView$ScrollSelectionRunnable;->this$0:Lflyme/support/v7/widget/MzRecyclerView;

    invoke-virtual {v4, v7}, Lflyme/support/v7/widget/MzRecyclerView;->findCandidateScrollSelection(Z)I

    move-result v1

    .line 1690
    .restart local v1    # "candidatePosition":I
    if-ne v1, v8, :cond_9

    .line 1691
    const/4 v0, 0x1

    .line 1693
    :cond_9
    iget-object v4, p0, Lflyme/support/v7/widget/MzRecyclerView$ScrollSelectionRunnable;->this$0:Lflyme/support/v7/widget/MzRecyclerView;

    iget v4, v4, Lflyme/support/v7/widget/MzRecyclerView;->mLastDownSelectPosition:I

    if-eq v4, v1, :cond_a

    .line 1694
    iget-object v4, p0, Lflyme/support/v7/widget/MzRecyclerView$ScrollSelectionRunnable;->this$0:Lflyme/support/v7/widget/MzRecyclerView;

    iget-object v5, p0, Lflyme/support/v7/widget/MzRecyclerView$ScrollSelectionRunnable;->this$0:Lflyme/support/v7/widget/MzRecyclerView;

    iget v5, v5, Lflyme/support/v7/widget/MzRecyclerView;->mLastDownSelectPosition:I

    invoke-virtual {v4, v5, v1}, Lflyme/support/v7/widget/MzRecyclerView;->downSelect(II)V

    .line 1697
    :cond_a
    if-nez v2, :cond_4

    iget-object v4, p0, Lflyme/support/v7/widget/MzRecyclerView$ScrollSelectionRunnable;->this$0:Lflyme/support/v7/widget/MzRecyclerView;

    invoke-virtual {v4}, Lflyme/support/v7/widget/MzRecyclerView;->getFirstPosition()I

    move-result v4

    iget-object v5, p0, Lflyme/support/v7/widget/MzRecyclerView$ScrollSelectionRunnable;->this$0:Lflyme/support/v7/widget/MzRecyclerView;

    # invokes: Lflyme/support/v7/widget/MzRecyclerView;->getChildCountExt()I
    invoke-static {v5}, Lflyme/support/v7/widget/MzRecyclerView;->access$2500(Lflyme/support/v7/widget/MzRecyclerView;)I

    move-result v5

    add-int/2addr v4, v5

    iget-object v5, p0, Lflyme/support/v7/widget/MzRecyclerView$ScrollSelectionRunnable;->this$0:Lflyme/support/v7/widget/MzRecyclerView;

    # invokes: Lflyme/support/v7/widget/MzRecyclerView;->getItemCount()I
    invoke-static {v5}, Lflyme/support/v7/widget/MzRecyclerView;->access$2600(Lflyme/support/v7/widget/MzRecyclerView;)I

    move-result v5

    if-ne v4, v5, :cond_4

    .line 1698
    const/4 v0, 0x1

    goto/16 :goto_0
.end method

.method public startScrollSelected(Z)V
    .locals 1
    .param p1, "up"    # Z

    .prologue
    .line 1651
    iput-boolean p1, p0, Lflyme/support/v7/widget/MzRecyclerView$ScrollSelectionRunnable;->mUpSelect:Z

    .line 1652
    const/4 v0, 0x1

    iput-boolean v0, p0, Lflyme/support/v7/widget/MzRecyclerView$ScrollSelectionRunnable;->mStart:Z

    .line 1653
    iget-object v0, p0, Lflyme/support/v7/widget/MzRecyclerView$ScrollSelectionRunnable;->this$0:Lflyme/support/v7/widget/MzRecyclerView;

    invoke-virtual {v0, p0}, Lflyme/support/v7/widget/MzRecyclerView;->post(Ljava/lang/Runnable;)Z

    .line 1654
    return-void
.end method
