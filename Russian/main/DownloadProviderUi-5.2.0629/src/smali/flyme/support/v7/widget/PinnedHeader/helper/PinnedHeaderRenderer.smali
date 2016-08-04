.class public Lflyme/support/v7/widget/PinnedHeader/helper/PinnedHeaderRenderer;
.super Ljava/lang/Object;
.source "PinnedHeaderRenderer.java"


# instance fields
.field private final mDimensionCalculator:Lflyme/support/v7/widget/PinnedHeader/helper/DimensionCalculator;

.field private final mOrientationProvider:Lflyme/support/v7/widget/PinnedHeader/helper/OrientationProvider;

.field private final mTempRect:Landroid/graphics/Rect;


# direct methods
.method private initClipRectForHeader(Landroid/graphics/Rect;Lflyme/support/v7/widget/MzRecyclerView;Landroid/view/View;)V
    .locals 5
    .param p1, "clipRect"    # Landroid/graphics/Rect;
    .param p2, "recyclerView"    # Lflyme/support/v7/widget/MzRecyclerView;
    .param p3, "header"    # Landroid/view/View;

    .prologue
    .line 75
    iget-object v0, p0, Lflyme/support/v7/widget/PinnedHeader/helper/PinnedHeaderRenderer;->mDimensionCalculator:Lflyme/support/v7/widget/PinnedHeader/helper/DimensionCalculator;

    invoke-virtual {v0, p1, p3}, Lflyme/support/v7/widget/PinnedHeader/helper/DimensionCalculator;->initMargins(Landroid/graphics/Rect;Landroid/view/View;)V

    .line 76
    iget-object v0, p0, Lflyme/support/v7/widget/PinnedHeader/helper/PinnedHeaderRenderer;->mOrientationProvider:Lflyme/support/v7/widget/PinnedHeader/helper/OrientationProvider;

    invoke-interface {v0, p2}, Lflyme/support/v7/widget/PinnedHeader/helper/OrientationProvider;->getOrientation(Lflyme/support/v7/widget/MzRecyclerView;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 77
    invoke-virtual {p2}, Lflyme/support/v7/widget/MzRecyclerView;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p2}, Lflyme/support/v7/widget/MzRecyclerView;->getPaddingTop()I

    move-result v1

    invoke-virtual {p2}, Lflyme/support/v7/widget/MzRecyclerView;->getWidth()I

    move-result v2

    invoke-virtual {p2}, Lflyme/support/v7/widget/MzRecyclerView;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    iget v3, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, v3

    invoke-virtual {p2}, Lflyme/support/v7/widget/MzRecyclerView;->getHeight()I

    move-result v3

    invoke-virtual {p2}, Lflyme/support/v7/widget/MzRecyclerView;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 89
    :goto_0
    return-void

    .line 83
    :cond_0
    invoke-virtual {p2}, Lflyme/support/v7/widget/MzRecyclerView;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p2}, Lflyme/support/v7/widget/MzRecyclerView;->getPaddingTop()I

    move-result v1

    invoke-virtual {p2}, Lflyme/support/v7/widget/MzRecyclerView;->getWidth()I

    move-result v2

    invoke-virtual {p2}, Lflyme/support/v7/widget/MzRecyclerView;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p2}, Lflyme/support/v7/widget/MzRecyclerView;->getHeight()I

    move-result v3

    invoke-virtual {p2}, Lflyme/support/v7/widget/MzRecyclerView;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v4

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0
.end method


# virtual methods
.method public drawHeader(Lflyme/support/v7/widget/MzRecyclerView;Landroid/graphics/Canvas;Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 2
    .param p1, "recyclerView"    # Lflyme/support/v7/widget/MzRecyclerView;
    .param p2, "canvas"    # Landroid/graphics/Canvas;
    .param p3, "header"    # Landroid/view/View;
    .param p4, "offset"    # Landroid/graphics/Rect;

    .prologue
    .line 50
    invoke-virtual {p2}, Landroid/graphics/Canvas;->save()I

    .line 52
    invoke-virtual {p1}, Lflyme/support/v7/widget/MzRecyclerView;->getLayoutManager()Lflyme/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v0

    invoke-virtual {v0}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->getClipToPadding()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p0, Lflyme/support/v7/widget/PinnedHeader/helper/PinnedHeaderRenderer;->mTempRect:Landroid/graphics/Rect;

    invoke-direct {p0, v0, p1, p3}, Lflyme/support/v7/widget/PinnedHeader/helper/PinnedHeaderRenderer;->initClipRectForHeader(Landroid/graphics/Rect;Lflyme/support/v7/widget/MzRecyclerView;Landroid/view/View;)V

    .line 54
    iget-object v0, p0, Lflyme/support/v7/widget/PinnedHeader/helper/PinnedHeaderRenderer;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p2, v0}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 57
    :cond_0
    iget v0, p4, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    iget v1, p4, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 59
    invoke-virtual {p3, p2}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 60
    invoke-virtual {p2}, Landroid/graphics/Canvas;->restore()V

    .line 61
    return-void
.end method
