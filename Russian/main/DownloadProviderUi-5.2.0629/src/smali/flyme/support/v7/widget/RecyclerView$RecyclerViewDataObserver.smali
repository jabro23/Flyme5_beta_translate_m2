.class Lflyme/support/v7/widget/RecyclerView$RecyclerViewDataObserver;
.super Lflyme/support/v7/widget/RecyclerView$AdapterDataObserver;
.source "RecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lflyme/support/v7/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RecyclerViewDataObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lflyme/support/v7/widget/RecyclerView;


# direct methods
.method private constructor <init>(Lflyme/support/v7/widget/RecyclerView;)V
    .locals 0

    .prologue
    .line 4299
    iput-object p1, p0, Lflyme/support/v7/widget/RecyclerView$RecyclerViewDataObserver;->this$0:Lflyme/support/v7/widget/RecyclerView;

    invoke-direct {p0}, Lflyme/support/v7/widget/RecyclerView$AdapterDataObserver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lflyme/support/v7/widget/RecyclerView;Lflyme/support/v7/widget/RecyclerView$1;)V
    .locals 0
    .param p1, "x0"    # Lflyme/support/v7/widget/RecyclerView;
    .param p2, "x1"    # Lflyme/support/v7/widget/RecyclerView$1;

    .prologue
    .line 4299
    invoke-direct {p0, p1}, Lflyme/support/v7/widget/RecyclerView$RecyclerViewDataObserver;-><init>(Lflyme/support/v7/widget/RecyclerView;)V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 4302
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView$RecyclerViewDataObserver;->this$0:Lflyme/support/v7/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lflyme/support/v7/widget/RecyclerView;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 4303
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView$RecyclerViewDataObserver;->this$0:Lflyme/support/v7/widget/RecyclerView;

    # getter for: Lflyme/support/v7/widget/RecyclerView;->mAdapter:Lflyme/support/v7/widget/RecyclerView$Adapter;
    invoke-static {v0}, Lflyme/support/v7/widget/RecyclerView;->access$3100(Lflyme/support/v7/widget/RecyclerView;)Lflyme/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    invoke-virtual {v0}, Lflyme/support/v7/widget/RecyclerView$Adapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4307
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView$RecyclerViewDataObserver;->this$0:Lflyme/support/v7/widget/RecyclerView;

    iget-object v0, v0, Lflyme/support/v7/widget/RecyclerView;->mState:Lflyme/support/v7/widget/RecyclerView$State;

    # setter for: Lflyme/support/v7/widget/RecyclerView$State;->mStructureChanged:Z
    invoke-static {v0, v2}, Lflyme/support/v7/widget/RecyclerView$State;->access$1802(Lflyme/support/v7/widget/RecyclerView$State;Z)Z

    .line 4308
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView$RecyclerViewDataObserver;->this$0:Lflyme/support/v7/widget/RecyclerView;

    # invokes: Lflyme/support/v7/widget/RecyclerView;->setDataSetChangedAfterLayout()V
    invoke-static {v0}, Lflyme/support/v7/widget/RecyclerView;->access$3900(Lflyme/support/v7/widget/RecyclerView;)V

    .line 4313
    :goto_0
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView$RecyclerViewDataObserver;->this$0:Lflyme/support/v7/widget/RecyclerView;

    iget-object v0, v0, Lflyme/support/v7/widget/RecyclerView;->mAdapterHelper:Lflyme/support/v7/widget/AdapterHelper;

    invoke-virtual {v0}, Lflyme/support/v7/widget/AdapterHelper;->hasPendingUpdates()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4314
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView$RecyclerViewDataObserver;->this$0:Lflyme/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Lflyme/support/v7/widget/RecyclerView;->requestLayout()V

    .line 4316
    :cond_0
    return-void

    .line 4310
    :cond_1
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView$RecyclerViewDataObserver;->this$0:Lflyme/support/v7/widget/RecyclerView;

    iget-object v0, v0, Lflyme/support/v7/widget/RecyclerView;->mState:Lflyme/support/v7/widget/RecyclerView$State;

    # setter for: Lflyme/support/v7/widget/RecyclerView$State;->mStructureChanged:Z
    invoke-static {v0, v2}, Lflyme/support/v7/widget/RecyclerView$State;->access$1802(Lflyme/support/v7/widget/RecyclerView$State;Z)Z

    .line 4311
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView$RecyclerViewDataObserver;->this$0:Lflyme/support/v7/widget/RecyclerView;

    # invokes: Lflyme/support/v7/widget/RecyclerView;->setDataSetChangedAfterLayout()V
    invoke-static {v0}, Lflyme/support/v7/widget/RecyclerView;->access$3900(Lflyme/support/v7/widget/RecyclerView;)V

    goto :goto_0
.end method

.method public onItemRangeChanged(IILjava/lang/Object;)V
    .locals 2
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I
    .param p3, "payload"    # Ljava/lang/Object;

    .prologue
    .line 4320
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView$RecyclerViewDataObserver;->this$0:Lflyme/support/v7/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lflyme/support/v7/widget/RecyclerView;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 4321
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView$RecyclerViewDataObserver;->this$0:Lflyme/support/v7/widget/RecyclerView;

    iget-object v0, v0, Lflyme/support/v7/widget/RecyclerView;->mAdapterHelper:Lflyme/support/v7/widget/AdapterHelper;

    invoke-virtual {v0, p1, p2, p3}, Lflyme/support/v7/widget/AdapterHelper;->onItemRangeChanged(IILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4322
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView$RecyclerViewDataObserver;->triggerUpdateProcessor()V

    .line 4324
    :cond_0
    return-void
.end method

.method triggerUpdateProcessor()V
    .locals 2

    .prologue
    .line 4351
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView$RecyclerViewDataObserver;->this$0:Lflyme/support/v7/widget/RecyclerView;

    # getter for: Lflyme/support/v7/widget/RecyclerView;->mPostUpdatesOnAnimation:Z
    invoke-static {v0}, Lflyme/support/v7/widget/RecyclerView;->access$4000(Lflyme/support/v7/widget/RecyclerView;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView$RecyclerViewDataObserver;->this$0:Lflyme/support/v7/widget/RecyclerView;

    # getter for: Lflyme/support/v7/widget/RecyclerView;->mHasFixedSize:Z
    invoke-static {v0}, Lflyme/support/v7/widget/RecyclerView;->access$4100(Lflyme/support/v7/widget/RecyclerView;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView$RecyclerViewDataObserver;->this$0:Lflyme/support/v7/widget/RecyclerView;

    # getter for: Lflyme/support/v7/widget/RecyclerView;->mIsAttached:Z
    invoke-static {v0}, Lflyme/support/v7/widget/RecyclerView;->access$4200(Lflyme/support/v7/widget/RecyclerView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4352
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView$RecyclerViewDataObserver;->this$0:Lflyme/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lflyme/support/v7/widget/RecyclerView$RecyclerViewDataObserver;->this$0:Lflyme/support/v7/widget/RecyclerView;

    # getter for: Lflyme/support/v7/widget/RecyclerView;->mUpdateChildViewsRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lflyme/support/v7/widget/RecyclerView;->access$4300(Lflyme/support/v7/widget/RecyclerView;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/support/v4/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 4357
    :goto_0
    return-void

    .line 4354
    :cond_0
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView$RecyclerViewDataObserver;->this$0:Lflyme/support/v7/widget/RecyclerView;

    const/4 v1, 0x1

    # setter for: Lflyme/support/v7/widget/RecyclerView;->mAdapterUpdateDuringMeasure:Z
    invoke-static {v0, v1}, Lflyme/support/v7/widget/RecyclerView;->access$4402(Lflyme/support/v7/widget/RecyclerView;Z)Z

    .line 4355
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView$RecyclerViewDataObserver;->this$0:Lflyme/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Lflyme/support/v7/widget/RecyclerView;->requestLayout()V

    goto :goto_0
.end method
