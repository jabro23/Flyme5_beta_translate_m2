.class public abstract Lflyme/support/v7/widget/RecyclerView$ItemAnimator;
.super Ljava/lang/Object;
.source "RecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lflyme/support/v7/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ItemAnimator"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lflyme/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;,
        Lflyme/support/v7/widget/RecyclerView$ItemAnimator$ItemAnimatorFinishedListener;,
        Lflyme/support/v7/widget/RecyclerView$ItemAnimator$ItemAnimatorListener;
    }
.end annotation


# instance fields
.field private mAddDuration:J

.field private mChangeDuration:J

.field private mFinishedListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lflyme/support/v7/widget/RecyclerView$ItemAnimator$ItemAnimatorFinishedListener;",
            ">;"
        }
    .end annotation
.end field

.field private mListener:Lflyme/support/v7/widget/RecyclerView$ItemAnimator$ItemAnimatorListener;

.field private mMoveDuration:J

.field private mRemoveDuration:J


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    const-wide/16 v4, 0xfa

    const-wide/16 v2, 0x78

    .line 10377
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10433
    const/4 v0, 0x0

    iput-object v0, p0, Lflyme/support/v7/widget/RecyclerView$ItemAnimator;->mListener:Lflyme/support/v7/widget/RecyclerView$ItemAnimator$ItemAnimatorListener;

    .line 10434
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lflyme/support/v7/widget/RecyclerView$ItemAnimator;->mFinishedListeners:Ljava/util/ArrayList;

    .line 10437
    iput-wide v2, p0, Lflyme/support/v7/widget/RecyclerView$ItemAnimator;->mAddDuration:J

    .line 10438
    iput-wide v2, p0, Lflyme/support/v7/widget/RecyclerView$ItemAnimator;->mRemoveDuration:J

    .line 10439
    iput-wide v4, p0, Lflyme/support/v7/widget/RecyclerView$ItemAnimator;->mMoveDuration:J

    .line 10440
    iput-wide v4, p0, Lflyme/support/v7/widget/RecyclerView$ItemAnimator;->mChangeDuration:J

    .line 11041
    return-void
.end method

.method static buildAdapterChangeFlagsForAnimations(Lflyme/support/v7/widget/RecyclerView$ViewHolder;)I
    .locals 5
    .param p0, "viewHolder"    # Lflyme/support/v7/widget/RecyclerView$ViewHolder;

    .prologue
    const/4 v4, -0x1

    .line 10762
    # getter for: Lflyme/support/v7/widget/RecyclerView$ViewHolder;->mFlags:I
    invoke-static {p0}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->access$6400(Lflyme/support/v7/widget/RecyclerView$ViewHolder;)I

    move-result v3

    and-int/lit8 v0, v3, 0xe

    .line 10763
    .local v0, "flags":I
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->isInvalid()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 10764
    const/4 v3, 0x4

    .line 10773
    :goto_0
    return v3

    .line 10766
    :cond_0
    and-int/lit8 v3, v0, 0x4

    if-nez v3, :cond_1

    .line 10767
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->getOldPosition()I

    move-result v1

    .line 10768
    .local v1, "oldPos":I
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v2

    .line 10769
    .local v2, "pos":I
    if-eq v1, v4, :cond_1

    if-eq v2, v4, :cond_1

    if-eq v1, v2, :cond_1

    .line 10770
    or-int/lit16 v0, v0, 0x800

    .end local v1    # "oldPos":I
    .end local v2    # "pos":I
    :cond_1
    move v3, v0

    .line 10773
    goto :goto_0
.end method


# virtual methods
.method public abstract animateAppearance(Lflyme/support/v7/widget/RecyclerView$ViewHolder;Lflyme/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Lflyme/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)Z
.end method

.method public abstract animateChange(Lflyme/support/v7/widget/RecyclerView$ViewHolder;Lflyme/support/v7/widget/RecyclerView$ViewHolder;Lflyme/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Lflyme/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)Z
.end method

.method public abstract animateDisappearance(Lflyme/support/v7/widget/RecyclerView$ViewHolder;Lflyme/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Lflyme/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)Z
.end method

.method public abstract animatePersistence(Lflyme/support/v7/widget/RecyclerView$ViewHolder;Lflyme/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Lflyme/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)Z
.end method

.method public canReuseUpdatedViewHolder(Lflyme/support/v7/widget/RecyclerView$ViewHolder;)Z
    .locals 1
    .param p1, "viewHolder"    # Lflyme/support/v7/widget/RecyclerView$ViewHolder;

    .prologue
    .line 10951
    const/4 v0, 0x1

    return v0
.end method

.method public canReuseUpdatedViewHolder(Lflyme/support/v7/widget/RecyclerView$ViewHolder;Ljava/util/List;)Z
    .locals 1
    .param p1, "viewHolder"    # Lflyme/support/v7/widget/RecyclerView$ViewHolder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lflyme/support/v7/widget/RecyclerView$ViewHolder;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 10981
    .local p2, "payloads":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-virtual {p0, p1}, Lflyme/support/v7/widget/RecyclerView$ItemAnimator;->canReuseUpdatedViewHolder(Lflyme/support/v7/widget/RecyclerView$ViewHolder;)Z

    move-result v0

    return v0
.end method

.method public final dispatchAnimationFinished(Lflyme/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 1
    .param p1, "viewHolder"    # Lflyme/support/v7/widget/RecyclerView$ViewHolder;

    .prologue
    .line 10846
    invoke-virtual {p0, p1}, Lflyme/support/v7/widget/RecyclerView$ItemAnimator;->onAnimationFinished(Lflyme/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 10847
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView$ItemAnimator;->mListener:Lflyme/support/v7/widget/RecyclerView$ItemAnimator$ItemAnimatorListener;

    if-eqz v0, :cond_0

    .line 10848
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView$ItemAnimator;->mListener:Lflyme/support/v7/widget/RecyclerView$ItemAnimator$ItemAnimatorListener;

    invoke-interface {v0, p1}, Lflyme/support/v7/widget/RecyclerView$ItemAnimator$ItemAnimatorListener;->onAnimationFinished(Lflyme/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 10850
    :cond_0
    return-void
.end method

.method public final dispatchAnimationsFinished()V
    .locals 3

    .prologue
    .line 10989
    iget-object v2, p0, Lflyme/support/v7/widget/RecyclerView$ItemAnimator;->mFinishedListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 10990
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 10991
    iget-object v2, p0, Lflyme/support/v7/widget/RecyclerView$ItemAnimator;->mFinishedListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lflyme/support/v7/widget/RecyclerView$ItemAnimator$ItemAnimatorFinishedListener;

    invoke-interface {v2}, Lflyme/support/v7/widget/RecyclerView$ItemAnimator$ItemAnimatorFinishedListener;->onAnimationsFinished()V

    .line 10990
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 10993
    :cond_0
    iget-object v2, p0, Lflyme/support/v7/widget/RecyclerView$ItemAnimator;->mFinishedListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 10994
    return-void
.end method

.method public abstract endAnimation(Lflyme/support/v7/widget/RecyclerView$ViewHolder;)V
.end method

.method public abstract endAnimations()V
.end method

.method public getAddDuration()J
    .locals 2

    .prologue
    .line 10466
    iget-wide v0, p0, Lflyme/support/v7/widget/RecyclerView$ItemAnimator;->mAddDuration:J

    return-wide v0
.end method

.method public getChangeDuration()J
    .locals 2

    .prologue
    .line 10502
    iget-wide v0, p0, Lflyme/support/v7/widget/RecyclerView$ItemAnimator;->mChangeDuration:J

    return-wide v0
.end method

.method public getMoveDuration()J
    .locals 2

    .prologue
    .line 10448
    iget-wide v0, p0, Lflyme/support/v7/widget/RecyclerView$ItemAnimator;->mMoveDuration:J

    return-wide v0
.end method

.method public getRemoveDuration()J
    .locals 2

    .prologue
    .line 10484
    iget-wide v0, p0, Lflyme/support/v7/widget/RecyclerView$ItemAnimator;->mRemoveDuration:J

    return-wide v0
.end method

.method public abstract isRunning()Z
.end method

.method public obtainHolderInfo()Lflyme/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
    .locals 1

    .prologue
    .line 11006
    new-instance v0, Lflyme/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    invoke-direct {v0}, Lflyme/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;-><init>()V

    return-object v0
.end method

.method public onAnimationFinished(Lflyme/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 0
    .param p1, "viewHolder"    # Lflyme/support/v7/widget/RecyclerView$ViewHolder;

    .prologue
    .line 10861
    return-void
.end method

.method public recordPostLayoutInformation(Lflyme/support/v7/widget/RecyclerView$State;Lflyme/support/v7/widget/RecyclerView$ViewHolder;)Lflyme/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
    .locals 1
    .param p1, "state"    # Lflyme/support/v7/widget/RecyclerView$State;
    .param p2, "viewHolder"    # Lflyme/support/v7/widget/RecyclerView$ViewHolder;

    .prologue
    .line 10591
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView$ItemAnimator;->obtainHolderInfo()Lflyme/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    move-result-object v0

    invoke-virtual {v0, p2}, Lflyme/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->setFrom(Lflyme/support/v7/widget/RecyclerView$ViewHolder;)Lflyme/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    move-result-object v0

    return-object v0
.end method

.method public recordPreLayoutInformation(Lflyme/support/v7/widget/RecyclerView$State;Lflyme/support/v7/widget/RecyclerView$ViewHolder;ILjava/util/List;)Lflyme/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
    .locals 1
    .param p1, "state"    # Lflyme/support/v7/widget/RecyclerView$State;
    .param p2, "viewHolder"    # Lflyme/support/v7/widget/RecyclerView$ViewHolder;
    .param p3, "changeFlags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lflyme/support/v7/widget/RecyclerView$State;",
            "Lflyme/support/v7/widget/RecyclerView$ViewHolder;",
            "I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;)",
            "Lflyme/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;"
        }
    .end annotation

    .prologue
    .line 10562
    .local p4, "payloads":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView$ItemAnimator;->obtainHolderInfo()Lflyme/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    move-result-object v0

    invoke-virtual {v0, p2}, Lflyme/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->setFrom(Lflyme/support/v7/widget/RecyclerView$ViewHolder;)Lflyme/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    move-result-object v0

    return-object v0
.end method

.method public abstract runPendingAnimations()V
.end method

.method setListener(Lflyme/support/v7/widget/RecyclerView$ItemAnimator$ItemAnimatorListener;)V
    .locals 0
    .param p1, "listener"    # Lflyme/support/v7/widget/RecyclerView$ItemAnimator$ItemAnimatorListener;

    .prologue
    .line 10523
    iput-object p1, p0, Lflyme/support/v7/widget/RecyclerView$ItemAnimator;->mListener:Lflyme/support/v7/widget/RecyclerView$ItemAnimator$ItemAnimatorListener;

    .line 10524
    return-void
.end method
