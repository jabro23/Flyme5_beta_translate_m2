.class public abstract Lflyme/support/v7/widget/RecyclerView$ViewHolder;
.super Ljava/lang/Object;
.source "RecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lflyme/support/v7/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ViewHolder"
.end annotation


# static fields
.field private static final FULLUPDATE_PAYLOADS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final itemView:Landroid/view/View;

.field private mFlags:I

.field private mInChangeScrap:Z

.field private mIsRecyclableCount:I

.field mItemId:J

.field mItemViewType:I

.field mOldPosition:I

.field mOwnerRecyclerView:Lflyme/support/v7/widget/RecyclerView;

.field mPayloads:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field mPosition:I

.field mPreLayoutPosition:I

.field private mScrapContainer:Lflyme/support/v7/widget/RecyclerView$Recycler;

.field mShadowedHolder:Lflyme/support/v7/widget/RecyclerView$ViewHolder;

.field mShadowingHolder:Lflyme/support/v7/widget/RecyclerView$ViewHolder;

.field mUnmodifiedPayloads:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mWasImportantForAccessibilityBeforeHidden:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 8989
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    sput-object v0, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->FULLUPDATE_PAYLOADS:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 5
    .param p1, "itemView"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 9013
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8885
    iput v3, p0, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->mPosition:I

    .line 8886
    iput v3, p0, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->mOldPosition:I

    .line 8887
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->mItemId:J

    .line 8888
    iput v3, p0, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->mItemViewType:I

    .line 8889
    iput v3, p0, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->mPreLayoutPosition:I

    .line 8892
    iput-object v2, p0, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->mShadowedHolder:Lflyme/support/v7/widget/RecyclerView$ViewHolder;

    .line 8894
    iput-object v2, p0, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->mShadowingHolder:Lflyme/support/v7/widget/RecyclerView$ViewHolder;

    .line 8991
    iput-object v2, p0, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->mPayloads:Ljava/util/List;

    .line 8992
    iput-object v2, p0, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->mUnmodifiedPayloads:Ljava/util/List;

    .line 8994
    iput v4, p0, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->mIsRecyclableCount:I

    .line 8998
    iput-object v2, p0, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->mScrapContainer:Lflyme/support/v7/widget/RecyclerView$Recycler;

    .line 9000
    iput-boolean v4, p0, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->mInChangeScrap:Z

    .line 9004
    iput v4, p0, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->mWasImportantForAccessibilityBeforeHidden:I

    .line 9014
    if-nez p1, :cond_0

    .line 9015
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "itemView may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 9017
    :cond_0
    iput-object p1, p0, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 9018
    return-void
.end method

.method static synthetic access$1500(Lflyme/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 0
    .param p0, "x0"    # Lflyme/support/v7/widget/RecyclerView$ViewHolder;

    .prologue
    .line 8883
    invoke-direct {p0}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->onEnteredHiddenState()V

    return-void
.end method

.method static synthetic access$1600(Lflyme/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 0
    .param p0, "x0"    # Lflyme/support/v7/widget/RecyclerView$ViewHolder;

    .prologue
    .line 8883
    invoke-direct {p0}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->onLeftHiddenState()V

    return-void
.end method

.method static synthetic access$4800(Lflyme/support/v7/widget/RecyclerView$ViewHolder;)Z
    .locals 1
    .param p0, "x0"    # Lflyme/support/v7/widget/RecyclerView$ViewHolder;

    .prologue
    .line 8883
    invoke-direct {p0}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->doesTransientStatePreventRecycling()Z

    move-result v0

    return v0
.end method

.method static synthetic access$4902(Lflyme/support/v7/widget/RecyclerView$ViewHolder;Lflyme/support/v7/widget/RecyclerView$Recycler;)Lflyme/support/v7/widget/RecyclerView$Recycler;
    .locals 0
    .param p0, "x0"    # Lflyme/support/v7/widget/RecyclerView$ViewHolder;
    .param p1, "x1"    # Lflyme/support/v7/widget/RecyclerView$Recycler;

    .prologue
    .line 8883
    iput-object p1, p0, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->mScrapContainer:Lflyme/support/v7/widget/RecyclerView$Recycler;

    return-object p1
.end method

.method static synthetic access$5000(Lflyme/support/v7/widget/RecyclerView$ViewHolder;)Z
    .locals 1
    .param p0, "x0"    # Lflyme/support/v7/widget/RecyclerView$ViewHolder;

    .prologue
    .line 8883
    iget-boolean v0, p0, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->mInChangeScrap:Z

    return v0
.end method

.method static synthetic access$5002(Lflyme/support/v7/widget/RecyclerView$ViewHolder;Z)Z
    .locals 0
    .param p0, "x0"    # Lflyme/support/v7/widget/RecyclerView$ViewHolder;
    .param p1, "x1"    # Z

    .prologue
    .line 8883
    iput-boolean p1, p0, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->mInChangeScrap:Z

    return p1
.end method

.method static synthetic access$6200(Lflyme/support/v7/widget/RecyclerView$ViewHolder;)Z
    .locals 1
    .param p0, "x0"    # Lflyme/support/v7/widget/RecyclerView$ViewHolder;

    .prologue
    .line 8883
    invoke-direct {p0}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->shouldBeKeptAsChild()Z

    move-result v0

    return v0
.end method

.method static synthetic access$6400(Lflyme/support/v7/widget/RecyclerView$ViewHolder;)I
    .locals 1
    .param p0, "x0"    # Lflyme/support/v7/widget/RecyclerView$ViewHolder;

    .prologue
    .line 8883
    iget v0, p0, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->mFlags:I

    return v0
.end method

.method private createPayloadsIfNeeded()V
    .locals 1

    .prologue
    .line 9232
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->mPayloads:Ljava/util/List;

    if-nez v0, :cond_0

    .line 9233
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->mPayloads:Ljava/util/List;

    .line 9234
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->mPayloads:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->mUnmodifiedPayloads:Ljava/util/List;

    .line 9236
    :cond_0
    return-void
.end method

.method private doesTransientStatePreventRecycling()Z
    .locals 1

    .prologue
    .line 9369
    iget v0, p0, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->mFlags:I

    and-int/lit8 v0, v0, 0x10

    if-nez v0, :cond_0

    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->hasTransientState(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onEnteredHiddenState()V
    .locals 2

    .prologue
    .line 9277
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->getImportantForAccessibility(Landroid/view/View;)I

    move-result v0

    iput v0, p0, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->mWasImportantForAccessibilityBeforeHidden:I

    .line 9279
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Landroid/support/v4/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    .line 9281
    return-void
.end method

.method private onLeftHiddenState()V
    .locals 2

    .prologue
    .line 9287
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget v1, p0, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->mWasImportantForAccessibilityBeforeHidden:I

    invoke-static {v0, v1}, Landroid/support/v4/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    .line 9289
    const/4 v0, 0x0

    iput v0, p0, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->mWasImportantForAccessibilityBeforeHidden:I

    .line 9290
    return-void
.end method

.method private shouldBeKeptAsChild()Z
    .locals 1

    .prologue
    .line 9361
    iget v0, p0, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->mFlags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method addChangePayload(Ljava/lang/Object;)V
    .locals 1
    .param p1, "payload"    # Ljava/lang/Object;

    .prologue
    .line 9223
    if-nez p1, :cond_1

    .line 9224
    const/16 v0, 0x400

    invoke-virtual {p0, v0}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->addFlags(I)V

    .line 9229
    :cond_0
    :goto_0
    return-void

    .line 9225
    :cond_1
    iget v0, p0, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->mFlags:I

    and-int/lit16 v0, v0, 0x400

    if-nez v0, :cond_0

    .line 9226
    invoke-direct {p0}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->createPayloadsIfNeeded()V

    .line 9227
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->mPayloads:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method addFlags(I)V
    .locals 1
    .param p1, "flags"    # I

    .prologue
    .line 9219
    iget v0, p0, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->mFlags:I

    or-int/2addr v0, p1

    iput v0, p0, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->mFlags:I

    .line 9220
    return-void
.end method

.method clearOldPosition()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 9043
    iput v0, p0, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->mOldPosition:I

    .line 9044
    iput v0, p0, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->mPreLayoutPosition:I

    .line 9045
    return-void
.end method

.method clearPayload()V
    .locals 1

    .prologue
    .line 9239
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->mPayloads:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 9240
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->mPayloads:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 9242
    :cond_0
    iget v0, p0, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->mFlags:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->mFlags:I

    .line 9243
    return-void
.end method

.method clearReturnedFromScrapFlag()V
    .locals 1

    .prologue
    .line 9170
    iget v0, p0, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->mFlags:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->mFlags:I

    .line 9171
    return-void
.end method

.method clearTmpDetachFlag()V
    .locals 1

    .prologue
    .line 9174
    iget v0, p0, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->mFlags:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->mFlags:I

    .line 9175
    return-void
.end method

.method flagRemovedAndOffsetPosition(IIZ)V
    .locals 1
    .param p1, "mNewPosition"    # I
    .param p2, "offset"    # I
    .param p3, "applyToPreLayout"    # Z

    .prologue
    .line 9021
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->addFlags(I)V

    .line 9022
    invoke-virtual {p0, p2, p3}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->offsetPosition(IZ)V

    .line 9023
    iput p1, p0, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->mPosition:I

    .line 9024
    return-void
.end method

.method public final getAdapterPosition()I
    .locals 1

    .prologue
    .line 9119
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->mOwnerRecyclerView:Lflyme/support/v7/widget/RecyclerView;

    if-nez v0, :cond_0

    .line 9120
    const/4 v0, -0x1

    .line 9122
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->mOwnerRecyclerView:Lflyme/support/v7/widget/RecyclerView;

    # invokes: Lflyme/support/v7/widget/RecyclerView;->getAdapterPositionFor(Lflyme/support/v7/widget/RecyclerView$ViewHolder;)I
    invoke-static {v0, p0}, Lflyme/support/v7/widget/RecyclerView;->access$5600(Lflyme/support/v7/widget/RecyclerView;Lflyme/support/v7/widget/RecyclerView$ViewHolder;)I

    move-result v0

    goto :goto_0
.end method

.method public final getItemId()J
    .locals 2

    .prologue
    .line 9147
    iget-wide v0, p0, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->mItemId:J

    return-wide v0
.end method

.method public final getItemViewType()I
    .locals 1

    .prologue
    .line 9154
    iget v0, p0, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->mItemViewType:I

    return v0
.end method

.method public final getLayoutPosition()I
    .locals 2

    .prologue
    .line 9093
    iget v0, p0, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->mPreLayoutPosition:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->mPosition:I

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->mPreLayoutPosition:I

    goto :goto_0
.end method

.method public final getOldPosition()I
    .locals 1

    .prologue
    .line 9137
    iget v0, p0, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->mOldPosition:I

    return v0
.end method

.method getUnmodifiedPayloads()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 9246
    iget v0, p0, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->mFlags:I

    and-int/lit16 v0, v0, 0x400

    if-nez v0, :cond_2

    .line 9247
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->mPayloads:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->mPayloads:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 9249
    :cond_0
    sget-object v0, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->FULLUPDATE_PAYLOADS:Ljava/util/List;

    .line 9255
    :goto_0
    return-object v0

    .line 9252
    :cond_1
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->mUnmodifiedPayloads:Ljava/util/List;

    goto :goto_0

    .line 9255
    :cond_2
    sget-object v0, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->FULLUPDATE_PAYLOADS:Ljava/util/List;

    goto :goto_0
.end method

.method hasAnyOfTheFlags(I)Z
    .locals 1
    .param p1, "flags"    # I

    .prologue
    .line 9203
    iget v0, p0, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->mFlags:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isAdapterPositionUnknown()Z
    .locals 1

    .prologue
    .line 9211
    iget v0, p0, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->mFlags:I

    and-int/lit16 v0, v0, 0x200

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->isInvalid()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isBound()Z
    .locals 1

    .prologue
    .line 9195
    iget v0, p0, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->mFlags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isInvalid()Z
    .locals 1

    .prologue
    .line 9187
    iget v0, p0, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->mFlags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isRecyclable()Z
    .locals 1

    .prologue
    .line 9352
    iget v0, p0, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->mFlags:I

    and-int/lit8 v0, v0, 0x10

    if-nez v0, :cond_0

    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->hasTransientState(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isRemoved()Z
    .locals 1

    .prologue
    .line 9199
    iget v0, p0, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->mFlags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isScrap()Z
    .locals 1

    .prologue
    .line 9158
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->mScrapContainer:Lflyme/support/v7/widget/RecyclerView$Recycler;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isTmpDetached()Z
    .locals 1

    .prologue
    .line 9207
    iget v0, p0, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->mFlags:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isUpdated()Z
    .locals 1

    .prologue
    .line 9373
    iget v0, p0, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->mFlags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method needsUpdate()Z
    .locals 1

    .prologue
    .line 9191
    iget v0, p0, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->mFlags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method offsetPosition(IZ)V
    .locals 2
    .param p1, "offset"    # I
    .param p2, "applyToPreLayout"    # Z

    .prologue
    const/4 v1, -0x1

    .line 9027
    iget v0, p0, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->mOldPosition:I

    if-ne v0, v1, :cond_0

    .line 9028
    iget v0, p0, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->mPosition:I

    iput v0, p0, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->mOldPosition:I

    .line 9030
    :cond_0
    iget v0, p0, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->mPreLayoutPosition:I

    if-ne v0, v1, :cond_1

    .line 9031
    iget v0, p0, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->mPosition:I

    iput v0, p0, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->mPreLayoutPosition:I

    .line 9033
    :cond_1
    if-eqz p2, :cond_2

    .line 9034
    iget v0, p0, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->mPreLayoutPosition:I

    add-int/2addr v0, p1

    iput v0, p0, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->mPreLayoutPosition:I

    .line 9036
    :cond_2
    iget v0, p0, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->mPosition:I

    add-int/2addr v0, p1

    iput v0, p0, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->mPosition:I

    .line 9037
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 9038
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lflyme/support/v7/widget/RecyclerView$LayoutParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lflyme/support/v7/widget/RecyclerView$LayoutParams;->mInsetsDirty:Z

    .line 9040
    :cond_3
    return-void
.end method

.method resetInternal()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 9260
    iput v3, p0, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->mFlags:I

    .line 9261
    iput v2, p0, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->mPosition:I

    .line 9262
    iput v2, p0, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->mOldPosition:I

    .line 9263
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->mItemId:J

    .line 9264
    iput v2, p0, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->mPreLayoutPosition:I

    .line 9265
    iput v3, p0, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->mIsRecyclableCount:I

    .line 9266
    iput-object v4, p0, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->mShadowedHolder:Lflyme/support/v7/widget/RecyclerView$ViewHolder;

    .line 9267
    iput-object v4, p0, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->mShadowingHolder:Lflyme/support/v7/widget/RecyclerView$ViewHolder;

    .line 9268
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->clearPayload()V

    .line 9269
    iput v3, p0, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->mWasImportantForAccessibilityBeforeHidden:I

    .line 9270
    return-void
.end method

.method saveOldPosition()V
    .locals 2

    .prologue
    .line 9048
    iget v0, p0, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->mOldPosition:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 9049
    iget v0, p0, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->mPosition:I

    iput v0, p0, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->mOldPosition:I

    .line 9051
    :cond_0
    return-void
.end method

.method setFlags(II)V
    .locals 2
    .param p1, "flags"    # I
    .param p2, "mask"    # I

    .prologue
    .line 9215
    iget v0, p0, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->mFlags:I

    xor-int/lit8 v1, p2, -0x1

    and-int/2addr v0, v1

    and-int v1, p1, p2

    or-int/2addr v0, v1

    iput v0, p0, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->mFlags:I

    .line 9216
    return-void
.end method

.method public final setIsRecyclable(Z)V
    .locals 3
    .param p1, "recyclable"    # Z

    .prologue
    .line 9327
    if-eqz p1, :cond_1

    iget v0, p0, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->mIsRecyclableCount:I

    add-int/lit8 v0, v0, -0x1

    :goto_0
    iput v0, p0, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->mIsRecyclableCount:I

    .line 9328
    iget v0, p0, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->mIsRecyclableCount:I

    if-gez v0, :cond_2

    .line 9329
    const/4 v0, 0x0

    iput v0, p0, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->mIsRecyclableCount:I

    .line 9334
    const-string v0, "View"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isRecyclable decremented below 0: unmatched pair of setIsRecyable() calls for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 9344
    :cond_0
    :goto_1
    return-void

    .line 9327
    :cond_1
    iget v0, p0, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->mIsRecyclableCount:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 9336
    :cond_2
    if-nez p1, :cond_3

    iget v0, p0, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->mIsRecyclableCount:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 9337
    iget v0, p0, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->mFlags:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->mFlags:I

    goto :goto_1

    .line 9338
    :cond_3
    if-eqz p1, :cond_0

    iget v0, p0, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->mIsRecyclableCount:I

    if-nez v0, :cond_0

    .line 9339
    iget v0, p0, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->mFlags:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->mFlags:I

    goto :goto_1
.end method

.method setScrapContainer(Lflyme/support/v7/widget/RecyclerView$Recycler;Z)V
    .locals 0
    .param p1, "recycler"    # Lflyme/support/v7/widget/RecyclerView$Recycler;
    .param p2, "isChangeScrap"    # Z

    .prologue
    .line 9182
    iput-object p1, p0, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->mScrapContainer:Lflyme/support/v7/widget/RecyclerView$Recycler;

    .line 9183
    iput-boolean p2, p0, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->mInChangeScrap:Z

    .line 9184
    return-void
.end method

.method shouldIgnore()Z
    .locals 1

    .prologue
    .line 9054
    iget v0, p0, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->mFlags:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 9294
    new-instance v0, Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ViewHolder{"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " position="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->mPosition:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->mItemId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", oldPos="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->mOldPosition:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", pLpos:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->mPreLayoutPosition:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9297
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->isScrap()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 9298
    const-string v1, " scrap "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v1, p0, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->mInChangeScrap:Z

    if-eqz v1, :cond_a

    const-string v1, "[changeScrap]"

    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9301
    :cond_0
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->isInvalid()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, " invalid"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9302
    :cond_1
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->isBound()Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, " unbound"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9303
    :cond_2
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->needsUpdate()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, " update"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9304
    :cond_3
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->isRemoved()Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, " removed"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9305
    :cond_4
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, " ignored"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9306
    :cond_5
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->isTmpDetached()Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, " tmpDetached"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9307
    :cond_6
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->isRecyclable()Z

    move-result v1

    if-nez v1, :cond_7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " not recyclable("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->mIsRecyclableCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9308
    :cond_7
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->isAdapterPositionUnknown()Z

    move-result v1

    if-eqz v1, :cond_8

    const-string v1, " undefined adapter position"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9310
    :cond_8
    iget-object v1, p0, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-nez v1, :cond_9

    const-string v1, " no parent"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9311
    :cond_9
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9312
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 9298
    :cond_a
    const-string v1, "[attachedScrap]"

    goto/16 :goto_0
.end method

.method unScrap()V
    .locals 1

    .prologue
    .line 9162
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->mScrapContainer:Lflyme/support/v7/widget/RecyclerView$Recycler;

    invoke-virtual {v0, p0}, Lflyme/support/v7/widget/RecyclerView$Recycler;->unscrapView(Lflyme/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 9163
    return-void
.end method

.method wasReturnedFromScrap()Z
    .locals 1

    .prologue
    .line 9166
    iget v0, p0, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->mFlags:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
