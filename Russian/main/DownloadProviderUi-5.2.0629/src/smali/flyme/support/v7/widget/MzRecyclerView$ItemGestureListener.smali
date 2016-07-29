.class Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "MzRecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lflyme/support/v7/widget/MzRecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ItemGestureListener"
.end annotation


# instance fields
.field private clickView:Landroid/view/View;

.field private isTapDown:Z

.field final synthetic this$0:Lflyme/support/v7/widget/MzRecyclerView;


# direct methods
.method private constructor <init>(Lflyme/support/v7/widget/MzRecyclerView;)V
    .locals 1

    .prologue
    .line 482
    iput-object p1, p0, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;->this$0:Lflyme/support/v7/widget/MzRecyclerView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    .line 484
    const/4 v0, 0x0

    iput-boolean v0, p0, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;->isTapDown:Z

    return-void
.end method

.method synthetic constructor <init>(Lflyme/support/v7/widget/MzRecyclerView;Lflyme/support/v7/widget/MzRecyclerView$1;)V
    .locals 0
    .param p1, "x0"    # Lflyme/support/v7/widget/MzRecyclerView;
    .param p2, "x1"    # Lflyme/support/v7/widget/MzRecyclerView$1;

    .prologue
    .line 482
    invoke-direct {p0, p1}, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;-><init>(Lflyme/support/v7/widget/MzRecyclerView;)V

    return-void
.end method

.method static synthetic access$1100(Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;

    .prologue
    .line 482
    iget-object v0, p0, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;->clickView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1102(Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;Landroid/view/View;)Landroid/view/View;
    .locals 0
    .param p0, "x0"    # Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 482
    iput-object p1, p0, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;->clickView:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$1200(Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;Lflyme/support/v7/widget/RecyclerView;Landroid/view/View;IJ)Z
    .locals 2
    .param p0, "x0"    # Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;
    .param p1, "x1"    # Lflyme/support/v7/widget/RecyclerView;
    .param p2, "x2"    # Landroid/view/View;
    .param p3, "x3"    # I
    .param p4, "x4"    # J

    .prologue
    .line 482
    invoke-direct/range {p0 .. p5}, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;->performItemClick(Lflyme/support/v7/widget/RecyclerView;Landroid/view/View;IJ)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1302(Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;Z)Z
    .locals 0
    .param p0, "x0"    # Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;
    .param p1, "x1"    # Z

    .prologue
    .line 482
    iput-boolean p1, p0, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;->isTapDown:Z

    return p1
.end method

.method private performItemClick(Lflyme/support/v7/widget/RecyclerView;Landroid/view/View;IJ)Z
    .locals 12
    .param p1, "recyclerView"    # Lflyme/support/v7/widget/RecyclerView;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .prologue
    .line 702
    const/4 v10, 0x0

    .line 703
    .local v10, "handled":Z
    const/4 v9, 0x1

    .line 705
    .local v9, "dispatchItemClick":Z
    iget-object v0, p0, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;->this$0:Lflyme/support/v7/widget/MzRecyclerView;

    iget v0, v0, Lflyme/support/v7/widget/MzRecyclerView;->mChoiceMode:I

    if-eqz v0, :cond_4

    .line 713
    const/4 v10, 0x1

    .line 714
    const/4 v8, 0x0

    .line 716
    .local v8, "checkedStateChanged":Z
    iget-object v0, p0, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;->this$0:Lflyme/support/v7/widget/MzRecyclerView;

    iget v0, v0, Lflyme/support/v7/widget/MzRecyclerView;->mChoiceMode:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;->this$0:Lflyme/support/v7/widget/MzRecyclerView;

    iget v0, v0, Lflyme/support/v7/widget/MzRecyclerView;->mChoiceMode:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_3

    :cond_0
    iget-object v0, p0, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;->this$0:Lflyme/support/v7/widget/MzRecyclerView;

    iget-object v0, v0, Lflyme/support/v7/widget/MzRecyclerView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_3

    .line 718
    iget-object v0, p0, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;->this$0:Lflyme/support/v7/widget/MzRecyclerView;

    iget-object v0, v0, Lflyme/support/v7/widget/MzRecyclerView;->mCheckStates:Landroid/util/SparseBooleanArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p3, v1}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v0

    if-nez v0, :cond_6

    const/4 v6, 0x1

    .line 719
    .local v6, "checked":Z
    :goto_0
    iget-object v0, p0, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;->this$0:Lflyme/support/v7/widget/MzRecyclerView;

    iget-object v0, v0, Lflyme/support/v7/widget/MzRecyclerView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p3, v6}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 720
    invoke-virtual {p1}, Lflyme/support/v7/widget/RecyclerView;->getAdapter()Lflyme/support/v7/widget/RecyclerView$Adapter;

    move-result-object v7

    .line 721
    .local v7, "adapter":Lflyme/support/v7/widget/RecyclerView$Adapter;
    iget-object v0, p0, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;->this$0:Lflyme/support/v7/widget/MzRecyclerView;

    iget-object v0, v0, Lflyme/support/v7/widget/MzRecyclerView;->mCheckedIdStates:Landroid/support/v4/util/LongSparseArray;

    if-eqz v0, :cond_1

    invoke-virtual {v7}, Lflyme/support/v7/widget/RecyclerView$Adapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 722
    if-eqz v6, :cond_7

    .line 723
    iget-object v0, p0, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;->this$0:Lflyme/support/v7/widget/MzRecyclerView;

    iget-object v0, v0, Lflyme/support/v7/widget/MzRecyclerView;->mCheckedIdStates:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v7, p3}, Lflyme/support/v7/widget/RecyclerView$Adapter;->getItemId(I)J

    move-result-wide v2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v2, v3, v1}, Landroid/support/v4/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 728
    :cond_1
    :goto_1
    if-eqz v6, :cond_8

    .line 729
    iget-object v0, p0, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;->this$0:Lflyme/support/v7/widget/MzRecyclerView;

    iget v1, v0, Lflyme/support/v7/widget/MzRecyclerView;->mCheckedItemCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lflyme/support/v7/widget/MzRecyclerView;->mCheckedItemCount:I

    .line 733
    :goto_2
    iget-object v0, p0, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;->this$0:Lflyme/support/v7/widget/MzRecyclerView;

    iget-object v0, v0, Lflyme/support/v7/widget/MzRecyclerView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_2

    .line 734
    iget-object v0, p0, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;->this$0:Lflyme/support/v7/widget/MzRecyclerView;

    iget-object v1, v0, Lflyme/support/v7/widget/MzRecyclerView;->mMultiChoiceModeCallback:Lflyme/support/v7/widget/MzRecyclerView$MultiChoiceModeWrapper;

    iget-object v0, p0, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;->this$0:Lflyme/support/v7/widget/MzRecyclerView;

    iget-object v2, v0, Lflyme/support/v7/widget/MzRecyclerView;->mChoiceActionMode:Landroid/view/ActionMode;

    move v3, p3

    move-wide/from16 v4, p4

    invoke-virtual/range {v1 .. v6}, Lflyme/support/v7/widget/MzRecyclerView$MultiChoiceModeWrapper;->onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V

    .line 736
    const/4 v9, 0x0

    .line 738
    :cond_2
    const/4 v8, 0x1

    .line 741
    .end local v6    # "checked":Z
    .end local v7    # "adapter":Lflyme/support/v7/widget/RecyclerView$Adapter;
    :cond_3
    if-eqz v8, :cond_4

    .line 742
    iget-object v0, p0, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;->this$0:Lflyme/support/v7/widget/MzRecyclerView;

    # invokes: Lflyme/support/v7/widget/MzRecyclerView;->updateOnScreenCheckedViews()V
    invoke-static {v0}, Lflyme/support/v7/widget/MzRecyclerView;->access$1700(Lflyme/support/v7/widget/MzRecyclerView;)V

    .line 746
    .end local v8    # "checkedStateChanged":Z
    :cond_4
    if-eqz v9, :cond_5

    .line 747
    iget-object v0, p0, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;->this$0:Lflyme/support/v7/widget/MzRecyclerView;

    # getter for: Lflyme/support/v7/widget/MzRecyclerView;->mOnItemClickListener:Lflyme/support/v7/widget/MzRecyclerView$OnItemClickListener;
    invoke-static {v0}, Lflyme/support/v7/widget/MzRecyclerView;->access$1000(Lflyme/support/v7/widget/MzRecyclerView;)Lflyme/support/v7/widget/MzRecyclerView$OnItemClickListener;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 748
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lflyme/support/v7/widget/RecyclerView;->playSoundEffect(I)V

    .line 749
    iget-object v0, p0, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;->this$0:Lflyme/support/v7/widget/MzRecyclerView;

    # getter for: Lflyme/support/v7/widget/MzRecyclerView;->mOnItemClickListener:Lflyme/support/v7/widget/MzRecyclerView$OnItemClickListener;
    invoke-static {v0}, Lflyme/support/v7/widget/MzRecyclerView;->access$1000(Lflyme/support/v7/widget/MzRecyclerView;)Lflyme/support/v7/widget/MzRecyclerView$OnItemClickListener;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide/from16 v4, p4

    invoke-interface/range {v0 .. v5}, Lflyme/support/v7/widget/MzRecyclerView$OnItemClickListener;->onItemClick(Lflyme/support/v7/widget/RecyclerView;Landroid/view/View;IJ)V

    .line 750
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 751
    const/4 v10, 0x1

    .line 755
    :cond_5
    return v10

    .line 718
    .restart local v8    # "checkedStateChanged":Z
    :cond_6
    const/4 v6, 0x0

    goto :goto_0

    .line 725
    .restart local v6    # "checked":Z
    .restart local v7    # "adapter":Lflyme/support/v7/widget/RecyclerView$Adapter;
    :cond_7
    iget-object v0, p0, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;->this$0:Lflyme/support/v7/widget/MzRecyclerView;

    iget-object v0, v0, Lflyme/support/v7/widget/MzRecyclerView;->mCheckedIdStates:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v7, p3}, Lflyme/support/v7/widget/RecyclerView$Adapter;->getItemId(I)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/support/v4/util/LongSparseArray;->delete(J)V

    goto :goto_1

    .line 731
    :cond_8
    iget-object v0, p0, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;->this$0:Lflyme/support/v7/widget/MzRecyclerView;

    iget v1, v0, Lflyme/support/v7/widget/MzRecyclerView;->mCheckedItemCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lflyme/support/v7/widget/MzRecyclerView;->mCheckedItemCount:I

    goto :goto_2
.end method

.method private performLongPress(Lflyme/support/v7/widget/RecyclerView;IJ)Z
    .locals 9
    .param p1, "recyclerView"    # Lflyme/support/v7/widget/RecyclerView;
    .param p2, "longPressPosition"    # I
    .param p3, "longPressId"    # J

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 760
    iget-object v0, p0, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;->this$0:Lflyme/support/v7/widget/MzRecyclerView;

    iget v0, v0, Lflyme/support/v7/widget/MzRecyclerView;->mChoiceMode:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;->this$0:Lflyme/support/v7/widget/MzRecyclerView;

    iget v0, v0, Lflyme/support/v7/widget/MzRecyclerView;->mChoiceMode:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_2

    .line 761
    :cond_0
    iget-object v0, p0, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;->this$0:Lflyme/support/v7/widget/MzRecyclerView;

    iget-object v0, v0, Lflyme/support/v7/widget/MzRecyclerView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-nez v0, :cond_1

    iget-object v0, p0, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;->this$0:Lflyme/support/v7/widget/MzRecyclerView;

    iget-object v1, p0, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;->this$0:Lflyme/support/v7/widget/MzRecyclerView;

    iget-object v1, v1, Lflyme/support/v7/widget/MzRecyclerView;->mMultiChoiceModeCallback:Lflyme/support/v7/widget/MzRecyclerView$MultiChoiceModeWrapper;

    invoke-virtual {p1, v1}, Lflyme/support/v7/widget/RecyclerView;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v1

    iput-object v1, v0, Lflyme/support/v7/widget/MzRecyclerView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v1, :cond_1

    .line 763
    iget-object v0, p0, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;->this$0:Lflyme/support/v7/widget/MzRecyclerView;

    invoke-virtual {v0, p2, v6}, Lflyme/support/v7/widget/MzRecyclerView;->setItemChecked(IZ)V

    .line 764
    invoke-virtual {p1, v7}, Lflyme/support/v7/widget/RecyclerView;->performHapticFeedback(I)Z

    .line 765
    iget-object v0, p0, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;->this$0:Lflyme/support/v7/widget/MzRecyclerView;

    # invokes: Lflyme/support/v7/widget/MzRecyclerView;->updateOnScreenCheckedViews()V
    invoke-static {v0}, Lflyme/support/v7/widget/MzRecyclerView;->access$1700(Lflyme/support/v7/widget/MzRecyclerView;)V

    .line 782
    :cond_1
    :goto_0
    return v6

    .line 770
    :cond_2
    const/4 v6, 0x0

    .line 771
    .local v6, "handled":Z
    iget-object v0, p0, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;->this$0:Lflyme/support/v7/widget/MzRecyclerView;

    # getter for: Lflyme/support/v7/widget/MzRecyclerView;->mOnItemLongClickListener:Lflyme/support/v7/widget/MzRecyclerView$OnItemLongClickListener;
    invoke-static {v0}, Lflyme/support/v7/widget/MzRecyclerView;->access$1800(Lflyme/support/v7/widget/MzRecyclerView;)Lflyme/support/v7/widget/MzRecyclerView$OnItemLongClickListener;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 772
    iget-object v0, p0, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;->this$0:Lflyme/support/v7/widget/MzRecyclerView;

    # getter for: Lflyme/support/v7/widget/MzRecyclerView;->mOnItemLongClickListener:Lflyme/support/v7/widget/MzRecyclerView$OnItemLongClickListener;
    invoke-static {v0}, Lflyme/support/v7/widget/MzRecyclerView;->access$1800(Lflyme/support/v7/widget/MzRecyclerView;)Lflyme/support/v7/widget/MzRecyclerView$OnItemLongClickListener;

    move-result-object v0

    iget-object v2, p0, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;->clickView:Landroid/view/View;

    move-object v1, p1

    move v3, p2

    move-wide v4, p3

    invoke-interface/range {v0 .. v5}, Lflyme/support/v7/widget/MzRecyclerView$OnItemLongClickListener;->onItemLongClick(Lflyme/support/v7/widget/RecyclerView;Landroid/view/View;IJ)Z

    move-result v6

    .line 774
    :cond_3
    if-eqz v6, :cond_4

    .line 775
    invoke-virtual {p1, v7}, Lflyme/support/v7/widget/RecyclerView;->performHapticFeedback(I)Z

    .line 778
    :cond_4
    iget-object v0, p0, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;->this$0:Lflyme/support/v7/widget/MzRecyclerView;

    # getter for: Lflyme/support/v7/widget/MzRecyclerView;->mEnableDragSelection:Z
    invoke-static {v0}, Lflyme/support/v7/widget/MzRecyclerView;->access$200(Lflyme/support/v7/widget/MzRecyclerView;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 779
    iget-object v0, p0, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;->this$0:Lflyme/support/v7/widget/MzRecyclerView;

    # setter for: Lflyme/support/v7/widget/MzRecyclerView;->mLongPressPosition:I
    invoke-static {v0, p2}, Lflyme/support/v7/widget/MzRecyclerView;->access$1902(Lflyme/support/v7/widget/MzRecyclerView;I)I

    goto :goto_0
.end method


# virtual methods
.method public onCancel()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 691
    iget-object v0, p0, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;->this$0:Lflyme/support/v7/widget/MzRecyclerView;

    # invokes: Lflyme/support/v7/widget/MzRecyclerView;->endDragSelection()V
    invoke-static {v0}, Lflyme/support/v7/widget/MzRecyclerView;->access$1500(Lflyme/support/v7/widget/MzRecyclerView;)V

    .line 693
    iget-object v0, p0, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;->this$0:Lflyme/support/v7/widget/MzRecyclerView;

    const/4 v1, -0x1

    iput v1, v0, Lflyme/support/v7/widget/MzRecyclerView;->mTouchMode:I

    .line 694
    iget-object v0, p0, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;->this$0:Lflyme/support/v7/widget/MzRecyclerView;

    invoke-virtual {v0, v2}, Lflyme/support/v7/widget/MzRecyclerView;->setScrollState(I)V

    .line 695
    iget-object v0, p0, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;->clickView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 696
    iget-object v0, p0, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;->clickView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setPressed(Z)V

    .line 698
    :cond_0
    iget-object v0, p0, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;->this$0:Lflyme/support/v7/widget/MzRecyclerView;

    invoke-virtual {v0, v2}, Lflyme/support/v7/widget/MzRecyclerView;->setPressed(Z)V

    .line 699
    return-void
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 8
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 501
    iget-object v5, p0, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;->this$0:Lflyme/support/v7/widget/MzRecyclerView;

    iget v5, v5, Lflyme/support/v7/widget/MzRecyclerView;->mTouchMode:I

    const/4 v6, 0x4

    if-ne v5, v6, :cond_0

    iget-object v5, p0, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;->this$0:Lflyme/support/v7/widget/MzRecyclerView;

    invoke-virtual {v5}, Lflyme/support/v7/widget/MzRecyclerView;->getScrollState()I

    move-result v5

    if-ne v5, v3, :cond_0

    .line 503
    iget-object v5, p0, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;->this$0:Lflyme/support/v7/widget/MzRecyclerView;

    const/4 v6, 0x3

    iput v6, v5, Lflyme/support/v7/widget/MzRecyclerView;->mTouchMode:I

    .line 520
    :goto_0
    iget-object v5, p0, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;->clickView:Landroid/view/View;

    if-eqz v5, :cond_2

    :goto_1
    return v3

    .line 505
    :cond_0
    iget-object v5, p0, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;->this$0:Lflyme/support/v7/widget/MzRecyclerView;

    iput v4, v5, Lflyme/support/v7/widget/MzRecyclerView;->mTouchMode:I

    .line 506
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v1, v5

    .line 507
    .local v1, "dragMotionY":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    float-to-int v0, v5

    .line 508
    .local v0, "dragMotionX":I
    iget-object v5, p0, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;->this$0:Lflyme/support/v7/widget/MzRecyclerView;

    iget-object v2, v5, Lflyme/support/v7/widget/MzRecyclerView;->mCheckRegionRect:Landroid/graphics/Rect;

    .line 509
    .local v2, "dragRegion":Landroid/graphics/Rect;
    iget-object v5, p0, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;->this$0:Lflyme/support/v7/widget/MzRecyclerView;

    iget-object v5, v5, Lflyme/support/v7/widget/MzRecyclerView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;->this$0:Lflyme/support/v7/widget/MzRecyclerView;

    # getter for: Lflyme/support/v7/widget/MzRecyclerView;->mEnableDragSelection:Z
    invoke-static {v5}, Lflyme/support/v7/widget/MzRecyclerView;->access$200(Lflyme/support/v7/widget/MzRecyclerView;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;->this$0:Lflyme/support/v7/widget/MzRecyclerView;

    # getter for: Lflyme/support/v7/widget/MzRecyclerView;->mIsBeginDragSelect:Z
    invoke-static {v5}, Lflyme/support/v7/widget/MzRecyclerView;->access$300(Lflyme/support/v7/widget/MzRecyclerView;)Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, p0, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;->this$0:Lflyme/support/v7/widget/MzRecyclerView;

    invoke-virtual {v5}, Lflyme/support/v7/widget/MzRecyclerView;->getScrollState()I

    move-result v5

    if-nez v5, :cond_1

    iget v5, v2, Landroid/graphics/Rect;->left:I

    if-lt v0, v5, :cond_1

    iget v5, v2, Landroid/graphics/Rect;->right:I

    if-gt v0, v5, :cond_1

    .line 511
    iget-object v5, p0, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;->this$0:Lflyme/support/v7/widget/MzRecyclerView;

    # invokes: Lflyme/support/v7/widget/MzRecyclerView;->onDragMotionChanged(I)Z
    invoke-static {v5, v1}, Lflyme/support/v7/widget/MzRecyclerView;->access$400(Lflyme/support/v7/widget/MzRecyclerView;I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 512
    iget-object v5, p0, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;->this$0:Lflyme/support/v7/widget/MzRecyclerView;

    # setter for: Lflyme/support/v7/widget/MzRecyclerView;->mDragMotionY:I
    invoke-static {v5, v1}, Lflyme/support/v7/widget/MzRecyclerView;->access$502(Lflyme/support/v7/widget/MzRecyclerView;I)I

    .line 516
    :cond_1
    iput-boolean v3, p0, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;->isTapDown:Z

    .line 517
    iget-object v5, p0, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;->this$0:Lflyme/support/v7/widget/MzRecyclerView;

    int-to-float v6, v0

    int-to-float v7, v1

    invoke-virtual {v5, v6, v7}, Lflyme/support/v7/widget/MzRecyclerView;->findChildViewUnder(FF)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;->clickView:Landroid/view/View;

    goto :goto_0

    .end local v0    # "dragMotionX":I
    .end local v1    # "dragMotionY":I
    .end local v2    # "dragRegion":Landroid/graphics/Rect;
    :cond_2
    move v3, v4

    .line 520
    goto :goto_1
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 2
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "velocityX"    # F
    .param p4, "velocityY"    # F

    .prologue
    .line 547
    const/4 v0, 0x0

    iput-boolean v0, p0, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;->isTapDown:Z

    .line 548
    iget-object v0, p0, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;->this$0:Lflyme/support/v7/widget/MzRecyclerView;

    iget v0, v0, Lflyme/support/v7/widget/MzRecyclerView;->mTouchMode:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 549
    iget-object v0, p0, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;->this$0:Lflyme/support/v7/widget/MzRecyclerView;

    const/4 v1, 0x4

    iput v1, v0, Lflyme/support/v7/widget/MzRecyclerView;->mTouchMode:I

    .line 551
    :cond_0
    iget-object v0, p0, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;->this$0:Lflyme/support/v7/widget/MzRecyclerView;

    iget-object v0, v0, Lflyme/support/v7/widget/MzRecyclerView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 552
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v0

    return v0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 8
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x0

    .line 557
    iput-boolean v6, p0, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;->isTapDown:Z

    .line 559
    iget-object v3, p0, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;->this$0:Lflyme/support/v7/widget/MzRecyclerView;

    iget v3, v3, Lflyme/support/v7/widget/MzRecyclerView;->mTouchMode:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    .line 590
    :goto_0
    return-void

    .line 560
    :cond_0
    iget-object v3, p0, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;->this$0:Lflyme/support/v7/widget/MzRecyclerView;

    invoke-virtual {v3}, Lflyme/support/v7/widget/MzRecyclerView;->isLongClickable()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;->this$0:Lflyme/support/v7/widget/MzRecyclerView;

    iget v3, v3, Lflyme/support/v7/widget/MzRecyclerView;->mTouchMode:I

    if-eqz v3, :cond_2

    .line 561
    :cond_1
    iget-object v3, p0, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;->this$0:Lflyme/support/v7/widget/MzRecyclerView;

    iput v7, v3, Lflyme/support/v7/widget/MzRecyclerView;->mTouchMode:I

    goto :goto_0

    .line 565
    :cond_2
    const/4 v0, 0x0

    .line 566
    .local v0, "handled":Z
    iget-object v3, p0, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;->this$0:Lflyme/support/v7/widget/MzRecyclerView;

    iput v7, v3, Lflyme/support/v7/widget/MzRecyclerView;->mTouchMode:I

    .line 571
    iget-object v3, p0, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;->clickView:Landroid/view/View;

    if-eqz v3, :cond_4

    .line 572
    iget-object v3, p0, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;->this$0:Lflyme/support/v7/widget/MzRecyclerView;

    iget-object v4, p0, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;->clickView:Landroid/view/View;

    # invokes: Lflyme/support/v7/widget/MzRecyclerView;->getChildPositionExt(Landroid/view/View;)I
    invoke-static {v3, v4}, Lflyme/support/v7/widget/MzRecyclerView;->access$700(Lflyme/support/v7/widget/MzRecyclerView;Landroid/view/View;)I

    move-result v2

    .line 573
    .local v2, "position":I
    if-ltz v2, :cond_4

    iget-object v3, p0, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;->this$0:Lflyme/support/v7/widget/MzRecyclerView;

    # getter for: Lflyme/support/v7/widget/MzRecyclerView;->mItemFilter:Lflyme/support/v7/widget/MzRecyclerView$ItemFilter;
    invoke-static {v3}, Lflyme/support/v7/widget/MzRecyclerView;->access$800(Lflyme/support/v7/widget/MzRecyclerView;)Lflyme/support/v7/widget/MzRecyclerView$ItemFilter;

    move-result-object v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;->this$0:Lflyme/support/v7/widget/MzRecyclerView;

    # getter for: Lflyme/support/v7/widget/MzRecyclerView;->mItemFilter:Lflyme/support/v7/widget/MzRecyclerView$ItemFilter;
    invoke-static {v3}, Lflyme/support/v7/widget/MzRecyclerView;->access$800(Lflyme/support/v7/widget/MzRecyclerView;)Lflyme/support/v7/widget/MzRecyclerView$ItemFilter;

    move-result-object v3

    invoke-interface {v3, v2}, Lflyme/support/v7/widget/MzRecyclerView$ItemFilter;->isLongPressForItem(I)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 574
    :cond_3
    iget-object v3, p0, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;->this$0:Lflyme/support/v7/widget/MzRecyclerView;

    invoke-virtual {v3}, Lflyme/support/v7/widget/MzRecyclerView;->getAdapter()Lflyme/support/v7/widget/RecyclerView$Adapter;

    move-result-object v3

    invoke-virtual {v3, v2}, Lflyme/support/v7/widget/RecyclerView$Adapter;->getItemId(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 575
    .local v1, "id":Ljava/lang/Long;
    iget-object v3, p0, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;->this$0:Lflyme/support/v7/widget/MzRecyclerView;

    invoke-virtual {v3}, Lflyme/support/v7/widget/MzRecyclerView;->getAdapter()Lflyme/support/v7/widget/RecyclerView$Adapter;

    move-result-object v3

    invoke-virtual {v3, v2}, Lflyme/support/v7/widget/RecyclerView$Adapter;->isEnabled(I)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;->this$0:Lflyme/support/v7/widget/MzRecyclerView;

    iget-object v3, v3, Lflyme/support/v7/widget/MzRecyclerView;->mState:Lflyme/support/v7/widget/RecyclerView$State;

    invoke-virtual {v3}, Lflyme/support/v7/widget/RecyclerView$State;->didStructureChange()Z

    move-result v3

    if-nez v3, :cond_4

    .line 576
    iget-object v3, p0, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;->this$0:Lflyme/support/v7/widget/MzRecyclerView;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-direct {p0, v3, v2, v4, v5}, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;->performLongPress(Lflyme/support/v7/widget/RecyclerView;IJ)Z

    move-result v0

    .line 581
    .end local v1    # "id":Ljava/lang/Long;
    .end local v2    # "position":I
    :cond_4
    if-eqz v0, :cond_5

    .line 582
    iget-object v3, p0, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;->this$0:Lflyme/support/v7/widget/MzRecyclerView;

    invoke-virtual {v3, v6}, Lflyme/support/v7/widget/MzRecyclerView;->setPressed(Z)V

    .line 583
    iget-object v3, p0, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;->clickView:Landroid/view/View;

    invoke-virtual {v3, v6}, Landroid/view/View;->setPressed(Z)V

    .line 584
    const/4 v3, 0x0

    iput-object v3, p0, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;->clickView:Landroid/view/View;

    .line 585
    iget-object v3, p0, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;->this$0:Lflyme/support/v7/widget/MzRecyclerView;

    iget-object v3, v3, Lflyme/support/v7/widget/MzRecyclerView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->setEmpty()V

    .line 586
    iget-object v3, p0, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;->this$0:Lflyme/support/v7/widget/MzRecyclerView;

    const/4 v4, -0x1

    iput v4, v3, Lflyme/support/v7/widget/MzRecyclerView;->mTouchMode:I

    goto/16 :goto_0

    .line 588
    :cond_5
    iget-object v3, p0, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;->this$0:Lflyme/support/v7/widget/MzRecyclerView;

    iput v7, v3, Lflyme/support/v7/widget/MzRecyclerView;->mTouchMode:I

    goto/16 :goto_0
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "distanceX"    # F
    .param p4, "distanceY"    # F

    .prologue
    .line 595
    const/4 v0, 0x0

    iput-boolean v0, p0, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;->isTapDown:Z

    .line 597
    invoke-virtual {p0}, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;->startScrolled()V

    .line 599
    iget-object v0, p0, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;->this$0:Lflyme/support/v7/widget/MzRecyclerView;

    # invokes: Lflyme/support/v7/widget/MzRecyclerView;->startDragSelection(Landroid/view/MotionEvent;)Z
    invoke-static {v0, p2}, Lflyme/support/v7/widget/MzRecyclerView;->access$900(Lflyme/support/v7/widget/MzRecyclerView;Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 600
    const/4 v0, 0x1

    .line 603
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v0

    goto :goto_0
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 5
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 526
    iget-object v1, p0, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;->this$0:Lflyme/support/v7/widget/MzRecyclerView;

    iget v1, v1, Lflyme/support/v7/widget/MzRecyclerView;->mTouchMode:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 542
    :goto_0
    return-void

    .line 527
    :cond_0
    iget-object v1, p0, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;->clickView:Landroid/view/View;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;->this$0:Lflyme/support/v7/widget/MzRecyclerView;

    # getter for: Lflyme/support/v7/widget/MzRecyclerView;->mInCheckRegion:Z
    invoke-static {v1}, Lflyme/support/v7/widget/MzRecyclerView;->access$600(Lflyme/support/v7/widget/MzRecyclerView;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 528
    iget-object v1, p0, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;->this$0:Lflyme/support/v7/widget/MzRecyclerView;

    iget-object v2, p0, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;->clickView:Landroid/view/View;

    # invokes: Lflyme/support/v7/widget/MzRecyclerView;->getChildPositionExt(Landroid/view/View;)I
    invoke-static {v1, v2}, Lflyme/support/v7/widget/MzRecyclerView;->access$700(Lflyme/support/v7/widget/MzRecyclerView;Landroid/view/View;)I

    move-result v0

    .line 529
    .local v0, "position":I
    if-ltz v0, :cond_1

    iget-object v1, p0, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;->this$0:Lflyme/support/v7/widget/MzRecyclerView;

    invoke-virtual {v1}, Lflyme/support/v7/widget/MzRecyclerView;->getAdapter()Lflyme/support/v7/widget/RecyclerView$Adapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lflyme/support/v7/widget/RecyclerView$Adapter;->isEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 530
    iget-object v1, p0, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;->this$0:Lflyme/support/v7/widget/MzRecyclerView;

    invoke-virtual {v1, v3}, Lflyme/support/v7/widget/MzRecyclerView;->setPressed(Z)V

    .line 531
    iget-object v1, p0, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;->clickView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setPressed(Z)V

    .line 532
    iget-object v1, p0, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;->this$0:Lflyme/support/v7/widget/MzRecyclerView;

    iget-object v2, p0, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;->this$0:Lflyme/support/v7/widget/MzRecyclerView;

    iget-object v3, p0, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;->clickView:Landroid/view/View;

    invoke-virtual {v2, v3}, Lflyme/support/v7/widget/MzRecyclerView;->getChildLayoutPosition(Landroid/view/View;)I

    move-result v2

    iget-object v3, p0, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;->clickView:Landroid/view/View;

    invoke-virtual {v1, v2, v3}, Lflyme/support/v7/widget/MzRecyclerView;->positionSelector(ILandroid/view/View;)V

    .line 533
    iget-object v1, p0, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;->this$0:Lflyme/support/v7/widget/MzRecyclerView;

    iget-object v1, v1, Lflyme/support/v7/widget/MzRecyclerView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    .line 534
    iget-object v1, p0, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;->this$0:Lflyme/support/v7/widget/MzRecyclerView;

    iget-boolean v1, v1, Lflyme/support/v7/widget/MzRecyclerView;->mIsSdkVersion21:Z

    if-eqz v1, :cond_1

    .line 535
    iget-object v1, p0, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;->this$0:Lflyme/support/v7/widget/MzRecyclerView;

    iget-object v1, v1, Lflyme/support/v7/widget/MzRecyclerView;->mSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    .line 540
    .end local v0    # "position":I
    :cond_1
    iput-boolean v4, p0, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;->isTapDown:Z

    .line 541
    iget-object v1, p0, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;->this$0:Lflyme/support/v7/widget/MzRecyclerView;

    iput v4, v1, Lflyme/support/v7/widget/MzRecyclerView;->mTouchMode:I

    goto :goto_0
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v5, 0x1

    .line 618
    const/4 v0, 0x0

    .line 619
    .local v0, "handled":Z
    iget-object v2, p0, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;->clickView:Landroid/view/View;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;->this$0:Lflyme/support/v7/widget/MzRecyclerView;

    iget-object v2, v2, Lflyme/support/v7/widget/MzRecyclerView;->mState:Lflyme/support/v7/widget/RecyclerView$State;

    invoke-virtual {v2}, Lflyme/support/v7/widget/RecyclerView$State;->didStructureChange()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;->this$0:Lflyme/support/v7/widget/MzRecyclerView;

    iget v2, v2, Lflyme/support/v7/widget/MzRecyclerView;->mTouchMode:I

    if-nez v2, :cond_2

    iget-object v2, p0, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;->this$0:Lflyme/support/v7/widget/MzRecyclerView;

    invoke-virtual {v2}, Lflyme/support/v7/widget/MzRecyclerView;->getAdapter()Lflyme/support/v7/widget/RecyclerView$Adapter;

    move-result-object v2

    iget-object v3, p0, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;->this$0:Lflyme/support/v7/widget/MzRecyclerView;

    iget-object v4, p0, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;->clickView:Landroid/view/View;

    invoke-virtual {v3, v4}, Lflyme/support/v7/widget/MzRecyclerView;->getChildLayoutPosition(Landroid/view/View;)I

    move-result v3

    invoke-virtual {v2, v3}, Lflyme/support/v7/widget/RecyclerView$Adapter;->isEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 620
    iget-boolean v2, p0, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;->isTapDown:Z

    if-eqz v2, :cond_3

    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v1

    .line 623
    .local v1, "time":I
    :goto_0
    iget-boolean v2, p0, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;->isTapDown:Z

    if-eqz v2, :cond_0

    .line 624
    iget-object v2, p0, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;->this$0:Lflyme/support/v7/widget/MzRecyclerView;

    invoke-virtual {v2, v5}, Lflyme/support/v7/widget/MzRecyclerView;->setPressed(Z)V

    .line 625
    iget-object v2, p0, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;->clickView:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setPressed(Z)V

    .line 626
    iget-object v2, p0, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;->this$0:Lflyme/support/v7/widget/MzRecyclerView;

    iget-object v3, p0, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;->this$0:Lflyme/support/v7/widget/MzRecyclerView;

    iget-object v4, p0, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;->clickView:Landroid/view/View;

    invoke-virtual {v3, v4}, Lflyme/support/v7/widget/MzRecyclerView;->getChildLayoutPosition(Landroid/view/View;)I

    move-result v3

    iget-object v4, p0, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;->clickView:Landroid/view/View;

    invoke-virtual {v2, v3, v4}, Lflyme/support/v7/widget/MzRecyclerView;->positionSelector(ILandroid/view/View;)V

    .line 628
    iget-object v2, p0, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;->this$0:Lflyme/support/v7/widget/MzRecyclerView;

    iget-object v2, v2, Lflyme/support/v7/widget/MzRecyclerView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    .line 629
    iget-object v2, p0, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;->this$0:Lflyme/support/v7/widget/MzRecyclerView;

    iget-boolean v2, v2, Lflyme/support/v7/widget/MzRecyclerView;->mIsSdkVersion21:Z

    if-eqz v2, :cond_0

    .line 630
    iget-object v2, p0, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;->this$0:Lflyme/support/v7/widget/MzRecyclerView;

    iget-object v2, v2, Lflyme/support/v7/widget/MzRecyclerView;->mSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    .line 635
    :cond_0
    iget-object v2, p0, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;->this$0:Lflyme/support/v7/widget/MzRecyclerView;

    # getter for: Lflyme/support/v7/widget/MzRecyclerView;->mOnItemClickListener:Lflyme/support/v7/widget/MzRecyclerView$OnItemClickListener;
    invoke-static {v2}, Lflyme/support/v7/widget/MzRecyclerView;->access$1000(Lflyme/support/v7/widget/MzRecyclerView;)Lflyme/support/v7/widget/MzRecyclerView$OnItemClickListener;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 636
    const/4 v0, 0x1

    .line 639
    :cond_1
    iget-object v2, p0, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;->this$0:Lflyme/support/v7/widget/MzRecyclerView;

    new-instance v3, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener$1;

    invoke-direct {v3, p0}, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener$1;-><init>(Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;)V

    int-to-long v4, v1

    invoke-virtual {v2, v3, v4, v5}, Lflyme/support/v7/widget/MzRecyclerView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 655
    iget-object v2, p0, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;->this$0:Lflyme/support/v7/widget/MzRecyclerView;

    const/4 v3, -0x1

    iput v3, v2, Lflyme/support/v7/widget/MzRecyclerView;->mTouchMode:I

    .line 657
    .end local v1    # "time":I
    :cond_2
    return v0

    .line 620
    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onUp()Z
    .locals 10

    .prologue
    const/4 v9, 0x2

    const/4 v1, 0x0

    const/4 v8, -0x1

    .line 661
    const/4 v6, 0x0

    .line 662
    .local v6, "handled":Z
    iget-object v0, p0, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;->clickView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;->isTapDown:Z

    if-nez v0, :cond_0

    .line 663
    iget-object v0, p0, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;->this$0:Lflyme/support/v7/widget/MzRecyclerView;

    invoke-virtual {v0, v1}, Lflyme/support/v7/widget/MzRecyclerView;->setPressed(Z)V

    .line 664
    iget-object v0, p0, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;->clickView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    .line 667
    :cond_0
    iget-object v0, p0, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;->this$0:Lflyme/support/v7/widget/MzRecyclerView;

    iget v0, v0, Lflyme/support/v7/widget/MzRecyclerView;->mTouchMode:I

    if-ne v0, v9, :cond_1

    .line 668
    iget-object v0, p0, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;->this$0:Lflyme/support/v7/widget/MzRecyclerView;

    iget-object v1, p0, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;->clickView:Landroid/view/View;

    # invokes: Lflyme/support/v7/widget/MzRecyclerView;->getChildPositionExt(Landroid/view/View;)I
    invoke-static {v0, v1}, Lflyme/support/v7/widget/MzRecyclerView;->access$700(Lflyme/support/v7/widget/MzRecyclerView;Landroid/view/View;)I

    move-result v3

    .line 669
    .local v3, "position":I
    if-ltz v3, :cond_1

    iget-object v0, p0, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;->this$0:Lflyme/support/v7/widget/MzRecyclerView;

    iget-object v0, v0, Lflyme/support/v7/widget/MzRecyclerView;->mState:Lflyme/support/v7/widget/RecyclerView$State;

    invoke-virtual {v0}, Lflyme/support/v7/widget/RecyclerView$State;->didStructureChange()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;->this$0:Lflyme/support/v7/widget/MzRecyclerView;

    invoke-virtual {v0}, Lflyme/support/v7/widget/MzRecyclerView;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;->this$0:Lflyme/support/v7/widget/MzRecyclerView;

    invoke-virtual {v0}, Lflyme/support/v7/widget/MzRecyclerView;->getAdapter()Lflyme/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    invoke-virtual {v0, v3}, Lflyme/support/v7/widget/RecyclerView$Adapter;->isEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 670
    iget-object v0, p0, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;->this$0:Lflyme/support/v7/widget/MzRecyclerView;

    invoke-virtual {v0}, Lflyme/support/v7/widget/MzRecyclerView;->getAdapter()Lflyme/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    invoke-virtual {v0, v3}, Lflyme/support/v7/widget/RecyclerView$Adapter;->getItemId(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    .line 671
    .local v7, "id":Ljava/lang/Long;
    iget-object v1, p0, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;->this$0:Lflyme/support/v7/widget/MzRecyclerView;

    iget-object v2, p0, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;->clickView:Landroid/view/View;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;->performItemClick(Lflyme/support/v7/widget/RecyclerView;Landroid/view/View;IJ)Z

    .line 675
    .end local v3    # "position":I
    .end local v7    # "id":Ljava/lang/Long;
    :cond_1
    iget-object v0, p0, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;->this$0:Lflyme/support/v7/widget/MzRecyclerView;

    # getter for: Lflyme/support/v7/widget/MzRecyclerView;->mIsBeginDragSelect:Z
    invoke-static {v0}, Lflyme/support/v7/widget/MzRecyclerView;->access$300(Lflyme/support/v7/widget/MzRecyclerView;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;->this$0:Lflyme/support/v7/widget/MzRecyclerView;

    # getter for: Lflyme/support/v7/widget/MzRecyclerView;->mDragDownPosition:I
    invoke-static {v0}, Lflyme/support/v7/widget/MzRecyclerView;->access$1400(Lflyme/support/v7/widget/MzRecyclerView;)I

    move-result v0

    if-eq v0, v8, :cond_2

    .line 676
    iget-object v0, p0, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;->this$0:Lflyme/support/v7/widget/MzRecyclerView;

    iget-object v1, p0, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;->this$0:Lflyme/support/v7/widget/MzRecyclerView;

    # getter for: Lflyme/support/v7/widget/MzRecyclerView;->mDragDownPosition:I
    invoke-static {v1}, Lflyme/support/v7/widget/MzRecyclerView;->access$1400(Lflyme/support/v7/widget/MzRecyclerView;)I

    move-result v1

    invoke-virtual {v0, v8, v1}, Lflyme/support/v7/widget/MzRecyclerView;->downSelect(II)V

    .line 679
    :cond_2
    iget-object v0, p0, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;->this$0:Lflyme/support/v7/widget/MzRecyclerView;

    # invokes: Lflyme/support/v7/widget/MzRecyclerView;->endDragSelection()V
    invoke-static {v0}, Lflyme/support/v7/widget/MzRecyclerView;->access$1500(Lflyme/support/v7/widget/MzRecyclerView;)V

    .line 681
    iget-object v0, p0, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;->this$0:Lflyme/support/v7/widget/MzRecyclerView;

    # getter for: Lflyme/support/v7/widget/MzRecyclerView;->mFlingRunnable:Lflyme/support/v7/widget/MzRecyclerView$FlingRunnable;
    invoke-static {v0}, Lflyme/support/v7/widget/MzRecyclerView;->access$1600(Lflyme/support/v7/widget/MzRecyclerView;)Lflyme/support/v7/widget/MzRecyclerView$FlingRunnable;

    move-result-object v0

    if-nez v0, :cond_3

    .line 682
    iget-object v0, p0, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;->this$0:Lflyme/support/v7/widget/MzRecyclerView;

    new-instance v1, Lflyme/support/v7/widget/MzRecyclerView$FlingRunnable;

    iget-object v2, p0, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;->this$0:Lflyme/support/v7/widget/MzRecyclerView;

    invoke-direct {v1, v2}, Lflyme/support/v7/widget/MzRecyclerView$FlingRunnable;-><init>(Lflyme/support/v7/widget/MzRecyclerView;)V

    # setter for: Lflyme/support/v7/widget/MzRecyclerView;->mFlingRunnable:Lflyme/support/v7/widget/MzRecyclerView$FlingRunnable;
    invoke-static {v0, v1}, Lflyme/support/v7/widget/MzRecyclerView;->access$1602(Lflyme/support/v7/widget/MzRecyclerView;Lflyme/support/v7/widget/MzRecyclerView$FlingRunnable;)Lflyme/support/v7/widget/MzRecyclerView$FlingRunnable;

    .line 684
    :cond_3
    iget-object v0, p0, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;->this$0:Lflyme/support/v7/widget/MzRecyclerView;

    iget v0, v0, Lflyme/support/v7/widget/MzRecyclerView;->mTouchMode:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_4

    iget-object v0, p0, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;->this$0:Lflyme/support/v7/widget/MzRecyclerView;

    iget v0, v0, Lflyme/support/v7/widget/MzRecyclerView;->mTouchMode:I

    if-eqz v0, :cond_4

    iget-object v0, p0, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;->this$0:Lflyme/support/v7/widget/MzRecyclerView;

    iget v0, v0, Lflyme/support/v7/widget/MzRecyclerView;->mTouchMode:I

    if-ne v0, v9, :cond_5

    .line 685
    :cond_4
    iget-object v0, p0, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;->this$0:Lflyme/support/v7/widget/MzRecyclerView;

    iput v8, v0, Lflyme/support/v7/widget/MzRecyclerView;->mTouchMode:I

    .line 687
    :cond_5
    return v6
.end method

.method public startScrolled()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 607
    iget-object v0, p0, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;->this$0:Lflyme/support/v7/widget/MzRecyclerView;

    invoke-virtual {v0, v1}, Lflyme/support/v7/widget/MzRecyclerView;->setPressed(Z)V

    .line 608
    iget-object v0, p0, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;->clickView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 609
    iget-object v0, p0, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;->clickView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    .line 611
    :cond_0
    iget-object v0, p0, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;->this$0:Lflyme/support/v7/widget/MzRecyclerView;

    iget-object v0, v0, Lflyme/support/v7/widget/MzRecyclerView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 613
    iget-object v0, p0, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;->this$0:Lflyme/support/v7/widget/MzRecyclerView;

    const/4 v1, 0x3

    iput v1, v0, Lflyme/support/v7/widget/MzRecyclerView;->mTouchMode:I

    .line 614
    return-void
.end method
