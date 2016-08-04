.class public Landroid/support/v7/widget/MultiChoiceView;
.super Landroid/support/v7/widget/LinearLayoutCompat;
.source "MultiChoiceView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/widget/MultiChoiceView$ItemRippleDrawable;
    }
.end annotation


# instance fields
.field private mClose:Landroid/view/View;

.field private mCloseItemLayout:I

.field private mItemMaxWidth:I

.field private mSelectAll:Landroid/view/View;

.field private mSelectAllItemLayout:I

.field private mSubTitle:Ljava/lang/CharSequence;

.field private mSubtitleStyleRes:I

.field private final mSubtitleView:Landroid/widget/TextView;

.field private mTitle:Ljava/lang/CharSequence;

.field private mTitleGravity:I

.field private mTitleLayout:Landroid/view/View;

.field private mTitleStyleRes:I

.field private final mTitleView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 45
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/MultiChoiceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 49
    const v0, 0x7f01008b

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/MultiChoiceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 53
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/LinearLayoutCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 41
    const/16 v5, 0x11

    iput v5, p0, Landroid/support/v7/widget/MultiChoiceView;->mTitleGravity:I

    .line 54
    sget-object v5, Landroid/support/v7/appcompat/R$styleable;->MzMultiChoiceView:[I

    invoke-static {p1, p2, v5, p3, v9}, Landroid/support/v7/internal/widget/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroid/support/v7/internal/widget/TintTypedArray;

    move-result-object v0

    .line 56
    .local v0, "a":Landroid/support/v7/internal/widget/TintTypedArray;
    invoke-virtual {v0, v9, v9}, Landroid/support/v7/internal/widget/TintTypedArray;->getResourceId(II)I

    move-result v5

    iput v5, p0, Landroid/support/v7/widget/MultiChoiceView;->mTitleStyleRes:I

    .line 58
    invoke-virtual {v0, v8, v9}, Landroid/support/v7/internal/widget/TintTypedArray;->getResourceId(II)I

    move-result v5

    iput v5, p0, Landroid/support/v7/widget/MultiChoiceView;->mSubtitleStyleRes:I

    .line 60
    invoke-virtual {v0}, Landroid/support/v7/internal/widget/TintTypedArray;->recycle()V

    .line 61
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 63
    .local v2, "inflater":Landroid/view/LayoutInflater;
    const v5, 0x7f040057

    iput v5, p0, Landroid/support/v7/widget/MultiChoiceView;->mCloseItemLayout:I

    .line 64
    const v5, 0x7f040058

    iput v5, p0, Landroid/support/v7/widget/MultiChoiceView;->mSelectAllItemLayout:I

    .line 65
    iget v5, p0, Landroid/support/v7/widget/MultiChoiceView;->mCloseItemLayout:I

    invoke-virtual {v2, v5, p0, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Landroid/support/v7/widget/MultiChoiceView;->mClose:Landroid/view/View;

    .line 66
    iget-object v5, p0, Landroid/support/v7/widget/MultiChoiceView;->mClose:Landroid/view/View;

    invoke-virtual {p0, v5}, Landroid/support/v7/widget/MultiChoiceView;->addView(Landroid/view/View;)V

    .line 67
    iget v5, p0, Landroid/support/v7/widget/MultiChoiceView;->mSelectAllItemLayout:I

    invoke-virtual {v2, v5, p0, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Landroid/support/v7/widget/MultiChoiceView;->mSelectAll:Landroid/view/View;

    .line 68
    iget-object v5, p0, Landroid/support/v7/widget/MultiChoiceView;->mSelectAll:Landroid/view/View;

    invoke-virtual {p0, v5}, Landroid/support/v7/widget/MultiChoiceView;->addView(Landroid/view/View;)V

    .line 70
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x15

    if-ge v5, v6, :cond_0

    .line 71
    new-instance v1, Landroid/support/v7/widget/MultiChoiceView$ItemRippleDrawable;

    iget-object v5, p0, Landroid/support/v7/widget/MultiChoiceView;->mClose:Landroid/view/View;

    invoke-direct {v1, p0, v5}, Landroid/support/v7/widget/MultiChoiceView$ItemRippleDrawable;-><init>(Landroid/support/v7/widget/MultiChoiceView;Landroid/view/View;)V

    .line 72
    .local v1, "closeBackground":Landroid/support/v7/widget/MultiChoiceView$ItemRippleDrawable;
    iget-object v5, p0, Landroid/support/v7/widget/MultiChoiceView;->mClose:Landroid/view/View;

    invoke-virtual {v5, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 74
    new-instance v3, Landroid/support/v7/widget/MultiChoiceView$ItemRippleDrawable;

    iget-object v5, p0, Landroid/support/v7/widget/MultiChoiceView;->mSelectAll:Landroid/view/View;

    invoke-direct {v3, p0, v5}, Landroid/support/v7/widget/MultiChoiceView$ItemRippleDrawable;-><init>(Landroid/support/v7/widget/MultiChoiceView;Landroid/view/View;)V

    .line 75
    .local v3, "selectAllBackground":Landroid/support/v7/widget/MultiChoiceView$ItemRippleDrawable;
    iget-object v5, p0, Landroid/support/v7/widget/MultiChoiceView;->mSelectAll:Landroid/view/View;

    invoke-virtual {v5, v3}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 76
    invoke-virtual {p0, v9}, Landroid/support/v7/widget/MultiChoiceView;->setClipChildren(Z)V

    .line 78
    .end local v1    # "closeBackground":Landroid/support/v7/widget/MultiChoiceView$ItemRippleDrawable;
    .end local v3    # "selectAllBackground":Landroid/support/v7/widget/MultiChoiceView$ItemRippleDrawable;
    :cond_0
    const v5, 0x7f040054

    invoke-virtual {v2, v5, p0, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Landroid/support/v7/widget/MultiChoiceView;->mTitleLayout:Landroid/view/View;

    .line 79
    iget-object v5, p0, Landroid/support/v7/widget/MultiChoiceView;->mTitleLayout:Landroid/view/View;

    invoke-virtual {p0, v5}, Landroid/support/v7/widget/MultiChoiceView;->addView(Landroid/view/View;)V

    .line 81
    iget-object v5, p0, Landroid/support/v7/widget/MultiChoiceView;->mTitleLayout:Landroid/view/View;

    const v6, 0x7f0d004b

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Landroid/support/v7/widget/MultiChoiceView;->mTitleView:Landroid/widget/TextView;

    .line 82
    iget-object v5, p0, Landroid/support/v7/widget/MultiChoiceView;->mTitleLayout:Landroid/view/View;

    const v6, 0x7f0d004c

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Landroid/support/v7/widget/MultiChoiceView;->mSubtitleView:Landroid/widget/TextView;

    .line 83
    iget v5, p0, Landroid/support/v7/widget/MultiChoiceView;->mTitleStyleRes:I

    if-eqz v5, :cond_1

    .line 84
    iget-object v5, p0, Landroid/support/v7/widget/MultiChoiceView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/support/v7/widget/MultiChoiceView;->getContext()Landroid/content/Context;

    move-result-object v6

    iget v7, p0, Landroid/support/v7/widget/MultiChoiceView;->mTitleStyleRes:I

    invoke-virtual {v5, v6, v7}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 86
    :cond_1
    iget v5, p0, Landroid/support/v7/widget/MultiChoiceView;->mSubtitleStyleRes:I

    if-eqz v5, :cond_2

    .line 87
    iget-object v5, p0, Landroid/support/v7/widget/MultiChoiceView;->mSubtitleView:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/support/v7/widget/MultiChoiceView;->getContext()Landroid/content/Context;

    move-result-object v6

    iget v7, p0, Landroid/support/v7/widget/MultiChoiceView;->mSubtitleStyleRes:I

    invoke-virtual {v5, v6, v7}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 90
    :cond_2
    invoke-virtual {p0}, Landroid/support/v7/widget/MultiChoiceView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f080076

    new-array v7, v8, [Ljava/lang/Object;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-virtual {v5, v6, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 91
    .local v4, "title":Ljava/lang/String;
    invoke-virtual {p0, v4}, Landroid/support/v7/widget/MultiChoiceView;->setTitle(Ljava/lang/CharSequence;)V

    .line 93
    invoke-virtual {p0}, Landroid/support/v7/widget/MultiChoiceView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->density:F

    const/high16 v6, 0x42d00000    # 104.0f

    mul-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, p0, Landroid/support/v7/widget/MultiChoiceView;->mItemMaxWidth:I

    .line 94
    return-void
.end method

.method private computeAvailableWidth(II)I
    .locals 5
    .param p1, "availableWidth"    # I
    .param p2, "contentWidth"    # I

    .prologue
    .line 251
    invoke-virtual {p0}, Landroid/support/v7/widget/MultiChoiceView;->getPaddingLeft()I

    move-result v3

    invoke-virtual {p0}, Landroid/support/v7/widget/MultiChoiceView;->getPaddingRight()I

    move-result v4

    add-int/2addr v3, v4

    sub-int/2addr p2, v3

    .line 252
    iget v3, p0, Landroid/support/v7/widget/MultiChoiceView;->mTitleGravity:I

    and-int/lit8 v3, v3, 0x7

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    .line 253
    const/4 v0, 0x0

    .line 254
    .local v0, "closeWidth":I
    iget-object v3, p0, Landroid/support/v7/widget/MultiChoiceView;->mClose:Landroid/view/View;

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/support/v7/widget/MultiChoiceView;->mClose:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-ne v3, p0, :cond_0

    .line 255
    iget-object v3, p0, Landroid/support/v7/widget/MultiChoiceView;->mClose:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    .line 256
    iget-object v3, p0, Landroid/support/v7/widget/MultiChoiceView;->mClose:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 257
    .local v1, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    iget v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v4, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v3, v4

    add-int/2addr v0, v3

    .line 259
    .end local v1    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_0
    const/4 v2, 0x0

    .line 260
    .local v2, "selectWidth":I
    iget-object v3, p0, Landroid/support/v7/widget/MultiChoiceView;->mSelectAll:Landroid/view/View;

    if-eqz v3, :cond_1

    iget-object v3, p0, Landroid/support/v7/widget/MultiChoiceView;->mSelectAll:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-ne v3, p0, :cond_1

    .line 261
    iget-object v3, p0, Landroid/support/v7/widget/MultiChoiceView;->mSelectAll:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    .line 262
    iget-object v3, p0, Landroid/support/v7/widget/MultiChoiceView;->mSelectAll:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 263
    .restart local v1    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    iget v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v4, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v3, v4

    add-int/2addr v2, v3

    .line 265
    .end local v1    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_1
    if-lt v0, v2, :cond_3

    .line 266
    mul-int/lit8 v3, v0, 0x2

    sub-int p1, p2, v3

    .line 271
    .end local v0    # "closeWidth":I
    .end local v2    # "selectWidth":I
    :cond_2
    :goto_0
    return p1

    .line 268
    .restart local v0    # "closeWidth":I
    .restart local v2    # "selectWidth":I
    :cond_3
    mul-int/lit8 v3, v2, 0x2

    sub-int p1, p2, v3

    goto :goto_0
.end method

.method private initTitle()V
    .locals 7

    .prologue
    const/16 v4, 0x8

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 235
    iget-object v5, p0, Landroid/support/v7/widget/MultiChoiceView;->mTitleView:Landroid/widget/TextView;

    iget-object v6, p0, Landroid/support/v7/widget/MultiChoiceView;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 236
    iget-object v5, p0, Landroid/support/v7/widget/MultiChoiceView;->mSubtitleView:Landroid/widget/TextView;

    iget-object v6, p0, Landroid/support/v7/widget/MultiChoiceView;->mSubTitle:Ljava/lang/CharSequence;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 238
    iget-object v5, p0, Landroid/support/v7/widget/MultiChoiceView;->mTitle:Ljava/lang/CharSequence;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    move v1, v2

    .line 239
    .local v1, "hasTitle":Z
    :goto_0
    iget-object v5, p0, Landroid/support/v7/widget/MultiChoiceView;->mSubTitle:Ljava/lang/CharSequence;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    move v0, v2

    .line 240
    .local v0, "hasSubtitle":Z
    :goto_1
    iget-object v5, p0, Landroid/support/v7/widget/MultiChoiceView;->mSubtitleView:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    move v2, v3

    :goto_2
    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 241
    iget-object v2, p0, Landroid/support/v7/widget/MultiChoiceView;->mTitleLayout:Landroid/view/View;

    if-nez v1, :cond_0

    if-eqz v0, :cond_1

    :cond_0
    move v4, v3

    :cond_1
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 242
    return-void

    .end local v0    # "hasSubtitle":Z
    .end local v1    # "hasTitle":Z
    :cond_2
    move v1, v3

    .line 238
    goto :goto_0

    .restart local v1    # "hasTitle":Z
    :cond_3
    move v0, v3

    .line 239
    goto :goto_1

    .restart local v0    # "hasSubtitle":Z
    :cond_4
    move v2, v4

    .line 240
    goto :goto_2
.end method

.method protected static next(IIZ)I
    .locals 1
    .param p0, "x"    # I
    .param p1, "val"    # I
    .param p2, "isRtl"    # Z

    .prologue
    .line 199
    if-eqz p2, :cond_0

    sub-int v0, p0, p1

    :goto_0
    return v0

    :cond_0
    add-int v0, p0, p1

    goto :goto_0
.end method

.method private setBackgroundHotspotBounds(Landroid/view/View;)V
    .locals 11
    .param p1, "item"    # Landroid/view/View;

    .prologue
    .line 185
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 186
    .local v0, "bg":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 187
    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v3

    .line 188
    .local v3, "paddingLeft":I
    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result v4

    .line 189
    .local v4, "paddingRight":I
    sub-int v2, v3, v4

    .line 190
    .local v2, "offsetX":I
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v5

    .line 191
    .local v5, "width":I
    add-int v7, v5, v2

    div-int/lit8 v1, v7, 0x2

    .line 192
    .local v1, "centerX":I
    sub-int v7, v5, v3

    sub-int/2addr v7, v4

    div-int/lit8 v6, v7, 0x2

    .line 193
    .local v6, "widthHalfEdge":I
    sub-int v7, v1, v6

    const/4 v8, 0x0

    add-int v9, v1, v6

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v10

    invoke-static {v0, v7, v8, v9, v10}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setHotspotBounds(Landroid/graphics/drawable/Drawable;IIII)V

    .line 196
    .end local v1    # "centerX":I
    .end local v2    # "offsetX":I
    .end local v3    # "paddingLeft":I
    .end local v4    # "paddingRight":I
    .end local v5    # "width":I
    .end local v6    # "widthHalfEdge":I
    :cond_0
    return-void
.end method


# virtual methods
.method public getSelectAllView()Landroid/view/View;
    .locals 1

    .prologue
    .line 308
    iget-object v0, p0, Landroid/support/v7/widget/MultiChoiceView;->mSelectAll:Landroid/view/View;

    return-object v0
.end method

.method protected measureChildView(Landroid/view/View;III)I
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "availableWidth"    # I
    .param p3, "childSpecHeight"    # I
    .param p4, "spacing"    # I

    .prologue
    .line 135
    const/high16 v0, -0x80000000

    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-virtual {p1, v0, p3}, Landroid/view/View;->measure(II)V

    .line 141
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    add-int/2addr v0, p4

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 15
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 146
    invoke-static {p0}, Landroid/support/v7/internal/widget/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v5

    .line 147
    .local v5, "isLayoutRtl":Z
    if-eqz v5, :cond_4

    sub-int v0, p4, p2

    invoke-virtual {p0}, Landroid/support/v7/widget/MultiChoiceView;->getPaddingRight()I

    move-result v1

    sub-int v2, v0, v1

    .line 148
    .local v2, "x":I
    :goto_0
    invoke-virtual {p0}, Landroid/support/v7/widget/MultiChoiceView;->getPaddingTop()I

    move-result v3

    .line 149
    .local v3, "y":I
    sub-int v0, p5, p3

    invoke-virtual {p0}, Landroid/support/v7/widget/MultiChoiceView;->getPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/support/v7/widget/MultiChoiceView;->getPaddingBottom()I

    move-result v1

    sub-int v4, v0, v1

    .line 151
    .local v4, "contentHeight":I
    iget-object v0, p0, Landroid/support/v7/widget/MultiChoiceView;->mClose:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/MultiChoiceView;->mClose:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    .line 152
    iget-object v0, p0, Landroid/support/v7/widget/MultiChoiceView;->mClose:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 153
    .local v13, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    if-eqz v5, :cond_5

    iget v14, v13, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 154
    .local v14, "startMargin":I
    :goto_1
    if-eqz v5, :cond_6

    iget v12, v13, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 155
    .local v12, "endMargin":I
    :goto_2
    invoke-static {v2, v14, v5}, Landroid/support/v7/widget/MultiChoiceView;->next(IIZ)I

    move-result v2

    .line 156
    iget-object v1, p0, Landroid/support/v7/widget/MultiChoiceView;->mClose:Landroid/view/View;

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/support/v7/widget/MultiChoiceView;->positionChild(Landroid/view/View;IIIZ)I

    move-result v0

    add-int/2addr v2, v0

    .line 157
    invoke-static {v2, v12, v5}, Landroid/support/v7/widget/MultiChoiceView;->next(IIZ)I

    move-result v2

    .line 158
    iget-object v0, p0, Landroid/support/v7/widget/MultiChoiceView;->mClose:Landroid/view/View;

    invoke-direct {p0, v0}, Landroid/support/v7/widget/MultiChoiceView;->setBackgroundHotspotBounds(Landroid/view/View;)V

    .line 162
    .end local v12    # "endMargin":I
    .end local v13    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v14    # "startMargin":I
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/MultiChoiceView;->mTitleLayout:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v7/widget/MultiChoiceView;->mTitleLayout:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_2

    .line 163
    iget v0, p0, Landroid/support/v7/widget/MultiChoiceView;->mTitleGravity:I

    and-int/lit8 v0, v0, 0x7

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 164
    sub-int v0, p4, p2

    iget-object v1, p0, Landroid/support/v7/widget/MultiChoiceView;->mTitleLayout:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v2, v0, 0x2

    .line 166
    :cond_1
    iget-object v7, p0, Landroid/support/v7/widget/MultiChoiceView;->mTitleLayout:Landroid/view/View;

    const/4 v11, 0x0

    move-object v6, p0

    move v8, v2

    move v9, v3

    move v10, v4

    invoke-virtual/range {v6 .. v11}, Landroid/support/v7/widget/MultiChoiceView;->positionChild(Landroid/view/View;IIIZ)I

    move-result v0

    add-int/2addr v2, v0

    .line 169
    :cond_2
    if-eqz v5, :cond_7

    invoke-virtual {p0}, Landroid/support/v7/widget/MultiChoiceView;->getPaddingLeft()I

    move-result v2

    .line 171
    :goto_3
    iget-object v0, p0, Landroid/support/v7/widget/MultiChoiceView;->mSelectAll:Landroid/view/View;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/support/v7/widget/MultiChoiceView;->mSelectAll:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_3

    .line 172
    iget-object v0, p0, Landroid/support/v7/widget/MultiChoiceView;->mSelectAll:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 173
    .restart local v13    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    if-eqz v5, :cond_8

    iget v12, v13, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 174
    .restart local v12    # "endMargin":I
    :goto_4
    if-nez v5, :cond_9

    const/4 v0, 0x1

    :goto_5
    invoke-static {v2, v12, v0}, Landroid/support/v7/widget/MultiChoiceView;->next(IIZ)I

    move-result v2

    .line 175
    iget-object v7, p0, Landroid/support/v7/widget/MultiChoiceView;->mSelectAll:Landroid/view/View;

    if-nez v5, :cond_a

    const/4 v11, 0x1

    :goto_6
    move-object v6, p0

    move v8, v2

    move v9, v3

    move v10, v4

    invoke-virtual/range {v6 .. v11}, Landroid/support/v7/widget/MultiChoiceView;->positionChild(Landroid/view/View;IIIZ)I

    .line 176
    iget-object v0, p0, Landroid/support/v7/widget/MultiChoiceView;->mSelectAll:Landroid/view/View;

    invoke-direct {p0, v0}, Landroid/support/v7/widget/MultiChoiceView;->setBackgroundHotspotBounds(Landroid/view/View;)V

    .line 178
    .end local v12    # "endMargin":I
    .end local v13    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_3
    return-void

    .line 147
    .end local v2    # "x":I
    .end local v3    # "y":I
    .end local v4    # "contentHeight":I
    :cond_4
    invoke-virtual {p0}, Landroid/support/v7/widget/MultiChoiceView;->getPaddingLeft()I

    move-result v2

    goto/16 :goto_0

    .line 153
    .restart local v2    # "x":I
    .restart local v3    # "y":I
    .restart local v4    # "contentHeight":I
    .restart local v13    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_5
    iget v14, v13, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    goto/16 :goto_1

    .line 154
    .restart local v14    # "startMargin":I
    :cond_6
    iget v12, v13, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    goto/16 :goto_2

    .line 169
    .end local v13    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v14    # "startMargin":I
    :cond_7
    sub-int v0, p4, p2

    invoke-virtual {p0}, Landroid/support/v7/widget/MultiChoiceView;->getPaddingRight()I

    move-result v1

    sub-int v2, v0, v1

    goto :goto_3

    .line 173
    .restart local v13    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_8
    iget v12, v13, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    goto :goto_4

    .line 174
    .restart local v12    # "endMargin":I
    :cond_9
    const/4 v0, 0x0

    goto :goto_5

    .line 175
    :cond_a
    const/4 v11, 0x0

    goto :goto_6
.end method

.method protected onMeasure(II)V
    .locals 15
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 98
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 99
    .local v2, "contentWidth":I
    invoke-virtual {p0}, Landroid/support/v7/widget/MultiChoiceView;->getPaddingTop()I

    move-result v12

    invoke-virtual {p0}, Landroid/support/v7/widget/MultiChoiceView;->getPaddingBottom()I

    move-result v13

    add-int v11, v12, v13

    .line 100
    .local v11, "verticalPadding":I
    invoke-virtual {p0}, Landroid/support/v7/widget/MultiChoiceView;->getPaddingLeft()I

    move-result v12

    sub-int v12, v2, v12

    invoke-virtual {p0}, Landroid/support/v7/widget/MultiChoiceView;->getPaddingRight()I

    move-result v13

    sub-int v0, v12, v13

    .line 101
    .local v0, "availableWidth":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v7

    .line 102
    .local v7, "maxHeight":I
    sub-int v4, v7, v11

    .line 103
    .local v4, "height":I
    const/high16 v12, -0x80000000

    invoke-static {v4, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 104
    .local v1, "childSpecHeight":I
    iget-object v12, p0, Landroid/support/v7/widget/MultiChoiceView;->mClose:Landroid/view/View;

    if-eqz v12, :cond_0

    .line 105
    iget-object v12, p0, Landroid/support/v7/widget/MultiChoiceView;->mClose:Landroid/view/View;

    iget v13, p0, Landroid/support/v7/widget/MultiChoiceView;->mItemMaxWidth:I

    invoke-static {v0, v13}, Ljava/lang/Math;->min(II)I

    move-result v13

    const/4 v14, 0x0

    invoke-virtual {p0, v12, v13, v1, v14}, Landroid/support/v7/widget/MultiChoiceView;->measureChildView(Landroid/view/View;III)I

    move-result v12

    sub-int/2addr v0, v12

    .line 106
    iget-object v12, p0, Landroid/support/v7/widget/MultiChoiceView;->mClose:Landroid/view/View;

    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 107
    .local v6, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    iget v12, v6, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v13, v6, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v12, v13

    sub-int/2addr v0, v12

    .line 110
    .end local v6    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_0
    iget-object v12, p0, Landroid/support/v7/widget/MultiChoiceView;->mSelectAll:Landroid/view/View;

    if-eqz v12, :cond_1

    .line 111
    iget-object v12, p0, Landroid/support/v7/widget/MultiChoiceView;->mSelectAll:Landroid/view/View;

    iget v13, p0, Landroid/support/v7/widget/MultiChoiceView;->mItemMaxWidth:I

    invoke-static {v0, v13}, Ljava/lang/Math;->min(II)I

    move-result v13

    const/4 v14, 0x0

    invoke-virtual {p0, v12, v13, v1, v14}, Landroid/support/v7/widget/MultiChoiceView;->measureChildView(Landroid/view/View;III)I

    move-result v12

    sub-int/2addr v0, v12

    .line 112
    iget-object v12, p0, Landroid/support/v7/widget/MultiChoiceView;->mSelectAll:Landroid/view/View;

    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 113
    .restart local v6    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    iget v12, v6, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v13, v6, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v12, v13

    sub-int/2addr v0, v12

    .line 116
    .end local v6    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_1
    invoke-direct {p0, v0, v2}, Landroid/support/v7/widget/MultiChoiceView;->computeAvailableWidth(II)I

    move-result v0

    .line 117
    iget-object v12, p0, Landroid/support/v7/widget/MultiChoiceView;->mTitleLayout:Landroid/view/View;

    if-eqz v12, :cond_2

    .line 118
    iget-object v12, p0, Landroid/support/v7/widget/MultiChoiceView;->mTitleLayout:Landroid/view/View;

    const/4 v13, 0x0

    invoke-virtual {p0, v12, v0, v1, v13}, Landroid/support/v7/widget/MultiChoiceView;->measureChildView(Landroid/view/View;III)I

    .line 121
    :cond_2
    const/4 v8, 0x0

    .line 122
    .local v8, "measuredHeight":I
    invoke-virtual {p0}, Landroid/support/v7/widget/MultiChoiceView;->getChildCount()I

    move-result v3

    .line 123
    .local v3, "count":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v3, :cond_4

    .line 124
    invoke-virtual {p0, v5}, Landroid/support/v7/widget/MultiChoiceView;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    .line 125
    .local v10, "v":Landroid/view/View;
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    add-int v9, v12, v11

    .line 126
    .local v9, "paddedViewHeight":I
    if-le v9, v8, :cond_3

    .line 127
    move v8, v9

    .line 123
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 130
    .end local v9    # "paddedViewHeight":I
    .end local v10    # "v":Landroid/view/View;
    :cond_4
    invoke-virtual {p0, v2, v8}, Landroid/support/v7/widget/MultiChoiceView;->setMeasuredDimension(II)V

    .line 131
    return-void
.end method

.method protected positionChild(Landroid/view/View;IIIZ)I
    .locals 5
    .param p1, "child"    # Landroid/view/View;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "contentHeight"    # I
    .param p5, "reverse"    # Z

    .prologue
    .line 203
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    .line 204
    .local v2, "childWidth":I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 205
    .local v0, "childHeight":I
    sub-int v3, p4, v0

    div-int/lit8 v3, v3, 0x2

    add-int v1, p3, v3

    .line 207
    .local v1, "childTop":I
    if-eqz p5, :cond_1

    .line 208
    sub-int v3, p2, v2

    add-int v4, v1, v0

    invoke-virtual {p1, v3, v1, p2, v4}, Landroid/view/View;->layout(IIII)V

    .line 213
    :goto_0
    if-eqz p5, :cond_0

    neg-int v2, v2

    .end local v2    # "childWidth":I
    :cond_0
    return v2

    .line 210
    .restart local v2    # "childWidth":I
    :cond_1
    add-int v3, p2, v2

    add-int v4, v1, v0

    invoke-virtual {p1, p2, v1, v3, v4}, Landroid/view/View;->layout(IIII)V

    goto :goto_0
.end method

.method public setOnCloseItemClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 281
    iget-object v0, p0, Landroid/support/v7/widget/MultiChoiceView;->mClose:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 282
    iget-object v0, p0, Landroid/support/v7/widget/MultiChoiceView;->mClose:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 284
    :cond_0
    return-void
.end method

.method public setOnSelectAllItemClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 275
    iget-object v0, p0, Landroid/support/v7/widget/MultiChoiceView;->mSelectAll:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 276
    iget-object v0, p0, Landroid/support/v7/widget/MultiChoiceView;->mSelectAll:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 278
    :cond_0
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 221
    iput-object p1, p0, Landroid/support/v7/widget/MultiChoiceView;->mTitle:Ljava/lang/CharSequence;

    .line 222
    invoke-direct {p0}, Landroid/support/v7/widget/MultiChoiceView;->initTitle()V

    .line 223
    return-void
.end method
