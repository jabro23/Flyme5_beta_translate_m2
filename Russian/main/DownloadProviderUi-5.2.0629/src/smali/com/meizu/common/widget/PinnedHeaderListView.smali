.class public Lcom/meizu/common/widget/PinnedHeaderListView;
.super Lcom/meizu/common/widget/AutoScrollListView;
.source "PinnedHeaderListView.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/common/widget/PinnedHeaderListView$1;,
        Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;,
        Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeaderAdapter;
    }
.end annotation


# static fields
.field private static final BOTTOM:I = 0x1

.field private static final DEFAULT_ANIMATION_DURATION:I = 0x14

.field private static final FADING:I = 0x2

.field private static final MAX_ALPHA:I = 0xff

.field private static final TOP:I


# instance fields
.field private mAdapter:Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeaderAdapter;

.field private mAnimating:Z

.field private mAnimationDuration:I

.field private mAnimationTargetTime:J

.field private mBounds:Landroid/graphics/RectF;

.field private mClipRect:Landroid/graphics/Rect;

.field private mHeaderBackground:Landroid/graphics/drawable/Drawable;

.field private mHeaderPaddingLeft:I

.field private mHeaderPaddingTop:I

.field private mHeaderWidth:I

.field private mHeaders:[Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;

.field private mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

.field private mScrollState:I

.field private mSize:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 121
    const/4 v0, 0x0

    const v1, 0x1010074

    invoke-direct {p0, p1, v0, v1}, Lcom/meizu/common/widget/PinnedHeaderListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 122
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 125
    const v0, 0x1010074

    invoke-direct {p0, p1, p2, v0}, Lcom/meizu/common/widget/PinnedHeaderListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 126
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 129
    invoke-direct {p0, p1, p2, p3}, Lcom/meizu/common/widget/AutoScrollListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 106
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/meizu/common/widget/PinnedHeaderListView;->mBounds:Landroid/graphics/RectF;

    .line 107
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/meizu/common/widget/PinnedHeaderListView;->mClipRect:Landroid/graphics/Rect;

    .line 112
    const/16 v0, 0x14

    iput v0, p0, Lcom/meizu/common/widget/PinnedHeaderListView;->mAnimationDuration:I

    .line 118
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/meizu/common/widget/PinnedHeaderListView;->mHeaderBackground:Landroid/graphics/drawable/Drawable;

    .line 130
    invoke-super {p0, p0}, Lcom/meizu/common/widget/AutoScrollListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 131
    invoke-super {p0, p0}, Lcom/meizu/common/widget/AutoScrollListView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 132
    return-void
.end method

.method private drawHeader(Landroid/graphics/Canvas;Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;J)V
    .locals 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "header"    # Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;
    .param p3, "currentTime"    # J

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x0

    .line 534
    iget-boolean v3, p2, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;->animating:Z

    if-eqz v3, :cond_0

    .line 535
    iget-wide v4, p2, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;->targetTime:J

    sub-long/2addr v4, p3

    long-to-int v1, v4

    .line 536
    .local v1, "timeLeft":I
    if-gtz v1, :cond_4

    .line 537
    iget v3, p2, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;->targetY:I

    iput v3, p2, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;->y:I

    .line 538
    iget-boolean v3, p2, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;->targetVisible:Z

    iput-boolean v3, p2, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;->visible:Z

    .line 539
    const/4 v3, 0x0

    iput-boolean v3, p2, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;->animating:Z

    .line 545
    .end local v1    # "timeLeft":I
    :cond_0
    :goto_0
    iget-boolean v3, p2, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;->visible:Z

    if-eqz v3, :cond_3

    .line 546
    iget-object v2, p2, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;->view:Landroid/view/View;

    .line 547
    .local v2, "view":Landroid/view/View;
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 548
    .local v0, "saveCount":I
    iget v3, p2, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;->state:I

    if-eqz v3, :cond_1

    iget v3, p2, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;->state:I

    if-ne v3, v7, :cond_5

    .line 549
    :cond_1
    iget v3, p0, Lcom/meizu/common/widget/PinnedHeaderListView;->mHeaderPaddingLeft:I

    int-to-float v3, v3

    iget v4, p2, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;->y:I

    iget v5, p0, Lcom/meizu/common/widget/PinnedHeaderListView;->mHeaderPaddingTop:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 553
    :goto_1
    iget v3, p2, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;->state:I

    if-ne v3, v7, :cond_2

    .line 554
    iget-object v3, p0, Lcom/meizu/common/widget/PinnedHeaderListView;->mBounds:Landroid/graphics/RectF;

    iget v4, p0, Lcom/meizu/common/widget/PinnedHeaderListView;->mHeaderWidth:I

    int-to-float v4, v4

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v3, v6, v6, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 555
    iget-object v3, p0, Lcom/meizu/common/widget/PinnedHeaderListView;->mBounds:Landroid/graphics/RectF;

    iget v4, p2, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;->alpha:I

    const/16 v5, 0x1f

    invoke-virtual {p1, v3, v4, v5}, Landroid/graphics/Canvas;->saveLayerAlpha(Landroid/graphics/RectF;II)I

    .line 557
    :cond_2
    invoke-virtual {v2, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 558
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 560
    .end local v0    # "saveCount":I
    .end local v2    # "view":Landroid/view/View;
    :cond_3
    return-void

    .line 541
    .restart local v1    # "timeLeft":I
    :cond_4
    iget v3, p2, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;->targetY:I

    iget v4, p2, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;->sourceY:I

    iget v5, p2, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;->targetY:I

    sub-int/2addr v4, v5

    mul-int/2addr v4, v1

    iget v5, p0, Lcom/meizu/common/widget/PinnedHeaderListView;->mAnimationDuration:I

    div-int/2addr v4, v5

    add-int/2addr v3, v4

    iput v3, p2, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;->y:I

    goto :goto_0

    .line 551
    .end local v1    # "timeLeft":I
    .restart local v0    # "saveCount":I
    .restart local v2    # "view":Landroid/view/View;
    :cond_5
    iget v3, p0, Lcom/meizu/common/widget/PinnedHeaderListView;->mHeaderPaddingLeft:I

    int-to-float v3, v3

    iget v4, p2, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;->y:I

    int-to-float v4, v4

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_1
.end method

.method private ensurePinnedHeaderLayout(I)V
    .locals 8
    .param p1, "viewIndex"    # I

    .prologue
    const/high16 v7, 0x40000000    # 2.0f

    const/4 v6, 0x0

    .line 365
    iget-object v5, p0, Lcom/meizu/common/widget/PinnedHeaderListView;->mHeaders:[Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;

    aget-object v5, v5, p1

    iget-object v3, v5, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;->view:Landroid/view/View;

    .line 366
    .local v3, "view":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->isLayoutRequested()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 367
    iget v5, p0, Lcom/meizu/common/widget/PinnedHeaderListView;->mHeaderWidth:I

    invoke-static {v5, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 369
    .local v4, "widthSpec":I
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 370
    .local v2, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    if-eqz v2, :cond_1

    iget v5, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez v5, :cond_1

    .line 371
    iget v5, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {v5, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 375
    .local v1, "heightSpec":I
    :goto_0
    invoke-virtual {v3, v4, v1}, Landroid/view/View;->measure(II)V

    .line 376
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 377
    .local v0, "height":I
    iget-object v5, p0, Lcom/meizu/common/widget/PinnedHeaderListView;->mHeaders:[Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;

    aget-object v5, v5, p1

    iput v0, v5, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;->height:I

    .line 378
    iget v5, p0, Lcom/meizu/common/widget/PinnedHeaderListView;->mHeaderWidth:I

    invoke-virtual {v3, v6, v6, v5, v0}, Landroid/view/View;->layout(IIII)V

    .line 380
    .end local v0    # "height":I
    .end local v1    # "heightSpec":I
    .end local v2    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    .end local v4    # "widthSpec":I
    :cond_0
    return-void

    .line 373
    .restart local v2    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    .restart local v4    # "widthSpec":I
    :cond_1
    invoke-static {v6, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .restart local v1    # "heightSpec":I
    goto :goto_0
.end method

.method private invalidateIfAnimating()V
    .locals 2

    .prologue
    .line 471
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/meizu/common/widget/PinnedHeaderListView;->mAnimating:Z

    .line 472
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/meizu/common/widget/PinnedHeaderListView;->mSize:I

    if-ge v0, v1, :cond_0

    .line 473
    iget-object v1, p0, Lcom/meizu/common/widget/PinnedHeaderListView;->mHeaders:[Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;

    aget-object v1, v1, v0

    iget-boolean v1, v1, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;->animating:Z

    if-eqz v1, :cond_1

    .line 474
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/meizu/common/widget/PinnedHeaderListView;->mAnimating:Z

    .line 475
    invoke-virtual {p0}, Lcom/meizu/common/widget/PinnedHeaderListView;->invalidate()V

    .line 479
    :cond_0
    return-void

    .line 472
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private smoothScrollToPartition(I)Z
    .locals 5
    .param p1, "partition"    # I

    .prologue
    .line 453
    iget-object v4, p0, Lcom/meizu/common/widget/PinnedHeaderListView;->mAdapter:Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeaderAdapter;

    invoke-interface {v4, p1}, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeaderAdapter;->getScrollPositionForHeader(I)I

    move-result v3

    .line 454
    .local v3, "position":I
    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    .line 455
    const/4 v4, 0x0

    .line 467
    :goto_0
    return v4

    .line 458
    :cond_0
    const/4 v2, 0x0

    .line 459
    .local v2, "offset":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, p1, :cond_2

    .line 460
    iget-object v4, p0, Lcom/meizu/common/widget/PinnedHeaderListView;->mHeaders:[Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;

    aget-object v0, v4, v1

    .line 461
    .local v0, "header":Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;
    iget-boolean v4, v0, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;->visible:Z

    if-eqz v4, :cond_1

    .line 462
    iget v4, v0, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;->height:I

    add-int/2addr v2, v4

    .line 459
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 466
    .end local v0    # "header":Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;
    :cond_2
    invoke-virtual {p0}, Lcom/meizu/common/widget/PinnedHeaderListView;->getHeaderViewsCount()I

    move-result v4

    add-int/2addr v4, v3

    invoke-virtual {p0, v4, v2}, Lcom/meizu/common/widget/PinnedHeaderListView;->smoothScrollToPositionFromTop(II)V

    .line 467
    const/4 v4, 0x1

    goto :goto_0
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 13
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 483
    iget-boolean v8, p0, Lcom/meizu/common/widget/PinnedHeaderListView;->mAnimating:Z

    if-eqz v8, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 485
    .local v2, "currentTime":J
    :goto_0
    const/4 v7, 0x0

    .line 486
    .local v7, "top":I
    invoke-virtual {p0}, Lcom/meizu/common/widget/PinnedHeaderListView;->getBottom()I

    move-result v0

    .line 487
    .local v0, "bottom":I
    const/4 v1, 0x0

    .line 488
    .local v1, "hasVisibleHeaders":Z
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    iget v8, p0, Lcom/meizu/common/widget/PinnedHeaderListView;->mSize:I

    if-ge v5, v8, :cond_4

    .line 489
    iget-object v8, p0, Lcom/meizu/common/widget/PinnedHeaderListView;->mHeaders:[Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;

    aget-object v4, v8, v5

    .line 490
    .local v4, "header":Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;
    iget-boolean v8, v4, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;->visible:Z

    if-eqz v8, :cond_0

    .line 491
    const/4 v1, 0x1

    .line 492
    iget v8, v4, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;->state:I

    if-ne v8, v11, :cond_2

    iget v8, v4, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;->y:I

    if-ge v8, v0, :cond_2

    .line 493
    iget v0, v4, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;->y:I

    .line 488
    :cond_0
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 483
    .end local v0    # "bottom":I
    .end local v1    # "hasVisibleHeaders":Z
    .end local v2    # "currentTime":J
    .end local v4    # "header":Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;
    .end local v5    # "i":I
    .end local v7    # "top":I
    :cond_1
    const-wide/16 v2, 0x0

    goto :goto_0

    .line 494
    .restart local v0    # "bottom":I
    .restart local v1    # "hasVisibleHeaders":Z
    .restart local v2    # "currentTime":J
    .restart local v4    # "header":Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;
    .restart local v5    # "i":I
    .restart local v7    # "top":I
    :cond_2
    iget v8, v4, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;->state:I

    if-eqz v8, :cond_3

    iget v8, v4, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;->state:I

    if-ne v8, v12, :cond_0

    .line 495
    :cond_3
    iget v8, v4, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;->y:I

    iget v9, v4, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;->height:I

    add-int v6, v8, v9

    .line 496
    .local v6, "newTop":I
    if-le v6, v7, :cond_0

    .line 497
    move v7, v6

    goto :goto_2

    .line 503
    .end local v4    # "header":Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;
    .end local v6    # "newTop":I
    :cond_4
    if-eqz v1, :cond_5

    .line 504
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 505
    iget-object v8, p0, Lcom/meizu/common/widget/PinnedHeaderListView;->mClipRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/meizu/common/widget/PinnedHeaderListView;->getWidth()I

    move-result v9

    invoke-virtual {v8, v10, v10, v9, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 506
    iget-object v8, p0, Lcom/meizu/common/widget/PinnedHeaderListView;->mClipRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v8}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 509
    :cond_5
    invoke-super {p0, p1}, Lcom/meizu/common/widget/AutoScrollListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 511
    if-eqz v1, :cond_a

    .line 512
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 515
    iget v5, p0, Lcom/meizu/common/widget/PinnedHeaderListView;->mSize:I

    :cond_6
    :goto_3
    add-int/lit8 v5, v5, -0x1

    if-ltz v5, :cond_8

    .line 516
    iget-object v8, p0, Lcom/meizu/common/widget/PinnedHeaderListView;->mHeaders:[Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;

    aget-object v4, v8, v5

    .line 517
    .restart local v4    # "header":Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;
    iget-boolean v8, v4, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;->visible:Z

    if-eqz v8, :cond_6

    iget v8, v4, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;->state:I

    if-eqz v8, :cond_7

    iget v8, v4, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;->state:I

    if-ne v8, v12, :cond_6

    .line 518
    :cond_7
    invoke-direct {p0, p1, v4, v2, v3}, Lcom/meizu/common/widget/PinnedHeaderListView;->drawHeader(Landroid/graphics/Canvas;Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;J)V

    goto :goto_3

    .line 522
    .end local v4    # "header":Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;
    :cond_8
    const/4 v5, 0x0

    :goto_4
    iget v8, p0, Lcom/meizu/common/widget/PinnedHeaderListView;->mSize:I

    if-ge v5, v8, :cond_a

    .line 523
    iget-object v8, p0, Lcom/meizu/common/widget/PinnedHeaderListView;->mHeaders:[Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;

    aget-object v4, v8, v5

    .line 524
    .restart local v4    # "header":Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;
    iget-boolean v8, v4, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;->visible:Z

    if-eqz v8, :cond_9

    iget v8, v4, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;->state:I

    if-ne v8, v11, :cond_9

    .line 525
    invoke-direct {p0, p1, v4, v2, v3}, Lcom/meizu/common/widget/PinnedHeaderListView;->drawHeader(Landroid/graphics/Canvas;Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;J)V

    .line 522
    :cond_9
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 530
    .end local v4    # "header":Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;
    :cond_a
    invoke-direct {p0}, Lcom/meizu/common/widget/PinnedHeaderListView;->invalidateIfAnimating()V

    .line 531
    return-void
.end method

.method public getCurrentOverScrollDistance()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 578
    invoke-virtual {p0}, Lcom/meizu/common/widget/PinnedHeaderListView;->getFirstVisiblePosition()I

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/meizu/common/widget/PinnedHeaderListView;->getChildCount()I

    move-result v2

    if-lez v2, :cond_0

    .line 579
    invoke-virtual {p0, v1}, Lcom/meizu/common/widget/PinnedHeaderListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v0

    .line 580
    .local v0, "firstTop":I
    invoke-virtual {p0}, Lcom/meizu/common/widget/PinnedHeaderListView;->getPaddingTop()I

    move-result v1

    sub-int/2addr v1, v0

    .line 583
    .end local v0    # "firstTop":I
    :cond_0
    return v1
.end method

.method public getHeaderPaddingTop()I
    .locals 1

    .prologue
    .line 593
    iget v0, p0, Lcom/meizu/common/widget/PinnedHeaderListView;->mHeaderPaddingTop:I

    return v0
.end method

.method public getPinnedHeaderHeight(I)I
    .locals 1
    .param p1, "viewIndex"    # I

    .prologue
    .line 257
    invoke-direct {p0, p1}, Lcom/meizu/common/widget/PinnedHeaderListView;->ensurePinnedHeaderLayout(I)V

    .line 258
    iget-object v0, p0, Lcom/meizu/common/widget/PinnedHeaderListView;->mHeaders:[Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    return v0
.end method

.method public getPositionAt(I)I
    .locals 4
    .param p1, "y"    # I

    .prologue
    .line 410
    invoke-virtual {p0}, Lcom/meizu/common/widget/PinnedHeaderListView;->getChildCount()I

    move-result v0

    .line 411
    .local v0, "childCount":I
    if-lez v0, :cond_3

    .line 412
    invoke-virtual {p0}, Lcom/meizu/common/widget/PinnedHeaderListView;->isStackFromBottom()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 413
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_3

    .line 414
    invoke-virtual {p0, v1}, Lcom/meizu/common/widget/PinnedHeaderListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 415
    .local v2, "v":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v3

    if-lt p1, v3, :cond_0

    .line 416
    invoke-virtual {p0}, Lcom/meizu/common/widget/PinnedHeaderListView;->getFirstVisiblePosition()I

    move-result v3

    add-int/2addr v3, v1

    .line 430
    .end local v1    # "i":I
    .end local v2    # "v":Landroid/view/View;
    :goto_1
    return v3

    .line 413
    .restart local v1    # "i":I
    .restart local v2    # "v":Landroid/view/View;
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 421
    .end local v1    # "i":I
    .end local v2    # "v":Landroid/view/View;
    :cond_1
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_2
    if-ge v1, v0, :cond_3

    .line 422
    invoke-virtual {p0, v1}, Lcom/meizu/common/widget/PinnedHeaderListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 423
    .restart local v2    # "v":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v3

    if-gt p1, v3, :cond_2

    .line 424
    invoke-virtual {p0}, Lcom/meizu/common/widget/PinnedHeaderListView;->getFirstVisiblePosition()I

    move-result v3

    add-int/2addr v3, v1

    goto :goto_1

    .line 421
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 430
    .end local v1    # "i":I
    .end local v2    # "v":Landroid/view/View;
    :cond_3
    const/4 v3, 0x0

    goto :goto_1
.end method

.method protected getTopFadingEdgeStrength()F
    .locals 1

    .prologue
    .line 201
    iget v0, p0, Lcom/meizu/common/widget/PinnedHeaderListView;->mSize:I

    if-lez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Lcom/meizu/common/widget/AutoScrollListView;->getTopFadingEdgeStrength()F

    move-result v0

    goto :goto_0
.end method

.method public getTotalTopPinnedHeaderHeight()I
    .locals 4

    .prologue
    .line 386
    iget v1, p0, Lcom/meizu/common/widget/PinnedHeaderListView;->mSize:I

    .local v1, "i":I
    :cond_0
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_1

    .line 387
    iget-object v2, p0, Lcom/meizu/common/widget/PinnedHeaderListView;->mHeaders:[Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;

    aget-object v0, v2, v1

    .line 388
    .local v0, "header":Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;
    iget-boolean v2, v0, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;->visible:Z

    if-eqz v2, :cond_0

    iget v2, v0, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;->state:I

    if-nez v2, :cond_0

    .line 389
    iget v2, v0, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;->y:I

    iget v3, v0, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;->height:I

    add-int/2addr v2, v3

    .line 392
    .end local v0    # "header":Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 612
    invoke-super {p0, p1}, Lcom/meizu/common/widget/AutoScrollListView;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 613
    const-class v0, Lcom/meizu/common/widget/PinnedHeaderListView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 614
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 449
    invoke-super {p0, p1}, Lcom/meizu/common/widget/AutoScrollListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 12
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 218
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-virtual {p0}, Lcom/meizu/common/widget/PinnedHeaderListView;->getHeight()I

    move-result v7

    .line 220
    .local v7, "height":I
    const/4 v11, 0x0

    .line 221
    .local v11, "windowTop":I
    move v10, v7

    .line 223
    .local v10, "windowBottom":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    iget v0, p0, Lcom/meizu/common/widget/PinnedHeaderListView;->mSize:I

    if-ge v8, v0, :cond_2

    .line 224
    iget-object v0, p0, Lcom/meizu/common/widget/PinnedHeaderListView;->mHeaders:[Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;

    aget-object v6, v0, v8

    .line 225
    .local v6, "header":Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;
    iget-boolean v0, v6, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;->visible:Z

    if-eqz v0, :cond_0

    .line 226
    iget v0, v6, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;->state:I

    if-nez v0, :cond_1

    .line 227
    iget v0, v6, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;->y:I

    iget v1, v6, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;->height:I

    add-int v11, v0, v1

    .line 223
    :cond_0
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 228
    :cond_1
    iget v0, v6, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;->state:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 229
    iget v10, v6, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;->y:I

    .line 235
    .end local v6    # "header":Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;
    :cond_2
    invoke-virtual {p0}, Lcom/meizu/common/widget/PinnedHeaderListView;->getSelectedView()Landroid/view/View;

    move-result-object v9

    .line 236
    .local v9, "selectedView":Landroid/view/View;
    if-eqz v9, :cond_3

    .line 237
    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v0

    if-ge v0, v11, :cond_5

    .line 238
    invoke-virtual {p0, p3, v11}, Lcom/meizu/common/widget/PinnedHeaderListView;->setSelectionFromTop(II)V

    .line 244
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/meizu/common/widget/PinnedHeaderListView;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    if-eqz v0, :cond_4

    .line 245
    iget-object v0, p0, Lcom/meizu/common/widget/PinnedHeaderListView;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide/from16 v4, p4

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemSelectedListener;->onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 247
    :cond_4
    return-void

    .line 239
    :cond_5
    invoke-virtual {v9}, Landroid/view/View;->getBottom()I

    move-result v0

    if-le v0, v10, :cond_3

    .line 240
    invoke-virtual {v9}, Landroid/view/View;->getHeight()I

    move-result v0

    sub-int v0, v10, v0

    invoke-virtual {p0, p3, v0}, Lcom/meizu/common/widget/PinnedHeaderListView;->setSelectionFromTop(II)V

    goto :goto_1
.end method

.method protected onLayout(ZIIII)V
    .locals 1
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 136
    invoke-super/range {p0 .. p5}, Lcom/meizu/common/widget/AutoScrollListView;->onLayout(ZIIII)V

    .line 137
    const/4 v0, 0x0

    iput v0, p0, Lcom/meizu/common/widget/PinnedHeaderListView;->mHeaderPaddingLeft:I

    .line 138
    sub-int v0, p4, p2

    iput v0, p0, Lcom/meizu/common/widget/PinnedHeaderListView;->mHeaderWidth:I

    .line 139
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 251
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/meizu/common/widget/PinnedHeaderListView;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    if-eqz v0, :cond_0

    .line 252
    iget-object v0, p0, Lcom/meizu/common/widget/PinnedHeaderListView;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-interface {v0, p1}, Landroid/widget/AdapterView$OnItemSelectedListener;->onNothingSelected(Landroid/widget/AdapterView;)V

    .line 254
    :cond_0
    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 8
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .prologue
    const/4 v5, 0x0

    .line 166
    iget-object v3, p0, Lcom/meizu/common/widget/PinnedHeaderListView;->mAdapter:Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeaderAdapter;

    if-eqz v3, :cond_5

    .line 167
    iget-object v3, p0, Lcom/meizu/common/widget/PinnedHeaderListView;->mAdapter:Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeaderAdapter;

    invoke-interface {v3}, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeaderAdapter;->getPinnedHeaderCount()I

    move-result v0

    .line 168
    .local v0, "count":I
    iget v3, p0, Lcom/meizu/common/widget/PinnedHeaderListView;->mSize:I

    if-eq v0, v3, :cond_0

    .line 169
    iput v0, p0, Lcom/meizu/common/widget/PinnedHeaderListView;->mSize:I

    .line 170
    iget-object v3, p0, Lcom/meizu/common/widget/PinnedHeaderListView;->mHeaders:[Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;

    if-nez v3, :cond_3

    .line 171
    iget v3, p0, Lcom/meizu/common/widget/PinnedHeaderListView;->mSize:I

    new-array v3, v3, [Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;

    iput-object v3, p0, Lcom/meizu/common/widget/PinnedHeaderListView;->mHeaders:[Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;

    .line 179
    :cond_0
    :goto_0
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    iget v3, p0, Lcom/meizu/common/widget/PinnedHeaderListView;->mSize:I

    if-ge v2, v3, :cond_4

    .line 180
    iget-object v3, p0, Lcom/meizu/common/widget/PinnedHeaderListView;->mHeaders:[Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;

    aget-object v3, v3, v2

    if-nez v3, :cond_1

    .line 181
    iget-object v3, p0, Lcom/meizu/common/widget/PinnedHeaderListView;->mHeaders:[Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;

    new-instance v4, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;-><init>(Lcom/meizu/common/widget/PinnedHeaderListView$1;)V

    aput-object v4, v3, v2

    .line 183
    :cond_1
    iget-object v3, p0, Lcom/meizu/common/widget/PinnedHeaderListView;->mHeaders:[Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;

    aget-object v3, v3, v2

    iget-object v4, p0, Lcom/meizu/common/widget/PinnedHeaderListView;->mAdapter:Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeaderAdapter;

    iget-object v5, p0, Lcom/meizu/common/widget/PinnedHeaderListView;->mHeaders:[Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;

    aget-object v5, v5, v2

    iget-object v5, v5, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;->view:Landroid/view/View;

    invoke-interface {v4, v2, v5, p0}, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeaderAdapter;->getPinnedHeaderView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    iput-object v4, v3, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;->view:Landroid/view/View;

    .line 184
    iget-object v3, p0, Lcom/meizu/common/widget/PinnedHeaderListView;->mHeaderBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/meizu/common/widget/PinnedHeaderListView;->mHeaders:[Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;

    aget-object v3, v3, v2

    iget-object v3, v3, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;->view:Landroid/view/View;

    if-eqz v3, :cond_2

    .line 185
    iget-object v3, p0, Lcom/meizu/common/widget/PinnedHeaderListView;->mHeaders:[Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;

    aget-object v3, v3, v2

    iget-object v3, v3, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;->view:Landroid/view/View;

    iget-object v4, p0, Lcom/meizu/common/widget/PinnedHeaderListView;->mHeaderBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 179
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 172
    .end local v2    # "i":I
    :cond_3
    iget-object v3, p0, Lcom/meizu/common/widget/PinnedHeaderListView;->mHeaders:[Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;

    array-length v3, v3

    iget v4, p0, Lcom/meizu/common/widget/PinnedHeaderListView;->mSize:I

    if-ge v3, v4, :cond_0

    .line 173
    iget-object v1, p0, Lcom/meizu/common/widget/PinnedHeaderListView;->mHeaders:[Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;

    .line 174
    .local v1, "headers":[Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;
    iget v3, p0, Lcom/meizu/common/widget/PinnedHeaderListView;->mSize:I

    new-array v3, v3, [Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;

    iput-object v3, p0, Lcom/meizu/common/widget/PinnedHeaderListView;->mHeaders:[Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;

    .line 175
    iget-object v3, p0, Lcom/meizu/common/widget/PinnedHeaderListView;->mHeaders:[Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;

    array-length v4, v1

    invoke-static {v1, v5, v3, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 188
    .end local v1    # "headers":[Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;
    .restart local v2    # "i":I
    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget v3, p0, Lcom/meizu/common/widget/PinnedHeaderListView;->mAnimationDuration:I

    int-to-long v6, v3

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/meizu/common/widget/PinnedHeaderListView;->mAnimationTargetTime:J

    .line 189
    iget-object v3, p0, Lcom/meizu/common/widget/PinnedHeaderListView;->mAdapter:Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeaderAdapter;

    invoke-interface {v3, p0}, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeaderAdapter;->configurePinnedHeaders(Lcom/meizu/common/widget/PinnedHeaderListView;)V

    .line 190
    invoke-direct {p0}, Lcom/meizu/common/widget/PinnedHeaderListView;->invalidateIfAnimating()V

    .line 193
    .end local v0    # "count":I
    .end local v2    # "i":I
    :cond_5
    iget-object v3, p0, Lcom/meizu/common/widget/PinnedHeaderListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v3, :cond_6

    .line 194
    iget-object v3, p0, Lcom/meizu/common/widget/PinnedHeaderListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-interface {v3, p0, p2, p3, p4}, Landroid/widget/AbsListView$OnScrollListener;->onScroll(Landroid/widget/AbsListView;III)V

    .line 196
    :cond_6
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 1
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    .line 206
    iput p2, p0, Lcom/meizu/common/widget/PinnedHeaderListView;->mScrollState:I

    .line 207
    iget-object v0, p0, Lcom/meizu/common/widget/PinnedHeaderListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v0, :cond_0

    .line 208
    iget-object v0, p0, Lcom/meizu/common/widget/PinnedHeaderListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-interface {v0, p0, p2}, Landroid/widget/AbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    .line 210
    :cond_0
    return-void
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0
    .param p1, "x0"    # Landroid/widget/Adapter;

    .prologue
    .line 46
    check-cast p1, Landroid/widget/ListAdapter;

    .end local p1    # "x0":Landroid/widget/Adapter;
    invoke-virtual {p0, p1}, Lcom/meizu/common/widget/PinnedHeaderListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 1
    .param p1, "adapter"    # Landroid/widget/ListAdapter;

    .prologue
    .line 147
    move-object v0, p1

    check-cast v0, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeaderAdapter;

    iput-object v0, p0, Lcom/meizu/common/widget/PinnedHeaderListView;->mAdapter:Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeaderAdapter;

    .line 148
    invoke-super {p0, p1}, Lcom/meizu/common/widget/AutoScrollListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 149
    return-void
.end method

.method public setFadingHeader(IIZ)V
    .locals 4
    .param p1, "viewIndex"    # I
    .param p2, "position"    # I
    .param p3, "fade"    # Z

    .prologue
    .line 318
    invoke-direct {p0, p1}, Lcom/meizu/common/widget/PinnedHeaderListView;->ensurePinnedHeaderLayout(I)V

    .line 320
    invoke-virtual {p0}, Lcom/meizu/common/widget/PinnedHeaderListView;->getFirstVisiblePosition()I

    move-result v3

    sub-int v3, p2, v3

    invoke-virtual {p0, v3}, Lcom/meizu/common/widget/PinnedHeaderListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 321
    .local v0, "child":Landroid/view/View;
    if-nez v0, :cond_0

    .line 340
    :goto_0
    return-void

    .line 323
    :cond_0
    iget-object v3, p0, Lcom/meizu/common/widget/PinnedHeaderListView;->mHeaders:[Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;

    aget-object v1, v3, p1

    .line 324
    .local v1, "header":Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;
    const/4 v3, 0x1

    iput-boolean v3, v1, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;->visible:Z

    .line 325
    const/4 v3, 0x2

    iput v3, v1, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;->state:I

    .line 326
    const/16 v3, 0xff

    iput v3, v1, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;->alpha:I

    .line 327
    const/4 v3, 0x0

    iput-boolean v3, v1, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;->animating:Z

    .line 329
    invoke-virtual {p0}, Lcom/meizu/common/widget/PinnedHeaderListView;->getTotalTopPinnedHeaderHeight()I

    move-result v2

    .line 330
    .local v2, "top":I
    iput v2, v1, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;->y:I

    goto :goto_0
.end method

.method public setHeaderBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 597
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/meizu/common/widget/PinnedHeaderListView;->mHeaderBackground:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_1

    .line 598
    iget-object v0, p0, Lcom/meizu/common/widget/PinnedHeaderListView;->mHeaderBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 599
    iget-object v0, p0, Lcom/meizu/common/widget/PinnedHeaderListView;->mHeaderBackground:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 600
    iget-object v0, p0, Lcom/meizu/common/widget/PinnedHeaderListView;->mHeaderBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/PinnedHeaderListView;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 603
    :cond_0
    iput-object p1, p0, Lcom/meizu/common/widget/PinnedHeaderListView;->mHeaderBackground:Landroid/graphics/drawable/Drawable;

    .line 604
    iget-object v0, p0, Lcom/meizu/common/widget/PinnedHeaderListView;->mHeaderBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 605
    invoke-virtual {p0}, Lcom/meizu/common/widget/PinnedHeaderListView;->requestLayout()V

    .line 606
    invoke-virtual {p0}, Lcom/meizu/common/widget/PinnedHeaderListView;->invalidate()V

    .line 608
    :cond_1
    return-void
.end method

.method public setHeaderInvisible(IZ)V
    .locals 5
    .param p1, "viewIndex"    # I
    .param p2, "animate"    # Z

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 349
    iget-object v1, p0, Lcom/meizu/common/widget/PinnedHeaderListView;->mHeaders:[Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;

    aget-object v0, v1, p1

    .line 350
    .local v0, "header":Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;
    iget-boolean v1, v0, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;->visible:Z

    if-eqz v1, :cond_2

    if-nez p2, :cond_0

    iget-boolean v1, v0, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;->animating:Z

    if-eqz v1, :cond_2

    :cond_0
    iget v1, v0, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;->state:I

    if-ne v1, v3, :cond_2

    .line 351
    iget v1, v0, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;->y:I

    iput v1, v0, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;->sourceY:I

    .line 352
    iget-boolean v1, v0, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;->animating:Z

    if-nez v1, :cond_1

    .line 353
    iput-boolean v3, v0, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;->visible:Z

    .line 354
    invoke-virtual {p0}, Lcom/meizu/common/widget/PinnedHeaderListView;->getBottom()I

    move-result v1

    iget v2, v0, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;->height:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;->targetY:I

    .line 356
    :cond_1
    iput-boolean v3, v0, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;->animating:Z

    .line 357
    iget-wide v2, p0, Lcom/meizu/common/widget/PinnedHeaderListView;->mAnimationTargetTime:J

    iput-wide v2, v0, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;->targetTime:J

    .line 358
    iput-boolean v4, v0, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;->targetVisible:Z

    .line 362
    :goto_0
    return-void

    .line 360
    :cond_2
    iput-boolean v4, v0, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;->visible:Z

    goto :goto_0
.end method

.method public setHeaderPaddingTop(I)V
    .locals 0
    .param p1, "padding"    # I

    .prologue
    .line 587
    if-ltz p1, :cond_0

    .line 588
    iput p1, p0, Lcom/meizu/common/widget/PinnedHeaderListView;->mHeaderPaddingTop:I

    .line 590
    :cond_0
    return-void
.end method

.method public setHeaderPinnedAtBottom(IIZ)V
    .locals 4
    .param p1, "viewIndex"    # I
    .param p2, "y"    # I
    .param p3, "animate"    # Z

    .prologue
    const/4 v2, 0x1

    .line 287
    invoke-direct {p0, p1}, Lcom/meizu/common/widget/PinnedHeaderListView;->ensurePinnedHeaderLayout(I)V

    .line 288
    iget-object v1, p0, Lcom/meizu/common/widget/PinnedHeaderListView;->mHeaders:[Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;

    aget-object v0, v1, p1

    .line 289
    .local v0, "header":Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;
    iput v2, v0, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;->state:I

    .line 290
    iget-boolean v1, v0, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;->animating:Z

    if-eqz v1, :cond_0

    .line 291
    iget-wide v2, p0, Lcom/meizu/common/widget/PinnedHeaderListView;->mAnimationTargetTime:J

    iput-wide v2, v0, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;->targetTime:J

    .line 292
    iget v1, v0, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;->y:I

    iput v1, v0, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;->sourceY:I

    .line 293
    iput p2, v0, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;->targetY:I

    .line 309
    :goto_0
    return-void

    .line 294
    :cond_0
    if-eqz p3, :cond_3

    iget v1, v0, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;->y:I

    if-ne v1, p2, :cond_1

    iget-boolean v1, v0, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;->visible:Z

    if-nez v1, :cond_3

    .line 295
    :cond_1
    iget-boolean v1, v0, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;->visible:Z

    if-eqz v1, :cond_2

    .line 296
    iget v1, v0, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;->y:I

    iput v1, v0, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;->sourceY:I

    .line 301
    :goto_1
    iput-boolean v2, v0, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;->animating:Z

    .line 302
    iput-boolean v2, v0, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;->targetVisible:Z

    .line 303
    iget-wide v2, p0, Lcom/meizu/common/widget/PinnedHeaderListView;->mAnimationTargetTime:J

    iput-wide v2, v0, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;->targetTime:J

    .line 304
    iput p2, v0, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;->targetY:I

    goto :goto_0

    .line 298
    :cond_2
    iput-boolean v2, v0, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;->visible:Z

    .line 299
    iget v1, v0, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;->height:I

    add-int/2addr v1, p2

    iput v1, v0, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;->sourceY:I

    goto :goto_1

    .line 306
    :cond_3
    iput-boolean v2, v0, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;->visible:Z

    .line 307
    iput p2, v0, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;->y:I

    goto :goto_0
.end method

.method public setHeaderPinnedAtTop(IIZ)V
    .locals 3
    .param p1, "viewIndex"    # I
    .param p2, "y"    # I
    .param p3, "animate"    # Z

    .prologue
    const/4 v2, 0x0

    .line 269
    invoke-direct {p0, p1}, Lcom/meizu/common/widget/PinnedHeaderListView;->ensurePinnedHeaderLayout(I)V

    .line 270
    iget-object v1, p0, Lcom/meizu/common/widget/PinnedHeaderListView;->mHeaders:[Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;

    aget-object v0, v1, p1

    .line 271
    .local v0, "header":Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;->visible:Z

    .line 272
    iput p2, v0, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;->y:I

    .line 273
    iput v2, v0, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;->state:I

    .line 276
    iput-boolean v2, v0, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;->animating:Z

    .line 277
    return-void
.end method

.method public setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/widget/AdapterView$OnItemSelectedListener;

    .prologue
    .line 159
    iput-object p1, p0, Lcom/meizu/common/widget/PinnedHeaderListView;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 160
    invoke-super {p0, p0}, Lcom/meizu/common/widget/AutoScrollListView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 161
    return-void
.end method

.method public setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
    .locals 0
    .param p1, "onScrollListener"    # Landroid/widget/AbsListView$OnScrollListener;

    .prologue
    .line 153
    iput-object p1, p0, Lcom/meizu/common/widget/PinnedHeaderListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    .line 154
    invoke-super {p0, p0}, Lcom/meizu/common/widget/AutoScrollListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 155
    return-void
.end method

.method public setPinnedHeaderAnimationDuration(I)V
    .locals 0
    .param p1, "duration"    # I

    .prologue
    .line 142
    iput p1, p0, Lcom/meizu/common/widget/PinnedHeaderListView;->mAnimationDuration:I

    .line 143
    return-void
.end method

.method public setSelection(I)V
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 564
    iget-object v2, p0, Lcom/meizu/common/widget/PinnedHeaderListView;->mAdapter:Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeaderAdapter;

    instance-of v2, v2, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;

    if-eqz v2, :cond_0

    .line 565
    iget-object v0, p0, Lcom/meizu/common/widget/PinnedHeaderListView;->mAdapter:Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeaderAdapter;

    check-cast v0, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;

    .line 566
    .local v0, "indexerListAdapter":Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;
    invoke-virtual {p0}, Lcom/meizu/common/widget/PinnedHeaderListView;->getHeaderViewsCount()I

    move-result v2

    sub-int v2, p1, v2

    invoke-virtual {v0, v2}, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->getItemPlacementInSection(I)Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter$Placement;

    move-result-object v1

    .line 567
    .local v1, "placement":Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter$Placement;
    iget-boolean v2, v1, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter$Placement;->firstInSection:Z

    if-nez v2, :cond_0

    invoke-virtual {v0}, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->isSectionHeaderDisplayEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/meizu/common/widget/PinnedHeaderListView;->mSize:I

    if-lez v2, :cond_0

    .line 569
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/meizu/common/widget/PinnedHeaderListView;->getPinnedHeaderHeight(I)I

    move-result v2

    invoke-super {p0, p1, v2}, Lcom/meizu/common/widget/AutoScrollListView;->setSelectionFromTop(II)V

    .line 575
    .end local v0    # "indexerListAdapter":Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;
    .end local v1    # "placement":Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter$Placement;
    :goto_0
    return-void

    .line 574
    :cond_0
    invoke-super {p0, p1}, Lcom/meizu/common/widget/AutoScrollListView;->setSelection(I)V

    goto :goto_0
.end method
