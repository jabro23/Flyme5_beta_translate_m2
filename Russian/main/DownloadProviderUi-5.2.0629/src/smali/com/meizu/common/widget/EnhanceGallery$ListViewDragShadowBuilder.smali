.class Lcom/meizu/common/widget/EnhanceGallery$ListViewDragShadowBuilder;
.super Landroid/view/View$DragShadowBuilder;
.source "EnhanceGallery.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/common/widget/EnhanceGallery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ListViewDragShadowBuilder"
.end annotation


# static fields
.field private static final STATE_ENTER_NORMAL:I = 0x0

.field private static final STATE_ENTER_WARNING:I = 0x1

.field private static final STATE_IDLE:I = -0x1


# instance fields
.field private mBackground:Landroid/graphics/drawable/Drawable;

.field private mBackgroundPadding:Landroid/graphics/Rect;

.field private mHeight:I

.field private mHightLightNormal:Landroid/graphics/drawable/Drawable;

.field private mHightLightWarning:Landroid/graphics/drawable/Drawable;

.field private mNeedBackground:Z

.field private mShowPoint:Landroid/graphics/Point;

.field private mState:I

.field private mWidth:I

.field final synthetic this$0:Lcom/meizu/common/widget/EnhanceGallery;


# direct methods
.method public constructor <init>(Lcom/meizu/common/widget/EnhanceGallery;Landroid/view/View;)V
    .locals 2
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 2541
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/meizu/common/widget/EnhanceGallery$ListViewDragShadowBuilder;-><init>(Lcom/meizu/common/widget/EnhanceGallery;Landroid/view/View;ZLandroid/graphics/Point;)V

    .line 2542
    return-void
.end method

.method public constructor <init>(Lcom/meizu/common/widget/EnhanceGallery;Landroid/view/View;ZLandroid/graphics/Point;)V
    .locals 11
    .param p2, "view"    # Landroid/view/View;
    .param p3, "needBg"    # Z
    .param p4, "shadowTouchPoint"    # Landroid/graphics/Point;

    .prologue
    .line 2544
    iput-object p1, p0, Lcom/meizu/common/widget/EnhanceGallery$ListViewDragShadowBuilder;->this$0:Lcom/meizu/common/widget/EnhanceGallery;

    .line 2545
    invoke-direct {p0, p2}, Landroid/view/View$DragShadowBuilder;-><init>(Landroid/view/View;)V

    .line 2535
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/meizu/common/widget/EnhanceGallery$ListViewDragShadowBuilder;->mNeedBackground:Z

    .line 2536
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/meizu/common/widget/EnhanceGallery$ListViewDragShadowBuilder;->mShowPoint:Landroid/graphics/Point;

    .line 2633
    const/4 v6, -0x1

    iput v6, p0, Lcom/meizu/common/widget/EnhanceGallery$ListViewDragShadowBuilder;->mState:I

    .line 2546
    iput-boolean p3, p0, Lcom/meizu/common/widget/EnhanceGallery$ListViewDragShadowBuilder;->mNeedBackground:Z

    .line 2547
    iput-object p4, p0, Lcom/meizu/common/widget/EnhanceGallery$ListViewDragShadowBuilder;->mShowPoint:Landroid/graphics/Point;

    .line 2548
    if-nez p2, :cond_1

    .line 2590
    :cond_0
    :goto_0
    return-void

    .line 2549
    :cond_1
    if-eqz p3, :cond_3

    .line 2550
    invoke-virtual {p1}, Lcom/meizu/common/widget/EnhanceGallery;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    # getter for: Lcom/meizu/common/widget/EnhanceGallery;->mDragViewBackground:I
    invoke-static {p1}, Lcom/meizu/common/widget/EnhanceGallery;->access$1300(Lcom/meizu/common/widget/EnhanceGallery;)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, p0, Lcom/meizu/common/widget/EnhanceGallery$ListViewDragShadowBuilder;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 2551
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    iput-object v6, p0, Lcom/meizu/common/widget/EnhanceGallery$ListViewDragShadowBuilder;->mBackgroundPadding:Landroid/graphics/Rect;

    .line 2552
    iget-object v6, p0, Lcom/meizu/common/widget/EnhanceGallery$ListViewDragShadowBuilder;->mBackground:Landroid/graphics/drawable/Drawable;

    iget-object v7, p0, Lcom/meizu/common/widget/EnhanceGallery$ListViewDragShadowBuilder;->mBackgroundPadding:Landroid/graphics/Rect;

    invoke-virtual {v6, v7}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 2553
    iget-object v4, p0, Lcom/meizu/common/widget/EnhanceGallery$ListViewDragShadowBuilder;->mBackgroundPadding:Landroid/graphics/Rect;

    .line 2554
    .local v4, "padding":Landroid/graphics/Rect;
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v5

    .line 2555
    .local v5, "width":I
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 2556
    .local v1, "height":I
    iget v6, v4, Landroid/graphics/Rect;->left:I

    add-int/2addr v6, v5

    iget v7, v4, Landroid/graphics/Rect;->right:I

    add-int/2addr v6, v7

    iput v6, p0, Lcom/meizu/common/widget/EnhanceGallery$ListViewDragShadowBuilder;->mWidth:I

    .line 2557
    iget v6, v4, Landroid/graphics/Rect;->top:I

    add-int/2addr v6, v1

    iget v7, v4, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v6, v7

    iput v6, p0, Lcom/meizu/common/widget/EnhanceGallery$ListViewDragShadowBuilder;->mHeight:I

    .line 2558
    iget-object v6, p0, Lcom/meizu/common/widget/EnhanceGallery$ListViewDragShadowBuilder;->mBackground:Landroid/graphics/drawable/Drawable;

    const/4 v7, 0x0

    const/4 v8, 0x0

    iget v9, p0, Lcom/meizu/common/widget/EnhanceGallery$ListViewDragShadowBuilder;->mWidth:I

    iget v10, p0, Lcom/meizu/common/widget/EnhanceGallery$ListViewDragShadowBuilder;->mHeight:I

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2560
    invoke-virtual {p1}, Lcom/meizu/common/widget/EnhanceGallery;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    # getter for: Lcom/meizu/common/widget/EnhanceGallery;->mDragViewBackgroundFilter:I
    invoke-static {p1}, Lcom/meizu/common/widget/EnhanceGallery;->access$1400(Lcom/meizu/common/widget/EnhanceGallery;)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, p0, Lcom/meizu/common/widget/EnhanceGallery$ListViewDragShadowBuilder;->mHightLightNormal:Landroid/graphics/drawable/Drawable;

    .line 2561
    iget-object v6, p0, Lcom/meizu/common/widget/EnhanceGallery$ListViewDragShadowBuilder;->mHightLightNormal:Landroid/graphics/drawable/Drawable;

    const/4 v7, 0x0

    const/4 v8, 0x0

    iget v9, p0, Lcom/meizu/common/widget/EnhanceGallery$ListViewDragShadowBuilder;->mWidth:I

    iget v10, p0, Lcom/meizu/common/widget/EnhanceGallery$ListViewDragShadowBuilder;->mHeight:I

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2563
    invoke-virtual {p1}, Lcom/meizu/common/widget/EnhanceGallery;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    # getter for: Lcom/meizu/common/widget/EnhanceGallery;->mDragViewBackgroundDelete:I
    invoke-static {p1}, Lcom/meizu/common/widget/EnhanceGallery;->access$1500(Lcom/meizu/common/widget/EnhanceGallery;)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, p0, Lcom/meizu/common/widget/EnhanceGallery$ListViewDragShadowBuilder;->mHightLightWarning:Landroid/graphics/drawable/Drawable;

    .line 2564
    iget-object v6, p0, Lcom/meizu/common/widget/EnhanceGallery$ListViewDragShadowBuilder;->mHightLightWarning:Landroid/graphics/drawable/Drawable;

    const/4 v7, 0x0

    const/4 v8, 0x0

    iget v9, p0, Lcom/meizu/common/widget/EnhanceGallery$ListViewDragShadowBuilder;->mWidth:I

    iget v10, p0, Lcom/meizu/common/widget/EnhanceGallery$ListViewDragShadowBuilder;->mHeight:I

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2571
    .end local v1    # "height":I
    .end local v4    # "padding":Landroid/graphics/Rect;
    .end local v5    # "width":I
    :goto_1
    const/4 v6, 0x0

    # setter for: Lcom/meizu/common/widget/EnhanceGallery;->mDragScrollY:I
    invoke-static {p1, v6}, Lcom/meizu/common/widget/EnhanceGallery;->access$1602(Lcom/meizu/common/widget/EnhanceGallery;I)I

    .line 2572
    iget v6, p0, Lcom/meizu/common/widget/EnhanceGallery$ListViewDragShadowBuilder;->mHeight:I

    invoke-virtual {p1}, Lcom/meizu/common/widget/EnhanceGallery;->getHeight()I

    move-result v7

    if-le v6, v7, :cond_0

    .line 2575
    const/4 v6, 0x2

    new-array v2, v6, [I

    .line 2576
    .local v2, "listLocation":[I
    invoke-virtual {p1, v2}, Lcom/meizu/common/widget/EnhanceGallery;->getLocationOnScreen([I)V

    .line 2578
    const/4 v6, 0x2

    new-array v0, v6, [I

    .line 2579
    .local v0, "dragLocation":[I
    invoke-virtual {p2, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 2581
    const/4 v6, 0x1

    aget v6, v0, v6

    const/4 v7, 0x1

    aget v7, v2, v7

    if-ge v6, v7, :cond_2

    .line 2582
    const/4 v6, 0x1

    aget v6, v2, v6

    const/4 v7, 0x1

    aget v7, v0, v7

    sub-int/2addr v6, v7

    # setter for: Lcom/meizu/common/widget/EnhanceGallery;->mDragScrollY:I
    invoke-static {p1, v6}, Lcom/meizu/common/widget/EnhanceGallery;->access$1602(Lcom/meizu/common/widget/EnhanceGallery;I)I

    .line 2583
    iget v6, p0, Lcom/meizu/common/widget/EnhanceGallery$ListViewDragShadowBuilder;->mHeight:I

    invoke-virtual {p1}, Lcom/meizu/common/widget/EnhanceGallery;->getHeight()I

    move-result v7

    sub-int v3, v6, v7

    .line 2584
    .local v3, "maxDragScrollY":I
    # getter for: Lcom/meizu/common/widget/EnhanceGallery;->mDragScrollY:I
    invoke-static {p1}, Lcom/meizu/common/widget/EnhanceGallery;->access$1600(Lcom/meizu/common/widget/EnhanceGallery;)I

    move-result v6

    invoke-static {v3, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    # setter for: Lcom/meizu/common/widget/EnhanceGallery;->mDragScrollY:I
    invoke-static {p1, v6}, Lcom/meizu/common/widget/EnhanceGallery;->access$1602(Lcom/meizu/common/widget/EnhanceGallery;I)I

    .line 2587
    .end local v3    # "maxDragScrollY":I
    :cond_2
    invoke-virtual {p1}, Lcom/meizu/common/widget/EnhanceGallery;->getHeight()I

    move-result v6

    iput v6, p0, Lcom/meizu/common/widget/EnhanceGallery$ListViewDragShadowBuilder;->mHeight:I

    goto/16 :goto_0

    .line 2567
    .end local v0    # "dragLocation":[I
    .end local v2    # "listLocation":[I
    :cond_3
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v6

    iput v6, p0, Lcom/meizu/common/widget/EnhanceGallery$ListViewDragShadowBuilder;->mWidth:I

    .line 2568
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v6

    iput v6, p0, Lcom/meizu/common/widget/EnhanceGallery$ListViewDragShadowBuilder;->mHeight:I

    goto :goto_1
.end method


# virtual methods
.method public getDragingState()I
    .locals 1

    .prologue
    .line 2640
    iget v0, p0, Lcom/meizu/common/widget/EnhanceGallery$ListViewDragShadowBuilder;->mState:I

    return v0
.end method

.method public onDrawShadow(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 2606
    iget-boolean v0, p0, Lcom/meizu/common/widget/EnhanceGallery$ListViewDragShadowBuilder;->mNeedBackground:Z

    if-eqz v0, :cond_2

    .line 2607
    iget v0, p0, Lcom/meizu/common/widget/EnhanceGallery$ListViewDragShadowBuilder;->mState:I

    if-nez v0, :cond_0

    .line 2608
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceGallery$ListViewDragShadowBuilder;->mHightLightNormal:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 2614
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 2615
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceGallery$ListViewDragShadowBuilder;->mBackgroundPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/meizu/common/widget/EnhanceGallery$ListViewDragShadowBuilder;->mBackgroundPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcom/meizu/common/widget/EnhanceGallery$ListViewDragShadowBuilder;->this$0:Lcom/meizu/common/widget/EnhanceGallery;

    # getter for: Lcom/meizu/common/widget/EnhanceGallery;->mDragScrollY:I
    invoke-static {v2}, Lcom/meizu/common/widget/EnhanceGallery;->access$1600(Lcom/meizu/common/widget/EnhanceGallery;)I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2616
    invoke-super {p0, p1}, Landroid/view/View$DragShadowBuilder;->onDrawShadow(Landroid/graphics/Canvas;)V

    .line 2617
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 2628
    :goto_1
    return-void

    .line 2609
    :cond_0
    iget v0, p0, Lcom/meizu/common/widget/EnhanceGallery$ListViewDragShadowBuilder;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 2610
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceGallery$ListViewDragShadowBuilder;->mHightLightWarning:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 2612
    :cond_1
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceGallery$ListViewDragShadowBuilder;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 2619
    :cond_2
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceGallery$ListViewDragShadowBuilder;->this$0:Lcom/meizu/common/widget/EnhanceGallery;

    # getter for: Lcom/meizu/common/widget/EnhanceGallery;->mDragScrollY:I
    invoke-static {v0}, Lcom/meizu/common/widget/EnhanceGallery;->access$1600(Lcom/meizu/common/widget/EnhanceGallery;)I

    move-result v0

    if-eqz v0, :cond_3

    .line 2620
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 2621
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/meizu/common/widget/EnhanceGallery$ListViewDragShadowBuilder;->this$0:Lcom/meizu/common/widget/EnhanceGallery;

    # getter for: Lcom/meizu/common/widget/EnhanceGallery;->mDragScrollY:I
    invoke-static {v1}, Lcom/meizu/common/widget/EnhanceGallery;->access$1600(Lcom/meizu/common/widget/EnhanceGallery;)I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2622
    invoke-super {p0, p1}, Landroid/view/View$DragShadowBuilder;->onDrawShadow(Landroid/graphics/Canvas;)V

    .line 2623
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_1

    .line 2625
    :cond_3
    invoke-super {p0, p1}, Landroid/view/View$DragShadowBuilder;->onDrawShadow(Landroid/graphics/Canvas;)V

    goto :goto_1
.end method

.method public onProvideShadowMetrics(Landroid/graphics/Point;Landroid/graphics/Point;)V
    .locals 3
    .param p1, "shadowSize"    # Landroid/graphics/Point;
    .param p2, "shadowTouchPoint"    # Landroid/graphics/Point;

    .prologue
    .line 2594
    invoke-super {p0, p1, p2}, Landroid/view/View$DragShadowBuilder;->onProvideShadowMetrics(Landroid/graphics/Point;Landroid/graphics/Point;)V

    .line 2595
    iget v0, p0, Lcom/meizu/common/widget/EnhanceGallery$ListViewDragShadowBuilder;->mWidth:I

    iget v1, p0, Lcom/meizu/common/widget/EnhanceGallery$ListViewDragShadowBuilder;->mHeight:I

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Point;->set(II)V

    .line 2597
    iget-boolean v0, p0, Lcom/meizu/common/widget/EnhanceGallery$ListViewDragShadowBuilder;->mNeedBackground:Z

    if-eqz v0, :cond_0

    .line 2598
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceGallery$ListViewDragShadowBuilder;->this$0:Lcom/meizu/common/widget/EnhanceGallery;

    # getter for: Lcom/meizu/common/widget/EnhanceGallery;->mDragOffsetX:I
    invoke-static {v0}, Lcom/meizu/common/widget/EnhanceGallery;->access$1700(Lcom/meizu/common/widget/EnhanceGallery;)I

    move-result v0

    iget-object v1, p0, Lcom/meizu/common/widget/EnhanceGallery$ListViewDragShadowBuilder;->mBackgroundPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/meizu/common/widget/EnhanceGallery$ListViewDragShadowBuilder;->this$0:Lcom/meizu/common/widget/EnhanceGallery;

    # getter for: Lcom/meizu/common/widget/EnhanceGallery;->mDragOffsetY:I
    invoke-static {v1}, Lcom/meizu/common/widget/EnhanceGallery;->access$1800(Lcom/meizu/common/widget/EnhanceGallery;)I

    move-result v1

    iget-object v2, p0, Lcom/meizu/common/widget/EnhanceGallery$ListViewDragShadowBuilder;->mBackgroundPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/meizu/common/widget/EnhanceGallery$ListViewDragShadowBuilder;->this$0:Lcom/meizu/common/widget/EnhanceGallery;

    # getter for: Lcom/meizu/common/widget/EnhanceGallery;->mDragScrollY:I
    invoke-static {v2}, Lcom/meizu/common/widget/EnhanceGallery;->access$1600(Lcom/meizu/common/widget/EnhanceGallery;)I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Point;->set(II)V

    .line 2602
    :goto_0
    return-void

    .line 2600
    :cond_0
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceGallery$ListViewDragShadowBuilder;->this$0:Lcom/meizu/common/widget/EnhanceGallery;

    # getter for: Lcom/meizu/common/widget/EnhanceGallery;->mDragOffsetX:I
    invoke-static {v0}, Lcom/meizu/common/widget/EnhanceGallery;->access$1700(Lcom/meizu/common/widget/EnhanceGallery;)I

    move-result v0

    iget-object v1, p0, Lcom/meizu/common/widget/EnhanceGallery$ListViewDragShadowBuilder;->this$0:Lcom/meizu/common/widget/EnhanceGallery;

    # getter for: Lcom/meizu/common/widget/EnhanceGallery;->mDragOffsetY:I
    invoke-static {v1}, Lcom/meizu/common/widget/EnhanceGallery;->access$1800(Lcom/meizu/common/widget/EnhanceGallery;)I

    move-result v1

    iget-object v2, p0, Lcom/meizu/common/widget/EnhanceGallery$ListViewDragShadowBuilder;->this$0:Lcom/meizu/common/widget/EnhanceGallery;

    # getter for: Lcom/meizu/common/widget/EnhanceGallery;->mDragScrollY:I
    invoke-static {v2}, Lcom/meizu/common/widget/EnhanceGallery;->access$1600(Lcom/meizu/common/widget/EnhanceGallery;)I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Point;->set(II)V

    goto :goto_0
.end method

.method public setDragingState(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 2636
    iput p1, p0, Lcom/meizu/common/widget/EnhanceGallery$ListViewDragShadowBuilder;->mState:I

    .line 2637
    return-void
.end method
