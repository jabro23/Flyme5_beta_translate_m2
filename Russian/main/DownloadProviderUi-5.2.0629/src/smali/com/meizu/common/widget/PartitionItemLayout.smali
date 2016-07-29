.class public Lcom/meizu/common/widget/PartitionItemLayout;
.super Landroid/widget/FrameLayout;
.source "PartitionItemLayout.java"

# interfaces
.implements Landroid/widget/AbsListView$SelectionBoundsAdjuster;
.implements Lcom/meizu/widget/ListDragShadowItem;


# instance fields
.field protected mContentBackground:Landroid/graphics/drawable/Drawable;

.field private mItemShadeRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 36
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 40
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/meizu/common/widget/PartitionItemLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 44
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 46
    const/4 v0, 0x0

    .line 47
    .local v0, "cbg":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Lcom/meizu/common/widget/PartitionItemLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0201c6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 58
    if-eqz v0, :cond_0

    .line 59
    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/PartitionItemLayout;->setContentBackground(Landroid/graphics/drawable/Drawable;)V

    .line 62
    :cond_0
    iget-object v1, p0, Lcom/meizu/common/widget/PartitionItemLayout;->mItemShadeRect:Landroid/graphics/Rect;

    if-nez v1, :cond_1

    .line 63
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/meizu/common/widget/PartitionItemLayout;->mItemShadeRect:Landroid/graphics/Rect;

    .line 65
    :cond_1
    return-void
.end method


# virtual methods
.method public adjustListItemSelectionBounds(Landroid/graphics/Rect;)V
    .locals 2
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .prologue
    .line 69
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcom/meizu/common/widget/PartitionItemLayout;->mItemShadeRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 70
    iget v0, p1, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Lcom/meizu/common/widget/PartitionItemLayout;->mItemShadeRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 71
    iget v0, p1, Landroid/graphics/Rect;->right:I

    iget-object v1, p0, Lcom/meizu/common/widget/PartitionItemLayout;->mItemShadeRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 72
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    iget-object v1, p0, Lcom/meizu/common/widget/PartitionItemLayout;->mItemShadeRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 73
    return-void
.end method

.method protected drawableStateChanged()V
    .locals 2

    .prologue
    .line 147
    invoke-super {p0}, Landroid/widget/FrameLayout;->drawableStateChanged()V

    .line 148
    iget-object v0, p0, Lcom/meizu/common/widget/PartitionItemLayout;->mContentBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meizu/common/widget/PartitionItemLayout;->mContentBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/meizu/common/widget/PartitionItemLayout;->mContentBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/meizu/common/widget/PartitionItemLayout;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 151
    :cond_0
    return-void
.end method

.method public getContentBackground()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/meizu/common/widget/PartitionItemLayout;->mContentBackground:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getDragView()Landroid/view/View;
    .locals 1

    .prologue
    .line 77
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/PartitionItemLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 1

    .prologue
    .line 139
    invoke-super {p0}, Landroid/widget/FrameLayout;->jumpDrawablesToCurrentState()V

    .line 140
    iget-object v0, p0, Lcom/meizu/common/widget/PartitionItemLayout;->mContentBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/meizu/common/widget/PartitionItemLayout;->mContentBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 143
    :cond_0
    return-void
.end method

.method public needBackground()Z
    .locals 1

    .prologue
    .line 82
    const/4 v0, 0x1

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 155
    iget-object v0, p0, Lcom/meizu/common/widget/PartitionItemLayout;->mContentBackground:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/meizu/common/widget/PartitionItemLayout;->mItemShadeRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/meizu/common/widget/PartitionItemLayout;->mItemShadeRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Lcom/meizu/common/widget/PartitionItemLayout;->getMeasuredWidth()I

    move-result v3

    iget-object v4, p0, Lcom/meizu/common/widget/PartitionItemLayout;->mItemShadeRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/meizu/common/widget/PartitionItemLayout;->getMeasuredHeight()I

    move-result v4

    iget-object v5, p0, Lcom/meizu/common/widget/PartitionItemLayout;->mItemShadeRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 160
    iget-object v0, p0, Lcom/meizu/common/widget/PartitionItemLayout;->mContentBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 161
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 162
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 166
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 167
    const-class v0, Lcom/meizu/common/widget/PartitionItemLayout;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 168
    return-void
.end method

.method public setBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "background"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 87
    invoke-virtual {p0, p1}, Lcom/meizu/common/widget/PartitionItemLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 88
    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "background"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 92
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 94
    iget-object v0, p0, Lcom/meizu/common/widget/PartitionItemLayout;->mItemShadeRect:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    .line 95
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/meizu/common/widget/PartitionItemLayout;->mItemShadeRect:Landroid/graphics/Rect;

    .line 98
    :cond_0
    if-eqz p1, :cond_1

    .line 99
    iget-object v0, p0, Lcom/meizu/common/widget/PartitionItemLayout;->mItemShadeRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 103
    :goto_0
    return-void

    .line 101
    :cond_1
    iget-object v0, p0, Lcom/meizu/common/widget/PartitionItemLayout;->mItemShadeRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    goto :goto_0
.end method

.method public setContentBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "contentBackground"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 106
    iget-object v0, p0, Lcom/meizu/common/widget/PartitionItemLayout;->mContentBackground:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_2

    .line 107
    iget-object v0, p0, Lcom/meizu/common/widget/PartitionItemLayout;->mContentBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/meizu/common/widget/PartitionItemLayout;->mContentBackground:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 109
    iget-object v0, p0, Lcom/meizu/common/widget/PartitionItemLayout;->mContentBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/PartitionItemLayout;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 112
    :cond_0
    iput-object p1, p0, Lcom/meizu/common/widget/PartitionItemLayout;->mContentBackground:Landroid/graphics/drawable/Drawable;

    .line 114
    if-eqz p1, :cond_3

    .line 115
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/PartitionItemLayout;->setWillNotDraw(Z)V

    .line 116
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 117
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 118
    invoke-virtual {p0}, Lcom/meizu/common/widget/PartitionItemLayout;->getDrawableState()[I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 123
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/meizu/common/widget/PartitionItemLayout;->requestLayout()V

    .line 124
    invoke-virtual {p0}, Lcom/meizu/common/widget/PartitionItemLayout;->invalidate()V

    .line 126
    :cond_2
    return-void

    .line 121
    :cond_3
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/PartitionItemLayout;->setWillNotDraw(Z)V

    goto :goto_0
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 134
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/meizu/common/widget/PartitionItemLayout;->mContentBackground:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
