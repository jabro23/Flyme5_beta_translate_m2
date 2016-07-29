.class public Lcom/meizu/common/widget/SelectionButton;
.super Landroid/widget/LinearLayout;
.source "SelectionButton.java"


# static fields
.field private static final FRAME_COUNT:I = 0xc

.field private static final interpolationsEnter:[F

.field private static final interpolationsOut:[F


# instance fields
.field private mAnimator:Landroid/animation/ObjectAnimator;

.field mContext:Landroid/content/Context;

.field private mCurrentCount:I

.field mDrawable:Landroid/graphics/drawable/Drawable;

.field private mIsAllSelected:Z

.field private mIsAnimation:Z

.field private mSelectTextColor:Landroid/content/res/ColorStateList;

.field private mText:Landroid/widget/TextView;

.field private mTotalCount:I

.field private targetVisibility:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0xe

    .line 122
    new-array v0, v1, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/meizu/common/widget/SelectionButton;->interpolationsEnter:[F

    .line 126
    new-array v0, v1, [F

    fill-array-data v0, :array_1

    sput-object v0, Lcom/meizu/common/widget/SelectionButton;->interpolationsOut:[F

    return-void

    .line 122
    nop

    :array_0
    .array-data 4
        0x0
        0x3e5c7b03
        0x3f0356eb
        0x3f2d001d
        0x3f471c76
        0x3f591761
        0x3f65fc8f
        0x3f6f5914
        0x3f761523
        0x3f7ac53b
        0x3f7dcef2
        0x3f7f7b18
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    .line 126
    :array_1
    .array-data 4
        0x0
        0x3b04e832    # 0.002028f
        0x3c0c4370    # 0.008561f
        0x3ca7589f    # 0.020428f
        0x3d1eadd6    # 0.03874f
        0x3d85375d
        0x3dd01b86
        0x3e1ba27b
        0x3e638e2a    # 0.222222f
        0x3ea5ffc5
        0x3ef9522a
        0x3f48e13f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 147
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/meizu/common/widget/SelectionButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 148
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 143
    const v0, 0x7f010117

    invoke-direct {p0, p1, p2, v0}, Lcom/meizu/common/widget/SelectionButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 144
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v2, 0x0

    .line 132
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 116
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/meizu/common/widget/SelectionButton;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 117
    iput-boolean v2, p0, Lcom/meizu/common/widget/SelectionButton;->mIsAnimation:Z

    .line 178
    iput v2, p0, Lcom/meizu/common/widget/SelectionButton;->mTotalCount:I

    .line 179
    iput v2, p0, Lcom/meizu/common/widget/SelectionButton;->mCurrentCount:I

    .line 180
    iput-boolean v2, p0, Lcom/meizu/common/widget/SelectionButton;->mIsAllSelected:Z

    .line 133
    iput-object p1, p0, Lcom/meizu/common/widget/SelectionButton;->mContext:Landroid/content/Context;

    .line 134
    sget-object v1, Lcom/meizu/common/R$styleable;->SelectionButton:[I

    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 135
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/common/widget/SelectionButton;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 136
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/common/widget/SelectionButton;->mSelectTextColor:Landroid/content/res/ColorStateList;

    .line 137
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 138
    invoke-direct {p0}, Lcom/meizu/common/widget/SelectionButton;->initView()V

    .line 139
    invoke-direct {p0}, Lcom/meizu/common/widget/SelectionButton;->initAnimation()V

    .line 140
    return-void
.end method

.method static synthetic access$000(Lcom/meizu/common/widget/SelectionButton;)I
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/widget/SelectionButton;

    .prologue
    .line 113
    iget v0, p0, Lcom/meizu/common/widget/SelectionButton;->targetVisibility:I

    return v0
.end method

.method static synthetic access$100()[F
    .locals 1

    .prologue
    .line 113
    sget-object v0, Lcom/meizu/common/widget/SelectionButton;->interpolationsEnter:[F

    return-object v0
.end method

.method static synthetic access$200()[F
    .locals 1

    .prologue
    .line 113
    sget-object v0, Lcom/meizu/common/widget/SelectionButton;->interpolationsOut:[F

    return-object v0
.end method

.method private initAnimation()V
    .locals 1

    .prologue
    .line 295
    iget-object v0, p0, Lcom/meizu/common/widget/SelectionButton;->mAnimator:Landroid/animation/ObjectAnimator;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/meizu/common/widget/SelectionButton;->mText:Landroid/widget/TextView;

    if-nez v0, :cond_1

    .line 300
    :cond_0
    :goto_0
    return-void

    .line 297
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/meizu/common/widget/SelectionButton;->mIsAnimation:Z

    .line 298
    invoke-virtual {p0}, Lcom/meizu/common/widget/SelectionButton;->getVisibility()I

    move-result v0

    iput v0, p0, Lcom/meizu/common/widget/SelectionButton;->targetVisibility:I

    .line 299
    invoke-direct {p0}, Lcom/meizu/common/widget/SelectionButton;->setupAnimation()V

    goto :goto_0
.end method

.method private initView()V
    .locals 4

    .prologue
    .line 151
    iget-object v2, p0, Lcom/meizu/common/widget/SelectionButton;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f04004a

    invoke-virtual {v2, v3, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 153
    .local v0, "child":Landroid/view/View;
    if-nez v0, :cond_1

    .line 154
    const-string v2, "SelectionButton"

    const-string v3, "can not inflate the view"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    :cond_0
    :goto_0
    return-void

    .line 158
    :cond_1
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/meizu/common/widget/SelectionButton;->setClickable(Z)V

    .line 159
    const/16 v2, 0x11

    invoke-virtual {p0, v2}, Lcom/meizu/common/widget/SelectionButton;->setGravity(I)V

    .line 162
    invoke-virtual {p0}, Lcom/meizu/common/widget/SelectionButton;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0171

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 164
    .local v1, "minWidth":I
    invoke-virtual {p0, v1}, Lcom/meizu/common/widget/SelectionButton;->setMinimumWidth(I)V

    .line 166
    const v2, 0x1020014

    invoke-virtual {p0, v2}, Lcom/meizu/common/widget/SelectionButton;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/meizu/common/widget/SelectionButton;->mText:Landroid/widget/TextView;

    .line 167
    invoke-direct {p0}, Lcom/meizu/common/widget/SelectionButton;->update()V

    .line 168
    iget-object v2, p0, Lcom/meizu/common/widget/SelectionButton;->mText:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setActivated(Z)V

    .line 169
    iget-object v2, p0, Lcom/meizu/common/widget/SelectionButton;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_2

    .line 170
    iget-object v2, p0, Lcom/meizu/common/widget/SelectionButton;->mText:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/meizu/common/widget/SelectionButton;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 172
    :cond_2
    iget-object v2, p0, Lcom/meizu/common/widget/SelectionButton;->mSelectTextColor:Landroid/content/res/ColorStateList;

    if-eqz v2, :cond_0

    .line 173
    iget-object v2, p0, Lcom/meizu/common/widget/SelectionButton;->mText:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/meizu/common/widget/SelectionButton;->mSelectTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_0
.end method

.method private setupAnimation()V
    .locals 6

    .prologue
    const/4 v4, 0x2

    .line 303
    const-string v2, "scaleX"

    new-array v3, v4, [F

    fill-array-data v3, :array_0

    invoke-static {v2, v3}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 305
    .local v0, "pvhScaleX":Landroid/animation/PropertyValuesHolder;
    const-string v2, "scaleY"

    new-array v3, v4, [F

    fill-array-data v3, :array_1

    invoke-static {v2, v3}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    .line 307
    .local v1, "pvhScaleY":Landroid/animation/PropertyValuesHolder;
    iget-object v2, p0, Lcom/meizu/common/widget/SelectionButton;->mText:Landroid/widget/TextView;

    new-array v3, v4, [Landroid/animation/PropertyValuesHolder;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v4, 0x1

    aput-object v1, v3, v4

    invoke-static {v2, v3}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v2

    const-wide/16 v4, 0xc8

    invoke-virtual {v2, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v2

    iput-object v2, p0, Lcom/meizu/common/widget/SelectionButton;->mAnimator:Landroid/animation/ObjectAnimator;

    .line 310
    iget-object v2, p0, Lcom/meizu/common/widget/SelectionButton;->mAnimator:Landroid/animation/ObjectAnimator;

    new-instance v3, Lcom/meizu/common/widget/SelectionButton$1;

    invoke-direct {v3, p0}, Lcom/meizu/common/widget/SelectionButton$1;-><init>(Lcom/meizu/common/widget/SelectionButton;)V

    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 323
    iget-object v2, p0, Lcom/meizu/common/widget/SelectionButton;->mAnimator:Landroid/animation/ObjectAnimator;

    new-instance v3, Lcom/meizu/common/widget/SelectionButton$2;

    invoke-direct {v3, p0}, Lcom/meizu/common/widget/SelectionButton$2;-><init>(Lcom/meizu/common/widget/SelectionButton;)V

    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 338
    return-void

    .line 303
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 305
    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private update()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 238
    iget v1, p0, Lcom/meizu/common/widget/SelectionButton;->mCurrentCount:I

    iget v2, p0, Lcom/meizu/common/widget/SelectionButton;->mTotalCount:I

    if-le v1, v2, :cond_0

    .line 239
    iget v1, p0, Lcom/meizu/common/widget/SelectionButton;->mTotalCount:I

    iput v1, p0, Lcom/meizu/common/widget/SelectionButton;->mCurrentCount:I

    .line 242
    :cond_0
    const/4 v0, 0x0

    .line 244
    .local v0, "infinitiVisable":Z
    iget v1, p0, Lcom/meizu/common/widget/SelectionButton;->mTotalCount:I

    if-lez v1, :cond_1

    iget v1, p0, Lcom/meizu/common/widget/SelectionButton;->mCurrentCount:I

    iget v2, p0, Lcom/meizu/common/widget/SelectionButton;->mTotalCount:I

    if-ne v1, v2, :cond_1

    .line 245
    iput-boolean v4, p0, Lcom/meizu/common/widget/SelectionButton;->mIsAllSelected:Z

    .line 246
    iget-object v1, p0, Lcom/meizu/common/widget/SelectionButton;->mText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/meizu/common/widget/SelectionButton;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0800dc

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 248
    iget-object v1, p0, Lcom/meizu/common/widget/SelectionButton;->mText:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setActivated(Z)V

    .line 254
    :goto_0
    return-void

    .line 250
    :cond_1
    iget-object v1, p0, Lcom/meizu/common/widget/SelectionButton;->mText:Landroid/widget/TextView;

    iget v2, p0, Lcom/meizu/common/widget/SelectionButton;->mCurrentCount:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 251
    iput-boolean v3, p0, Lcom/meizu/common/widget/SelectionButton;->mIsAllSelected:Z

    .line 252
    iget-object v1, p0, Lcom/meizu/common/widget/SelectionButton;->mText:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setActivated(Z)V

    goto :goto_0
.end method


# virtual methods
.method public getCurrentCount()I
    .locals 1

    .prologue
    .line 214
    iget v0, p0, Lcom/meizu/common/widget/SelectionButton;->mCurrentCount:I

    return v0
.end method

.method public getTotalCount()I
    .locals 1

    .prologue
    .line 197
    iget v0, p0, Lcom/meizu/common/widget/SelectionButton;->mTotalCount:I

    return v0
.end method

.method public isAllSelected()Z
    .locals 1

    .prologue
    .line 233
    iget-boolean v0, p0, Lcom/meizu/common/widget/SelectionButton;->mIsAllSelected:Z

    return v0
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 357
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 358
    const-class v0, Lcom/meizu/common/widget/SelectionButton;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 359
    return-void
.end method

.method public setAllSelected(Z)V
    .locals 1
    .param p1, "select"    # Z

    .prologue
    .line 221
    if-eqz p1, :cond_0

    .line 222
    iget v0, p0, Lcom/meizu/common/widget/SelectionButton;->mTotalCount:I

    iput v0, p0, Lcom/meizu/common/widget/SelectionButton;->mCurrentCount:I

    .line 226
    :goto_0
    invoke-direct {p0}, Lcom/meizu/common/widget/SelectionButton;->update()V

    .line 227
    return-void

    .line 224
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/meizu/common/widget/SelectionButton;->mCurrentCount:I

    goto :goto_0
.end method

.method public setCurrentCount(I)V
    .locals 1
    .param p1, "count"    # I

    .prologue
    .line 204
    iget v0, p0, Lcom/meizu/common/widget/SelectionButton;->mCurrentCount:I

    if-eq v0, p1, :cond_0

    .line 205
    if-ltz p1, :cond_1

    .end local p1    # "count":I
    :goto_0
    iput p1, p0, Lcom/meizu/common/widget/SelectionButton;->mCurrentCount:I

    .line 206
    invoke-direct {p0}, Lcom/meizu/common/widget/SelectionButton;->update()V

    .line 208
    :cond_0
    return-void

    .line 205
    .restart local p1    # "count":I
    :cond_1
    const/4 p1, 0x0

    goto :goto_0
.end method

.method public setEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 257
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 258
    iget-object v0, p0, Lcom/meizu/common/widget/SelectionButton;->mText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 259
    iget-object v0, p0, Lcom/meizu/common/widget/SelectionButton;->mText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 261
    :cond_0
    return-void
.end method

.method public setIsAnimation(Z)V
    .locals 0
    .param p1, "isAnimation"    # Z

    .prologue
    .line 341
    iput-boolean p1, p0, Lcom/meizu/common/widget/SelectionButton;->mIsAnimation:Z

    .line 342
    return-void
.end method

.method public setSelectBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 345
    if-eqz p1, :cond_0

    .line 346
    iput-object p1, p0, Lcom/meizu/common/widget/SelectionButton;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 347
    iget-object v0, p0, Lcom/meizu/common/widget/SelectionButton;->mText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/meizu/common/widget/SelectionButton;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 349
    :cond_0
    return-void
.end method

.method public setSelectTextColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 352
    iget-object v0, p0, Lcom/meizu/common/widget/SelectionButton;->mText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 353
    return-void
.end method

.method public setTotalCount(I)V
    .locals 1
    .param p1, "count"    # I

    .prologue
    .line 187
    iget v0, p0, Lcom/meizu/common/widget/SelectionButton;->mTotalCount:I

    if-eq v0, p1, :cond_0

    .line 188
    if-ltz p1, :cond_1

    .end local p1    # "count":I
    :goto_0
    iput p1, p0, Lcom/meizu/common/widget/SelectionButton;->mTotalCount:I

    .line 189
    invoke-direct {p0}, Lcom/meizu/common/widget/SelectionButton;->update()V

    .line 191
    :cond_0
    return-void

    .line 188
    .restart local p1    # "count":I
    :cond_1
    const/4 p1, 0x0

    goto :goto_0
.end method

.method public setVisibility(I)V
    .locals 1
    .param p1, "visibility"    # I

    .prologue
    .line 265
    iget-boolean v0, p0, Lcom/meizu/common/widget/SelectionButton;->mIsAnimation:Z

    if-nez v0, :cond_1

    .line 266
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 278
    :cond_0
    :goto_0
    return-void

    .line 269
    :cond_1
    iget v0, p0, Lcom/meizu/common/widget/SelectionButton;->targetVisibility:I

    if-eq v0, p1, :cond_0

    .line 270
    iput p1, p0, Lcom/meizu/common/widget/SelectionButton;->targetVisibility:I

    .line 271
    if-nez p1, :cond_2

    .line 272
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 273
    iget-object v0, p0, Lcom/meizu/common/widget/SelectionButton;->mAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0

    .line 275
    :cond_2
    iget-object v0, p0, Lcom/meizu/common/widget/SelectionButton;->mAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->reverse()V

    goto :goto_0
.end method

.method public setVisibility(IZ)V
    .locals 1
    .param p1, "visibility"    # I
    .param p2, "isAnimation"    # Z

    .prologue
    .line 286
    if-eqz p2, :cond_0

    .line 287
    invoke-virtual {p0, p1}, Lcom/meizu/common/widget/SelectionButton;->setVisibility(I)V

    .line 292
    :goto_0
    return-void

    .line 289
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 290
    invoke-virtual {p0}, Lcom/meizu/common/widget/SelectionButton;->getVisibility()I

    move-result v0

    iput v0, p0, Lcom/meizu/common/widget/SelectionButton;->targetVisibility:I

    goto :goto_0
.end method
