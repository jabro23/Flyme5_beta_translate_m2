.class public Lcom/meizu/common/widget/AuraSeekBar;
.super Lcom/meizu/common/widget/SkipPosSeekBar;
.source "AuraSeekBar.java"


# static fields
.field private static final mMaxHeight:I = 0x30

.field private static final mMinHeight:I = 0x7


# instance fields
.field private mAuraRadis:I

.field private mInitialTouchX:F

.field private mIsDrag:Z

.field private mScaledTouchSlop:I

.field private mThumb:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 54
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/meizu/common/widget/AuraSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 58
    const v0, 0x7f010122

    invoke-direct {p0, p1, p2, v0}, Lcom/meizu/common/widget/AuraSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 59
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/4 v2, 0x0

    .line 62
    invoke-direct {p0, p1, p2, p3}, Lcom/meizu/common/widget/SkipPosSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 47
    iput-boolean v2, p0, Lcom/meizu/common/widget/AuraSeekBar;->mIsDrag:Z

    .line 63
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/meizu/common/widget/AuraSeekBar;->mScaledTouchSlop:I

    .line 64
    sget-object v1, Lcom/meizu/common/R$styleable;->AuraSeekBar:[I

    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 65
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/common/widget/AuraSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    .line 66
    const/4 v1, 0x1

    const/high16 v2, 0x41100000    # 9.0f

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/meizu/common/widget/AuraSeekBar;->mAuraRadis:I

    .line 67
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 68
    return-void
.end method

.method private onProgressChanged()V
    .locals 1

    .prologue
    .line 145
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/meizu/common/widget/AuraSeekBar;->mIsDrag:Z

    .line 146
    iget-object v0, p0, Lcom/meizu/common/widget/AuraSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/meizu/common/widget/AuraSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/AuraSeekBar;->invalidate(Landroid/graphics/Rect;)V

    .line 149
    :cond_0
    return-void
.end method

.method private onStopTrackTouch()V
    .locals 1

    .prologue
    .line 152
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/meizu/common/widget/AuraSeekBar;->mIsDrag:Z

    .line 153
    iget-object v0, p0, Lcom/meizu/common/widget/AuraSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Lcom/meizu/common/widget/AuraSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/AuraSeekBar;->invalidate(Landroid/graphics/Rect;)V

    .line 156
    :cond_0
    return-void
.end method


# virtual methods
.method protected declared-synchronized onDraw(Landroid/graphics/Canvas;)V
    .locals 11
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    .line 90
    monitor-enter p0

    :try_start_0
    iget-boolean v5, p0, Lcom/meizu/common/widget/AuraSeekBar;->mIsDrag:Z

    if-eqz v5, :cond_1

    invoke-virtual {p0}, Lcom/meizu/common/widget/AuraSeekBar;->getThumb()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/meizu/common/widget/AuraSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_1

    .line 91
    invoke-virtual {p0}, Lcom/meizu/common/widget/AuraSeekBar;->getThumb()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 92
    .local v3, "thumb":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    .line 93
    .local v4, "thumbHeight":I
    invoke-virtual {p0}, Lcom/meizu/common/widget/AuraSeekBar;->getHeight()I

    move-result v5

    invoke-virtual {p0}, Lcom/meizu/common/widget/AuraSeekBar;->getPaddingTop()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {p0}, Lcom/meizu/common/widget/AuraSeekBar;->getPaddingBottom()I

    move-result v6

    sub-int v2, v5, v6

    .line 94
    .local v2, "height":I
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 95
    .local v0, "bounds":Landroid/graphics/Rect;
    const/4 v1, 0x0

    .line 96
    .local v1, "delta":I
    if-le v2, v4, :cond_0

    .line 97
    sub-int v5, v2, v4

    div-int/lit8 v5, v5, 0x2

    iget v6, v0, Landroid/graphics/Rect;->top:I

    sub-int v1, v5, v6

    .line 99
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 100
    invoke-virtual {p0}, Lcom/meizu/common/widget/AuraSeekBar;->getPaddingLeft()I

    move-result v5

    invoke-virtual {p0}, Lcom/meizu/common/widget/AuraSeekBar;->getThumb()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    sub-int/2addr v5, v6

    int-to-float v5, v5

    invoke-virtual {p0}, Lcom/meizu/common/widget/AuraSeekBar;->getPaddingTop()I

    move-result v6

    add-int/2addr v6, v1

    int-to-float v6, v6

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 101
    iget-object v5, p0, Lcom/meizu/common/widget/AuraSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    iget v6, v0, Landroid/graphics/Rect;->left:I

    iget v7, p0, Lcom/meizu/common/widget/AuraSeekBar;->mAuraRadis:I

    sub-int/2addr v6, v7

    iget v7, v0, Landroid/graphics/Rect;->top:I

    iget v8, p0, Lcom/meizu/common/widget/AuraSeekBar;->mAuraRadis:I

    sub-int/2addr v7, v8

    iget v8, v0, Landroid/graphics/Rect;->right:I

    iget v9, p0, Lcom/meizu/common/widget/AuraSeekBar;->mAuraRadis:I

    add-int/2addr v8, v9

    iget v9, v0, Landroid/graphics/Rect;->bottom:I

    iget v10, p0, Lcom/meizu/common/widget/AuraSeekBar;->mAuraRadis:I

    add-int/2addr v9, v10

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 102
    iget-object v5, p0, Lcom/meizu/common/widget/AuraSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    const/16 v6, 0xcc

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 103
    iget-object v5, p0, Lcom/meizu/common/widget/AuraSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 104
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 106
    .end local v0    # "bounds":Landroid/graphics/Rect;
    .end local v1    # "delta":I
    .end local v2    # "height":I
    .end local v3    # "thumb":Landroid/graphics/drawable/Drawable;
    .end local v4    # "thumbHeight":I
    :cond_1
    invoke-super {p0, p1}, Lcom/meizu/common/widget/SkipPosSeekBar;->onDraw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 107
    monitor-exit p0

    return-void

    .line 90
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 160
    invoke-super {p0, p1}, Lcom/meizu/common/widget/SkipPosSeekBar;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 161
    const-class v0, Lcom/meizu/common/widget/AuraSeekBar;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 162
    return-void
.end method

.method protected declared-synchronized onMeasure(II)V
    .locals 7
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/4 v3, 0x0

    .line 72
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/meizu/common/widget/AuraSeekBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 73
    .local v1, "drawable":Landroid/graphics/drawable/Drawable;
    iget-object v4, p0, Lcom/meizu/common/widget/AuraSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-nez v4, :cond_1

    .line 74
    .local v3, "thumbHeight":I
    :goto_0
    const/4 v2, 0x0

    .line 75
    .local v2, "dw":I
    const/4 v0, 0x0

    .line 76
    .local v0, "dh":I
    if-eqz v1, :cond_0

    .line 77
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 78
    const/4 v4, 0x7

    const/16 v5, 0x30

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 79
    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 81
    :cond_0
    invoke-virtual {p0}, Lcom/meizu/common/widget/AuraSeekBar;->getPaddingLeft()I

    move-result v4

    invoke-virtual {p0}, Lcom/meizu/common/widget/AuraSeekBar;->getPaddingRight()I

    move-result v5

    add-int/2addr v4, v5

    add-int/2addr v2, v4

    .line 82
    invoke-virtual {p0}, Lcom/meizu/common/widget/AuraSeekBar;->getPaddingTop()I

    move-result v4

    invoke-virtual {p0}, Lcom/meizu/common/widget/AuraSeekBar;->getPaddingBottom()I

    move-result v5

    add-int/2addr v4, v5

    add-int/2addr v0, v4

    .line 83
    const/4 v4, 0x0

    invoke-static {v2, p1, v4}, Lcom/meizu/common/widget/AuraSeekBar;->resolveSizeAndState(III)I

    move-result v4

    const/4 v5, 0x0

    invoke-static {v0, p2, v5}, Lcom/meizu/common/widget/AuraSeekBar;->resolveSizeAndState(III)I

    move-result v5

    invoke-virtual {p0, v4, v5}, Lcom/meizu/common/widget/AuraSeekBar;->setMeasuredDimension(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    monitor-exit p0

    return-void

    .line 73
    .end local v0    # "dh":I
    .end local v2    # "dw":I
    .end local v3    # "thumbHeight":I
    :cond_1
    :try_start_1
    iget-object v4, p0, Lcom/meizu/common/widget/AuraSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    goto :goto_0

    .line 72
    .end local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x1

    .line 111
    invoke-super {p0, p1}, Lcom/meizu/common/widget/SkipPosSeekBar;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 112
    invoke-virtual {p0}, Lcom/meizu/common/widget/AuraSeekBar;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_1

    .line 113
    const/4 v1, 0x0

    .line 141
    :cond_0
    :goto_0
    return v1

    .line 115
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 116
    .local v0, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 118
    :pswitch_0
    iput v0, p0, Lcom/meizu/common/widget/AuraSeekBar;->mInitialTouchX:F

    goto :goto_0

    .line 122
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iget v3, p0, Lcom/meizu/common/widget/AuraSeekBar;->mInitialTouchX:F

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v3, p0, Lcom/meizu/common/widget/AuraSeekBar;->mScaledTouchSlop:I

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    .line 123
    iput-boolean v1, p0, Lcom/meizu/common/widget/AuraSeekBar;->mIsDrag:Z

    .line 124
    invoke-direct {p0}, Lcom/meizu/common/widget/AuraSeekBar;->onProgressChanged()V

    goto :goto_0

    .line 129
    :pswitch_2
    iget-boolean v2, p0, Lcom/meizu/common/widget/AuraSeekBar;->mIsDrag:Z

    if-eqz v2, :cond_0

    .line 130
    invoke-direct {p0}, Lcom/meizu/common/widget/AuraSeekBar;->onStopTrackTouch()V

    goto :goto_0

    .line 135
    :pswitch_3
    iget-boolean v2, p0, Lcom/meizu/common/widget/AuraSeekBar;->mIsDrag:Z

    if-eqz v2, :cond_0

    .line 136
    invoke-direct {p0}, Lcom/meizu/common/widget/AuraSeekBar;->onStopTrackTouch()V

    goto :goto_0

    .line 116
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method
