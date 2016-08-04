.class public final Lflyme/support/v7/widget/RecyclerView$Recycler;
.super Ljava/lang/Object;
.source "RecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lflyme/support/v7/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Recycler"
.end annotation


# instance fields
.field final mAttachedScrap:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lflyme/support/v7/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field final mCachedViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lflyme/support/v7/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field private mChangedScrap:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lflyme/support/v7/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field private mRecyclerPool:Lflyme/support/v7/widget/RecyclerView$RecycledViewPool;

.field private final mUnmodifiableAttachedScrap:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lflyme/support/v7/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field private mViewCacheExtension:Lflyme/support/v7/widget/RecyclerView$ViewCacheExtension;

.field private mViewCacheMax:I

.field final synthetic this$0:Lflyme/support/v7/widget/RecyclerView;


# direct methods
.method public constructor <init>(Lflyme/support/v7/widget/RecyclerView;)V
    .locals 1

    .prologue
    .line 4485
    iput-object p1, p0, Lflyme/support/v7/widget/RecyclerView$Recycler;->this$0:Lflyme/support/v7/widget/RecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4486
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lflyme/support/v7/widget/RecyclerView$Recycler;->mAttachedScrap:Ljava/util/ArrayList;

    .line 4487
    const/4 v0, 0x0

    iput-object v0, p0, Lflyme/support/v7/widget/RecyclerView$Recycler;->mChangedScrap:Ljava/util/ArrayList;

    .line 4489
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lflyme/support/v7/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    .line 4491
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView$Recycler;->mAttachedScrap:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lflyme/support/v7/widget/RecyclerView$Recycler;->mUnmodifiableAttachedScrap:Ljava/util/List;

    .line 4494
    const/4 v0, 0x2

    iput v0, p0, Lflyme/support/v7/widget/RecyclerView$Recycler;->mViewCacheMax:I

    return-void
.end method

.method static synthetic access$2900(Lflyme/support/v7/widget/RecyclerView$Recycler;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lflyme/support/v7/widget/RecyclerView$Recycler;

    .prologue
    .line 4485
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView$Recycler;->mChangedScrap:Ljava/util/ArrayList;

    return-object v0
.end method

.method private attachAccessibilityDelegate(Landroid/view/View;)V
    .locals 1
    .param p1, "itemView"    # Landroid/view/View;

    .prologue
    .line 4817
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView$Recycler;->this$0:Lflyme/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Lflyme/support/v7/widget/RecyclerView;->isAccessibilityEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4818
    invoke-static {p1}, Landroid/support/v4/view/ViewCompat;->getImportantForAccessibility(Landroid/view/View;)I

    move-result v0

    if-nez v0, :cond_0

    .line 4820
    const/4 v0, 0x1

    invoke-static {p1, v0}, Landroid/support/v4/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    .line 4823
    :cond_0
    invoke-static {p1}, Landroid/support/v4/view/ViewCompat;->hasAccessibilityDelegate(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 4824
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView$Recycler;->this$0:Lflyme/support/v7/widget/RecyclerView;

    # getter for: Lflyme/support/v7/widget/RecyclerView;->mAccessibilityDelegate:Lflyme/support/v7/widget/RecyclerViewAccessibilityDelegate;
    invoke-static {v0}, Lflyme/support/v7/widget/RecyclerView;->access$4700(Lflyme/support/v7/widget/RecyclerView;)Lflyme/support/v7/widget/RecyclerViewAccessibilityDelegate;

    move-result-object v0

    invoke-virtual {v0}, Lflyme/support/v7/widget/RecyclerViewAccessibilityDelegate;->getItemDelegate()Landroid/support/v4/view/AccessibilityDelegateCompat;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/support/v4/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroid/support/v4/view/AccessibilityDelegateCompat;)V

    .line 4828
    :cond_1
    return-void
.end method

.method private invalidateDisplayListInt(Landroid/view/ViewGroup;Z)V
    .locals 5
    .param p1, "viewGroup"    # Landroid/view/ViewGroup;
    .param p2, "invalidateThis"    # Z

    .prologue
    const/4 v4, 0x4

    .line 4837
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 4838
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 4839
    .local v1, "view":Landroid/view/View;
    instance-of v3, v1, Landroid/view/ViewGroup;

    if-eqz v3, :cond_0

    .line 4840
    check-cast v1, Landroid/view/ViewGroup;

    .end local v1    # "view":Landroid/view/View;
    const/4 v3, 0x1

    invoke-direct {p0, v1, v3}, Lflyme/support/v7/widget/RecyclerView$Recycler;->invalidateDisplayListInt(Landroid/view/ViewGroup;Z)V

    .line 4837
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 4843
    :cond_1
    if-nez p2, :cond_2

    .line 4855
    :goto_1
    return-void

    .line 4847
    :cond_2
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v3

    if-ne v3, v4, :cond_3

    .line 4848
    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 4849
    invoke-virtual {p1, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_1

    .line 4851
    :cond_3
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v2

    .line 4852
    .local v2, "visibility":I
    invoke-virtual {p1, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 4853
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_1
.end method

.method private invalidateDisplayListInt(Lflyme/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 2
    .param p1, "holder"    # Lflyme/support/v7/widget/RecyclerView$ViewHolder;

    .prologue
    .line 4831
    iget-object v0, p1, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 4832
    iget-object v0, p1, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lflyme/support/v7/widget/RecyclerView$Recycler;->invalidateDisplayListInt(Landroid/view/ViewGroup;Z)V

    .line 4834
    :cond_0
    return-void
.end method


# virtual methods
.method addViewHolderToRecycledViewPool(Lflyme/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 2
    .param p1, "holder"    # Lflyme/support/v7/widget/RecyclerView$ViewHolder;

    .prologue
    const/4 v1, 0x0

    .line 4986
    iget-object v0, p1, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v0, v1}, Landroid/support/v4/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroid/support/v4/view/AccessibilityDelegateCompat;)V

    .line 4987
    invoke-virtual {p0, p1}, Lflyme/support/v7/widget/RecyclerView$Recycler;->dispatchViewRecycled(Lflyme/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 4988
    iput-object v1, p1, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->mOwnerRecyclerView:Lflyme/support/v7/widget/RecyclerView;

    .line 4989
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView$Recycler;->getRecycledViewPool()Lflyme/support/v7/widget/RecyclerView$RecycledViewPool;

    move-result-object v0

    invoke-virtual {v0, p1}, Lflyme/support/v7/widget/RecyclerView$RecycledViewPool;->putRecycledView(Lflyme/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 4990
    return-void
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 4507
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView$Recycler;->mAttachedScrap:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 4508
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView$Recycler;->recycleAndClearCachedViews()V

    .line 4509
    return-void
.end method

.method clearOldPositions()V
    .locals 6

    .prologue
    .line 5374
    iget-object v5, p0, Lflyme/support/v7/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 5375
    .local v0, "cachedCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_0

    .line 5376
    iget-object v5, p0, Lflyme/support/v7/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lflyme/support/v7/widget/RecyclerView$ViewHolder;

    .line 5377
    .local v2, "holder":Lflyme/support/v7/widget/RecyclerView$ViewHolder;
    invoke-virtual {v2}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->clearOldPosition()V

    .line 5375
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 5379
    .end local v2    # "holder":Lflyme/support/v7/widget/RecyclerView$ViewHolder;
    :cond_0
    iget-object v5, p0, Lflyme/support/v7/widget/RecyclerView$Recycler;->mAttachedScrap:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 5380
    .local v4, "scrapCount":I
    const/4 v3, 0x0

    :goto_1
    if-ge v3, v4, :cond_1

    .line 5381
    iget-object v5, p0, Lflyme/support/v7/widget/RecyclerView$Recycler;->mAttachedScrap:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lflyme/support/v7/widget/RecyclerView$ViewHolder;

    invoke-virtual {v5}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->clearOldPosition()V

    .line 5380
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 5383
    :cond_1
    iget-object v5, p0, Lflyme/support/v7/widget/RecyclerView$Recycler;->mChangedScrap:Ljava/util/ArrayList;

    if-eqz v5, :cond_2

    .line 5384
    iget-object v5, p0, Lflyme/support/v7/widget/RecyclerView$Recycler;->mChangedScrap:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 5385
    .local v1, "changedScrapCount":I
    const/4 v3, 0x0

    :goto_2
    if-ge v3, v1, :cond_2

    .line 5386
    iget-object v5, p0, Lflyme/support/v7/widget/RecyclerView$Recycler;->mChangedScrap:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lflyme/support/v7/widget/RecyclerView$ViewHolder;

    invoke-virtual {v5}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->clearOldPosition()V

    .line 5385
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 5389
    .end local v1    # "changedScrapCount":I
    :cond_2
    return-void
.end method

.method clearScrap()V
    .locals 1

    .prologue
    .line 5060
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView$Recycler;->mAttachedScrap:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 5061
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView$Recycler;->mChangedScrap:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 5062
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView$Recycler;->mChangedScrap:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 5064
    :cond_0
    return-void
.end method

.method dispatchViewRecycled(Lflyme/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 1
    .param p1, "holder"    # Lflyme/support/v7/widget/RecyclerView$ViewHolder;

    .prologue
    .line 5218
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView$Recycler;->this$0:Lflyme/support/v7/widget/RecyclerView;

    # getter for: Lflyme/support/v7/widget/RecyclerView;->mRecyclerListener:Lflyme/support/v7/widget/RecyclerView$RecyclerListener;
    invoke-static {v0}, Lflyme/support/v7/widget/RecyclerView;->access$5200(Lflyme/support/v7/widget/RecyclerView;)Lflyme/support/v7/widget/RecyclerView$RecyclerListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5219
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView$Recycler;->this$0:Lflyme/support/v7/widget/RecyclerView;

    # getter for: Lflyme/support/v7/widget/RecyclerView;->mRecyclerListener:Lflyme/support/v7/widget/RecyclerView$RecyclerListener;
    invoke-static {v0}, Lflyme/support/v7/widget/RecyclerView;->access$5200(Lflyme/support/v7/widget/RecyclerView;)Lflyme/support/v7/widget/RecyclerView$RecyclerListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lflyme/support/v7/widget/RecyclerView$RecyclerListener;->onViewRecycled(Lflyme/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 5221
    :cond_0
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView$Recycler;->this$0:Lflyme/support/v7/widget/RecyclerView;

    # getter for: Lflyme/support/v7/widget/RecyclerView;->mAdapter:Lflyme/support/v7/widget/RecyclerView$Adapter;
    invoke-static {v0}, Lflyme/support/v7/widget/RecyclerView;->access$3100(Lflyme/support/v7/widget/RecyclerView;)Lflyme/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 5222
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView$Recycler;->this$0:Lflyme/support/v7/widget/RecyclerView;

    # getter for: Lflyme/support/v7/widget/RecyclerView;->mAdapter:Lflyme/support/v7/widget/RecyclerView$Adapter;
    invoke-static {v0}, Lflyme/support/v7/widget/RecyclerView;->access$3100(Lflyme/support/v7/widget/RecyclerView;)Lflyme/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lflyme/support/v7/widget/RecyclerView$Adapter;->onViewRecycled(Lflyme/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 5224
    :cond_1
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView$Recycler;->this$0:Lflyme/support/v7/widget/RecyclerView;

    iget-object v0, v0, Lflyme/support/v7/widget/RecyclerView;->mState:Lflyme/support/v7/widget/RecyclerView$State;

    if-eqz v0, :cond_2

    .line 5225
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView$Recycler;->this$0:Lflyme/support/v7/widget/RecyclerView;

    iget-object v0, v0, Lflyme/support/v7/widget/RecyclerView;->mViewInfoStore:Lflyme/support/v7/widget/ViewInfoStore;

    invoke-virtual {v0, p1}, Lflyme/support/v7/widget/ViewInfoStore;->removeViewHolder(Lflyme/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 5228
    :cond_2
    return-void
.end method

.method getChangedScrapViewForPosition(I)Lflyme/support/v7/widget/RecyclerView$ViewHolder;
    .locals 11
    .param p1, "position"    # I

    .prologue
    const/4 v6, 0x0

    const/16 v10, 0x20

    .line 5069
    iget-object v7, p0, Lflyme/support/v7/widget/RecyclerView$Recycler;->mChangedScrap:Ljava/util/ArrayList;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lflyme/support/v7/widget/RecyclerView$Recycler;->mChangedScrap:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    .local v0, "changedScrapSize":I
    if-nez v0, :cond_1

    .end local v0    # "changedScrapSize":I
    :cond_0
    move-object v1, v6

    .line 5094
    :goto_0
    return-object v1

    .line 5073
    .restart local v0    # "changedScrapSize":I
    :cond_1
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v0, :cond_3

    .line 5074
    iget-object v7, p0, Lflyme/support/v7/widget/RecyclerView$Recycler;->mChangedScrap:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lflyme/support/v7/widget/RecyclerView$ViewHolder;

    .line 5075
    .local v1, "holder":Lflyme/support/v7/widget/RecyclerView$ViewHolder;
    invoke-virtual {v1}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->wasReturnedFromScrap()Z

    move-result v7

    if-nez v7, :cond_2

    invoke-virtual {v1}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v7

    if-ne v7, p1, :cond_2

    .line 5076
    invoke-virtual {v1, v10}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->addFlags(I)V

    goto :goto_0

    .line 5073
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 5081
    .end local v1    # "holder":Lflyme/support/v7/widget/RecyclerView$ViewHolder;
    :cond_3
    iget-object v7, p0, Lflyme/support/v7/widget/RecyclerView$Recycler;->this$0:Lflyme/support/v7/widget/RecyclerView;

    # getter for: Lflyme/support/v7/widget/RecyclerView;->mAdapter:Lflyme/support/v7/widget/RecyclerView$Adapter;
    invoke-static {v7}, Lflyme/support/v7/widget/RecyclerView;->access$3100(Lflyme/support/v7/widget/RecyclerView;)Lflyme/support/v7/widget/RecyclerView$Adapter;

    move-result-object v7

    invoke-virtual {v7}, Lflyme/support/v7/widget/RecyclerView$Adapter;->hasStableIds()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 5082
    iget-object v7, p0, Lflyme/support/v7/widget/RecyclerView$Recycler;->this$0:Lflyme/support/v7/widget/RecyclerView;

    iget-object v7, v7, Lflyme/support/v7/widget/RecyclerView;->mAdapterHelper:Lflyme/support/v7/widget/AdapterHelper;

    invoke-virtual {v7, p1}, Lflyme/support/v7/widget/AdapterHelper;->findPositionOffset(I)I

    move-result v3

    .line 5083
    .local v3, "offsetPosition":I
    if-lez v3, :cond_5

    iget-object v7, p0, Lflyme/support/v7/widget/RecyclerView$Recycler;->this$0:Lflyme/support/v7/widget/RecyclerView;

    # getter for: Lflyme/support/v7/widget/RecyclerView;->mAdapter:Lflyme/support/v7/widget/RecyclerView$Adapter;
    invoke-static {v7}, Lflyme/support/v7/widget/RecyclerView;->access$3100(Lflyme/support/v7/widget/RecyclerView;)Lflyme/support/v7/widget/RecyclerView$Adapter;

    move-result-object v7

    invoke-virtual {v7}, Lflyme/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v7

    if-ge v3, v7, :cond_5

    .line 5084
    iget-object v7, p0, Lflyme/support/v7/widget/RecyclerView$Recycler;->this$0:Lflyme/support/v7/widget/RecyclerView;

    # getter for: Lflyme/support/v7/widget/RecyclerView;->mAdapter:Lflyme/support/v7/widget/RecyclerView$Adapter;
    invoke-static {v7}, Lflyme/support/v7/widget/RecyclerView;->access$3100(Lflyme/support/v7/widget/RecyclerView;)Lflyme/support/v7/widget/RecyclerView$Adapter;

    move-result-object v7

    invoke-virtual {v7, v3}, Lflyme/support/v7/widget/RecyclerView$Adapter;->getItemId(I)J

    move-result-wide v4

    .line 5085
    .local v4, "id":J
    const/4 v2, 0x0

    :goto_2
    if-ge v2, v0, :cond_5

    .line 5086
    iget-object v7, p0, Lflyme/support/v7/widget/RecyclerView$Recycler;->mChangedScrap:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lflyme/support/v7/widget/RecyclerView$ViewHolder;

    .line 5087
    .restart local v1    # "holder":Lflyme/support/v7/widget/RecyclerView$ViewHolder;
    invoke-virtual {v1}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->wasReturnedFromScrap()Z

    move-result v7

    if-nez v7, :cond_4

    invoke-virtual {v1}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->getItemId()J

    move-result-wide v8

    cmp-long v7, v8, v4

    if-nez v7, :cond_4

    .line 5088
    invoke-virtual {v1, v10}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->addFlags(I)V

    goto :goto_0

    .line 5085
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .end local v1    # "holder":Lflyme/support/v7/widget/RecyclerView$ViewHolder;
    .end local v3    # "offsetPosition":I
    .end local v4    # "id":J
    :cond_5
    move-object v1, v6

    .line 5094
    goto :goto_0
.end method

.method getRecycledViewPool()Lflyme/support/v7/widget/RecyclerView$RecycledViewPool;
    .locals 1

    .prologue
    .line 5322
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView$Recycler;->mRecyclerPool:Lflyme/support/v7/widget/RecyclerView$RecycledViewPool;

    if-nez v0, :cond_0

    .line 5323
    new-instance v0, Lflyme/support/v7/widget/RecyclerView$RecycledViewPool;

    invoke-direct {v0}, Lflyme/support/v7/widget/RecyclerView$RecycledViewPool;-><init>()V

    iput-object v0, p0, Lflyme/support/v7/widget/RecyclerView$Recycler;->mRecyclerPool:Lflyme/support/v7/widget/RecyclerView$RecycledViewPool;

    .line 5325
    :cond_0
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView$Recycler;->mRecyclerPool:Lflyme/support/v7/widget/RecyclerView$RecycledViewPool;

    return-object v0
.end method

.method getScrapCount()I
    .locals 1

    .prologue
    .line 5052
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView$Recycler;->mAttachedScrap:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getScrapList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lflyme/support/v7/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4530
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView$Recycler;->mUnmodifiableAttachedScrap:Ljava/util/List;

    return-object v0
.end method

.method getScrapViewAt(I)Landroid/view/View;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 5056
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView$Recycler;->mAttachedScrap:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lflyme/support/v7/widget/RecyclerView$ViewHolder;

    iget-object v0, v0, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    return-object v0
.end method

.method getScrapViewForId(JIZ)Lflyme/support/v7/widget/RecyclerView$ViewHolder;
    .locals 7
    .param p1, "id"    # J
    .param p3, "type"    # I
    .param p4, "dryRun"    # Z

    .prologue
    .line 5167
    iget-object v4, p0, Lflyme/support/v7/widget/RecyclerView$Recycler;->mAttachedScrap:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 5168
    .local v1, "count":I
    add-int/lit8 v3, v1, -0x1

    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_3

    .line 5169
    iget-object v4, p0, Lflyme/support/v7/widget/RecyclerView$Recycler;->mAttachedScrap:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lflyme/support/v7/widget/RecyclerView$ViewHolder;

    .line 5170
    .local v2, "holder":Lflyme/support/v7/widget/RecyclerView$ViewHolder;
    invoke-virtual {v2}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->getItemId()J

    move-result-wide v4

    cmp-long v4, v4, p1

    if-nez v4, :cond_2

    invoke-virtual {v2}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->wasReturnedFromScrap()Z

    move-result v4

    if-nez v4, :cond_2

    .line 5171
    invoke-virtual {v2}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v4

    if-ne p3, v4, :cond_1

    .line 5172
    const/16 v4, 0x20

    invoke-virtual {v2, v4}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->addFlags(I)V

    .line 5173
    invoke-virtual {v2}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->isRemoved()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 5182
    iget-object v4, p0, Lflyme/support/v7/widget/RecyclerView$Recycler;->this$0:Lflyme/support/v7/widget/RecyclerView;

    iget-object v4, v4, Lflyme/support/v7/widget/RecyclerView;->mState:Lflyme/support/v7/widget/RecyclerView$State;

    invoke-virtual {v4}, Lflyme/support/v7/widget/RecyclerView$State;->isPreLayout()Z

    move-result v4

    if-nez v4, :cond_0

    .line 5183
    const/4 v4, 0x2

    const/16 v5, 0xe

    invoke-virtual {v2, v4, v5}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->setFlags(II)V

    .line 5214
    .end local v2    # "holder":Lflyme/support/v7/widget/RecyclerView$ViewHolder;
    :cond_0
    :goto_1
    return-object v2

    .line 5188
    .restart local v2    # "holder":Lflyme/support/v7/widget/RecyclerView$ViewHolder;
    :cond_1
    if-nez p4, :cond_2

    .line 5192
    iget-object v4, p0, Lflyme/support/v7/widget/RecyclerView$Recycler;->mAttachedScrap:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 5193
    iget-object v4, p0, Lflyme/support/v7/widget/RecyclerView$Recycler;->this$0:Lflyme/support/v7/widget/RecyclerView;

    iget-object v5, v2, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lflyme/support/v7/widget/RecyclerView;->removeDetachedView(Landroid/view/View;Z)V

    .line 5194
    iget-object v4, v2, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p0, v4}, Lflyme/support/v7/widget/RecyclerView$Recycler;->quickRecycleScrapView(Landroid/view/View;)V

    .line 5168
    :cond_2
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 5200
    .end local v2    # "holder":Lflyme/support/v7/widget/RecyclerView$ViewHolder;
    :cond_3
    iget-object v4, p0, Lflyme/support/v7/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 5201
    .local v0, "cacheSize":I
    add-int/lit8 v3, v0, -0x1

    :goto_2
    if-ltz v3, :cond_6

    .line 5202
    iget-object v4, p0, Lflyme/support/v7/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lflyme/support/v7/widget/RecyclerView$ViewHolder;

    .line 5203
    .restart local v2    # "holder":Lflyme/support/v7/widget/RecyclerView$ViewHolder;
    invoke-virtual {v2}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->getItemId()J

    move-result-wide v4

    cmp-long v4, v4, p1

    if-nez v4, :cond_5

    .line 5204
    invoke-virtual {v2}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v4

    if-ne p3, v4, :cond_4

    .line 5205
    if-nez p4, :cond_0

    .line 5206
    iget-object v4, p0, Lflyme/support/v7/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 5209
    :cond_4
    if-nez p4, :cond_5

    .line 5210
    invoke-virtual {p0, v3}, Lflyme/support/v7/widget/RecyclerView$Recycler;->recycleCachedViewAt(I)V

    .line 5201
    :cond_5
    add-int/lit8 v3, v3, -0x1

    goto :goto_2

    .line 5214
    .end local v2    # "holder":Lflyme/support/v7/widget/RecyclerView$ViewHolder;
    :cond_6
    const/4 v2, 0x0

    goto :goto_1
.end method

.method getScrapViewForPosition(IIZ)Lflyme/support/v7/widget/RecyclerView$ViewHolder;
    .locals 11
    .param p1, "position"    # I
    .param p2, "type"    # I
    .param p3, "dryRun"    # Z

    .prologue
    const/4 v10, -0x1

    .line 5107
    iget-object v7, p0, Lflyme/support/v7/widget/RecyclerView$Recycler;->mAttachedScrap:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 5110
    .local v4, "scrapCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v4, :cond_1

    .line 5111
    iget-object v7, p0, Lflyme/support/v7/widget/RecyclerView$Recycler;->mAttachedScrap:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lflyme/support/v7/widget/RecyclerView$ViewHolder;

    .line 5112
    .local v1, "holder":Lflyme/support/v7/widget/RecyclerView$ViewHolder;
    invoke-virtual {v1}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->wasReturnedFromScrap()Z

    move-result v7

    if-nez v7, :cond_4

    invoke-virtual {v1}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v7

    if-ne v7, p1, :cond_4

    invoke-virtual {v1}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->isInvalid()Z

    move-result v7

    if-nez v7, :cond_4

    iget-object v7, p0, Lflyme/support/v7/widget/RecyclerView$Recycler;->this$0:Lflyme/support/v7/widget/RecyclerView;

    iget-object v7, v7, Lflyme/support/v7/widget/RecyclerView;->mState:Lflyme/support/v7/widget/RecyclerView$State;

    # getter for: Lflyme/support/v7/widget/RecyclerView$State;->mInPreLayout:Z
    invoke-static {v7}, Lflyme/support/v7/widget/RecyclerView$State;->access$2400(Lflyme/support/v7/widget/RecyclerView$State;)Z

    move-result v7

    if-nez v7, :cond_0

    invoke-virtual {v1}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->isRemoved()Z

    move-result v7

    if-nez v7, :cond_4

    .line 5114
    :cond_0
    if-eq p2, v10, :cond_2

    invoke-virtual {v1}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v7

    if-eq v7, p2, :cond_2

    .line 5115
    const-string v7, "RecyclerView"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Scrap view for position "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " isn\'t dirty but has"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " wrong view type! (found "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " but expected "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5125
    .end local v1    # "holder":Lflyme/support/v7/widget/RecyclerView$ViewHolder;
    :cond_1
    if-nez p3, :cond_6

    .line 5126
    iget-object v7, p0, Lflyme/support/v7/widget/RecyclerView$Recycler;->this$0:Lflyme/support/v7/widget/RecyclerView;

    iget-object v7, v7, Lflyme/support/v7/widget/RecyclerView;->mChildHelper:Lflyme/support/v7/widget/ChildHelper;

    invoke-virtual {v7, p1, p2}, Lflyme/support/v7/widget/ChildHelper;->findHiddenNonRemovedView(II)Landroid/view/View;

    move-result-object v6

    .line 5127
    .local v6, "view":Landroid/view/View;
    if-eqz v6, :cond_6

    .line 5130
    invoke-static {v6}, Lflyme/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lflyme/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v5

    .line 5131
    .local v5, "vh":Lflyme/support/v7/widget/RecyclerView$ViewHolder;
    iget-object v7, p0, Lflyme/support/v7/widget/RecyclerView$Recycler;->this$0:Lflyme/support/v7/widget/RecyclerView;

    iget-object v7, v7, Lflyme/support/v7/widget/RecyclerView;->mChildHelper:Lflyme/support/v7/widget/ChildHelper;

    invoke-virtual {v7, v6}, Lflyme/support/v7/widget/ChildHelper;->unhide(Landroid/view/View;)V

    .line 5132
    iget-object v7, p0, Lflyme/support/v7/widget/RecyclerView$Recycler;->this$0:Lflyme/support/v7/widget/RecyclerView;

    iget-object v7, v7, Lflyme/support/v7/widget/RecyclerView;->mChildHelper:Lflyme/support/v7/widget/ChildHelper;

    invoke-virtual {v7, v6}, Lflyme/support/v7/widget/ChildHelper;->indexOfChild(Landroid/view/View;)I

    move-result v3

    .line 5133
    .local v3, "layoutIndex":I
    if-ne v3, v10, :cond_5

    .line 5134
    new-instance v7, Ljava/lang/IllegalStateException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "layout index should not be -1 after unhiding a view:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 5120
    .end local v3    # "layoutIndex":I
    .end local v5    # "vh":Lflyme/support/v7/widget/RecyclerView$ViewHolder;
    .end local v6    # "view":Landroid/view/View;
    .restart local v1    # "holder":Lflyme/support/v7/widget/RecyclerView$ViewHolder;
    :cond_2
    const/16 v7, 0x20

    invoke-virtual {v1, v7}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->addFlags(I)V

    .line 5162
    .end local v1    # "holder":Lflyme/support/v7/widget/RecyclerView$ViewHolder;
    :cond_3
    :goto_1
    return-object v1

    .line 5110
    .restart local v1    # "holder":Lflyme/support/v7/widget/RecyclerView$ViewHolder;
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 5137
    .end local v1    # "holder":Lflyme/support/v7/widget/RecyclerView$ViewHolder;
    .restart local v3    # "layoutIndex":I
    .restart local v5    # "vh":Lflyme/support/v7/widget/RecyclerView$ViewHolder;
    .restart local v6    # "view":Landroid/view/View;
    :cond_5
    iget-object v7, p0, Lflyme/support/v7/widget/RecyclerView$Recycler;->this$0:Lflyme/support/v7/widget/RecyclerView;

    iget-object v7, v7, Lflyme/support/v7/widget/RecyclerView;->mChildHelper:Lflyme/support/v7/widget/ChildHelper;

    invoke-virtual {v7, v3}, Lflyme/support/v7/widget/ChildHelper;->detachViewFromParent(I)V

    .line 5138
    invoke-virtual {p0, v6}, Lflyme/support/v7/widget/RecyclerView$Recycler;->scrapView(Landroid/view/View;)V

    .line 5139
    const/16 v7, 0x2020

    invoke-virtual {v5, v7}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->addFlags(I)V

    move-object v1, v5

    .line 5141
    goto :goto_1

    .line 5146
    .end local v3    # "layoutIndex":I
    .end local v5    # "vh":Lflyme/support/v7/widget/RecyclerView$ViewHolder;
    .end local v6    # "view":Landroid/view/View;
    :cond_6
    iget-object v7, p0, Lflyme/support/v7/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 5147
    .local v0, "cacheSize":I
    const/4 v2, 0x0

    :goto_2
    if-ge v2, v0, :cond_8

    .line 5148
    iget-object v7, p0, Lflyme/support/v7/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lflyme/support/v7/widget/RecyclerView$ViewHolder;

    .line 5151
    .restart local v1    # "holder":Lflyme/support/v7/widget/RecyclerView$ViewHolder;
    invoke-virtual {v1}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->isInvalid()Z

    move-result v7

    if-nez v7, :cond_7

    invoke-virtual {v1}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v7

    if-ne v7, p1, :cond_7

    .line 5152
    if-nez p3, :cond_3

    .line 5153
    iget-object v7, p0, Lflyme/support/v7/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 5147
    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 5162
    .end local v1    # "holder":Lflyme/support/v7/widget/RecyclerView$ViewHolder;
    :cond_8
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public getViewForPosition(I)Landroid/view/View;
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 4666
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Lflyme/support/v7/widget/RecyclerView$Recycler;->getViewForPosition(IZ)Landroid/view/View;

    move-result-object v0

    .line 4667
    .local v0, "view":Landroid/view/View;
    iget-object v1, p0, Lflyme/support/v7/widget/RecyclerView$Recycler;->this$0:Lflyme/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v0, p1}, Lflyme/support/v7/widget/RecyclerView;->setupChild(Landroid/view/View;I)V

    .line 4668
    return-object v0
.end method

.method getViewForPosition(IZ)Landroid/view/View;
    .locals 13
    .param p1, "position"    # I
    .param p2, "dryRun"    # Z

    .prologue
    .line 4672
    if-ltz p1, :cond_0

    iget-object v10, p0, Lflyme/support/v7/widget/RecyclerView$Recycler;->this$0:Lflyme/support/v7/widget/RecyclerView;

    iget-object v10, v10, Lflyme/support/v7/widget/RecyclerView;->mState:Lflyme/support/v7/widget/RecyclerView$State;

    invoke-virtual {v10}, Lflyme/support/v7/widget/RecyclerView$State;->getItemCount()I

    move-result v10

    if-lt p1, v10, :cond_1

    .line 4673
    :cond_0
    new-instance v10, Ljava/lang/IndexOutOfBoundsException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Invalid item position "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "). Item count:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lflyme/support/v7/widget/RecyclerView$Recycler;->this$0:Lflyme/support/v7/widget/RecyclerView;

    iget-object v12, v12, Lflyme/support/v7/widget/RecyclerView;->mState:Lflyme/support/v7/widget/RecyclerView$State;

    invoke-virtual {v12}, Lflyme/support/v7/widget/RecyclerView$State;->getItemCount()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 4676
    :cond_1
    const/4 v2, 0x0

    .line 4677
    .local v2, "fromScrap":Z
    const/4 v3, 0x0

    .line 4679
    .local v3, "holder":Lflyme/support/v7/widget/RecyclerView$ViewHolder;
    iget-object v10, p0, Lflyme/support/v7/widget/RecyclerView$Recycler;->this$0:Lflyme/support/v7/widget/RecyclerView;

    iget-object v10, v10, Lflyme/support/v7/widget/RecyclerView;->mState:Lflyme/support/v7/widget/RecyclerView$State;

    invoke-virtual {v10}, Lflyme/support/v7/widget/RecyclerView$State;->isPreLayout()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 4680
    invoke-virtual {p0, p1}, Lflyme/support/v7/widget/RecyclerView$Recycler;->getChangedScrapViewForPosition(I)Lflyme/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v3

    .line 4681
    if-eqz v3, :cond_7

    const/4 v2, 0x1

    .line 4684
    :cond_2
    :goto_0
    if-nez v3, :cond_5

    .line 4685
    const/4 v10, -0x1

    invoke-virtual {p0, p1, v10, p2}, Lflyme/support/v7/widget/RecyclerView$Recycler;->getScrapViewForPosition(IIZ)Lflyme/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v3

    .line 4686
    if-eqz v3, :cond_5

    .line 4687
    invoke-virtual {p0, v3}, Lflyme/support/v7/widget/RecyclerView$Recycler;->validateViewHolderForOffsetPosition(Lflyme/support/v7/widget/RecyclerView$ViewHolder;)Z

    move-result v10

    if-nez v10, :cond_9

    .line 4689
    if-nez p2, :cond_4

    .line 4692
    const/4 v10, 0x4

    invoke-virtual {v3, v10}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->addFlags(I)V

    .line 4693
    invoke-virtual {v3}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->isScrap()Z

    move-result v10

    if-eqz v10, :cond_8

    .line 4694
    iget-object v10, p0, Lflyme/support/v7/widget/RecyclerView$Recycler;->this$0:Lflyme/support/v7/widget/RecyclerView;

    iget-object v11, v3, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Lflyme/support/v7/widget/RecyclerView;->removeDetachedView(Landroid/view/View;Z)V

    .line 4695
    invoke-virtual {v3}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->unScrap()V

    .line 4699
    :cond_3
    :goto_1
    invoke-virtual {p0, v3}, Lflyme/support/v7/widget/RecyclerView$Recycler;->recycleViewHolderInternal(Lflyme/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 4701
    :cond_4
    const/4 v3, 0x0

    .line 4707
    :cond_5
    :goto_2
    if-nez v3, :cond_f

    .line 4708
    iget-object v10, p0, Lflyme/support/v7/widget/RecyclerView$Recycler;->this$0:Lflyme/support/v7/widget/RecyclerView;

    iget-object v10, v10, Lflyme/support/v7/widget/RecyclerView;->mAdapterHelper:Lflyme/support/v7/widget/AdapterHelper;

    invoke-virtual {v10, p1}, Lflyme/support/v7/widget/AdapterHelper;->findPositionOffset(I)I

    move-result v6

    .line 4709
    .local v6, "offsetPosition":I
    if-ltz v6, :cond_6

    iget-object v10, p0, Lflyme/support/v7/widget/RecyclerView$Recycler;->this$0:Lflyme/support/v7/widget/RecyclerView;

    # getter for: Lflyme/support/v7/widget/RecyclerView;->mAdapter:Lflyme/support/v7/widget/RecyclerView$Adapter;
    invoke-static {v10}, Lflyme/support/v7/widget/RecyclerView;->access$3100(Lflyme/support/v7/widget/RecyclerView;)Lflyme/support/v7/widget/RecyclerView$Adapter;

    move-result-object v10

    invoke-virtual {v10}, Lflyme/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v10

    if-lt v6, v10, :cond_a

    .line 4710
    :cond_6
    new-instance v10, Ljava/lang/IndexOutOfBoundsException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Inconsistency detected. Invalid item position "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "(offset:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ")."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "state:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lflyme/support/v7/widget/RecyclerView$Recycler;->this$0:Lflyme/support/v7/widget/RecyclerView;

    iget-object v12, v12, Lflyme/support/v7/widget/RecyclerView;->mState:Lflyme/support/v7/widget/RecyclerView$State;

    invoke-virtual {v12}, Lflyme/support/v7/widget/RecyclerView$State;->getItemCount()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 4681
    .end local v6    # "offsetPosition":I
    :cond_7
    const/4 v2, 0x0

    goto :goto_0

    .line 4696
    :cond_8
    invoke-virtual {v3}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->wasReturnedFromScrap()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 4697
    invoke-virtual {v3}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->clearReturnedFromScrapFlag()V

    goto :goto_1

    .line 4703
    :cond_9
    const/4 v2, 0x1

    goto :goto_2

    .line 4715
    .restart local v6    # "offsetPosition":I
    :cond_a
    iget-object v10, p0, Lflyme/support/v7/widget/RecyclerView$Recycler;->this$0:Lflyme/support/v7/widget/RecyclerView;

    # getter for: Lflyme/support/v7/widget/RecyclerView;->mAdapter:Lflyme/support/v7/widget/RecyclerView$Adapter;
    invoke-static {v10}, Lflyme/support/v7/widget/RecyclerView;->access$3100(Lflyme/support/v7/widget/RecyclerView;)Lflyme/support/v7/widget/RecyclerView$Adapter;

    move-result-object v10

    invoke-virtual {v10, v6}, Lflyme/support/v7/widget/RecyclerView$Adapter;->getItemViewType(I)I

    move-result v8

    .line 4717
    .local v8, "type":I
    iget-object v10, p0, Lflyme/support/v7/widget/RecyclerView$Recycler;->this$0:Lflyme/support/v7/widget/RecyclerView;

    # getter for: Lflyme/support/v7/widget/RecyclerView;->mAdapter:Lflyme/support/v7/widget/RecyclerView$Adapter;
    invoke-static {v10}, Lflyme/support/v7/widget/RecyclerView;->access$3100(Lflyme/support/v7/widget/RecyclerView;)Lflyme/support/v7/widget/RecyclerView$Adapter;

    move-result-object v10

    invoke-virtual {v10}, Lflyme/support/v7/widget/RecyclerView$Adapter;->hasStableIds()Z

    move-result v10

    if-eqz v10, :cond_b

    .line 4718
    iget-object v10, p0, Lflyme/support/v7/widget/RecyclerView$Recycler;->this$0:Lflyme/support/v7/widget/RecyclerView;

    # getter for: Lflyme/support/v7/widget/RecyclerView;->mAdapter:Lflyme/support/v7/widget/RecyclerView$Adapter;
    invoke-static {v10}, Lflyme/support/v7/widget/RecyclerView;->access$3100(Lflyme/support/v7/widget/RecyclerView;)Lflyme/support/v7/widget/RecyclerView$Adapter;

    move-result-object v10

    invoke-virtual {v10, v6}, Lflyme/support/v7/widget/RecyclerView$Adapter;->getItemId(I)J

    move-result-wide v10

    invoke-virtual {p0, v10, v11, v8, p2}, Lflyme/support/v7/widget/RecyclerView$Recycler;->getScrapViewForId(JIZ)Lflyme/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v3

    .line 4719
    if-eqz v3, :cond_b

    .line 4721
    iput v6, v3, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->mPosition:I

    .line 4722
    const/4 v2, 0x1

    .line 4725
    :cond_b
    if-nez v3, :cond_d

    iget-object v10, p0, Lflyme/support/v7/widget/RecyclerView$Recycler;->mViewCacheExtension:Lflyme/support/v7/widget/RecyclerView$ViewCacheExtension;

    if-eqz v10, :cond_d

    .line 4728
    iget-object v10, p0, Lflyme/support/v7/widget/RecyclerView$Recycler;->mViewCacheExtension:Lflyme/support/v7/widget/RecyclerView$ViewCacheExtension;

    invoke-virtual {v10, p0, p1, v8}, Lflyme/support/v7/widget/RecyclerView$ViewCacheExtension;->getViewForPositionAndType(Lflyme/support/v7/widget/RecyclerView$Recycler;II)Landroid/view/View;

    move-result-object v9

    .line 4730
    .local v9, "view":Landroid/view/View;
    if-eqz v9, :cond_d

    .line 4731
    iget-object v10, p0, Lflyme/support/v7/widget/RecyclerView$Recycler;->this$0:Lflyme/support/v7/widget/RecyclerView;

    invoke-virtual {v10, v9}, Lflyme/support/v7/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Lflyme/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v3

    .line 4732
    if-nez v3, :cond_c

    .line 4733
    new-instance v10, Ljava/lang/IllegalArgumentException;

    const-string v11, "getViewForPositionAndType returned a view which does not have a ViewHolder"

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 4735
    :cond_c
    invoke-virtual {v3}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v10

    if-eqz v10, :cond_d

    .line 4736
    new-instance v10, Ljava/lang/IllegalArgumentException;

    const-string v11, "getViewForPositionAndType returned a view that is ignored. You must call stopIgnoring before returning this view."

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 4742
    .end local v9    # "view":Landroid/view/View;
    :cond_d
    if-nez v3, :cond_e

    .line 4749
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView$Recycler;->getRecycledViewPool()Lflyme/support/v7/widget/RecyclerView$RecycledViewPool;

    move-result-object v10

    invoke-virtual {v10, v8}, Lflyme/support/v7/widget/RecyclerView$RecycledViewPool;->getRecycledView(I)Lflyme/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v3

    .line 4750
    if-eqz v3, :cond_e

    .line 4751
    invoke-virtual {v3}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->resetInternal()V

    .line 4752
    # getter for: Lflyme/support/v7/widget/RecyclerView;->FORCE_INVALIDATE_DISPLAY_LIST:Z
    invoke-static {}, Lflyme/support/v7/widget/RecyclerView;->access$4500()Z

    move-result v10

    if-eqz v10, :cond_e

    .line 4753
    invoke-direct {p0, v3}, Lflyme/support/v7/widget/RecyclerView$Recycler;->invalidateDisplayListInt(Lflyme/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 4757
    :cond_e
    if-nez v3, :cond_f

    .line 4758
    iget-object v10, p0, Lflyme/support/v7/widget/RecyclerView$Recycler;->this$0:Lflyme/support/v7/widget/RecyclerView;

    # getter for: Lflyme/support/v7/widget/RecyclerView;->mAdapter:Lflyme/support/v7/widget/RecyclerView$Adapter;
    invoke-static {v10}, Lflyme/support/v7/widget/RecyclerView;->access$3100(Lflyme/support/v7/widget/RecyclerView;)Lflyme/support/v7/widget/RecyclerView$Adapter;

    move-result-object v10

    iget-object v11, p0, Lflyme/support/v7/widget/RecyclerView$Recycler;->this$0:Lflyme/support/v7/widget/RecyclerView;

    invoke-virtual {v10, v11, v8}, Lflyme/support/v7/widget/RecyclerView$Adapter;->createViewHolder(Landroid/view/ViewGroup;I)Lflyme/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v3

    .line 4768
    .end local v6    # "offsetPosition":I
    .end local v8    # "type":I
    :cond_f
    if-eqz v2, :cond_10

    iget-object v10, p0, Lflyme/support/v7/widget/RecyclerView$Recycler;->this$0:Lflyme/support/v7/widget/RecyclerView;

    iget-object v10, v10, Lflyme/support/v7/widget/RecyclerView;->mState:Lflyme/support/v7/widget/RecyclerView$State;

    invoke-virtual {v10}, Lflyme/support/v7/widget/RecyclerView$State;->isPreLayout()Z

    move-result v10

    if-nez v10, :cond_10

    const/16 v10, 0x2000

    invoke-virtual {v3, v10}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->hasAnyOfTheFlags(I)Z

    move-result v10

    if-eqz v10, :cond_10

    .line 4770
    const/4 v10, 0x0

    const/16 v11, 0x2000

    invoke-virtual {v3, v10, v11}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->setFlags(II)V

    .line 4771
    iget-object v10, p0, Lflyme/support/v7/widget/RecyclerView$Recycler;->this$0:Lflyme/support/v7/widget/RecyclerView;

    iget-object v10, v10, Lflyme/support/v7/widget/RecyclerView;->mState:Lflyme/support/v7/widget/RecyclerView$State;

    # getter for: Lflyme/support/v7/widget/RecyclerView$State;->mRunSimpleAnimations:Z
    invoke-static {v10}, Lflyme/support/v7/widget/RecyclerView$State;->access$2500(Lflyme/support/v7/widget/RecyclerView$State;)Z

    move-result v10

    if-eqz v10, :cond_10

    .line 4772
    invoke-static {v3}, Lflyme/support/v7/widget/RecyclerView$ItemAnimator;->buildAdapterChangeFlagsForAnimations(Lflyme/support/v7/widget/RecyclerView$ViewHolder;)I

    move-result v1

    .line 4774
    .local v1, "changeFlags":I
    or-int/lit16 v1, v1, 0x1000

    .line 4775
    iget-object v10, p0, Lflyme/support/v7/widget/RecyclerView$Recycler;->this$0:Lflyme/support/v7/widget/RecyclerView;

    iget-object v10, v10, Lflyme/support/v7/widget/RecyclerView;->mItemAnimator:Lflyme/support/v7/widget/RecyclerView$ItemAnimator;

    iget-object v11, p0, Lflyme/support/v7/widget/RecyclerView$Recycler;->this$0:Lflyme/support/v7/widget/RecyclerView;

    iget-object v11, v11, Lflyme/support/v7/widget/RecyclerView;->mState:Lflyme/support/v7/widget/RecyclerView$State;

    invoke-virtual {v3}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->getUnmodifiedPayloads()Ljava/util/List;

    move-result-object v12

    invoke-virtual {v10, v11, v3, v1, v12}, Lflyme/support/v7/widget/RecyclerView$ItemAnimator;->recordPreLayoutInformation(Lflyme/support/v7/widget/RecyclerView$State;Lflyme/support/v7/widget/RecyclerView$ViewHolder;ILjava/util/List;)Lflyme/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    move-result-object v4

    .line 4777
    .local v4, "info":Lflyme/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
    iget-object v10, p0, Lflyme/support/v7/widget/RecyclerView$Recycler;->this$0:Lflyme/support/v7/widget/RecyclerView;

    # invokes: Lflyme/support/v7/widget/RecyclerView;->recordAnimationInfoIfBouncedHiddenView(Lflyme/support/v7/widget/RecyclerView$ViewHolder;Lflyme/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V
    invoke-static {v10, v3, v4}, Lflyme/support/v7/widget/RecyclerView;->access$4600(Lflyme/support/v7/widget/RecyclerView;Lflyme/support/v7/widget/RecyclerView$ViewHolder;Lflyme/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V

    .line 4781
    .end local v1    # "changeFlags":I
    .end local v4    # "info":Lflyme/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
    :cond_10
    const/4 v0, 0x0

    .line 4782
    .local v0, "bound":Z
    iget-object v10, p0, Lflyme/support/v7/widget/RecyclerView$Recycler;->this$0:Lflyme/support/v7/widget/RecyclerView;

    iget-object v10, v10, Lflyme/support/v7/widget/RecyclerView;->mState:Lflyme/support/v7/widget/RecyclerView$State;

    invoke-virtual {v10}, Lflyme/support/v7/widget/RecyclerView$State;->isPreLayout()Z

    move-result v10

    if-eqz v10, :cond_12

    invoke-virtual {v3}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->isBound()Z

    move-result v10

    if-eqz v10, :cond_12

    .line 4784
    iput p1, v3, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->mPreLayoutPosition:I

    .line 4800
    :cond_11
    :goto_3
    iget-object v10, v3, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    .line 4802
    .local v5, "lp":Landroid/view/ViewGroup$LayoutParams;
    if-nez v5, :cond_14

    .line 4803
    iget-object v10, p0, Lflyme/support/v7/widget/RecyclerView$Recycler;->this$0:Lflyme/support/v7/widget/RecyclerView;

    invoke-virtual {v10}, Lflyme/support/v7/widget/RecyclerView;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Lflyme/support/v7/widget/RecyclerView$LayoutParams;

    .line 4804
    .local v7, "rvLayoutParams":Lflyme/support/v7/widget/RecyclerView$LayoutParams;
    iget-object v10, v3, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v10, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 4811
    :goto_4
    iput-object v3, v7, Lflyme/support/v7/widget/RecyclerView$LayoutParams;->mViewHolder:Lflyme/support/v7/widget/RecyclerView$ViewHolder;

    .line 4812
    if-eqz v2, :cond_16

    if-eqz v0, :cond_16

    const/4 v10, 0x1

    :goto_5
    iput-boolean v10, v7, Lflyme/support/v7/widget/RecyclerView$LayoutParams;->mPendingInvalidate:Z

    .line 4813
    iget-object v10, v3, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    return-object v10

    .line 4785
    .end local v5    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .end local v7    # "rvLayoutParams":Lflyme/support/v7/widget/RecyclerView$LayoutParams;
    :cond_12
    invoke-virtual {v3}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->isBound()Z

    move-result v10

    if-eqz v10, :cond_13

    invoke-virtual {v3}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->needsUpdate()Z

    move-result v10

    if-nez v10, :cond_13

    invoke-virtual {v3}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->isInvalid()Z

    move-result v10

    if-eqz v10, :cond_11

    .line 4790
    :cond_13
    iget-object v10, p0, Lflyme/support/v7/widget/RecyclerView$Recycler;->this$0:Lflyme/support/v7/widget/RecyclerView;

    iget-object v10, v10, Lflyme/support/v7/widget/RecyclerView;->mAdapterHelper:Lflyme/support/v7/widget/AdapterHelper;

    invoke-virtual {v10, p1}, Lflyme/support/v7/widget/AdapterHelper;->findPositionOffset(I)I

    move-result v6

    .line 4791
    .restart local v6    # "offsetPosition":I
    iget-object v10, p0, Lflyme/support/v7/widget/RecyclerView$Recycler;->this$0:Lflyme/support/v7/widget/RecyclerView;

    iput-object v10, v3, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->mOwnerRecyclerView:Lflyme/support/v7/widget/RecyclerView;

    .line 4792
    iget-object v10, p0, Lflyme/support/v7/widget/RecyclerView$Recycler;->this$0:Lflyme/support/v7/widget/RecyclerView;

    # getter for: Lflyme/support/v7/widget/RecyclerView;->mAdapter:Lflyme/support/v7/widget/RecyclerView$Adapter;
    invoke-static {v10}, Lflyme/support/v7/widget/RecyclerView;->access$3100(Lflyme/support/v7/widget/RecyclerView;)Lflyme/support/v7/widget/RecyclerView$Adapter;

    move-result-object v10

    invoke-virtual {v10, v3, v6}, Lflyme/support/v7/widget/RecyclerView$Adapter;->bindViewHolder(Lflyme/support/v7/widget/RecyclerView$ViewHolder;I)V

    .line 4793
    iget-object v10, v3, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-direct {p0, v10}, Lflyme/support/v7/widget/RecyclerView$Recycler;->attachAccessibilityDelegate(Landroid/view/View;)V

    .line 4794
    const/4 v0, 0x1

    .line 4795
    iget-object v10, p0, Lflyme/support/v7/widget/RecyclerView$Recycler;->this$0:Lflyme/support/v7/widget/RecyclerView;

    iget-object v10, v10, Lflyme/support/v7/widget/RecyclerView;->mState:Lflyme/support/v7/widget/RecyclerView$State;

    invoke-virtual {v10}, Lflyme/support/v7/widget/RecyclerView$State;->isPreLayout()Z

    move-result v10

    if-eqz v10, :cond_11

    .line 4796
    iput p1, v3, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->mPreLayoutPosition:I

    goto :goto_3

    .line 4805
    .end local v6    # "offsetPosition":I
    .restart local v5    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_14
    iget-object v10, p0, Lflyme/support/v7/widget/RecyclerView$Recycler;->this$0:Lflyme/support/v7/widget/RecyclerView;

    invoke-virtual {v10, v5}, Lflyme/support/v7/widget/RecyclerView;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v10

    if-nez v10, :cond_15

    .line 4806
    iget-object v10, p0, Lflyme/support/v7/widget/RecyclerView$Recycler;->this$0:Lflyme/support/v7/widget/RecyclerView;

    invoke-virtual {v10, v5}, Lflyme/support/v7/widget/RecyclerView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Lflyme/support/v7/widget/RecyclerView$LayoutParams;

    .line 4807
    .restart local v7    # "rvLayoutParams":Lflyme/support/v7/widget/RecyclerView$LayoutParams;
    iget-object v10, v3, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v10, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_4

    .end local v7    # "rvLayoutParams":Lflyme/support/v7/widget/RecyclerView$LayoutParams;
    :cond_15
    move-object v7, v5

    .line 4809
    check-cast v7, Lflyme/support/v7/widget/RecyclerView$LayoutParams;

    .restart local v7    # "rvLayoutParams":Lflyme/support/v7/widget/RecyclerView$LayoutParams;
    goto :goto_4

    .line 4812
    :cond_16
    const/4 v10, 0x0

    goto :goto_5
.end method

.method markItemDecorInsetsDirty()V
    .locals 5

    .prologue
    .line 5392
    iget-object v4, p0, Lflyme/support/v7/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 5393
    .local v0, "cachedCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 5394
    iget-object v4, p0, Lflyme/support/v7/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lflyme/support/v7/widget/RecyclerView$ViewHolder;

    .line 5395
    .local v1, "holder":Lflyme/support/v7/widget/RecyclerView$ViewHolder;
    iget-object v4, v1, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lflyme/support/v7/widget/RecyclerView$LayoutParams;

    .line 5396
    .local v3, "layoutParams":Lflyme/support/v7/widget/RecyclerView$LayoutParams;
    if-eqz v3, :cond_0

    .line 5397
    const/4 v4, 0x1

    iput-boolean v4, v3, Lflyme/support/v7/widget/RecyclerView$LayoutParams;->mInsetsDirty:Z

    .line 5393
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5400
    .end local v1    # "holder":Lflyme/support/v7/widget/RecyclerView$ViewHolder;
    .end local v3    # "layoutParams":Lflyme/support/v7/widget/RecyclerView$LayoutParams;
    :cond_1
    return-void
.end method

.method markKnownViewsInvalid()V
    .locals 4

    .prologue
    .line 5358
    iget-object v3, p0, Lflyme/support/v7/widget/RecyclerView$Recycler;->this$0:Lflyme/support/v7/widget/RecyclerView;

    # getter for: Lflyme/support/v7/widget/RecyclerView;->mAdapter:Lflyme/support/v7/widget/RecyclerView$Adapter;
    invoke-static {v3}, Lflyme/support/v7/widget/RecyclerView;->access$3100(Lflyme/support/v7/widget/RecyclerView;)Lflyme/support/v7/widget/RecyclerView$Adapter;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lflyme/support/v7/widget/RecyclerView$Recycler;->this$0:Lflyme/support/v7/widget/RecyclerView;

    # getter for: Lflyme/support/v7/widget/RecyclerView;->mAdapter:Lflyme/support/v7/widget/RecyclerView$Adapter;
    invoke-static {v3}, Lflyme/support/v7/widget/RecyclerView;->access$3100(Lflyme/support/v7/widget/RecyclerView;)Lflyme/support/v7/widget/RecyclerView$Adapter;

    move-result-object v3

    invoke-virtual {v3}, Lflyme/support/v7/widget/RecyclerView$Adapter;->hasStableIds()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 5359
    iget-object v3, p0, Lflyme/support/v7/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 5360
    .local v0, "cachedCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 5361
    iget-object v3, p0, Lflyme/support/v7/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lflyme/support/v7/widget/RecyclerView$ViewHolder;

    .line 5362
    .local v1, "holder":Lflyme/support/v7/widget/RecyclerView$ViewHolder;
    if-eqz v1, :cond_0

    .line 5363
    const/4 v3, 0x6

    invoke-virtual {v1, v3}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->addFlags(I)V

    .line 5364
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->addChangePayload(Ljava/lang/Object;)V

    .line 5360
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5369
    .end local v0    # "cachedCount":I
    .end local v1    # "holder":Lflyme/support/v7/widget/RecyclerView$ViewHolder;
    .end local v2    # "i":I
    :cond_1
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView$Recycler;->recycleAndClearCachedViews()V

    .line 5371
    :cond_2
    return-void
.end method

.method offsetPositionRecordsForInsert(II)V
    .locals 4
    .param p1, "insertedAt"    # I
    .param p2, "count"    # I

    .prologue
    .line 5266
    iget-object v3, p0, Lflyme/support/v7/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 5267
    .local v0, "cachedCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 5268
    iget-object v3, p0, Lflyme/support/v7/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lflyme/support/v7/widget/RecyclerView$ViewHolder;

    .line 5269
    .local v1, "holder":Lflyme/support/v7/widget/RecyclerView$ViewHolder;
    if-eqz v1, :cond_0

    iget v3, v1, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->mPosition:I

    if-lt v3, p1, :cond_0

    .line 5274
    const/4 v3, 0x1

    invoke-virtual {v1, p2, v3}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->offsetPosition(IZ)V

    .line 5267
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5277
    .end local v1    # "holder":Lflyme/support/v7/widget/RecyclerView$ViewHolder;
    :cond_1
    return-void
.end method

.method offsetPositionRecordsForMove(II)V
    .locals 8
    .param p1, "from"    # I
    .param p2, "to"    # I

    .prologue
    const/4 v7, 0x0

    .line 5238
    if-ge p1, p2, :cond_1

    .line 5239
    move v5, p1

    .line 5240
    .local v5, "start":I
    move v1, p2

    .line 5241
    .local v1, "end":I
    const/4 v4, -0x1

    .line 5247
    .local v4, "inBetweenOffset":I
    :goto_0
    iget-object v6, p0, Lflyme/support/v7/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 5248
    .local v0, "cachedCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v0, :cond_4

    .line 5249
    iget-object v6, p0, Lflyme/support/v7/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lflyme/support/v7/widget/RecyclerView$ViewHolder;

    .line 5250
    .local v2, "holder":Lflyme/support/v7/widget/RecyclerView$ViewHolder;
    if-eqz v2, :cond_0

    iget v6, v2, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->mPosition:I

    if-lt v6, v5, :cond_0

    iget v6, v2, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->mPosition:I

    if-le v6, v1, :cond_2

    .line 5248
    :cond_0
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 5243
    .end local v0    # "cachedCount":I
    .end local v1    # "end":I
    .end local v2    # "holder":Lflyme/support/v7/widget/RecyclerView$ViewHolder;
    .end local v3    # "i":I
    .end local v4    # "inBetweenOffset":I
    .end local v5    # "start":I
    :cond_1
    move v5, p2

    .line 5244
    .restart local v5    # "start":I
    move v1, p1

    .line 5245
    .restart local v1    # "end":I
    const/4 v4, 0x1

    .restart local v4    # "inBetweenOffset":I
    goto :goto_0

    .line 5253
    .restart local v0    # "cachedCount":I
    .restart local v2    # "holder":Lflyme/support/v7/widget/RecyclerView$ViewHolder;
    .restart local v3    # "i":I
    :cond_2
    iget v6, v2, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->mPosition:I

    if-ne v6, p1, :cond_3

    .line 5254
    sub-int v6, p2, p1

    invoke-virtual {v2, v6, v7}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->offsetPosition(IZ)V

    goto :goto_2

    .line 5256
    :cond_3
    invoke-virtual {v2, v4, v7}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->offsetPosition(IZ)V

    goto :goto_2

    .line 5263
    .end local v2    # "holder":Lflyme/support/v7/widget/RecyclerView$ViewHolder;
    :cond_4
    return-void
.end method

.method offsetPositionRecordsForRemove(IIZ)V
    .locals 5
    .param p1, "removedFrom"    # I
    .param p2, "count"    # I
    .param p3, "applyToPreLayout"    # Z

    .prologue
    .line 5286
    add-int v3, p1, p2

    .line 5287
    .local v3, "removedEnd":I
    iget-object v4, p0, Lflyme/support/v7/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 5288
    .local v0, "cachedCount":I
    add-int/lit8 v2, v0, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_2

    .line 5289
    iget-object v4, p0, Lflyme/support/v7/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lflyme/support/v7/widget/RecyclerView$ViewHolder;

    .line 5290
    .local v1, "holder":Lflyme/support/v7/widget/RecyclerView$ViewHolder;
    if-eqz v1, :cond_0

    .line 5291
    iget v4, v1, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->mPosition:I

    if-lt v4, v3, :cond_1

    .line 5297
    neg-int v4, p2

    invoke-virtual {v1, v4, p3}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->offsetPosition(IZ)V

    .line 5288
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 5298
    :cond_1
    iget v4, v1, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->mPosition:I

    if-lt v4, p1, :cond_0

    .line 5300
    const/16 v4, 0x8

    invoke-virtual {v1, v4}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->addFlags(I)V

    .line 5301
    invoke-virtual {p0, v2}, Lflyme/support/v7/widget/RecyclerView$Recycler;->recycleCachedViewAt(I)V

    goto :goto_1

    .line 5305
    .end local v1    # "holder":Lflyme/support/v7/widget/RecyclerView$ViewHolder;
    :cond_2
    return-void
.end method

.method onAdapterChanged(Lflyme/support/v7/widget/RecyclerView$Adapter;Lflyme/support/v7/widget/RecyclerView$Adapter;Z)V
    .locals 1
    .param p1, "oldAdapter"    # Lflyme/support/v7/widget/RecyclerView$Adapter;
    .param p2, "newAdapter"    # Lflyme/support/v7/widget/RecyclerView$Adapter;
    .param p3, "compatibleWithPrevious"    # Z

    .prologue
    .line 5232
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView$Recycler;->clear()V

    .line 5233
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView$Recycler;->getRecycledViewPool()Lflyme/support/v7/widget/RecyclerView$RecycledViewPool;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lflyme/support/v7/widget/RecyclerView$RecycledViewPool;->onAdapterChanged(Lflyme/support/v7/widget/RecyclerView$Adapter;Lflyme/support/v7/widget/RecyclerView$Adapter;Z)V

    .line 5234
    return-void
.end method

.method quickRecycleScrapView(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 4998
    invoke-static {p1}, Lflyme/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lflyme/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    .line 4999
    .local v0, "holder":Lflyme/support/v7/widget/RecyclerView$ViewHolder;
    const/4 v1, 0x0

    # setter for: Lflyme/support/v7/widget/RecyclerView$ViewHolder;->mScrapContainer:Lflyme/support/v7/widget/RecyclerView$Recycler;
    invoke-static {v0, v1}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->access$4902(Lflyme/support/v7/widget/RecyclerView$ViewHolder;Lflyme/support/v7/widget/RecyclerView$Recycler;)Lflyme/support/v7/widget/RecyclerView$Recycler;

    .line 5000
    const/4 v1, 0x0

    # setter for: Lflyme/support/v7/widget/RecyclerView$ViewHolder;->mInChangeScrap:Z
    invoke-static {v0, v1}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->access$5002(Lflyme/support/v7/widget/RecyclerView$ViewHolder;Z)Z

    .line 5001
    invoke-virtual {v0}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->clearReturnedFromScrapFlag()V

    .line 5002
    invoke-virtual {p0, v0}, Lflyme/support/v7/widget/RecyclerView$Recycler;->recycleViewHolderInternal(Lflyme/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 5003
    return-void
.end method

.method recycleAndClearCachedViews()V
    .locals 3

    .prologue
    .line 4892
    iget-object v2, p0, Lflyme/support/v7/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 4893
    .local v0, "count":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 4894
    invoke-virtual {p0, v1}, Lflyme/support/v7/widget/RecyclerView$Recycler;->recycleCachedViewAt(I)V

    .line 4893
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 4896
    :cond_0
    iget-object v2, p0, Lflyme/support/v7/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 4897
    return-void
.end method

.method recycleCachedViewAt(I)V
    .locals 2
    .param p1, "cachedViewIndex"    # I

    .prologue
    .line 4914
    iget-object v1, p0, Lflyme/support/v7/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lflyme/support/v7/widget/RecyclerView$ViewHolder;

    .line 4918
    .local v0, "viewHolder":Lflyme/support/v7/widget/RecyclerView$ViewHolder;
    invoke-virtual {p0, v0}, Lflyme/support/v7/widget/RecyclerView$Recycler;->addViewHolderToRecycledViewPool(Lflyme/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 4919
    iget-object v1, p0, Lflyme/support/v7/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 4920
    return-void
.end method

.method public recycleView(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 4870
    invoke-static {p1}, Lflyme/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lflyme/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    .line 4871
    .local v0, "holder":Lflyme/support/v7/widget/RecyclerView$ViewHolder;
    invoke-virtual {v0}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->isTmpDetached()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4872
    iget-object v1, p0, Lflyme/support/v7/widget/RecyclerView$Recycler;->this$0:Lflyme/support/v7/widget/RecyclerView;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Lflyme/support/v7/widget/RecyclerView;->removeDetachedView(Landroid/view/View;Z)V

    .line 4874
    :cond_0
    invoke-virtual {v0}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->isScrap()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4875
    invoke-virtual {v0}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->unScrap()V

    .line 4879
    :cond_1
    :goto_0
    invoke-virtual {p0, v0}, Lflyme/support/v7/widget/RecyclerView$Recycler;->recycleViewHolderInternal(Lflyme/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 4880
    return-void

    .line 4876
    :cond_2
    invoke-virtual {v0}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->wasReturnedFromScrap()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4877
    invoke-virtual {v0}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->clearReturnedFromScrapFlag()V

    goto :goto_0
.end method

.method recycleViewHolderInternal(Lflyme/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 10
    .param p1, "holder"    # Lflyme/support/v7/widget/RecyclerView$ViewHolder;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 4928
    invoke-virtual {p1}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->isScrap()Z

    move-result v7

    if-nez v7, :cond_0

    iget-object v7, p1, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 4929
    :cond_0
    new-instance v7, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Scrapped or attached views may not be recycled. isScrap:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->isScrap()Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " isAttached:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p1, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v9

    if-eqz v9, :cond_1

    :goto_0
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v7, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_1
    move v5, v6

    goto :goto_0

    .line 4935
    :cond_2
    invoke-virtual {p1}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->isTmpDetached()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 4936
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Tmp detached view should be removed from RecyclerView before it can be recycled: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 4940
    :cond_3
    invoke-virtual {p1}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 4941
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Trying to recycle an ignored view holder. You should first call stopIgnoringView(view) before calling recycle."

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 4945
    :cond_4
    # invokes: Lflyme/support/v7/widget/RecyclerView$ViewHolder;->doesTransientStatePreventRecycling()Z
    invoke-static {p1}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->access$4800(Lflyme/support/v7/widget/RecyclerView$ViewHolder;)Z

    move-result v4

    .line 4947
    .local v4, "transientStatePreventsRecycling":Z
    iget-object v7, p0, Lflyme/support/v7/widget/RecyclerView$Recycler;->this$0:Lflyme/support/v7/widget/RecyclerView;

    # getter for: Lflyme/support/v7/widget/RecyclerView;->mAdapter:Lflyme/support/v7/widget/RecyclerView$Adapter;
    invoke-static {v7}, Lflyme/support/v7/widget/RecyclerView;->access$3100(Lflyme/support/v7/widget/RecyclerView;)Lflyme/support/v7/widget/RecyclerView$Adapter;

    move-result-object v7

    if-eqz v7, :cond_a

    if-eqz v4, :cond_a

    iget-object v7, p0, Lflyme/support/v7/widget/RecyclerView$Recycler;->this$0:Lflyme/support/v7/widget/RecyclerView;

    # getter for: Lflyme/support/v7/widget/RecyclerView;->mAdapter:Lflyme/support/v7/widget/RecyclerView$Adapter;
    invoke-static {v7}, Lflyme/support/v7/widget/RecyclerView;->access$3100(Lflyme/support/v7/widget/RecyclerView;)Lflyme/support/v7/widget/RecyclerView$Adapter;

    move-result-object v7

    invoke-virtual {v7, p1}, Lflyme/support/v7/widget/RecyclerView$Adapter;->onFailedToRecycleView(Lflyme/support/v7/widget/RecyclerView$ViewHolder;)Z

    move-result v7

    if-eqz v7, :cond_a

    move v2, v5

    .line 4950
    .local v2, "forceRecycle":Z
    :goto_1
    const/4 v0, 0x0

    .line 4951
    .local v0, "cached":Z
    const/4 v3, 0x0

    .line 4956
    .local v3, "recycled":Z
    if-nez v2, :cond_5

    invoke-virtual {p1}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->isRecyclable()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 4957
    :cond_5
    const/16 v5, 0xe

    invoke-virtual {p1, v5}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->hasAnyOfTheFlags(I)Z

    move-result v5

    if-nez v5, :cond_7

    .line 4960
    iget-object v5, p0, Lflyme/support/v7/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 4961
    .local v1, "cachedViewSize":I
    iget v5, p0, Lflyme/support/v7/widget/RecyclerView$Recycler;->mViewCacheMax:I

    if-ne v1, v5, :cond_6

    if-lez v1, :cond_6

    .line 4962
    invoke-virtual {p0, v6}, Lflyme/support/v7/widget/RecyclerView$Recycler;->recycleCachedViewAt(I)V

    .line 4964
    :cond_6
    iget v5, p0, Lflyme/support/v7/widget/RecyclerView$Recycler;->mViewCacheMax:I

    if-ge v1, v5, :cond_7

    .line 4965
    iget-object v5, p0, Lflyme/support/v7/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4966
    const/4 v0, 0x1

    .line 4969
    .end local v1    # "cachedViewSize":I
    :cond_7
    if-nez v0, :cond_8

    .line 4970
    invoke-virtual {p0, p1}, Lflyme/support/v7/widget/RecyclerView$Recycler;->addViewHolderToRecycledViewPool(Lflyme/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 4971
    const/4 v3, 0x1

    .line 4979
    :cond_8
    iget-object v5, p0, Lflyme/support/v7/widget/RecyclerView$Recycler;->this$0:Lflyme/support/v7/widget/RecyclerView;

    iget-object v5, v5, Lflyme/support/v7/widget/RecyclerView;->mViewInfoStore:Lflyme/support/v7/widget/ViewInfoStore;

    invoke-virtual {v5, p1}, Lflyme/support/v7/widget/ViewInfoStore;->removeViewHolder(Lflyme/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 4980
    if-nez v0, :cond_9

    if-nez v3, :cond_9

    if-eqz v4, :cond_9

    .line 4981
    const/4 v5, 0x0

    iput-object v5, p1, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->mOwnerRecyclerView:Lflyme/support/v7/widget/RecyclerView;

    .line 4983
    :cond_9
    return-void

    .end local v0    # "cached":Z
    .end local v2    # "forceRecycle":Z
    .end local v3    # "recycled":Z
    :cond_a
    move v2, v6

    .line 4947
    goto :goto_1
.end method

.method scrapView(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 5015
    invoke-static {p1}, Lflyme/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lflyme/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    .line 5016
    .local v0, "holder":Lflyme/support/v7/widget/RecyclerView$ViewHolder;
    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->hasAnyOfTheFlags(I)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->isUpdated()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lflyme/support/v7/widget/RecyclerView$Recycler;->this$0:Lflyme/support/v7/widget/RecyclerView;

    # invokes: Lflyme/support/v7/widget/RecyclerView;->canReuseUpdatedViewHolder(Lflyme/support/v7/widget/RecyclerView$ViewHolder;)Z
    invoke-static {v1, v0}, Lflyme/support/v7/widget/RecyclerView;->access$5100(Lflyme/support/v7/widget/RecyclerView;Lflyme/support/v7/widget/RecyclerView$ViewHolder;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 5018
    :cond_0
    invoke-virtual {v0}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->isInvalid()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->isRemoved()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lflyme/support/v7/widget/RecyclerView$Recycler;->this$0:Lflyme/support/v7/widget/RecyclerView;

    # getter for: Lflyme/support/v7/widget/RecyclerView;->mAdapter:Lflyme/support/v7/widget/RecyclerView$Adapter;
    invoke-static {v1}, Lflyme/support/v7/widget/RecyclerView;->access$3100(Lflyme/support/v7/widget/RecyclerView;)Lflyme/support/v7/widget/RecyclerView$Adapter;

    move-result-object v1

    invoke-virtual {v1}, Lflyme/support/v7/widget/RecyclerView$Adapter;->hasStableIds()Z

    move-result v1

    if-nez v1, :cond_1

    .line 5019
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Called scrap view with an invalid view. Invalid views cannot be reused from scrap, they should rebound from recycler pool."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 5023
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->setScrapContainer(Lflyme/support/v7/widget/RecyclerView$Recycler;Z)V

    .line 5024
    iget-object v1, p0, Lflyme/support/v7/widget/RecyclerView$Recycler;->mAttachedScrap:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5032
    :goto_0
    return-void

    .line 5026
    :cond_2
    iget-object v1, p0, Lflyme/support/v7/widget/RecyclerView$Recycler;->mChangedScrap:Ljava/util/ArrayList;

    if-nez v1, :cond_3

    .line 5027
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lflyme/support/v7/widget/RecyclerView$Recycler;->mChangedScrap:Ljava/util/ArrayList;

    .line 5029
    :cond_3
    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->setScrapContainer(Lflyme/support/v7/widget/RecyclerView$Recycler;Z)V

    .line 5030
    iget-object v1, p0, Lflyme/support/v7/widget/RecyclerView$Recycler;->mChangedScrap:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method setAdapterPositionsAsUnknown()V
    .locals 4

    .prologue
    .line 5348
    iget-object v3, p0, Lflyme/support/v7/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 5349
    .local v0, "cachedCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 5350
    iget-object v3, p0, Lflyme/support/v7/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lflyme/support/v7/widget/RecyclerView$ViewHolder;

    .line 5351
    .local v1, "holder":Lflyme/support/v7/widget/RecyclerView$ViewHolder;
    if-eqz v1, :cond_0

    .line 5352
    const/16 v3, 0x200

    invoke-virtual {v1, v3}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->addFlags(I)V

    .line 5349
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5355
    .end local v1    # "holder":Lflyme/support/v7/widget/RecyclerView$ViewHolder;
    :cond_1
    return-void
.end method

.method unscrapView(Lflyme/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 1
    .param p1, "holder"    # Lflyme/support/v7/widget/RecyclerView$ViewHolder;

    .prologue
    .line 5041
    # getter for: Lflyme/support/v7/widget/RecyclerView$ViewHolder;->mInChangeScrap:Z
    invoke-static {p1}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->access$5000(Lflyme/support/v7/widget/RecyclerView$ViewHolder;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5042
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView$Recycler;->mChangedScrap:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 5046
    :goto_0
    const/4 v0, 0x0

    # setter for: Lflyme/support/v7/widget/RecyclerView$ViewHolder;->mScrapContainer:Lflyme/support/v7/widget/RecyclerView$Recycler;
    invoke-static {p1, v0}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->access$4902(Lflyme/support/v7/widget/RecyclerView$ViewHolder;Lflyme/support/v7/widget/RecyclerView$Recycler;)Lflyme/support/v7/widget/RecyclerView$Recycler;

    .line 5047
    const/4 v0, 0x0

    # setter for: Lflyme/support/v7/widget/RecyclerView$ViewHolder;->mInChangeScrap:Z
    invoke-static {p1, v0}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->access$5002(Lflyme/support/v7/widget/RecyclerView$ViewHolder;Z)Z

    .line 5048
    invoke-virtual {p1}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->clearReturnedFromScrapFlag()V

    .line 5049
    return-void

    .line 5044
    :cond_0
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView$Recycler;->mAttachedScrap:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method validateViewHolderForOffsetPosition(Lflyme/support/v7/widget/RecyclerView$ViewHolder;)Z
    .locals 8
    .param p1, "holder"    # Lflyme/support/v7/widget/RecyclerView$ViewHolder;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 4544
    invoke-virtual {p1}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->isRemoved()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 4549
    iget-object v1, p0, Lflyme/support/v7/widget/RecyclerView$Recycler;->this$0:Lflyme/support/v7/widget/RecyclerView;

    iget-object v1, v1, Lflyme/support/v7/widget/RecyclerView;->mState:Lflyme/support/v7/widget/RecyclerView$State;

    invoke-virtual {v1}, Lflyme/support/v7/widget/RecyclerView$State;->isPreLayout()Z

    move-result v1

    .line 4565
    :cond_0
    :goto_0
    return v1

    .line 4551
    :cond_1
    iget v3, p1, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->mPosition:I

    if-ltz v3, :cond_2

    iget v3, p1, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->mPosition:I

    iget-object v4, p0, Lflyme/support/v7/widget/RecyclerView$Recycler;->this$0:Lflyme/support/v7/widget/RecyclerView;

    # getter for: Lflyme/support/v7/widget/RecyclerView;->mAdapter:Lflyme/support/v7/widget/RecyclerView$Adapter;
    invoke-static {v4}, Lflyme/support/v7/widget/RecyclerView;->access$3100(Lflyme/support/v7/widget/RecyclerView;)Lflyme/support/v7/widget/RecyclerView$Adapter;

    move-result-object v4

    invoke-virtual {v4}, Lflyme/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v4

    if-lt v3, v4, :cond_3

    .line 4552
    :cond_2
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Inconsistency detected. Invalid view holder adapter position"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 4555
    :cond_3
    iget-object v3, p0, Lflyme/support/v7/widget/RecyclerView$Recycler;->this$0:Lflyme/support/v7/widget/RecyclerView;

    iget-object v3, v3, Lflyme/support/v7/widget/RecyclerView;->mState:Lflyme/support/v7/widget/RecyclerView$State;

    invoke-virtual {v3}, Lflyme/support/v7/widget/RecyclerView$State;->isPreLayout()Z

    move-result v3

    if-nez v3, :cond_4

    .line 4557
    iget-object v3, p0, Lflyme/support/v7/widget/RecyclerView$Recycler;->this$0:Lflyme/support/v7/widget/RecyclerView;

    # getter for: Lflyme/support/v7/widget/RecyclerView;->mAdapter:Lflyme/support/v7/widget/RecyclerView$Adapter;
    invoke-static {v3}, Lflyme/support/v7/widget/RecyclerView;->access$3100(Lflyme/support/v7/widget/RecyclerView;)Lflyme/support/v7/widget/RecyclerView$Adapter;

    move-result-object v3

    iget v4, p1, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->mPosition:I

    invoke-virtual {v3, v4}, Lflyme/support/v7/widget/RecyclerView$Adapter;->getItemViewType(I)I

    move-result v0

    .line 4558
    .local v0, "type":I
    invoke-virtual {p1}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v3

    if-eq v0, v3, :cond_4

    move v1, v2

    .line 4559
    goto :goto_0

    .line 4562
    .end local v0    # "type":I
    :cond_4
    iget-object v3, p0, Lflyme/support/v7/widget/RecyclerView$Recycler;->this$0:Lflyme/support/v7/widget/RecyclerView;

    # getter for: Lflyme/support/v7/widget/RecyclerView;->mAdapter:Lflyme/support/v7/widget/RecyclerView$Adapter;
    invoke-static {v3}, Lflyme/support/v7/widget/RecyclerView;->access$3100(Lflyme/support/v7/widget/RecyclerView;)Lflyme/support/v7/widget/RecyclerView$Adapter;

    move-result-object v3

    invoke-virtual {v3}, Lflyme/support/v7/widget/RecyclerView$Adapter;->hasStableIds()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4563
    invoke-virtual {p1}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->getItemId()J

    move-result-wide v4

    iget-object v3, p0, Lflyme/support/v7/widget/RecyclerView$Recycler;->this$0:Lflyme/support/v7/widget/RecyclerView;

    # getter for: Lflyme/support/v7/widget/RecyclerView;->mAdapter:Lflyme/support/v7/widget/RecyclerView$Adapter;
    invoke-static {v3}, Lflyme/support/v7/widget/RecyclerView;->access$3100(Lflyme/support/v7/widget/RecyclerView;)Lflyme/support/v7/widget/RecyclerView$Adapter;

    move-result-object v3

    iget v6, p1, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->mPosition:I

    invoke-virtual {v3, v6}, Lflyme/support/v7/widget/RecyclerView$Adapter;->getItemId(I)J

    move-result-wide v6

    cmp-long v3, v4, v6

    if-eqz v3, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method viewRangeUpdate(II)V
    .locals 6
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I

    .prologue
    .line 5329
    add-int v4, p1, p2

    .line 5330
    .local v4, "positionEnd":I
    iget-object v5, p0, Lflyme/support/v7/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 5331
    .local v0, "cachedCount":I
    add-int/lit8 v2, v0, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_2

    .line 5332
    iget-object v5, p0, Lflyme/support/v7/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lflyme/support/v7/widget/RecyclerView$ViewHolder;

    .line 5333
    .local v1, "holder":Lflyme/support/v7/widget/RecyclerView$ViewHolder;
    if-nez v1, :cond_1

    .line 5331
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 5337
    :cond_1
    invoke-virtual {v1}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v3

    .line 5338
    .local v3, "pos":I
    if-lt v3, p1, :cond_0

    if-ge v3, v4, :cond_0

    .line 5339
    const/4 v5, 0x2

    invoke-virtual {v1, v5}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->addFlags(I)V

    .line 5340
    invoke-virtual {p0, v2}, Lflyme/support/v7/widget/RecyclerView$Recycler;->recycleCachedViewAt(I)V

    goto :goto_1

    .line 5345
    .end local v1    # "holder":Lflyme/support/v7/widget/RecyclerView$ViewHolder;
    .end local v3    # "pos":I
    :cond_2
    return-void
.end method
