.class public Lflyme/support/v7/widget/RecyclerView$LayoutParams;
.super Landroid/view/ViewGroup$MarginLayoutParams;
.source "RecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lflyme/support/v7/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation


# instance fields
.field final mDecorInsets:Landroid/graphics/Rect;

.field mInsetsDirty:Z

.field mPendingInvalidate:Z

.field mViewHolder:Lflyme/support/v7/widget/RecyclerView$ViewHolder;


# direct methods
.method public constructor <init>(II)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 9455
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 9443
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lflyme/support/v7/widget/RecyclerView$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    .line 9444
    const/4 v0, 0x1

    iput-boolean v0, p0, Lflyme/support/v7/widget/RecyclerView$LayoutParams;->mInsetsDirty:Z

    .line 9448
    const/4 v0, 0x0

    iput-boolean v0, p0, Lflyme/support/v7/widget/RecyclerView$LayoutParams;->mPendingInvalidate:Z

    .line 9456
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 9451
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 9443
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lflyme/support/v7/widget/RecyclerView$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    .line 9444
    const/4 v0, 0x1

    iput-boolean v0, p0, Lflyme/support/v7/widget/RecyclerView$LayoutParams;->mInsetsDirty:Z

    .line 9448
    const/4 v0, 0x0

    iput-boolean v0, p0, Lflyme/support/v7/widget/RecyclerView$LayoutParams;->mPendingInvalidate:Z

    .line 9452
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .param p1, "source"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 9463
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 9443
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lflyme/support/v7/widget/RecyclerView$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    .line 9444
    const/4 v0, 0x1

    iput-boolean v0, p0, Lflyme/support/v7/widget/RecyclerView$LayoutParams;->mInsetsDirty:Z

    .line 9448
    const/4 v0, 0x0

    iput-boolean v0, p0, Lflyme/support/v7/widget/RecyclerView$LayoutParams;->mPendingInvalidate:Z

    .line 9464
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$MarginLayoutParams;)V
    .locals 1
    .param p1, "source"    # Landroid/view/ViewGroup$MarginLayoutParams;

    .prologue
    .line 9459
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 9443
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lflyme/support/v7/widget/RecyclerView$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    .line 9444
    const/4 v0, 0x1

    iput-boolean v0, p0, Lflyme/support/v7/widget/RecyclerView$LayoutParams;->mInsetsDirty:Z

    .line 9448
    const/4 v0, 0x0

    iput-boolean v0, p0, Lflyme/support/v7/widget/RecyclerView$LayoutParams;->mPendingInvalidate:Z

    .line 9460
    return-void
.end method

.method public constructor <init>(Lflyme/support/v7/widget/RecyclerView$LayoutParams;)V
    .locals 1
    .param p1, "source"    # Lflyme/support/v7/widget/RecyclerView$LayoutParams;

    .prologue
    .line 9467
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 9443
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lflyme/support/v7/widget/RecyclerView$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    .line 9444
    const/4 v0, 0x1

    iput-boolean v0, p0, Lflyme/support/v7/widget/RecyclerView$LayoutParams;->mInsetsDirty:Z

    .line 9448
    const/4 v0, 0x0

    iput-boolean v0, p0, Lflyme/support/v7/widget/RecyclerView$LayoutParams;->mPendingInvalidate:Z

    .line 9468
    return-void
.end method


# virtual methods
.method public getViewLayoutPosition()I
    .locals 1

    .prologue
    .line 9526
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView$LayoutParams;->mViewHolder:Lflyme/support/v7/widget/RecyclerView$ViewHolder;

    invoke-virtual {v0}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v0

    return v0
.end method

.method public isItemChanged()Z
    .locals 1

    .prologue
    .line 9509
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView$LayoutParams;->mViewHolder:Lflyme/support/v7/widget/RecyclerView$ViewHolder;

    invoke-virtual {v0}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->isUpdated()Z

    move-result v0

    return v0
.end method

.method public isItemRemoved()Z
    .locals 1

    .prologue
    .line 9498
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView$LayoutParams;->mViewHolder:Lflyme/support/v7/widget/RecyclerView$ViewHolder;

    invoke-virtual {v0}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->isRemoved()Z

    move-result v0

    return v0
.end method
