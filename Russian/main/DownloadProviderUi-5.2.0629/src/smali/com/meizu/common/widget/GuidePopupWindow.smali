.class public Lcom/meizu/common/widget/GuidePopupWindow;
.super Landroid/widget/PopupWindow;
.source "GuidePopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/common/widget/GuidePopupWindow$HandleView;
    }
.end annotation


# static fields
.field public static final CORAL:I = 0x3

.field public static final DODGERBLUE:I = 0x0

.field public static final FIREBRICK:I = 0x2

.field public static final GUIDE_LAYOUT_MODE_AUTO:I = 0x6

.field public static final GUIDE_LAYOUT_MODE_CENTER:I = 0x3

.field public static final GUIDE_LAYOUT_MODE_CENTER_HORIZONTAL:I = 0x1

.field public static final GUIDE_LAYOUT_MODE_CENTER_VERTICAL:I = 0x2

.field public static final GUIDE_LAYOUT_MODE_DOWN:I = 0x5

.field public static final GUIDE_LAYOUT_MODE_UP:I = 0x4

.field public static final LIMEGREEN:I = 0x1

.field public static final TOMATO:I = 0x4


# instance fields
.field private mAnchorView:Landroid/view/View;

.field private mArrowOffx:I

.field private mContext:Landroid/content/Context;

.field private mHandleView:Lcom/meizu/common/widget/GuidePopupWindow$HandleView;

.field private mLayoutMode:I

.field private mOffX:I

.field private mOffY:I

.field private mParentView:Landroid/view/View;

.field private mPopX:I

.field private mPopY:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v10, 0x2

    const/4 v1, -0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 152
    invoke-direct {p0, p1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    .line 140
    const/4 v0, 0x6

    iput v0, p0, Lcom/meizu/common/widget/GuidePopupWindow;->mLayoutMode:I

    .line 154
    iput-object p1, p0, Lcom/meizu/common/widget/GuidePopupWindow;->mContext:Landroid/content/Context;

    .line 156
    invoke-virtual {p0, v9}, Lcom/meizu/common/widget/GuidePopupWindow;->setTouchable(Z)V

    .line 157
    invoke-virtual {p0, v9}, Lcom/meizu/common/widget/GuidePopupWindow;->setOutsideTouchable(Z)V

    .line 158
    invoke-virtual {p0, v8}, Lcom/meizu/common/widget/GuidePopupWindow;->setClippingEnabled(Z)V

    .line 159
    invoke-virtual {p0, v1, v1}, Lcom/meizu/common/widget/GuidePopupWindow;->setWindowLayoutMode(II)V

    .line 161
    invoke-virtual {p0, v10}, Lcom/meizu/common/widget/GuidePopupWindow;->setInputMethodMode(I)V

    .line 162
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, v8}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/GuidePopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 164
    const/4 v0, 0x0

    sget-object v1, Lcom/meizu/common/R$styleable;->GuidePopupWindow:[I

    const v2, 0x7f010115

    invoke-virtual {p1, v0, v1, v2, v8}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v7

    .line 168
    .local v7, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v7, v8}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 170
    .local v3, "leftDrawable":Landroid/graphics/drawable/Drawable;
    const/4 v0, 0x3

    invoke-virtual {v7, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 172
    .local v4, "middleDrawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v7, v10}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 174
    .local v5, "middleUpDrawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v7, v9}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 176
    .local v6, "rightDrawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    .line 177
    if-eqz v3, :cond_0

    if-eqz v4, :cond_0

    if-eqz v5, :cond_0

    if-nez v6, :cond_1

    .line 179
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02006f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 181
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020070

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 183
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020071

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 185
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020072

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 189
    :cond_1
    new-instance v0, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;

    iget-object v2, p0, Lcom/meizu/common/widget/GuidePopupWindow;->mContext:Landroid/content/Context;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;-><init>(Lcom/meizu/common/widget/GuidePopupWindow;Landroid/content/Context;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iput-object v0, p0, Lcom/meizu/common/widget/GuidePopupWindow;->mHandleView:Lcom/meizu/common/widget/GuidePopupWindow$HandleView;

    .line 191
    iget-object v0, p0, Lcom/meizu/common/widget/GuidePopupWindow;->mHandleView:Lcom/meizu/common/widget/GuidePopupWindow$HandleView;

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/GuidePopupWindow;->setContentView(Landroid/view/View;)V

    .line 192
    return-void
.end method

.method private computeGuidePosition([ILandroid/view/View;)V
    .locals 11
    .param p1, "bounds"    # [I
    .param p2, "anchor"    # Landroid/view/View;

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 367
    if-nez p2, :cond_0

    .line 467
    :goto_0
    return-void

    .line 371
    :cond_0
    iget-object v4, p0, Lcom/meizu/common/widget/GuidePopupWindow;->mHandleView:Lcom/meizu/common/widget/GuidePopupWindow$HandleView;

    invoke-virtual {v4, v7, v7}, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->measure(II)V

    .line 373
    iget-object v4, p0, Lcom/meizu/common/widget/GuidePopupWindow;->mHandleView:Lcom/meizu/common/widget/GuidePopupWindow$HandleView;

    # getter for: Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->mContentView:Landroid/widget/LinearLayout;
    invoke-static {v4}, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->access$100(Lcom/meizu/common/widget/GuidePopupWindow$HandleView;)Landroid/widget/LinearLayout;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v3

    .line 375
    .local v3, "w":I
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    iget-object v5, p0, Lcom/meizu/common/widget/GuidePopupWindow;->mHandleView:Lcom/meizu/common/widget/GuidePopupWindow$HandleView;

    # getter for: Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->mContentView:Landroid/widget/LinearLayout;
    invoke-static {v5}, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->access$100(Lcom/meizu/common/widget/GuidePopupWindow$HandleView;)Landroid/widget/LinearLayout;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v5

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    iput v4, p0, Lcom/meizu/common/widget/GuidePopupWindow;->mPopX:I

    .line 379
    iget-object v4, p0, Lcom/meizu/common/widget/GuidePopupWindow;->mHandleView:Lcom/meizu/common/widget/GuidePopupWindow$HandleView;

    invoke-virtual {v4}, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->getPaddingLeft()I

    move-result v4

    iget-object v5, p0, Lcom/meizu/common/widget/GuidePopupWindow;->mHandleView:Lcom/meizu/common/widget/GuidePopupWindow$HandleView;

    # invokes: Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->getPopMarging()I
    invoke-static {v5}, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->access$200(Lcom/meizu/common/widget/GuidePopupWindow$HandleView;)I

    move-result v5

    if-ge v4, v5, :cond_4

    .line 380
    iget-object v4, p0, Lcom/meizu/common/widget/GuidePopupWindow;->mHandleView:Lcom/meizu/common/widget/GuidePopupWindow$HandleView;

    invoke-virtual {v4}, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->getPaddingLeft()I

    move-result v4

    iget-object v5, p0, Lcom/meizu/common/widget/GuidePopupWindow;->mHandleView:Lcom/meizu/common/widget/GuidePopupWindow$HandleView;

    # invokes: Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->getPopMarging()I
    invoke-static {v5}, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->access$200(Lcom/meizu/common/widget/GuidePopupWindow$HandleView;)I

    move-result v5

    sub-int v1, v4, v5

    .line 385
    .local v1, "base":I
    :goto_1
    new-array v2, v9, [I

    .line 386
    .local v2, "position":[I
    invoke-direct {p0, p2, v2}, Lcom/meizu/common/widget/GuidePopupWindow;->getAnchorPositon(Landroid/view/View;[I)V

    .line 388
    aget v4, p1, v9

    aget v5, p1, v7

    sub-int/2addr v4, v5

    if-le v3, v4, :cond_5

    .line 389
    aget v4, p1, v7

    aget v5, v2, v7

    sub-int/2addr v4, v5

    iput v4, p0, Lcom/meizu/common/widget/GuidePopupWindow;->mPopX:I

    .line 390
    iget-object v4, p0, Lcom/meizu/common/widget/GuidePopupWindow;->mHandleView:Lcom/meizu/common/widget/GuidePopupWindow$HandleView;

    aget v5, p1, v9

    aget v6, p1, v7

    sub-int/2addr v5, v6

    iget-object v6, p0, Lcom/meizu/common/widget/GuidePopupWindow;->mHandleView:Lcom/meizu/common/widget/GuidePopupWindow$HandleView;

    # invokes: Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->getPopMarging()I
    invoke-static {v6}, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->access$200(Lcom/meizu/common/widget/GuidePopupWindow$HandleView;)I

    move-result v6

    mul-int/lit8 v6, v6, 0x2

    sub-int/2addr v5, v6

    iget-object v6, p0, Lcom/meizu/common/widget/GuidePopupWindow;->mHandleView:Lcom/meizu/common/widget/GuidePopupWindow$HandleView;

    invoke-virtual {v6}, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->getCloseIconWidth()I

    move-result v6

    sub-int/2addr v5, v6

    # invokes: Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->setMessageWidth(I)V
    invoke-static {v4, v5}, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->access$300(Lcom/meizu/common/widget/GuidePopupWindow$HandleView;I)V

    .line 393
    iget-object v4, p0, Lcom/meizu/common/widget/GuidePopupWindow;->mHandleView:Lcom/meizu/common/widget/GuidePopupWindow$HandleView;

    invoke-virtual {v4, v7, v7}, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->measure(II)V

    .line 404
    :cond_1
    :goto_2
    iget v4, p0, Lcom/meizu/common/widget/GuidePopupWindow;->mLayoutMode:I

    packed-switch v4, :pswitch_data_0

    .line 419
    iget-object v4, p0, Lcom/meizu/common/widget/GuidePopupWindow;->mHandleView:Lcom/meizu/common/widget/GuidePopupWindow$HandleView;

    invoke-virtual {v4}, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->getMeasuredHeight()I

    move-result v4

    neg-int v4, v4

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    sub-int/2addr v4, v5

    iget-object v5, p0, Lcom/meizu/common/widget/GuidePopupWindow;->mHandleView:Lcom/meizu/common/widget/GuidePopupWindow$HandleView;

    invoke-virtual {v5}, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->getArrowPadding()I

    move-result v5

    add-int/2addr v4, v5

    iput v4, p0, Lcom/meizu/common/widget/GuidePopupWindow;->mPopY:I

    .line 423
    aget v4, v2, v8

    iget-object v5, p0, Lcom/meizu/common/widget/GuidePopupWindow;->mHandleView:Lcom/meizu/common/widget/GuidePopupWindow$HandleView;

    invoke-virtual {v5}, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->getMeasuredHeight()I

    move-result v5

    sub-int/2addr v4, v5

    iget-object v5, p0, Lcom/meizu/common/widget/GuidePopupWindow;->mHandleView:Lcom/meizu/common/widget/GuidePopupWindow$HandleView;

    invoke-virtual {v5}, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->getArrowPadding()I

    move-result v5

    add-int/2addr v4, v5

    aget v5, p1, v8

    if-ge v4, v5, :cond_7

    .line 425
    iget-object v4, p0, Lcom/meizu/common/widget/GuidePopupWindow;->mHandleView:Lcom/meizu/common/widget/GuidePopupWindow$HandleView;

    invoke-virtual {v4}, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->getArrowPadding()I

    move-result v4

    neg-int v4, v4

    iput v4, p0, Lcom/meizu/common/widget/GuidePopupWindow;->mPopY:I

    .line 426
    iget-object v4, p0, Lcom/meizu/common/widget/GuidePopupWindow;->mHandleView:Lcom/meizu/common/widget/GuidePopupWindow$HandleView;

    invoke-virtual {v4}, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->setArrowUp()V

    .line 436
    :goto_3
    iget v4, p0, Lcom/meizu/common/widget/GuidePopupWindow;->mPopX:I

    neg-int v4, v4

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    iget-object v5, p0, Lcom/meizu/common/widget/GuidePopupWindow;->mHandleView:Lcom/meizu/common/widget/GuidePopupWindow$HandleView;

    invoke-virtual {v5}, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->getArrowWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/meizu/common/widget/GuidePopupWindow;->mArrowOffx:I

    add-int v0, v4, v5

    .line 438
    .local v0, "aoff":I
    iget-object v4, p0, Lcom/meizu/common/widget/GuidePopupWindow;->mHandleView:Lcom/meizu/common/widget/GuidePopupWindow$HandleView;

    invoke-virtual {v4}, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->getMeasuredWidth()I

    move-result v4

    iget-object v5, p0, Lcom/meizu/common/widget/GuidePopupWindow;->mHandleView:Lcom/meizu/common/widget/GuidePopupWindow$HandleView;

    invoke-virtual {v5}, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->getBackgroundMidMinWidth()I

    move-result v5

    iget-object v6, p0, Lcom/meizu/common/widget/GuidePopupWindow;->mHandleView:Lcom/meizu/common/widget/GuidePopupWindow$HandleView;

    invoke-virtual {v6}, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->getBackgroundRightMinWidth()I

    move-result v6

    add-int/2addr v5, v6

    sub-int/2addr v4, v5

    if-le v0, v4, :cond_8

    .line 441
    iget-object v4, p0, Lcom/meizu/common/widget/GuidePopupWindow;->mHandleView:Lcom/meizu/common/widget/GuidePopupWindow$HandleView;

    invoke-virtual {v4}, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->getMeasuredWidth()I

    move-result v4

    iget-object v5, p0, Lcom/meizu/common/widget/GuidePopupWindow;->mHandleView:Lcom/meizu/common/widget/GuidePopupWindow$HandleView;

    invoke-virtual {v5}, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->getBackgroundMidMinWidth()I

    move-result v5

    iget-object v6, p0, Lcom/meizu/common/widget/GuidePopupWindow;->mHandleView:Lcom/meizu/common/widget/GuidePopupWindow$HandleView;

    invoke-virtual {v6}, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->getBackgroundRightMinWidth()I

    move-result v6

    add-int/2addr v5, v6

    sub-int v0, v4, v5

    .line 448
    :cond_2
    :goto_4
    iget v4, p0, Lcom/meizu/common/widget/GuidePopupWindow;->mPopY:I

    iget v5, p0, Lcom/meizu/common/widget/GuidePopupWindow;->mOffY:I

    add-int/2addr v4, v5

    iput v4, p0, Lcom/meizu/common/widget/GuidePopupWindow;->mPopY:I

    .line 449
    iget v4, p0, Lcom/meizu/common/widget/GuidePopupWindow;->mPopX:I

    iget v5, p0, Lcom/meizu/common/widget/GuidePopupWindow;->mOffX:I

    add-int/2addr v4, v5

    iput v4, p0, Lcom/meizu/common/widget/GuidePopupWindow;->mPopX:I

    .line 451
    iget v4, p0, Lcom/meizu/common/widget/GuidePopupWindow;->mLayoutMode:I

    if-ne v4, v8, :cond_9

    .line 452
    aget v4, p1, v7

    aget v5, p1, v9

    aget v6, p1, v7

    sub-int/2addr v5, v6

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    iget-object v5, p0, Lcom/meizu/common/widget/GuidePopupWindow;->mHandleView:Lcom/meizu/common/widget/GuidePopupWindow$HandleView;

    invoke-virtual {v5}, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->getMeasuredWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    aget v5, v2, v7

    sub-int/2addr v4, v5

    iput v4, p0, Lcom/meizu/common/widget/GuidePopupWindow;->mPopX:I

    .line 466
    :cond_3
    :goto_5
    iget-object v4, p0, Lcom/meizu/common/widget/GuidePopupWindow;->mHandleView:Lcom/meizu/common/widget/GuidePopupWindow$HandleView;

    invoke-virtual {v4, v0}, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->setArrowPosition(I)V

    goto/16 :goto_0

    .line 382
    .end local v0    # "aoff":I
    .end local v1    # "base":I
    .end local v2    # "position":[I
    :cond_4
    iget-object v4, p0, Lcom/meizu/common/widget/GuidePopupWindow;->mHandleView:Lcom/meizu/common/widget/GuidePopupWindow$HandleView;

    # invokes: Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->getPopMarging()I
    invoke-static {v4}, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->access$200(Lcom/meizu/common/widget/GuidePopupWindow$HandleView;)I

    move-result v4

    iget-object v5, p0, Lcom/meizu/common/widget/GuidePopupWindow;->mHandleView:Lcom/meizu/common/widget/GuidePopupWindow$HandleView;

    invoke-virtual {v5}, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->getPaddingLeft()I

    move-result v5

    sub-int v1, v4, v5

    .restart local v1    # "base":I
    goto/16 :goto_1

    .line 395
    .restart local v2    # "position":[I
    :cond_5
    aget v4, v2, v7

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    sub-int/2addr v5, v3

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    aget v5, p1, v7

    add-int/2addr v5, v1

    if-ge v4, v5, :cond_6

    .line 396
    aget v4, p1, v7

    aget v5, v2, v7

    sub-int/2addr v4, v5

    iput v4, p0, Lcom/meizu/common/widget/GuidePopupWindow;->mPopX:I

    .line 399
    :cond_6
    aget v4, v2, v7

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    div-int/lit8 v5, v3, 0x2

    add-int/2addr v4, v5

    aget v5, p1, v9

    sub-int/2addr v5, v1

    if-le v4, v5, :cond_1

    .line 400
    aget v4, p1, v9

    sub-int/2addr v4, v1

    aget v5, v2, v7

    sub-int/2addr v4, v5

    sub-int/2addr v4, v3

    iput v4, p0, Lcom/meizu/common/widget/GuidePopupWindow;->mPopX:I

    goto/16 :goto_2

    .line 406
    :pswitch_0
    iget-object v4, p0, Lcom/meizu/common/widget/GuidePopupWindow;->mHandleView:Lcom/meizu/common/widget/GuidePopupWindow$HandleView;

    invoke-virtual {v4}, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->getMeasuredHeight()I

    move-result v4

    neg-int v4, v4

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    sub-int/2addr v4, v5

    iget-object v5, p0, Lcom/meizu/common/widget/GuidePopupWindow;->mHandleView:Lcom/meizu/common/widget/GuidePopupWindow$HandleView;

    invoke-virtual {v5}, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->getArrowPadding()I

    move-result v5

    add-int/2addr v4, v5

    iput v4, p0, Lcom/meizu/common/widget/GuidePopupWindow;->mPopY:I

    .line 409
    iget-object v4, p0, Lcom/meizu/common/widget/GuidePopupWindow;->mHandleView:Lcom/meizu/common/widget/GuidePopupWindow$HandleView;

    invoke-virtual {v4}, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->setArrowDown()V

    goto/16 :goto_3

    .line 413
    :pswitch_1
    iget-object v4, p0, Lcom/meizu/common/widget/GuidePopupWindow;->mHandleView:Lcom/meizu/common/widget/GuidePopupWindow$HandleView;

    invoke-virtual {v4}, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->getArrowPadding()I

    move-result v4

    neg-int v4, v4

    iput v4, p0, Lcom/meizu/common/widget/GuidePopupWindow;->mPopY:I

    .line 414
    iget-object v4, p0, Lcom/meizu/common/widget/GuidePopupWindow;->mHandleView:Lcom/meizu/common/widget/GuidePopupWindow$HandleView;

    invoke-virtual {v4}, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->setArrowUp()V

    goto/16 :goto_3

    .line 428
    :cond_7
    iget-object v4, p0, Lcom/meizu/common/widget/GuidePopupWindow;->mHandleView:Lcom/meizu/common/widget/GuidePopupWindow$HandleView;

    invoke-virtual {v4}, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->getMeasuredHeight()I

    move-result v4

    neg-int v4, v4

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    sub-int/2addr v4, v5

    iget-object v5, p0, Lcom/meizu/common/widget/GuidePopupWindow;->mHandleView:Lcom/meizu/common/widget/GuidePopupWindow$HandleView;

    invoke-virtual {v5}, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->getArrowPadding()I

    move-result v5

    add-int/2addr v4, v5

    iput v4, p0, Lcom/meizu/common/widget/GuidePopupWindow;->mPopY:I

    .line 431
    iget-object v4, p0, Lcom/meizu/common/widget/GuidePopupWindow;->mHandleView:Lcom/meizu/common/widget/GuidePopupWindow$HandleView;

    invoke-virtual {v4}, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->setArrowDown()V

    goto/16 :goto_3

    .line 444
    .restart local v0    # "aoff":I
    :cond_8
    iget-object v4, p0, Lcom/meizu/common/widget/GuidePopupWindow;->mHandleView:Lcom/meizu/common/widget/GuidePopupWindow$HandleView;

    invoke-virtual {v4}, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->getBackgroundLeftMinWidth()I

    move-result v4

    if-ge v0, v4, :cond_2

    .line 445
    iget-object v4, p0, Lcom/meizu/common/widget/GuidePopupWindow;->mHandleView:Lcom/meizu/common/widget/GuidePopupWindow$HandleView;

    invoke-virtual {v4}, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->getBackgroundLeftMinWidth()I

    move-result v0

    goto/16 :goto_4

    .line 454
    :cond_9
    iget v4, p0, Lcom/meizu/common/widget/GuidePopupWindow;->mLayoutMode:I

    if-ne v4, v9, :cond_a

    .line 455
    aget v4, p1, v8

    aget v5, p1, v10

    aget v6, p1, v8

    sub-int/2addr v5, v6

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    iget-object v5, p0, Lcom/meizu/common/widget/GuidePopupWindow;->mHandleView:Lcom/meizu/common/widget/GuidePopupWindow$HandleView;

    invoke-virtual {v5}, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->getMeasuredHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    aget v5, v2, v8

    sub-int/2addr v4, v5

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    sub-int/2addr v4, v5

    iput v4, p0, Lcom/meizu/common/widget/GuidePopupWindow;->mPopY:I

    goto/16 :goto_5

    .line 458
    :cond_a
    iget v4, p0, Lcom/meizu/common/widget/GuidePopupWindow;->mLayoutMode:I

    if-ne v4, v10, :cond_3

    .line 459
    aget v4, p1, v7

    aget v5, p1, v9

    aget v6, p1, v7

    sub-int/2addr v5, v6

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    iget-object v5, p0, Lcom/meizu/common/widget/GuidePopupWindow;->mHandleView:Lcom/meizu/common/widget/GuidePopupWindow$HandleView;

    invoke-virtual {v5}, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->getMeasuredWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    aget v5, v2, v7

    sub-int/2addr v4, v5

    iput v4, p0, Lcom/meizu/common/widget/GuidePopupWindow;->mPopX:I

    .line 461
    aget v4, p1, v8

    aget v5, p1, v10

    aget v6, p1, v8

    sub-int/2addr v5, v6

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    iget-object v5, p0, Lcom/meizu/common/widget/GuidePopupWindow;->mHandleView:Lcom/meizu/common/widget/GuidePopupWindow$HandleView;

    invoke-virtual {v5}, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->getMeasuredHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    aget v5, v2, v8

    sub-int/2addr v4, v5

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    sub-int/2addr v4, v5

    iput v4, p0, Lcom/meizu/common/widget/GuidePopupWindow;->mPopY:I

    goto/16 :goto_5

    .line 404
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getAnchorPositon(Landroid/view/View;[I)V
    .locals 0
    .param p1, "anchor"    # Landroid/view/View;
    .param p2, "location"    # [I

    .prologue
    .line 512
    if-nez p1, :cond_0

    .line 516
    :goto_0
    return-void

    .line 515
    :cond_0
    invoke-virtual {p1, p2}, Landroid/view/View;->getLocationOnScreen([I)V

    goto :goto_0
.end method


# virtual methods
.method public disableArrow(Z)V
    .locals 1
    .param p1, "disable"    # Z

    .prologue
    .line 568
    iget-object v0, p0, Lcom/meizu/common/widget/GuidePopupWindow;->mHandleView:Lcom/meizu/common/widget/GuidePopupWindow$HandleView;

    invoke-virtual {v0, p1}, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->disableArrow(Z)V

    .line 569
    return-void
.end method

.method public getMessageTextView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 605
    iget-object v0, p0, Lcom/meizu/common/widget/GuidePopupWindow;->mHandleView:Lcom/meizu/common/widget/GuidePopupWindow$HandleView;

    invoke-virtual {v0}, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->getMessageTextView()Landroid/widget/TextView;

    move-result-object v0

    return-object v0
.end method

.method public setArrowPosition(I)V
    .locals 0
    .param p1, "offx"    # I

    .prologue
    .line 526
    iput p1, p0, Lcom/meizu/common/widget/GuidePopupWindow;->mArrowOffx:I

    .line 527
    return-void
.end method

.method public setColorStyle(I)V
    .locals 0
    .param p1, "color"    # I

    .prologue
    .line 598
    return-void
.end method

.method public setHorizontalOffset(I)V
    .locals 0
    .param p1, "pixels"    # I

    .prologue
    .line 474
    iput p1, p0, Lcom/meizu/common/widget/GuidePopupWindow;->mOffX:I

    .line 475
    return-void
.end method

.method public setLayoutMode(I)V
    .locals 0
    .param p1, "mode"    # I

    .prologue
    .line 558
    iput p1, p0, Lcom/meizu/common/widget/GuidePopupWindow;->mLayoutMode:I

    .line 559
    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 536
    iget-object v0, p0, Lcom/meizu/common/widget/GuidePopupWindow;->mHandleView:Lcom/meizu/common/widget/GuidePopupWindow$HandleView;

    invoke-virtual {v0, p1}, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->setText(Ljava/lang/String;)V

    .line 537
    return-void
.end method

.method public setMessageOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 578
    iget-object v0, p0, Lcom/meizu/common/widget/GuidePopupWindow;->mHandleView:Lcom/meizu/common/widget/GuidePopupWindow$HandleView;

    invoke-virtual {v0, p1}, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->setMessageOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 579
    return-void
.end method

.method public setTextSize(I)V
    .locals 1
    .param p1, "textSize"    # I

    .prologue
    .line 886
    iget-object v0, p0, Lcom/meizu/common/widget/GuidePopupWindow;->mHandleView:Lcom/meizu/common/widget/GuidePopupWindow$HandleView;

    invoke-virtual {v0, p1}, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->setTextSize(I)V

    .line 887
    return-void
.end method

.method public setVerticalOffset(I)V
    .locals 0
    .param p1, "pixels"    # I

    .prologue
    .line 482
    iput p1, p0, Lcom/meizu/common/widget/GuidePopupWindow;->mOffY:I

    .line 483
    return-void
.end method

.method public show(Landroid/graphics/Rect;Landroid/view/View;)V
    .locals 1
    .param p1, "boundRect"    # Landroid/graphics/Rect;
    .param p2, "anchor"    # Landroid/view/View;

    .prologue
    const/4 v0, 0x0

    .line 293
    if-nez p2, :cond_0

    .line 298
    :goto_0
    return-void

    .line 296
    :cond_0
    iput-object p2, p0, Lcom/meizu/common/widget/GuidePopupWindow;->mAnchorView:Landroid/view/View;

    .line 297
    invoke-virtual {p0, p1, p2, v0, v0}, Lcom/meizu/common/widget/GuidePopupWindow;->show(Landroid/graphics/Rect;Landroid/view/View;II)V

    goto :goto_0
.end method

.method public show(Landroid/graphics/Rect;Landroid/view/View;II)V
    .locals 3
    .param p1, "boundRect"    # Landroid/graphics/Rect;
    .param p2, "anchor"    # Landroid/view/View;
    .param p3, "offx"    # I
    .param p4, "offy"    # I

    .prologue
    .line 339
    if-nez p2, :cond_0

    .line 357
    :goto_0
    return-void

    .line 343
    :cond_0
    iput p3, p0, Lcom/meizu/common/widget/GuidePopupWindow;->mOffX:I

    .line 344
    iput p4, p0, Lcom/meizu/common/widget/GuidePopupWindow;->mOffY:I

    .line 346
    iput-object p2, p0, Lcom/meizu/common/widget/GuidePopupWindow;->mAnchorView:Landroid/view/View;

    .line 348
    const/4 v1, 0x4

    new-array v0, v1, [I

    .line 349
    .local v0, "bounds":[I
    const/4 v1, 0x0

    iget v2, p1, Landroid/graphics/Rect;->left:I

    aput v2, v0, v1

    .line 350
    const/4 v1, 0x1

    iget v2, p1, Landroid/graphics/Rect;->top:I

    aput v2, v0, v1

    .line 351
    const/4 v1, 0x2

    iget v2, p1, Landroid/graphics/Rect;->right:I

    aput v2, v0, v1

    .line 352
    const/4 v1, 0x3

    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    aput v2, v0, v1

    .line 354
    invoke-direct {p0, v0, p2}, Lcom/meizu/common/widget/GuidePopupWindow;->computeGuidePosition([ILandroid/view/View;)V

    .line 356
    iget v1, p0, Lcom/meizu/common/widget/GuidePopupWindow;->mPopX:I

    iget v2, p0, Lcom/meizu/common/widget/GuidePopupWindow;->mPopY:I

    invoke-virtual {p0, p2, v1, v2}, Lcom/meizu/common/widget/GuidePopupWindow;->showAsDropDown(Landroid/view/View;II)V

    goto :goto_0
.end method

.method public show(Landroid/view/View;)V
    .locals 3
    .param p1, "anchor"    # Landroid/view/View;

    .prologue
    .line 206
    if-nez p1, :cond_0

    .line 217
    :goto_0
    return-void

    .line 209
    :cond_0
    iput-object p1, p0, Lcom/meizu/common/widget/GuidePopupWindow;->mAnchorView:Landroid/view/View;

    .line 211
    const/4 v1, 0x4

    new-array v0, v1, [I

    .line 212
    .local v0, "bounds":[I
    iget-object v1, p0, Lcom/meizu/common/widget/GuidePopupWindow;->mHandleView:Lcom/meizu/common/widget/GuidePopupWindow$HandleView;

    const/4 v2, 0x0

    # invokes: Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->getParentBound(Landroid/view/View;[I)V
    invoke-static {v1, v2, v0}, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->access$000(Lcom/meizu/common/widget/GuidePopupWindow$HandleView;Landroid/view/View;[I)V

    .line 214
    invoke-direct {p0, v0, p1}, Lcom/meizu/common/widget/GuidePopupWindow;->computeGuidePosition([ILandroid/view/View;)V

    .line 216
    iget v1, p0, Lcom/meizu/common/widget/GuidePopupWindow;->mPopX:I

    iget v2, p0, Lcom/meizu/common/widget/GuidePopupWindow;->mPopY:I

    invoke-virtual {p0, p1, v1, v2}, Lcom/meizu/common/widget/GuidePopupWindow;->showAsDropDown(Landroid/view/View;II)V

    goto :goto_0
.end method

.method public show(Landroid/view/View;II)V
    .locals 6
    .param p1, "anchor"    # Landroid/view/View;
    .param p2, "offx"    # I
    .param p3, "offy"    # I

    .prologue
    const/4 v5, 0x0

    .line 315
    if-nez p1, :cond_0

    .line 336
    :goto_0
    return-void

    .line 319
    :cond_0
    iput p2, p0, Lcom/meizu/common/widget/GuidePopupWindow;->mOffX:I

    .line 320
    iput p3, p0, Lcom/meizu/common/widget/GuidePopupWindow;->mOffY:I

    .line 322
    iput-object p1, p0, Lcom/meizu/common/widget/GuidePopupWindow;->mAnchorView:Landroid/view/View;

    .line 323
    iget-object v4, p0, Lcom/meizu/common/widget/GuidePopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 324
    .local v1, "metrics":Landroid/util/DisplayMetrics;
    iget v3, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 325
    .local v3, "screenWidth":I
    iget v2, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 327
    .local v2, "screenHeight":I
    const/4 v4, 0x4

    new-array v0, v4, [I

    .line 328
    .local v0, "bounds":[I
    aput v5, v0, v5

    .line 329
    const/4 v4, 0x1

    aput v5, v0, v4

    .line 330
    const/4 v4, 0x2

    aput v3, v0, v4

    .line 331
    const/4 v4, 0x3

    aput v2, v0, v4

    .line 333
    invoke-direct {p0, v0, p1}, Lcom/meizu/common/widget/GuidePopupWindow;->computeGuidePosition([ILandroid/view/View;)V

    .line 335
    iget v4, p0, Lcom/meizu/common/widget/GuidePopupWindow;->mPopX:I

    iget v5, p0, Lcom/meizu/common/widget/GuidePopupWindow;->mPopY:I

    invoke-virtual {p0, p1, v4, v5}, Lcom/meizu/common/widget/GuidePopupWindow;->showAsDropDown(Landroid/view/View;II)V

    goto :goto_0
.end method

.method public show(Landroid/view/View;Landroid/view/View;)V
    .locals 2
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "anchor"    # Landroid/view/View;

    .prologue
    .line 232
    if-nez p2, :cond_0

    .line 238
    :goto_0
    return-void

    .line 235
    :cond_0
    iput-object p2, p0, Lcom/meizu/common/widget/GuidePopupWindow;->mAnchorView:Landroid/view/View;

    .line 236
    iput-object p1, p0, Lcom/meizu/common/widget/GuidePopupWindow;->mParentView:Landroid/view/View;

    .line 237
    iget v0, p0, Lcom/meizu/common/widget/GuidePopupWindow;->mOffX:I

    iget v1, p0, Lcom/meizu/common/widget/GuidePopupWindow;->mOffY:I

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/meizu/common/widget/GuidePopupWindow;->show(Landroid/view/View;Landroid/view/View;II)V

    goto :goto_0
.end method

.method public show(Landroid/view/View;Landroid/view/View;II)V
    .locals 3
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "anchor"    # Landroid/view/View;
    .param p3, "offx"    # I
    .param p4, "offy"    # I

    .prologue
    .line 262
    if-nez p2, :cond_0

    .line 278
    :goto_0
    return-void

    .line 266
    :cond_0
    iput p3, p0, Lcom/meizu/common/widget/GuidePopupWindow;->mOffX:I

    .line 267
    iput p4, p0, Lcom/meizu/common/widget/GuidePopupWindow;->mOffY:I

    .line 269
    iput-object p2, p0, Lcom/meizu/common/widget/GuidePopupWindow;->mAnchorView:Landroid/view/View;

    .line 270
    iput-object p1, p0, Lcom/meizu/common/widget/GuidePopupWindow;->mParentView:Landroid/view/View;

    .line 272
    const/4 v1, 0x4

    new-array v0, v1, [I

    .line 273
    .local v0, "bounds":[I
    iget-object v1, p0, Lcom/meizu/common/widget/GuidePopupWindow;->mHandleView:Lcom/meizu/common/widget/GuidePopupWindow$HandleView;

    # invokes: Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->getParentBound(Landroid/view/View;[I)V
    invoke-static {v1, p1, v0}, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->access$000(Lcom/meizu/common/widget/GuidePopupWindow$HandleView;Landroid/view/View;[I)V

    .line 275
    invoke-direct {p0, v0, p2}, Lcom/meizu/common/widget/GuidePopupWindow;->computeGuidePosition([ILandroid/view/View;)V

    .line 277
    iget v1, p0, Lcom/meizu/common/widget/GuidePopupWindow;->mPopX:I

    iget v2, p0, Lcom/meizu/common/widget/GuidePopupWindow;->mPopY:I

    invoke-virtual {p0, p2, v1, v2}, Lcom/meizu/common/widget/GuidePopupWindow;->showAsDropDown(Landroid/view/View;II)V

    goto :goto_0
.end method

.method public update(IIIIZ)V
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "force"    # Z
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .prologue
    .line 584
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 585
    iget-object v0, p0, Lcom/meizu/common/widget/GuidePopupWindow;->mAnchorView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_0

    .line 590
    :goto_0
    return-void

    .line 589
    :cond_0
    invoke-super/range {p0 .. p5}, Landroid/widget/PopupWindow;->update(IIIIZ)V

    goto :goto_0
.end method

.method public updatePosition()V
    .locals 6

    .prologue
    const/4 v5, -0x1

    .line 490
    iget-object v2, p0, Lcom/meizu/common/widget/GuidePopupWindow;->mAnchorView:Landroid/view/View;

    if-nez v2, :cond_0

    .line 503
    :goto_0
    return-void

    .line 494
    :cond_0
    const/4 v2, 0x4

    new-array v0, v2, [I

    .line 495
    .local v0, "bounds":[I
    iget-object v2, p0, Lcom/meizu/common/widget/GuidePopupWindow;->mHandleView:Lcom/meizu/common/widget/GuidePopupWindow$HandleView;

    iget-object v3, p0, Lcom/meizu/common/widget/GuidePopupWindow;->mParentView:Landroid/view/View;

    # invokes: Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->getParentBound(Landroid/view/View;[I)V
    invoke-static {v2, v3, v0}, Lcom/meizu/common/widget/GuidePopupWindow$HandleView;->access$000(Lcom/meizu/common/widget/GuidePopupWindow$HandleView;Landroid/view/View;[I)V

    .line 497
    iget-object v2, p0, Lcom/meizu/common/widget/GuidePopupWindow;->mAnchorView:Landroid/view/View;

    invoke-direct {p0, v0, v2}, Lcom/meizu/common/widget/GuidePopupWindow;->computeGuidePosition([ILandroid/view/View;)V

    .line 499
    const/4 v2, 0x2

    new-array v1, v2, [I

    .line 500
    .local v1, "position":[I
    iget-object v2, p0, Lcom/meizu/common/widget/GuidePopupWindow;->mAnchorView:Landroid/view/View;

    invoke-direct {p0, v2, v1}, Lcom/meizu/common/widget/GuidePopupWindow;->getAnchorPositon(Landroid/view/View;[I)V

    .line 501
    iget v2, p0, Lcom/meizu/common/widget/GuidePopupWindow;->mPopX:I

    const/4 v3, 0x0

    aget v3, v1, v3

    add-int/2addr v2, v3

    iget v3, p0, Lcom/meizu/common/widget/GuidePopupWindow;->mPopY:I

    const/4 v4, 0x1

    aget v4, v1, v4

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/meizu/common/widget/GuidePopupWindow;->mAnchorView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {p0, v2, v3, v5, v5}, Lcom/meizu/common/widget/GuidePopupWindow;->update(IIII)V

    goto :goto_0
.end method
