.class public Lflyme/support/v7/internal/widget/MzActionBarTabContainer;
.super Landroid/support/v7/widget/LinearLayoutCompat;
.source "MzActionBarTabContainer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lflyme/support/v7/internal/widget/MzActionBarTabContainer$CollapseButton;
    }
.end annotation


# instance fields
.field private mAllowCollapse:Z

.field private mCollapseButton:Lflyme/support/v7/internal/widget/MzActionBarTabContainer$CollapseButton;

.field private mCollapseButtonClickListener:Landroid/view/View$OnClickListener;

.field private mContext:Landroid/content/Context;

.field private mIsCollapse:Z

.field private mIsForceCollapse:Z

.field private mScrollingTabView:Landroid/support/v7/internal/widget/ScrollingTabContainerView;

.field private mTopDividerColor:I

.field private mTopDividerHeight:I

.field private final mTopDividerPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const v2, 0x7f01009a

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 34
    invoke-direct {p0, p1, v3, v2}, Landroid/support/v7/widget/LinearLayoutCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 31
    iput-boolean v4, p0, Lflyme/support/v7/internal/widget/MzActionBarTabContainer;->mIsForceCollapse:Z

    .line 35
    sget-object v1, Landroid/support/v7/appcompat/R$styleable;->MzActionBarTabContainer:[I

    invoke-static {p1, v3, v1, v2, v4}, Landroid/support/v7/internal/widget/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroid/support/v7/internal/widget/TintTypedArray;

    move-result-object v0

    .line 37
    .local v0, "a":Landroid/support/v7/internal/widget/TintTypedArray;
    invoke-virtual {v0, v4, v4}, Landroid/support/v7/internal/widget/TintTypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lflyme/support/v7/internal/widget/MzActionBarTabContainer;->mAllowCollapse:Z

    .line 38
    invoke-virtual {v0}, Landroid/support/v7/internal/widget/TintTypedArray;->recycle()V

    .line 39
    sget-object v1, Landroid/support/v7/appcompat/R$styleable;->MzActionBarTabScrollView:[I

    const v2, 0x7f01008c

    invoke-static {p1, v3, v1, v2, v4}, Landroid/support/v7/internal/widget/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroid/support/v7/internal/widget/TintTypedArray;

    move-result-object v0

    .line 42
    invoke-virtual {p0}, Lflyme/support/v7/internal/widget/MzActionBarTabContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a006f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v4, v1}, Landroid/support/v7/internal/widget/TintTypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lflyme/support/v7/internal/widget/MzActionBarTabContainer;->mTopDividerColor:I

    .line 45
    const/4 v1, 0x1

    invoke-virtual {p0}, Lflyme/support/v7/internal/widget/MzActionBarTabContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b01ca

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/internal/widget/TintTypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lflyme/support/v7/internal/widget/MzActionBarTabContainer;->mTopDividerHeight:I

    .line 47
    invoke-virtual {v0}, Landroid/support/v7/internal/widget/TintTypedArray;->recycle()V

    .line 48
    iput-object p1, p0, Lflyme/support/v7/internal/widget/MzActionBarTabContainer;->mContext:Landroid/content/Context;

    .line 49
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lflyme/support/v7/internal/widget/MzActionBarTabContainer;->mTopDividerPaint:Landroid/graphics/Paint;

    .line 50
    iget-object v1, p0, Lflyme/support/v7/internal/widget/MzActionBarTabContainer;->mTopDividerPaint:Landroid/graphics/Paint;

    iget v2, p0, Lflyme/support/v7/internal/widget/MzActionBarTabContainer;->mTopDividerColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 51
    invoke-virtual {p0, v4}, Lflyme/support/v7/internal/widget/MzActionBarTabContainer;->setOrientation(I)V

    .line 52
    return-void
.end method

.method static synthetic access$000(Lflyme/support/v7/internal/widget/MzActionBarTabContainer;)Landroid/view/View$OnClickListener;
    .locals 1
    .param p0, "x0"    # Lflyme/support/v7/internal/widget/MzActionBarTabContainer;

    .prologue
    .line 22
    iget-object v0, p0, Lflyme/support/v7/internal/widget/MzActionBarTabContainer;->mCollapseButtonClickListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method private isCollapsed()Z
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lflyme/support/v7/internal/widget/MzActionBarTabContainer;->mCollapseButton:Lflyme/support/v7/internal/widget/MzActionBarTabContainer$CollapseButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lflyme/support/v7/internal/widget/MzActionBarTabContainer;->mCollapseButton:Lflyme/support/v7/internal/widget/MzActionBarTabContainer$CollapseButton;

    invoke-virtual {v0}, Lflyme/support/v7/internal/widget/MzActionBarTabContainer$CollapseButton;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-ne v0, p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private performCollapse()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 112
    invoke-direct {p0}, Lflyme/support/v7/internal/widget/MzActionBarTabContainer;->isCollapsed()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 120
    :goto_0
    return-void

    .line 113
    :cond_0
    iget-object v1, p0, Lflyme/support/v7/internal/widget/MzActionBarTabContainer;->mCollapseButton:Lflyme/support/v7/internal/widget/MzActionBarTabContainer$CollapseButton;

    if-nez v1, :cond_1

    .line 114
    new-instance v1, Lflyme/support/v7/internal/widget/MzActionBarTabContainer$CollapseButton;

    iget-object v2, p0, Lflyme/support/v7/internal/widget/MzActionBarTabContainer;->mContext:Landroid/content/Context;

    invoke-direct {v1, p0, v2}, Lflyme/support/v7/internal/widget/MzActionBarTabContainer$CollapseButton;-><init>(Lflyme/support/v7/internal/widget/MzActionBarTabContainer;Landroid/content/Context;)V

    iput-object v1, p0, Lflyme/support/v7/internal/widget/MzActionBarTabContainer;->mCollapseButton:Lflyme/support/v7/internal/widget/MzActionBarTabContainer$CollapseButton;

    .line 116
    :cond_1
    iget-object v1, p0, Lflyme/support/v7/internal/widget/MzActionBarTabContainer;->mCollapseButton:Lflyme/support/v7/internal/widget/MzActionBarTabContainer$CollapseButton;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x2

    const/4 v4, -0x1

    invoke-direct {v2, v3, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v1, v2}, Lflyme/support/v7/internal/widget/MzActionBarTabContainer;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 118
    invoke-virtual {p0}, Lflyme/support/v7/internal/widget/MzActionBarTabContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0079

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    .line 119
    .local v0, "padding":I
    invoke-virtual {p0, v0, v5, v5, v5}, Lflyme/support/v7/internal/widget/MzActionBarTabContainer;->setPadding(IIII)V

    goto :goto_0
.end method

.method private performNotCollapse()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 105
    invoke-virtual {p0}, Lflyme/support/v7/internal/widget/MzActionBarTabContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0079

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    .line 106
    .local v0, "padding":I
    invoke-virtual {p0, v0, v3, v0, v3}, Lflyme/support/v7/internal/widget/MzActionBarTabContainer;->setPadding(IIII)V

    .line 107
    invoke-direct {p0}, Lflyme/support/v7/internal/widget/MzActionBarTabContainer;->isCollapsed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 109
    :goto_0
    return-void

    .line 108
    :cond_0
    iget-object v1, p0, Lflyme/support/v7/internal/widget/MzActionBarTabContainer;->mCollapseButton:Lflyme/support/v7/internal/widget/MzActionBarTabContainer$CollapseButton;

    invoke-virtual {p0, v1}, Lflyme/support/v7/internal/widget/MzActionBarTabContainer;->removeView(Landroid/view/View;)V

    goto :goto_0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 138
    invoke-super {p0, p1}, Landroid/support/v7/widget/LinearLayoutCompat;->draw(Landroid/graphics/Canvas;)V

    .line 139
    invoke-virtual {p0}, Lflyme/support/v7/internal/widget/MzActionBarTabContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0079

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    .line 140
    .local v6, "padding":I
    int-to-float v1, v6

    const/4 v2, 0x0

    invoke-virtual {p0}, Lflyme/support/v7/internal/widget/MzActionBarTabContainer;->getMeasuredWidth()I

    move-result v0

    sub-int/2addr v0, v6

    int-to-float v3, v0

    iget v0, p0, Lflyme/support/v7/internal/widget/MzActionBarTabContainer;->mTopDividerHeight:I

    int-to-float v4, v0

    iget-object v5, p0, Lflyme/support/v7/internal/widget/MzActionBarTabContainer;->mTopDividerPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 142
    return-void
.end method

.method protected onMeasure(II)V
    .locals 5
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 84
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/LinearLayoutCompat;->onMeasure(II)V

    .line 85
    const/4 v1, 0x0

    .line 86
    .local v1, "isNeedCollapse":Z
    invoke-virtual {p0}, Lflyme/support/v7/internal/widget/MzActionBarTabContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0079

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 87
    .local v0, "extraPadding":I
    invoke-virtual {p0}, Lflyme/support/v7/internal/widget/MzActionBarTabContainer;->getMeasuredWidth()I

    move-result v2

    .line 88
    .local v2, "width":I
    iget-boolean v3, p0, Lflyme/support/v7/internal/widget/MzActionBarTabContainer;->mAllowCollapse:Z

    if-eqz v3, :cond_1

    iget-object v3, p0, Lflyme/support/v7/internal/widget/MzActionBarTabContainer;->mScrollingTabView:Landroid/support/v7/internal/widget/ScrollingTabContainerView;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lflyme/support/v7/internal/widget/MzActionBarTabContainer;->mScrollingTabView:Landroid/support/v7/internal/widget/ScrollingTabContainerView;

    invoke-virtual {v3}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->getVisibility()I

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lflyme/support/v7/internal/widget/MzActionBarTabContainer;->mScrollingTabView:Landroid/support/v7/internal/widget/ScrollingTabContainerView;

    invoke-virtual {v3}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->getTabStripWidth()I

    move-result v3

    mul-int/lit8 v4, v0, 0x2

    add-int/2addr v3, v4

    if-lt v2, v3, :cond_0

    iget-boolean v3, p0, Lflyme/support/v7/internal/widget/MzActionBarTabContainer;->mIsForceCollapse:Z

    if-eqz v3, :cond_1

    .line 91
    :cond_0
    const/4 v1, 0x1

    .line 93
    :cond_1
    iget-boolean v3, p0, Lflyme/support/v7/internal/widget/MzActionBarTabContainer;->mIsCollapse:Z

    if-eq v1, v3, :cond_2

    .line 94
    iput-boolean v1, p0, Lflyme/support/v7/internal/widget/MzActionBarTabContainer;->mIsCollapse:Z

    .line 95
    if-eqz v1, :cond_3

    .line 96
    invoke-direct {p0}, Lflyme/support/v7/internal/widget/MzActionBarTabContainer;->performCollapse()V

    .line 100
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/LinearLayoutCompat;->onMeasure(II)V

    .line 102
    :cond_2
    return-void

    .line 98
    :cond_3
    invoke-direct {p0}, Lflyme/support/v7/internal/widget/MzActionBarTabContainer;->performNotCollapse()V

    goto :goto_0
.end method

.method public setDividerDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "divider"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 132
    invoke-super {p0, p1}, Landroid/support/v7/widget/LinearLayoutCompat;->setDividerDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 133
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lflyme/support/v7/internal/widget/MzActionBarTabContainer;->setWillNotDraw(Z)V

    .line 134
    return-void
.end method

.method public setTabView(Landroid/support/v7/internal/widget/ScrollingTabContainerView;)V
    .locals 5
    .param p1, "tabView"    # Landroid/support/v7/internal/widget/ScrollingTabContainerView;

    .prologue
    const/4 v4, 0x0

    .line 63
    iget-object v2, p0, Lflyme/support/v7/internal/widget/MzActionBarTabContainer;->mScrollingTabView:Landroid/support/v7/internal/widget/ScrollingTabContainerView;

    if-eqz v2, :cond_0

    .line 64
    iget-object v2, p0, Lflyme/support/v7/internal/widget/MzActionBarTabContainer;->mScrollingTabView:Landroid/support/v7/internal/widget/ScrollingTabContainerView;

    invoke-virtual {p0, v2}, Lflyme/support/v7/internal/widget/MzActionBarTabContainer;->removeView(Landroid/view/View;)V

    .line 66
    :cond_0
    invoke-direct {p0}, Lflyme/support/v7/internal/widget/MzActionBarTabContainer;->isCollapsed()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 67
    iget-object v2, p0, Lflyme/support/v7/internal/widget/MzActionBarTabContainer;->mCollapseButton:Lflyme/support/v7/internal/widget/MzActionBarTabContainer$CollapseButton;

    invoke-virtual {p0, v2}, Lflyme/support/v7/internal/widget/MzActionBarTabContainer;->removeView(Landroid/view/View;)V

    .line 69
    :cond_1
    iput-object p1, p0, Lflyme/support/v7/internal/widget/MzActionBarTabContainer;->mScrollingTabView:Landroid/support/v7/internal/widget/ScrollingTabContainerView;

    .line 70
    if-eqz p1, :cond_2

    .line 71
    invoke-virtual {p0, p1}, Lflyme/support/v7/internal/widget/MzActionBarTabContainer;->addView(Landroid/view/View;)V

    .line 72
    invoke-virtual {p1}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;

    .line 73
    .local v0, "lp":Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;
    invoke-virtual {p0}, Lflyme/support/v7/internal/widget/MzActionBarTabContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0079

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    .line 74
    .local v1, "padding":I
    invoke-virtual {p0, v1, v4, v1, v4}, Lflyme/support/v7/internal/widget/MzActionBarTabContainer;->setPadding(IIII)V

    .line 75
    iput v4, v0, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->width:I

    .line 76
    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, v0, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->weight:F

    .line 77
    const/4 v2, -0x2

    iput v2, v0, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->height:I

    .line 78
    invoke-virtual {p1, v4}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->setAllowCollapse(Z)V

    .line 80
    .end local v0    # "lp":Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;
    .end local v1    # "padding":I
    :cond_2
    return-void
.end method
