.class public Lflyme/support/v7/widget/RecyclerView$State;
.super Ljava/lang/Object;
.source "RecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lflyme/support/v7/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "State"
.end annotation


# instance fields
.field private mData:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mDeletedInvisibleItemCountSincePreviousLayout:I

.field private mInPreLayout:Z

.field private mIsMeasuring:Z

.field mItemCount:I

.field private mLayoutStep:I

.field private mPreviousLayoutItemCount:I

.field private mRunPredictiveAnimations:Z

.field private mRunSimpleAnimations:Z

.field private mStructureChanged:Z

.field private mTargetPosition:I

.field private mTrackOldChangeHolders:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 10100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10119
    const/4 v0, -0x1

    iput v0, p0, Lflyme/support/v7/widget/RecyclerView$State;->mTargetPosition:I

    .line 10121
    const/4 v0, 0x1

    iput v0, p0, Lflyme/support/v7/widget/RecyclerView$State;->mLayoutStep:I

    .line 10129
    iput v1, p0, Lflyme/support/v7/widget/RecyclerView$State;->mItemCount:I

    .line 10134
    iput v1, p0, Lflyme/support/v7/widget/RecyclerView$State;->mPreviousLayoutItemCount:I

    .line 10140
    iput v1, p0, Lflyme/support/v7/widget/RecyclerView$State;->mDeletedInvisibleItemCountSincePreviousLayout:I

    .line 10142
    iput-boolean v1, p0, Lflyme/support/v7/widget/RecyclerView$State;->mStructureChanged:Z

    .line 10144
    iput-boolean v1, p0, Lflyme/support/v7/widget/RecyclerView$State;->mInPreLayout:Z

    .line 10146
    iput-boolean v1, p0, Lflyme/support/v7/widget/RecyclerView$State;->mRunSimpleAnimations:Z

    .line 10148
    iput-boolean v1, p0, Lflyme/support/v7/widget/RecyclerView$State;->mRunPredictiveAnimations:Z

    .line 10150
    iput-boolean v1, p0, Lflyme/support/v7/widget/RecyclerView$State;->mTrackOldChangeHolders:Z

    .line 10152
    iput-boolean v1, p0, Lflyme/support/v7/widget/RecyclerView$State;->mIsMeasuring:Z

    return-void
.end method

.method static synthetic access$1702(Lflyme/support/v7/widget/RecyclerView$State;I)I
    .locals 0
    .param p0, "x0"    # Lflyme/support/v7/widget/RecyclerView$State;
    .param p1, "x1"    # I

    .prologue
    .line 10100
    iput p1, p0, Lflyme/support/v7/widget/RecyclerView$State;->mDeletedInvisibleItemCountSincePreviousLayout:I

    return p1
.end method

.method static synthetic access$1712(Lflyme/support/v7/widget/RecyclerView$State;I)I
    .locals 1
    .param p0, "x0"    # Lflyme/support/v7/widget/RecyclerView$State;
    .param p1, "x1"    # I

    .prologue
    .line 10100
    iget v0, p0, Lflyme/support/v7/widget/RecyclerView$State;->mDeletedInvisibleItemCountSincePreviousLayout:I

    add-int/2addr v0, p1

    iput v0, p0, Lflyme/support/v7/widget/RecyclerView$State;->mDeletedInvisibleItemCountSincePreviousLayout:I

    return v0
.end method

.method static synthetic access$1800(Lflyme/support/v7/widget/RecyclerView$State;)Z
    .locals 1
    .param p0, "x0"    # Lflyme/support/v7/widget/RecyclerView$State;

    .prologue
    .line 10100
    iget-boolean v0, p0, Lflyme/support/v7/widget/RecyclerView$State;->mStructureChanged:Z

    return v0
.end method

.method static synthetic access$1802(Lflyme/support/v7/widget/RecyclerView$State;Z)Z
    .locals 0
    .param p0, "x0"    # Lflyme/support/v7/widget/RecyclerView$State;
    .param p1, "x1"    # Z

    .prologue
    .line 10100
    iput-boolean p1, p0, Lflyme/support/v7/widget/RecyclerView$State;->mStructureChanged:Z

    return p1
.end method

.method static synthetic access$2100(Lflyme/support/v7/widget/RecyclerView$State;)I
    .locals 1
    .param p0, "x0"    # Lflyme/support/v7/widget/RecyclerView$State;

    .prologue
    .line 10100
    iget v0, p0, Lflyme/support/v7/widget/RecyclerView$State;->mLayoutStep:I

    return v0
.end method

.method static synthetic access$2102(Lflyme/support/v7/widget/RecyclerView$State;I)I
    .locals 0
    .param p0, "x0"    # Lflyme/support/v7/widget/RecyclerView$State;
    .param p1, "x1"    # I

    .prologue
    .line 10100
    iput p1, p0, Lflyme/support/v7/widget/RecyclerView$State;->mLayoutStep:I

    return p1
.end method

.method static synthetic access$2202(Lflyme/support/v7/widget/RecyclerView$State;Z)Z
    .locals 0
    .param p0, "x0"    # Lflyme/support/v7/widget/RecyclerView$State;
    .param p1, "x1"    # Z

    .prologue
    .line 10100
    iput-boolean p1, p0, Lflyme/support/v7/widget/RecyclerView$State;->mIsMeasuring:Z

    return p1
.end method

.method static synthetic access$2300(Lflyme/support/v7/widget/RecyclerView$State;)Z
    .locals 1
    .param p0, "x0"    # Lflyme/support/v7/widget/RecyclerView$State;

    .prologue
    .line 10100
    iget-boolean v0, p0, Lflyme/support/v7/widget/RecyclerView$State;->mRunPredictiveAnimations:Z

    return v0
.end method

.method static synthetic access$2302(Lflyme/support/v7/widget/RecyclerView$State;Z)Z
    .locals 0
    .param p0, "x0"    # Lflyme/support/v7/widget/RecyclerView$State;
    .param p1, "x1"    # Z

    .prologue
    .line 10100
    iput-boolean p1, p0, Lflyme/support/v7/widget/RecyclerView$State;->mRunPredictiveAnimations:Z

    return p1
.end method

.method static synthetic access$2400(Lflyme/support/v7/widget/RecyclerView$State;)Z
    .locals 1
    .param p0, "x0"    # Lflyme/support/v7/widget/RecyclerView$State;

    .prologue
    .line 10100
    iget-boolean v0, p0, Lflyme/support/v7/widget/RecyclerView$State;->mInPreLayout:Z

    return v0
.end method

.method static synthetic access$2402(Lflyme/support/v7/widget/RecyclerView$State;Z)Z
    .locals 0
    .param p0, "x0"    # Lflyme/support/v7/widget/RecyclerView$State;
    .param p1, "x1"    # Z

    .prologue
    .line 10100
    iput-boolean p1, p0, Lflyme/support/v7/widget/RecyclerView$State;->mInPreLayout:Z

    return p1
.end method

.method static synthetic access$2500(Lflyme/support/v7/widget/RecyclerView$State;)Z
    .locals 1
    .param p0, "x0"    # Lflyme/support/v7/widget/RecyclerView$State;

    .prologue
    .line 10100
    iget-boolean v0, p0, Lflyme/support/v7/widget/RecyclerView$State;->mRunSimpleAnimations:Z

    return v0
.end method

.method static synthetic access$2502(Lflyme/support/v7/widget/RecyclerView$State;Z)Z
    .locals 0
    .param p0, "x0"    # Lflyme/support/v7/widget/RecyclerView$State;
    .param p1, "x1"    # Z

    .prologue
    .line 10100
    iput-boolean p1, p0, Lflyme/support/v7/widget/RecyclerView$State;->mRunSimpleAnimations:Z

    return p1
.end method

.method static synthetic access$2700(Lflyme/support/v7/widget/RecyclerView$State;)Z
    .locals 1
    .param p0, "x0"    # Lflyme/support/v7/widget/RecyclerView$State;

    .prologue
    .line 10100
    iget-boolean v0, p0, Lflyme/support/v7/widget/RecyclerView$State;->mTrackOldChangeHolders:Z

    return v0
.end method

.method static synthetic access$2702(Lflyme/support/v7/widget/RecyclerView$State;Z)Z
    .locals 0
    .param p0, "x0"    # Lflyme/support/v7/widget/RecyclerView$State;
    .param p1, "x1"    # Z

    .prologue
    .line 10100
    iput-boolean p1, p0, Lflyme/support/v7/widget/RecyclerView$State;->mTrackOldChangeHolders:Z

    return p1
.end method

.method static synthetic access$2802(Lflyme/support/v7/widget/RecyclerView$State;I)I
    .locals 0
    .param p0, "x0"    # Lflyme/support/v7/widget/RecyclerView$State;
    .param p1, "x1"    # I

    .prologue
    .line 10100
    iput p1, p0, Lflyme/support/v7/widget/RecyclerView$State;->mPreviousLayoutItemCount:I

    return p1
.end method

.method static synthetic access$5702(Lflyme/support/v7/widget/RecyclerView$State;I)I
    .locals 0
    .param p0, "x0"    # Lflyme/support/v7/widget/RecyclerView$State;
    .param p1, "x1"    # I

    .prologue
    .line 10100
    iput p1, p0, Lflyme/support/v7/widget/RecyclerView$State;->mTargetPosition:I

    return p1
.end method


# virtual methods
.method assertLayoutStep(I)V
    .locals 3
    .param p1, "accepted"    # I

    .prologue
    .line 10106
    iget v0, p0, Lflyme/support/v7/widget/RecyclerView$State;->mLayoutStep:I

    and-int/2addr v0, p1

    if-nez v0, :cond_0

    .line 10107
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Layout state should be one of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " but it is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lflyme/support/v7/widget/RecyclerView$State;->mLayoutStep:I

    invoke-static {v2}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 10111
    :cond_0
    return-void
.end method

.method public didStructureChange()Z
    .locals 1

    .prologue
    .line 10280
    iget-boolean v0, p0, Lflyme/support/v7/widget/RecyclerView$State;->mStructureChanged:Z

    return v0
.end method

.method public getItemCount()I
    .locals 2

    .prologue
    .line 10308
    iget-boolean v0, p0, Lflyme/support/v7/widget/RecyclerView$State;->mInPreLayout:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lflyme/support/v7/widget/RecyclerView$State;->mPreviousLayoutItemCount:I

    iget v1, p0, Lflyme/support/v7/widget/RecyclerView$State;->mDeletedInvisibleItemCountSincePreviousLayout:I

    sub-int/2addr v0, v1

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lflyme/support/v7/widget/RecyclerView$State;->mItemCount:I

    goto :goto_0
.end method

.method public getTargetScrollPosition()I
    .locals 1

    .prologue
    .line 10263
    iget v0, p0, Lflyme/support/v7/widget/RecyclerView$State;->mTargetPosition:I

    return v0
.end method

.method public hasTargetScrollPosition()Z
    .locals 2

    .prologue
    .line 10272
    iget v0, p0, Lflyme/support/v7/widget/RecyclerView$State;->mTargetPosition:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPreLayout()Z
    .locals 1

    .prologue
    .line 10188
    iget-boolean v0, p0, Lflyme/support/v7/widget/RecyclerView$State;->mInPreLayout:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 10315
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "State{mTargetPosition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lflyme/support/v7/widget/RecyclerView$State;->mTargetPosition:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lflyme/support/v7/widget/RecyclerView$State;->mData:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mItemCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lflyme/support/v7/widget/RecyclerView$State;->mItemCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mPreviousLayoutItemCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lflyme/support/v7/widget/RecyclerView$State;->mPreviousLayoutItemCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mDeletedInvisibleItemCountSincePreviousLayout="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lflyme/support/v7/widget/RecyclerView$State;->mDeletedInvisibleItemCountSincePreviousLayout:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mStructureChanged="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lflyme/support/v7/widget/RecyclerView$State;->mStructureChanged:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mInPreLayout="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lflyme/support/v7/widget/RecyclerView$State;->mInPreLayout:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mRunSimpleAnimations="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lflyme/support/v7/widget/RecyclerView$State;->mRunSimpleAnimations:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mRunPredictiveAnimations="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lflyme/support/v7/widget/RecyclerView$State;->mRunPredictiveAnimations:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public willRunPredictiveAnimations()Z
    .locals 1

    .prologue
    .line 10199
    iget-boolean v0, p0, Lflyme/support/v7/widget/RecyclerView$State;->mRunPredictiveAnimations:Z

    return v0
.end method
