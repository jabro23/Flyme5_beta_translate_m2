.class public Lcom/meizu/common/widget/EmptyView;
.super Landroid/widget/FrameLayout;
.source "EmptyView.java"


# instance fields
.field private ignoreSoftInput:Z

.field private mContentPanel:Lcom/meizu/common/widget/LimitedWHLinearLayout;

.field private mContext:Landroid/content/Context;

.field private mDividerView:Landroid/view/View;

.field private mImageView:Landroid/widget/ImageView;

.field private mIsShowDot:Z

.field private mSummary:Ljava/lang/CharSequence;

.field private mSummaryView:Landroid/widget/TextView;

.field private mThemeColor:I

.field private mTips:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mTipsPanle:Landroid/widget/LinearLayout;

.field private mTitle:Ljava/lang/CharSequence;

.field private mTitleView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 208
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/meizu/common/widget/EmptyView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 209
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 212
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/meizu/common/widget/EmptyView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 213
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 216
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 217
    iput-object p1, p0, Lcom/meizu/common/widget/EmptyView;->mContext:Landroid/content/Context;

    .line 218
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    const v7, 0x7f04002f

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 219
    .local v5, "view":Landroid/view/View;
    const v6, 0x7f0d00be

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, p0, Lcom/meizu/common/widget/EmptyView;->mImageView:Landroid/widget/ImageView;

    .line 221
    const v6, 0x7f0d00c0

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/meizu/common/widget/EmptyView;->mTitleView:Landroid/widget/TextView;

    .line 222
    const v6, 0x7f0d00c1

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/meizu/common/widget/EmptyView;->mSummaryView:Landroid/widget/TextView;

    .line 223
    const v6, 0x7f0d00c3

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    iput-object v6, p0, Lcom/meizu/common/widget/EmptyView;->mTipsPanle:Landroid/widget/LinearLayout;

    .line 224
    const v6, 0x7f0d00c2

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/meizu/common/widget/EmptyView;->mDividerView:Landroid/view/View;

    .line 225
    const v6, 0x7f0d00bf

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/meizu/common/widget/LimitedWHLinearLayout;

    iput-object v6, p0, Lcom/meizu/common/widget/EmptyView;->mContentPanel:Lcom/meizu/common/widget/LimitedWHLinearLayout;

    .line 226
    invoke-virtual {p0, v5}, Lcom/meizu/common/widget/EmptyView;->addView(Landroid/view/View;)V

    .line 227
    iget-object v6, p0, Lcom/meizu/common/widget/EmptyView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    .line 231
    .local v3, "imageLP":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v6, p0, Lcom/meizu/common/widget/EmptyView;->mContentPanel:Lcom/meizu/common/widget/LimitedWHLinearLayout;

    invoke-virtual {v6}, Lcom/meizu/common/widget/LimitedWHLinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 234
    .local v1, "contentLP":Landroid/widget/RelativeLayout$LayoutParams;
    sget-object v6, Lcom/meizu/common/R$styleable;->EmptyView:[I

    invoke-virtual {p1, p2, v6, p3, v9}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 235
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v9, v9}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    iput v6, v3, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 237
    iget v6, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    invoke-virtual {v0, v10, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    iput v6, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 240
    iget-object v6, p0, Lcom/meizu/common/widget/EmptyView;->mContentPanel:Lcom/meizu/common/widget/LimitedWHLinearLayout;

    iget-object v7, p0, Lcom/meizu/common/widget/EmptyView;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0b023b

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/meizu/common/widget/LimitedWHLinearLayout;->setMaxWidth(I)V

    .line 243
    const/4 v6, 0x2

    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 244
    .local v2, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_0

    .line 245
    iget-object v6, p0, Lcom/meizu/common/widget/EmptyView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v6, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 248
    :cond_0
    const/4 v6, 0x3

    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/meizu/common/widget/EmptyView;->mTitle:Ljava/lang/CharSequence;

    .line 249
    const/4 v6, 0x4

    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/meizu/common/widget/EmptyView;->mSummary:Ljava/lang/CharSequence;

    .line 250
    const/4 v6, 0x5

    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 251
    .local v4, "tip":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/meizu/common/widget/EmptyView;->getContext()Landroid/content/Context;

    move-result-object v6

    const/4 v7, 0x6

    invoke-static {v6, v0, v7}, Lcom/meizu/common/util/ResourceUtils;->getStringArray(Landroid/content/Context;Landroid/content/res/TypedArray;I)Ljava/util/ArrayList;

    move-result-object v6

    iput-object v6, p0, Lcom/meizu/common/widget/EmptyView;->mTips:Ljava/util/ArrayList;

    .line 252
    const/4 v6, 0x7

    invoke-virtual {v0, v6, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    iput-boolean v6, p0, Lcom/meizu/common/widget/EmptyView;->mIsShowDot:Z

    .line 253
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 255
    iget-object v6, p0, Lcom/meizu/common/widget/EmptyView;->mContext:Landroid/content/Context;

    sget-object v7, Lcom/meizu/common/R$styleable;->MZTheme:[I

    invoke-virtual {v6, v7}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 256
    const/high16 v6, -0x1000000

    invoke-virtual {v0, v9, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    iput v6, p0, Lcom/meizu/common/widget/EmptyView;->mThemeColor:I

    .line 258
    iget-object v6, p0, Lcom/meizu/common/widget/EmptyView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/meizu/common/widget/EmptyView;->getContext()Landroid/content/Context;

    move-result-object v7

    const/16 v8, 0x8

    const v9, 0x7f0c0211

    invoke-virtual {v0, v8, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    invoke-virtual {v6, v7, v8}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 259
    iget-object v6, p0, Lcom/meizu/common/widget/EmptyView;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {p0, v6}, Lcom/meizu/common/widget/EmptyView;->setTitle(Ljava/lang/CharSequence;)V

    .line 260
    iget-object v6, p0, Lcom/meizu/common/widget/EmptyView;->mSummary:Ljava/lang/CharSequence;

    invoke-virtual {p0, v6}, Lcom/meizu/common/widget/EmptyView;->setSummary(Ljava/lang/CharSequence;)V

    .line 261
    if-nez v4, :cond_1

    .line 262
    iget-object v6, p0, Lcom/meizu/common/widget/EmptyView;->mTips:Ljava/util/ArrayList;

    invoke-virtual {p0, v6}, Lcom/meizu/common/widget/EmptyView;->setTextOfTips(Ljava/util/ArrayList;)V

    .line 290
    :goto_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 293
    invoke-direct {p0}, Lcom/meizu/common/widget/EmptyView;->viewControl()V

    .line 294
    return-void

    .line 264
    :cond_1
    invoke-virtual {p0, v4}, Lcom/meizu/common/widget/EmptyView;->setTextOfTips(Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/meizu/common/widget/EmptyView;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/widget/EmptyView;

    .prologue
    .line 190
    iget-object v0, p0, Lcom/meizu/common/widget/EmptyView;->mSummaryView:Landroid/widget/TextView;

    return-object v0
.end method

.method private viewControl()V
    .locals 6

    .prologue
    .line 297
    iget-object v1, p0, Lcom/meizu/common/widget/EmptyView;->mTitle:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/meizu/common/widget/EmptyView;->mSummary:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/meizu/common/widget/EmptyView;->mTips:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/meizu/common/widget/EmptyView;->mTips:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_2

    .line 300
    :cond_0
    iget-object v1, p0, Lcom/meizu/common/widget/EmptyView;->mTitleView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/meizu/common/widget/EmptyView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v2

    invoke-virtual {p0}, Lcom/meizu/common/widget/EmptyView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b023a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iget-object v4, p0, Lcom/meizu/common/widget/EmptyView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v4

    iget-object v5, p0, Lcom/meizu/common/widget/EmptyView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 307
    :cond_1
    :goto_0
    return-void

    .line 303
    :cond_2
    iget-object v1, p0, Lcom/meizu/common/widget/EmptyView;->mTitle:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/meizu/common/widget/EmptyView;->mTips:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/meizu/common/widget/EmptyView;->mTips:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 304
    iget-object v1, p0, Lcom/meizu/common/widget/EmptyView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 305
    .local v0, "lp":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/meizu/common/widget/EmptyView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0240

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    goto :goto_0
.end method


# virtual methods
.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 348
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 366
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 330
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 331
    const-class v0, Lcom/meizu/common/widget/EmptyView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 332
    return-void
.end method

.method public setContentPanelMaxWidth(I)V
    .locals 1
    .param p1, "maxWidth"    # I

    .prologue
    .line 527
    iget-object v0, p0, Lcom/meizu/common/widget/EmptyView;->mContentPanel:Lcom/meizu/common/widget/LimitedWHLinearLayout;

    invoke-virtual {v0, p1}, Lcom/meizu/common/widget/LimitedWHLinearLayout;->setMaxWidth(I)V

    .line 528
    return-void
.end method

.method public setIgnoreSoftInput(Z)V
    .locals 4
    .param p1, "ignoreSoftInput"    # Z

    .prologue
    .line 483
    iput-boolean p1, p0, Lcom/meizu/common/widget/EmptyView;->ignoreSoftInput:Z

    .line 484
    iget-object v2, p0, Lcom/meizu/common/widget/EmptyView;->mContentPanel:Lcom/meizu/common/widget/LimitedWHLinearLayout;

    invoke-virtual {v2}, Lcom/meizu/common/widget/LimitedWHLinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 485
    .local v1, "lp":Landroid/widget/RelativeLayout$LayoutParams;
    if-nez p1, :cond_0

    .line 486
    iget-object v2, p0, Lcom/meizu/common/widget/EmptyView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0246

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 487
    .local v0, "keyboardHeight":I
    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 491
    .end local v0    # "keyboardHeight":I
    :goto_0
    return-void

    .line 489
    :cond_0
    const/4 v2, 0x0

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    goto :goto_0
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 314
    iget-object v0, p0, Lcom/meizu/common/widget/EmptyView;->mImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 315
    iget-object v0, p0, Lcom/meizu/common/widget/EmptyView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 317
    :cond_0
    return-void
.end method

.method public setImageResource(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 323
    iget-object v0, p0, Lcom/meizu/common/widget/EmptyView;->mImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 324
    iget-object v0, p0, Lcom/meizu/common/widget/EmptyView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 326
    :cond_0
    return-void
.end method

.method public setIsShowDot(Z)V
    .locals 2
    .param p1, "isShowDot"    # Z

    .prologue
    .line 515
    iget-boolean v1, p0, Lcom/meizu/common/widget/EmptyView;->mIsShowDot:Z

    if-ne v1, p1, :cond_1

    const/4 v0, 0x0

    .line 516
    .local v0, "changed":Z
    :goto_0
    if-eqz v0, :cond_0

    .line 517
    iput-boolean p1, p0, Lcom/meizu/common/widget/EmptyView;->mIsShowDot:Z

    .line 518
    iget-object v1, p0, Lcom/meizu/common/widget/EmptyView;->mTips:Ljava/util/ArrayList;

    invoke-virtual {p0, v1}, Lcom/meizu/common/widget/EmptyView;->setTextOfTips(Ljava/util/ArrayList;)V

    .line 520
    :cond_0
    return-void

    .line 515
    .end local v0    # "changed":Z
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setSummary(Ljava/lang/CharSequence;)V
    .locals 4
    .param p1, "summary"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v3, 0x0

    .line 422
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 423
    iget-object v1, p0, Lcom/meizu/common/widget/EmptyView;->mSummaryView:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 459
    :cond_0
    :goto_0
    return-void

    .line 426
    :cond_1
    iput-object p1, p0, Lcom/meizu/common/widget/EmptyView;->mSummary:Ljava/lang/CharSequence;

    .line 427
    iget-object v1, p0, Lcom/meizu/common/widget/EmptyView;->mSummaryView:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 428
    iget-object v1, p0, Lcom/meizu/common/widget/EmptyView;->mSummaryView:Landroid/widget/TextView;

    const/16 v2, 0xf

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setAutoLinkMask(I)V

    .line 429
    iget-object v1, p0, Lcom/meizu/common/widget/EmptyView;->mSummaryView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 430
    .local v0, "otb":Landroid/view/ViewTreeObserver;
    if-eqz v0, :cond_2

    .line 436
    new-instance v1, Lcom/meizu/common/widget/EmptyView$1;

    invoke-direct {v1, p0}, Lcom/meizu/common/widget/EmptyView$1;-><init>(Lcom/meizu/common/widget/EmptyView;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 453
    :goto_1
    iget-object v1, p0, Lcom/meizu/common/widget/EmptyView;->mSummaryView:Landroid/widget/TextView;

    iget v2, p0, Lcom/meizu/common/widget/EmptyView;->mThemeColor:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 454
    iget-object v1, p0, Lcom/meizu/common/widget/EmptyView;->mSummaryView:Landroid/widget/TextView;

    iget v2, p0, Lcom/meizu/common/widget/EmptyView;->mThemeColor:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setLinkTextColor(I)V

    .line 455
    iget-object v1, p0, Lcom/meizu/common/widget/EmptyView;->mSummaryView:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 456
    iget-object v1, p0, Lcom/meizu/common/widget/EmptyView;->mTips:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/meizu/common/widget/EmptyView;->mTips:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 457
    iget-object v1, p0, Lcom/meizu/common/widget/EmptyView;->mDividerView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 451
    :cond_2
    iget-object v1, p0, Lcom/meizu/common/widget/EmptyView;->mSummaryView:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    goto :goto_1
.end method

.method public setTextOfTips(Ljava/lang/String;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 339
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 340
    .local v0, "tips":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 341
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 343
    :cond_0
    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/EmptyView;->setTextOfTips(Ljava/util/ArrayList;)V

    .line 344
    return-void
.end method

.method public setTextOfTips(Ljava/util/ArrayList;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "tips":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v12, 0x0

    const/4 v11, -0x2

    .line 373
    if-nez p1, :cond_2

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    iput-object v10, p0, Lcom/meizu/common/widget/EmptyView;->mTips:Ljava/util/ArrayList;

    .line 374
    iget-object v10, p0, Lcom/meizu/common/widget/EmptyView;->mTipsPanle:Landroid/widget/LinearLayout;

    invoke-virtual {v10}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 375
    iget-object v10, p0, Lcom/meizu/common/widget/EmptyView;->mTips:Ljava/util/ArrayList;

    if-eqz v10, :cond_0

    iget-object v10, p0, Lcom/meizu/common/widget/EmptyView;->mTips:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-nez v10, :cond_3

    .line 376
    :cond_0
    iget-object v10, p0, Lcom/meizu/common/widget/EmptyView;->mDividerView:Landroid/view/View;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/view/View;->setVisibility(I)V

    .line 415
    :cond_1
    :goto_1
    return-void

    :cond_2
    move-object v10, p1

    .line 373
    goto :goto_0

    .line 380
    :cond_3
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v10, -0x1

    invoke-direct {v6, v10, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 382
    .local v6, "lpTipsContainer":Landroid/widget/LinearLayout$LayoutParams;
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v11, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 384
    .local v4, "lpDotImage":Landroid/widget/LinearLayout$LayoutParams;
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v11, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 387
    .local v5, "lpTipText":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v10, p0, Lcom/meizu/common/widget/EmptyView;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0b0239

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    iput v10, v6, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 388
    iget-object v10, p0, Lcom/meizu/common/widget/EmptyView;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0b023c

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    iput v10, v4, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 389
    iget-object v10, p0, Lcom/meizu/common/widget/EmptyView;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0b023d

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    iput v10, v4, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 391
    iget-object v10, p0, Lcom/meizu/common/widget/EmptyView;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0b023a

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    int-to-float v3, v10

    .line 392
    .local v3, "lineSpace":F
    invoke-virtual {p0}, Lcom/meizu/common/widget/EmptyView;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f020069

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 393
    .local v0, "dot":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 394
    .local v7, "tip":Ljava/lang/String;
    new-instance v8, Landroid/widget/LinearLayout;

    iget-object v10, p0, Lcom/meizu/common/widget/EmptyView;->mContext:Landroid/content/Context;

    invoke-direct {v8, v10}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 395
    .local v8, "tipContainer":Landroid/widget/LinearLayout;
    invoke-virtual {v8, v6}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 396
    invoke-virtual {v8, v12}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 397
    const/16 v10, 0x30

    invoke-virtual {v8, v10}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 398
    iget-boolean v10, p0, Lcom/meizu/common/widget/EmptyView;->mIsShowDot:Z

    if-eqz v10, :cond_4

    .line 399
    new-instance v1, Landroid/widget/ImageView;

    iget-object v10, p0, Lcom/meizu/common/widget/EmptyView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v10}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 400
    .local v1, "dotView":Landroid/widget/ImageView;
    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 401
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 402
    invoke-virtual {v8, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 404
    .end local v1    # "dotView":Landroid/widget/ImageView;
    :cond_4
    new-instance v9, Landroid/widget/TextView;

    iget-object v10, p0, Lcom/meizu/common/widget/EmptyView;->mContext:Landroid/content/Context;

    invoke-direct {v9, v10}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 405
    .local v9, "tv":Landroid/widget/TextView;
    invoke-virtual {v9, v5}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 406
    invoke-virtual {p0}, Lcom/meizu/common/widget/EmptyView;->getContext()Landroid/content/Context;

    move-result-object v10

    const v11, 0x7f0c0210

    invoke-virtual {v9, v10, v11}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 407
    invoke-virtual {v9, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 408
    const/high16 v10, 0x3f800000    # 1.0f

    invoke-virtual {v9, v3, v10}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 409
    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 410
    iget-object v10, p0, Lcom/meizu/common/widget/EmptyView;->mTipsPanle:Landroid/widget/LinearLayout;

    invoke-virtual {v10, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_2

    .line 412
    .end local v7    # "tip":Ljava/lang/String;
    .end local v8    # "tipContainer":Landroid/widget/LinearLayout;
    .end local v9    # "tv":Landroid/widget/TextView;
    :cond_5
    iget-object v10, p0, Lcom/meizu/common/widget/EmptyView;->mTitle:Ljava/lang/CharSequence;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_6

    iget-object v10, p0, Lcom/meizu/common/widget/EmptyView;->mSummary:Ljava/lang/CharSequence;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 413
    :cond_6
    iget-object v10, p0, Lcom/meizu/common/widget/EmptyView;->mDividerView:Landroid/view/View;

    invoke-virtual {v10, v12}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v1, 0x0

    .line 466
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 467
    iget-object v0, p0, Lcom/meizu/common/widget/EmptyView;->mTitleView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 476
    :cond_0
    :goto_0
    return-void

    .line 470
    :cond_1
    iput-object p1, p0, Lcom/meizu/common/widget/EmptyView;->mTitle:Ljava/lang/CharSequence;

    .line 471
    iget-object v0, p0, Lcom/meizu/common/widget/EmptyView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 472
    iget-object v0, p0, Lcom/meizu/common/widget/EmptyView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 473
    iget-object v0, p0, Lcom/meizu/common/widget/EmptyView;->mTips:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meizu/common/widget/EmptyView;->mTips:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 474
    iget-object v0, p0, Lcom/meizu/common/widget/EmptyView;->mDividerView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public setTitleColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 499
    iget-object v0, p0, Lcom/meizu/common/widget/EmptyView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 500
    return-void
.end method

.method public setTitleTextSize(F)V
    .locals 1
    .param p1, "size"    # F

    .prologue
    .line 507
    iget-object v0, p0, Lcom/meizu/common/widget/EmptyView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 508
    return-void
.end method
