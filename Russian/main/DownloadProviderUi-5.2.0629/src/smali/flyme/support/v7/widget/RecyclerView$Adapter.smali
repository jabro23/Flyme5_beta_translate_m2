.class public abstract Lflyme/support/v7/widget/RecyclerView$Adapter;
.super Ljava/lang/Object;
.source "RecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lflyme/support/v7/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Adapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<VH:",
        "Lflyme/support/v7/widget/RecyclerView$ViewHolder;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private mHasStableIds:Z

.field private final mObservable:Lflyme/support/v7/widget/RecyclerView$AdapterDataObservable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 5443
    .local p0, "this":Lflyme/support/v7/widget/RecyclerView$Adapter;, "Lflyme/support/v7/widget/RecyclerView$Adapter<TVH;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5444
    new-instance v0, Lflyme/support/v7/widget/RecyclerView$AdapterDataObservable;

    invoke-direct {v0}, Lflyme/support/v7/widget/RecyclerView$AdapterDataObservable;-><init>()V

    iput-object v0, p0, Lflyme/support/v7/widget/RecyclerView$Adapter;->mObservable:Lflyme/support/v7/widget/RecyclerView$AdapterDataObservable;

    .line 5445
    const/4 v0, 0x0

    iput-boolean v0, p0, Lflyme/support/v7/widget/RecyclerView$Adapter;->mHasStableIds:Z

    return-void
.end method


# virtual methods
.method public final bindViewHolder(Lflyme/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 2
    .param p2, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;I)V"
        }
    .end annotation

    .prologue
    .line 5547
    .local p0, "this":Lflyme/support/v7/widget/RecyclerView$Adapter;, "Lflyme/support/v7/widget/RecyclerView$Adapter<TVH;>;"
    .local p1, "holder":Lflyme/support/v7/widget/RecyclerView$ViewHolder;, "TVH;"
    iput p2, p1, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->mPosition:I

    .line 5548
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView$Adapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5549
    invoke-virtual {p0, p2}, Lflyme/support/v7/widget/RecyclerView$Adapter;->getItemId(I)J

    move-result-wide v0

    iput-wide v0, p1, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->mItemId:J

    .line 5551
    :cond_0
    const/4 v0, 0x1

    const/16 v1, 0x207

    invoke-virtual {p1, v0, v1}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->setFlags(II)V

    .line 5554
    const-string v0, "RV OnBindView"

    invoke-static {v0}, Landroid/support/v4/os/TraceCompat;->beginSection(Ljava/lang/String;)V

    .line 5555
    invoke-virtual {p1}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->getUnmodifiedPayloads()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lflyme/support/v7/widget/RecyclerView$Adapter;->onBindViewHolder(Lflyme/support/v7/widget/RecyclerView$ViewHolder;ILjava/util/List;)V

    .line 5556
    invoke-virtual {p1}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->clearPayload()V

    .line 5557
    invoke-static {}, Landroid/support/v4/os/TraceCompat;->endSection()V

    .line 5558
    return-void
.end method

.method public final createViewHolder(Landroid/view/ViewGroup;I)Lflyme/support/v7/widget/RecyclerView$ViewHolder;
    .locals 2
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "I)TVH;"
        }
    .end annotation

    .prologue
    .line 5532
    .local p0, "this":Lflyme/support/v7/widget/RecyclerView$Adapter;, "Lflyme/support/v7/widget/RecyclerView$Adapter<TVH;>;"
    const-string v1, "RV CreateView"

    invoke-static {v1}, Landroid/support/v4/os/TraceCompat;->beginSection(Ljava/lang/String;)V

    .line 5533
    invoke-virtual {p0, p1, p2}, Lflyme/support/v7/widget/RecyclerView$Adapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lflyme/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    .line 5534
    .local v0, "holder":Lflyme/support/v7/widget/RecyclerView$ViewHolder;, "TVH;"
    iput p2, v0, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->mItemViewType:I

    .line 5535
    invoke-static {}, Landroid/support/v4/os/TraceCompat;->endSection()V

    .line 5536
    return-object v0
.end method

.method public abstract getItemCount()I
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 5601
    .local p0, "this":Lflyme/support/v7/widget/RecyclerView$Adapter;, "Lflyme/support/v7/widget/RecyclerView$Adapter<TVH;>;"
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 5573
    .local p0, "this":Lflyme/support/v7/widget/RecyclerView$Adapter;, "Lflyme/support/v7/widget/RecyclerView$Adapter<TVH;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public final hasObservers()Z
    .locals 1

    .prologue
    .line 5711
    .local p0, "this":Lflyme/support/v7/widget/RecyclerView$Adapter;, "Lflyme/support/v7/widget/RecyclerView$Adapter<TVH;>;"
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView$Adapter;->mObservable:Lflyme/support/v7/widget/RecyclerView$AdapterDataObservable;

    invoke-virtual {v0}, Lflyme/support/v7/widget/RecyclerView$AdapterDataObservable;->hasObservers()Z

    move-result v0

    return v0
.end method

.method public final hasStableIds()Z
    .locals 1

    .prologue
    .line 5619
    .local p0, "this":Lflyme/support/v7/widget/RecyclerView$Adapter;, "Lflyme/support/v7/widget/RecyclerView$Adapter<TVH;>;"
    iget-boolean v0, p0, Lflyme/support/v7/widget/RecyclerView$Adapter;->mHasStableIds:Z

    return v0
.end method

.method public isEnabled(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 5993
    .local p0, "this":Lflyme/support/v7/widget/RecyclerView$Adapter;, "Lflyme/support/v7/widget/RecyclerView$Adapter<TVH;>;"
    const/4 v0, 0x1

    return v0
.end method

.method public final notifyDataSetChanged()V
    .locals 1

    .prologue
    .line 5798
    .local p0, "this":Lflyme/support/v7/widget/RecyclerView$Adapter;, "Lflyme/support/v7/widget/RecyclerView$Adapter<TVH;>;"
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView$Adapter;->mObservable:Lflyme/support/v7/widget/RecyclerView$AdapterDataObservable;

    invoke-virtual {v0}, Lflyme/support/v7/widget/RecyclerView$AdapterDataObservable;->notifyChanged()V

    .line 5799
    return-void
.end method

.method public final notifyItemChanged(I)V
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 5814
    .local p0, "this":Lflyme/support/v7/widget/RecyclerView$Adapter;, "Lflyme/support/v7/widget/RecyclerView$Adapter<TVH;>;"
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView$Adapter;->mObservable:Lflyme/support/v7/widget/RecyclerView$AdapterDataObservable;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lflyme/support/v7/widget/RecyclerView$AdapterDataObservable;->notifyItemRangeChanged(II)V

    .line 5815
    return-void
.end method

.method public onAttachedToRecyclerView(Lflyme/support/v7/widget/RecyclerView;)V
    .locals 0
    .param p1, "recyclerView"    # Lflyme/support/v7/widget/RecyclerView;

    .prologue
    .line 5757
    .local p0, "this":Lflyme/support/v7/widget/RecyclerView$Adapter;, "Lflyme/support/v7/widget/RecyclerView$Adapter<TVH;>;"
    return-void
.end method

.method public abstract onBindViewHolder(Lflyme/support/v7/widget/RecyclerView$ViewHolder;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;I)V"
        }
    .end annotation
.end method

.method public onBindViewHolder(Lflyme/support/v7/widget/RecyclerView$ViewHolder;ILjava/util/List;)V
    .locals 0
    .param p2, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 5522
    .local p0, "this":Lflyme/support/v7/widget/RecyclerView$Adapter;, "Lflyme/support/v7/widget/RecyclerView$Adapter<TVH;>;"
    .local p1, "holder":Lflyme/support/v7/widget/RecyclerView$ViewHolder;, "TVH;"
    .local p3, "payloads":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-virtual {p0, p1, p2}, Lflyme/support/v7/widget/RecyclerView$Adapter;->onBindViewHolder(Lflyme/support/v7/widget/RecyclerView$ViewHolder;I)V

    .line 5523
    return-void
.end method

.method public abstract onCreateViewHolder(Landroid/view/ViewGroup;I)Lflyme/support/v7/widget/RecyclerView$ViewHolder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "I)TVH;"
        }
    .end annotation
.end method

.method public onDetachedFromRecyclerView(Lflyme/support/v7/widget/RecyclerView;)V
    .locals 0
    .param p1, "recyclerView"    # Lflyme/support/v7/widget/RecyclerView;

    .prologue
    .line 5766
    .local p0, "this":Lflyme/support/v7/widget/RecyclerView$Adapter;, "Lflyme/support/v7/widget/RecyclerView$Adapter<TVH;>;"
    return-void
.end method

.method public onFailedToRecycleView(Lflyme/support/v7/widget/RecyclerView$ViewHolder;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;)Z"
        }
    .end annotation

    .prologue
    .line 5677
    .local p0, "this":Lflyme/support/v7/widget/RecyclerView$Adapter;, "Lflyme/support/v7/widget/RecyclerView$Adapter<TVH;>;"
    .local p1, "holder":Lflyme/support/v7/widget/RecyclerView$ViewHolder;, "TVH;"
    const/4 v0, 0x0

    return v0
.end method

.method public onViewAttachedToWindow(Lflyme/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;)V"
        }
    .end annotation

    .prologue
    .line 5691
    .local p0, "this":Lflyme/support/v7/widget/RecyclerView$Adapter;, "Lflyme/support/v7/widget/RecyclerView$Adapter<TVH;>;"
    .local p1, "holder":Lflyme/support/v7/widget/RecyclerView$ViewHolder;, "TVH;"
    return-void
.end method

.method public onViewDetachedFromWindow(Lflyme/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;)V"
        }
    .end annotation

    .prologue
    .line 5703
    .local p0, "this":Lflyme/support/v7/widget/RecyclerView$Adapter;, "Lflyme/support/v7/widget/RecyclerView$Adapter<TVH;>;"
    .local p1, "holder":Lflyme/support/v7/widget/RecyclerView$ViewHolder;, "TVH;"
    return-void
.end method

.method public onViewRecycled(Lflyme/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;)V"
        }
    .end annotation

    .prologue
    .line 5640
    .local p0, "this":Lflyme/support/v7/widget/RecyclerView$Adapter;, "Lflyme/support/v7/widget/RecyclerView$Adapter<TVH;>;"
    .local p1, "holder":Lflyme/support/v7/widget/RecyclerView$ViewHolder;, "TVH;"
    return-void
.end method

.method public registerAdapterDataObserver(Lflyme/support/v7/widget/RecyclerView$AdapterDataObserver;)V
    .locals 1
    .param p1, "observer"    # Lflyme/support/v7/widget/RecyclerView$AdapterDataObserver;

    .prologue
    .line 5731
    .local p0, "this":Lflyme/support/v7/widget/RecyclerView$Adapter;, "Lflyme/support/v7/widget/RecyclerView$Adapter<TVH;>;"
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView$Adapter;->mObservable:Lflyme/support/v7/widget/RecyclerView$AdapterDataObservable;

    invoke-virtual {v0, p1}, Lflyme/support/v7/widget/RecyclerView$AdapterDataObservable;->registerObserver(Ljava/lang/Object;)V

    .line 5732
    return-void
.end method

.method public setHasStableIds(Z)V
    .locals 2
    .param p1, "hasStableIds"    # Z

    .prologue
    .line 5585
    .local p0, "this":Lflyme/support/v7/widget/RecyclerView$Adapter;, "Lflyme/support/v7/widget/RecyclerView$Adapter<TVH;>;"
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView$Adapter;->hasObservers()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5586
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot change whether this adapter has stable IDs while the adapter has registered observers."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5589
    :cond_0
    iput-boolean p1, p0, Lflyme/support/v7/widget/RecyclerView$Adapter;->mHasStableIds:Z

    .line 5590
    return-void
.end method

.method public unregisterAdapterDataObserver(Lflyme/support/v7/widget/RecyclerView$AdapterDataObserver;)V
    .locals 1
    .param p1, "observer"    # Lflyme/support/v7/widget/RecyclerView$AdapterDataObserver;

    .prologue
    .line 5745
    .local p0, "this":Lflyme/support/v7/widget/RecyclerView$Adapter;, "Lflyme/support/v7/widget/RecyclerView$Adapter<TVH;>;"
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView$Adapter;->mObservable:Lflyme/support/v7/widget/RecyclerView$AdapterDataObservable;

    invoke-virtual {v0, p1}, Lflyme/support/v7/widget/RecyclerView$AdapterDataObservable;->unregisterObserver(Ljava/lang/Object;)V

    .line 5746
    return-void
.end method
