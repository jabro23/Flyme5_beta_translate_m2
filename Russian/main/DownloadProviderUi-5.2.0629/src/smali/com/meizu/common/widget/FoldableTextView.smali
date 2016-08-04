.class public Lcom/meizu/common/widget/FoldableTextView;
.super Landroid/widget/TextView;
.source "FoldableTextView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/common/widget/FoldableTextView$LocalLinkMovementMethod;,
        Lcom/meizu/common/widget/FoldableTextView$ValueHolder;,
        Lcom/meizu/common/widget/FoldableTextView$FoldingListener;,
        Lcom/meizu/common/widget/FoldableTextView$MoreClickSpan;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final ELLIPSIS_TWO_DOTS:Ljava/lang/String; = "\u2025"

.field private static final TAG:Ljava/lang/String; = "FoldableTextView"


# instance fields
.field private layout:Landroid/text/Layout;

.field private mAlignViewEdge:Z

.field private mAnimatorFraction:Ljava/lang/Float;

.field private mClickToFold:Z

.field private mDuration:I

.field private mEllipseText:Ljava/lang/CharSequence;

.field private mFoldLineMax:I

.field private mFoldedText:Ljava/lang/CharSequence;

.field private mIsAnimating:Z

.field private mIsfolded:Z

.field private mLinkColor:I

.field private mLinkHit:Z

.field private mListener:Lcom/meizu/common/widget/FoldableTextView$FoldingListener;

.field private mMaxHeight:I

.field private mMinHeight:I

.field private mMoreText:Ljava/lang/CharSequence;

.field private mNonClicks:Z

.field private mNonSpanClickable:Z

.field private mainText:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 177
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/meizu/common/widget/FoldableTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 178
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 181
    const v0, 0x7f0c0209

    invoke-direct {p0, p1, p2, v0}, Lcom/meizu/common/widget/FoldableTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 182
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 185
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 158
    iput-boolean v6, p0, Lcom/meizu/common/widget/FoldableTextView;->mIsfolded:Z

    .line 159
    iput-boolean v5, p0, Lcom/meizu/common/widget/FoldableTextView;->mAlignViewEdge:Z

    .line 160
    iput-boolean v6, p0, Lcom/meizu/common/widget/FoldableTextView;->mClickToFold:Z

    .line 161
    iput v5, p0, Lcom/meizu/common/widget/FoldableTextView;->mLinkColor:I

    .line 165
    iput v5, p0, Lcom/meizu/common/widget/FoldableTextView;->mMaxHeight:I

    .line 166
    iput v5, p0, Lcom/meizu/common/widget/FoldableTextView;->mMinHeight:I

    .line 167
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/meizu/common/widget/FoldableTextView;->layout:Landroid/text/Layout;

    .line 168
    const/16 v4, 0xfa

    iput v4, p0, Lcom/meizu/common/widget/FoldableTextView;->mDuration:I

    .line 169
    iput-boolean v5, p0, Lcom/meizu/common/widget/FoldableTextView;->mIsAnimating:Z

    .line 170
    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    iput-object v4, p0, Lcom/meizu/common/widget/FoldableTextView;->mAnimatorFraction:Ljava/lang/Float;

    .line 171
    iput-boolean v6, p0, Lcom/meizu/common/widget/FoldableTextView;->mNonClicks:Z

    .line 173
    iput-boolean v6, p0, Lcom/meizu/common/widget/FoldableTextView;->mNonSpanClickable:Z

    .line 186
    sget-object v4, Lcom/meizu/common/R$styleable;->FoldableTextView:[I

    invoke-virtual {p1, p2, v4, p3, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 188
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v3

    .line 189
    .local v3, "n":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_9

    .line 190
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v1

    .line 191
    .local v1, "attr":I
    if-nez v1, :cond_1

    .line 192
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    iput-object v4, p0, Lcom/meizu/common/widget/FoldableTextView;->mEllipseText:Ljava/lang/CharSequence;

    .line 189
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 193
    :cond_1
    if-ne v1, v6, :cond_2

    .line 194
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    iput-object v4, p0, Lcom/meizu/common/widget/FoldableTextView;->mMoreText:Ljava/lang/CharSequence;

    goto :goto_1

    .line 195
    :cond_2
    const/4 v4, 0x2

    if-ne v1, v4, :cond_3

    .line 196
    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Lcom/meizu/common/widget/FoldableTextView;->mFoldLineMax:I

    goto :goto_1

    .line 197
    :cond_3
    const/4 v4, 0x3

    if-ne v1, v4, :cond_4

    .line 198
    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, p0, Lcom/meizu/common/widget/FoldableTextView;->mAlignViewEdge:Z

    goto :goto_1

    .line 199
    :cond_4
    const/4 v4, 0x4

    if-ne v1, v4, :cond_5

    .line 200
    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, p0, Lcom/meizu/common/widget/FoldableTextView;->mClickToFold:Z

    goto :goto_1

    .line 201
    :cond_5
    const/4 v4, 0x7

    if-ne v1, v4, :cond_6

    .line 202
    invoke-virtual {v0, v1, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, p0, Lcom/meizu/common/widget/FoldableTextView;->mNonSpanClickable:Z

    goto :goto_1

    .line 203
    :cond_6
    const/4 v4, 0x5

    if-ne v1, v4, :cond_8

    .line 204
    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    iput v4, p0, Lcom/meizu/common/widget/FoldableTextView;->mLinkColor:I

    .line 205
    iget v4, p0, Lcom/meizu/common/widget/FoldableTextView;->mLinkColor:I

    if-nez v4, :cond_0

    .line 206
    invoke-static {p1}, Lcom/meizu/common/util/ResourceUtils;->getMzThemeColor(Landroid/content/Context;)Ljava/lang/Integer;

    move-result-object v4

    if-nez v4, :cond_7

    move v4, v5

    :goto_2
    iput v4, p0, Lcom/meizu/common/widget/FoldableTextView;->mLinkColor:I

    goto :goto_1

    :cond_7
    invoke-static {p1}, Lcom/meizu/common/util/ResourceUtils;->getMzThemeColor(Landroid/content/Context;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    goto :goto_2

    .line 207
    :cond_8
    const/4 v4, 0x6

    if-ne v1, v4, :cond_0

    .line 208
    invoke-virtual {v0, v1, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, p0, Lcom/meizu/common/widget/FoldableTextView;->mIsfolded:Z

    goto :goto_1

    .line 211
    .end local v1    # "attr":I
    :cond_9
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 212
    iget-object v4, p0, Lcom/meizu/common/widget/FoldableTextView;->mMoreText:Ljava/lang/CharSequence;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 213
    const v4, 0x7f08009e

    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/meizu/common/widget/FoldableTextView;->mMoreText:Ljava/lang/CharSequence;

    .line 218
    :cond_a
    iget-object v4, p0, Lcom/meizu/common/widget/FoldableTextView;->mEllipseText:Ljava/lang/CharSequence;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 219
    const-string v4, "\u2025"

    iput-object v4, p0, Lcom/meizu/common/widget/FoldableTextView;->mEllipseText:Ljava/lang/CharSequence;

    .line 222
    :cond_b
    invoke-static {}, Lcom/meizu/common/widget/FoldableTextView$LocalLinkMovementMethod;->getInstance()Lcom/meizu/common/widget/FoldableTextView$LocalLinkMovementMethod;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/meizu/common/widget/FoldableTextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 223
    invoke-direct {p0, v6}, Lcom/meizu/common/widget/FoldableTextView;->setOnClickListener(Z)V

    .line 225
    return-void
.end method

.method static synthetic access$000(Lcom/meizu/common/widget/FoldableTextView;)I
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/widget/FoldableTextView;

    .prologue
    .line 152
    iget v0, p0, Lcom/meizu/common/widget/FoldableTextView;->mLinkColor:I

    return v0
.end method

.method static synthetic access$100(Lcom/meizu/common/widget/FoldableTextView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/widget/FoldableTextView;

    .prologue
    .line 152
    iget-boolean v0, p0, Lcom/meizu/common/widget/FoldableTextView;->mIsAnimating:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/meizu/common/widget/FoldableTextView;)I
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/widget/FoldableTextView;

    .prologue
    .line 152
    iget v0, p0, Lcom/meizu/common/widget/FoldableTextView;->mMaxHeight:I

    return v0
.end method

.method static synthetic access$102(Lcom/meizu/common/widget/FoldableTextView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/meizu/common/widget/FoldableTextView;
    .param p1, "x1"    # Z

    .prologue
    .line 152
    iput-boolean p1, p0, Lcom/meizu/common/widget/FoldableTextView;->mIsAnimating:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/meizu/common/widget/FoldableTextView;II)V
    .locals 0
    .param p0, "x0"    # Lcom/meizu/common/widget/FoldableTextView;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 152
    invoke-virtual {p0, p1, p2}, Lcom/meizu/common/widget/FoldableTextView;->setMeasuredDimension(II)V

    return-void
.end method

.method static synthetic access$1200(Lcom/meizu/common/widget/FoldableTextView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/widget/FoldableTextView;

    .prologue
    .line 152
    iget-boolean v0, p0, Lcom/meizu/common/widget/FoldableTextView;->mNonClicks:Z

    return v0
.end method

.method static synthetic access$1202(Lcom/meizu/common/widget/FoldableTextView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/meizu/common/widget/FoldableTextView;
    .param p1, "x1"    # Z

    .prologue
    .line 152
    iput-boolean p1, p0, Lcom/meizu/common/widget/FoldableTextView;->mNonClicks:Z

    return p1
.end method

.method static synthetic access$1302(Lcom/meizu/common/widget/FoldableTextView;Ljava/lang/Float;)Ljava/lang/Float;
    .locals 0
    .param p0, "x0"    # Lcom/meizu/common/widget/FoldableTextView;
    .param p1, "x1"    # Ljava/lang/Float;

    .prologue
    .line 152
    iput-object p1, p0, Lcom/meizu/common/widget/FoldableTextView;->mAnimatorFraction:Ljava/lang/Float;

    return-object p1
.end method

.method static synthetic access$1402(Lcom/meizu/common/widget/FoldableTextView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/meizu/common/widget/FoldableTextView;
    .param p1, "x1"    # Z

    .prologue
    .line 152
    iput-boolean p1, p0, Lcom/meizu/common/widget/FoldableTextView;->mLinkHit:Z

    return p1
.end method

.method static synthetic access$200(Lcom/meizu/common/widget/FoldableTextView;)Lcom/meizu/common/widget/FoldableTextView$FoldingListener;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/widget/FoldableTextView;

    .prologue
    .line 152
    iget-object v0, p0, Lcom/meizu/common/widget/FoldableTextView;->mListener:Lcom/meizu/common/widget/FoldableTextView$FoldingListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/meizu/common/widget/FoldableTextView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/widget/FoldableTextView;

    .prologue
    .line 152
    iget-boolean v0, p0, Lcom/meizu/common/widget/FoldableTextView;->mIsfolded:Z

    return v0
.end method

.method static synthetic access$302(Lcom/meizu/common/widget/FoldableTextView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/meizu/common/widget/FoldableTextView;
    .param p1, "x1"    # Z

    .prologue
    .line 152
    iput-boolean p1, p0, Lcom/meizu/common/widget/FoldableTextView;->mIsfolded:Z

    return p1
.end method

.method static synthetic access$400(Lcom/meizu/common/widget/FoldableTextView;)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/widget/FoldableTextView;

    .prologue
    .line 152
    iget-object v0, p0, Lcom/meizu/common/widget/FoldableTextView;->mainText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic access$500(Lcom/meizu/common/widget/FoldableTextView;)V
    .locals 0
    .param p0, "x0"    # Lcom/meizu/common/widget/FoldableTextView;

    .prologue
    .line 152
    invoke-direct {p0}, Lcom/meizu/common/widget/FoldableTextView;->startAnimator()V

    return-void
.end method

.method static synthetic access$700(Lcom/meizu/common/widget/FoldableTextView;)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/widget/FoldableTextView;

    .prologue
    .line 152
    iget-object v0, p0, Lcom/meizu/common/widget/FoldableTextView;->mFoldedText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic access$800(Lcom/meizu/common/widget/FoldableTextView;)I
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/widget/FoldableTextView;

    .prologue
    .line 152
    iget v0, p0, Lcom/meizu/common/widget/FoldableTextView;->mMinHeight:I

    return v0
.end method

.method static synthetic access$900(Lcom/meizu/common/widget/FoldableTextView;II)V
    .locals 0
    .param p0, "x0"    # Lcom/meizu/common/widget/FoldableTextView;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 152
    invoke-virtual {p0, p1, p2}, Lcom/meizu/common/widget/FoldableTextView;->setMeasuredDimension(II)V

    return-void
.end method

.method private foldText(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 13
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 406
    invoke-virtual {p0}, Lcom/meizu/common/widget/FoldableTextView;->getLayout()Landroid/text/Layout;

    move-result-object v2

    iput-object v2, p0, Lcom/meizu/common/widget/FoldableTextView;->layout:Landroid/text/Layout;

    .line 407
    iget-object v2, p0, Lcom/meizu/common/widget/FoldableTextView;->layout:Landroid/text/Layout;

    if-nez v2, :cond_1

    .line 456
    .end local p1    # "text":Ljava/lang/CharSequence;
    :cond_0
    :goto_0
    return-object p1

    .line 408
    .restart local p1    # "text":Ljava/lang/CharSequence;
    :cond_1
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 409
    .local v1, "sb":Landroid/text/SpannableStringBuilder;
    new-instance v0, Landroid/text/DynamicLayout;

    iget-object v2, p0, Lcom/meizu/common/widget/FoldableTextView;->layout:Landroid/text/Layout;

    invoke-virtual {v2}, Landroid/text/Layout;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    iget-object v3, p0, Lcom/meizu/common/widget/FoldableTextView;->layout:Landroid/text/Layout;

    invoke-virtual {v3}, Landroid/text/Layout;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/meizu/common/widget/FoldableTextView;->layout:Landroid/text/Layout;

    invoke-virtual {v4}, Landroid/text/Layout;->getAlignment()Landroid/text/Layout$Alignment;

    move-result-object v4

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Landroid/text/DynamicLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 411
    .local v0, "tmpLayout":Landroid/text/DynamicLayout;
    invoke-virtual {v0}, Landroid/text/DynamicLayout;->getLineCount()I

    move-result v2

    iget v3, p0, Lcom/meizu/common/widget/FoldableTextView;->mFoldLineMax:I

    if-le v2, v3, :cond_0

    iget v2, p0, Lcom/meizu/common/widget/FoldableTextView;->mFoldLineMax:I

    if-eqz v2, :cond_0

    .line 417
    iget v12, p0, Lcom/meizu/common/widget/FoldableTextView;->mFoldLineMax:I

    .line 418
    .local v12, "lineMax":I
    :goto_1
    const/4 v2, 0x1

    if-le v12, v2, :cond_2

    .line 419
    add-int/lit8 v11, v12, -0x1

    .line 420
    .local v11, "line":I
    invoke-virtual {v0, v11}, Landroid/text/DynamicLayout;->getLineStart(I)I

    move-result v2

    invoke-virtual {v0, v11}, Landroid/text/DynamicLayout;->getLineVisibleEnd(I)I

    move-result v3

    if-ge v2, v3, :cond_5

    .line 426
    .end local v11    # "line":I
    :cond_2
    add-int/lit8 v2, v12, -0x1

    invoke-virtual {v0, v2}, Landroid/text/DynamicLayout;->getLineVisibleEnd(I)I

    move-result v10

    .line 427
    .local v10, "en":I
    iget-object v2, p0, Lcom/meizu/common/widget/FoldableTextView;->mEllipseText:Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 428
    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    invoke-virtual {v1, v10, v2}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    .line 432
    :goto_2
    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    .line 434
    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v8

    .line 435
    .local v8, "addIndex":I
    iget-object v2, p0, Lcom/meizu/common/widget/FoldableTextView;->mMoreText:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 436
    new-instance v2, Lcom/meizu/common/widget/FoldableTextView$MoreClickSpan;

    invoke-direct {v2, p0, p1}, Lcom/meizu/common/widget/FoldableTextView$MoreClickSpan;-><init>(Lcom/meizu/common/widget/FoldableTextView;Ljava/lang/CharSequence;)V

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    const/16 v4, 0x21

    invoke-virtual {v1, v2, v8, v3, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 439
    if-lez v10, :cond_7

    invoke-virtual {v0}, Landroid/text/DynamicLayout;->getLineCount()I

    move-result v2

    if-le v2, v12, :cond_7

    .line 440
    move v9, v10

    .line 442
    .local v9, "delIndex":I
    :cond_3
    add-int/lit8 v9, v9, -0x1

    .line 443
    add-int/lit8 v2, v9, 0x1

    invoke-virtual {v1, v9, v2}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    .line 444
    if-lez v9, :cond_4

    invoke-virtual {v0}, Landroid/text/DynamicLayout;->getLineCount()I

    move-result v2

    if-gt v2, v12, :cond_3

    .end local v9    # "delIndex":I
    :cond_4
    :goto_3
    move-object p1, v1

    .line 456
    goto/16 :goto_0

    .line 423
    .end local v8    # "addIndex":I
    .end local v10    # "en":I
    .restart local v11    # "line":I
    :cond_5
    move v12, v11

    .line 424
    goto :goto_1

    .line 430
    .end local v11    # "line":I
    .restart local v10    # "en":I
    :cond_6
    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    iget-object v3, p0, Lcom/meizu/common/widget/FoldableTextView;->mEllipseText:Ljava/lang/CharSequence;

    invoke-virtual {v1, v10, v2, v3}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_2

    .line 445
    .restart local v8    # "addIndex":I
    :cond_7
    iget-boolean v2, p0, Lcom/meizu/common/widget/FoldableTextView;->mAlignViewEdge:Z

    if-eqz v2, :cond_4

    .line 446
    :goto_4
    invoke-virtual {v0}, Landroid/text/DynamicLayout;->getLineCount()I

    move-result v2

    if-ne v2, v12, :cond_4

    .line 447
    const-string v2, " "

    invoke-virtual {v1, v8, v8, v2}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 448
    invoke-virtual {v0}, Landroid/text/DynamicLayout;->getLineCount()I

    move-result v2

    if-le v2, v12, :cond_8

    .line 449
    add-int/lit8 v2, v8, 0x1

    invoke-virtual {v1, v8, v2}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    goto :goto_3

    .line 452
    :cond_8
    add-int/lit8 v8, v8, 0x1

    goto :goto_4
.end method

.method private initHeight(Ljava/lang/CharSequence;)V
    .locals 5
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v4, 0x0

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    .line 603
    invoke-virtual {p0}, Lcom/meizu/common/widget/FoldableTextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/common/widget/FoldableTextView;->layout:Landroid/text/Layout;

    .line 604
    iget-object v0, p0, Lcom/meizu/common/widget/FoldableTextView;->layout:Landroid/text/Layout;

    if-nez v0, :cond_0

    .line 612
    :goto_0
    return-void

    .line 606
    :cond_0
    iget-object v0, p0, Lcom/meizu/common/widget/FoldableTextView;->layout:Landroid/text/Layout;

    iget-object v1, p0, Lcom/meizu/common/widget/FoldableTextView;->layout:Landroid/text/Layout;

    invoke-virtual {v1}, Landroid/text/Layout;->getLineCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v0

    iget-object v1, p0, Lcom/meizu/common/widget/FoldableTextView;->layout:Landroid/text/Layout;

    invoke-virtual {v1, v4}, Landroid/text/Layout;->getLineTop(I)I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/meizu/common/widget/FoldableTextView;->getPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/meizu/common/widget/FoldableTextView;->getPaddingTop()I

    move-result v1

    add-int/2addr v0, v1

    int-to-double v0, v0

    add-double/2addr v0, v2

    double-to-int v0, v0

    iput v0, p0, Lcom/meizu/common/widget/FoldableTextView;->mMaxHeight:I

    .line 607
    iget-object v0, p0, Lcom/meizu/common/widget/FoldableTextView;->layout:Landroid/text/Layout;

    invoke-virtual {v0}, Landroid/text/Layout;->getLineCount()I

    move-result v0

    iget v1, p0, Lcom/meizu/common/widget/FoldableTextView;->mFoldLineMax:I

    if-gt v0, v1, :cond_1

    .line 608
    iget v0, p0, Lcom/meizu/common/widget/FoldableTextView;->mMaxHeight:I

    iput v0, p0, Lcom/meizu/common/widget/FoldableTextView;->mMinHeight:I

    goto :goto_0

    .line 611
    :cond_1
    iget-object v0, p0, Lcom/meizu/common/widget/FoldableTextView;->layout:Landroid/text/Layout;

    iget v1, p0, Lcom/meizu/common/widget/FoldableTextView;->mFoldLineMax:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v0

    iget-object v1, p0, Lcom/meizu/common/widget/FoldableTextView;->layout:Landroid/text/Layout;

    invoke-virtual {v1, v4}, Landroid/text/Layout;->getLineTop(I)I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/meizu/common/widget/FoldableTextView;->getPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/meizu/common/widget/FoldableTextView;->getPaddingTop()I

    move-result v1

    add-int/2addr v0, v1

    int-to-double v0, v0

    add-double/2addr v0, v2

    invoke-virtual {p0}, Lcom/meizu/common/widget/FoldableTextView;->getLineSpacingExtra()F

    move-result v2

    float-to-double v2, v2

    add-double/2addr v0, v2

    double-to-int v0, v0

    iput v0, p0, Lcom/meizu/common/widget/FoldableTextView;->mMinHeight:I

    goto :goto_0
.end method

.method private setOnClickListener(Z)V
    .locals 1
    .param p1, "set"    # Z

    .prologue
    .line 489
    if-eqz p1, :cond_0

    .line 490
    invoke-virtual {p0, p0}, Lcom/meizu/common/widget/FoldableTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 494
    :goto_0
    return-void

    .line 492
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/FoldableTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method private startAnimator()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 544
    iget v2, p0, Lcom/meizu/common/widget/FoldableTextView;->mFoldLineMax:I

    if-nez v2, :cond_0

    .line 588
    :goto_0
    return-void

    .line 545
    :cond_0
    iput-boolean v6, p0, Lcom/meizu/common/widget/FoldableTextView;->mIsAnimating:Z

    .line 546
    new-instance v0, Lcom/meizu/common/widget/FoldableTextView$ValueHolder;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/meizu/common/widget/FoldableTextView$ValueHolder;-><init>(Lcom/meizu/common/widget/FoldableTextView;Lcom/meizu/common/widget/FoldableTextView$1;)V

    .line 548
    .local v0, "mValueHolder":Lcom/meizu/common/widget/FoldableTextView$ValueHolder;
    const-string v3, "height"

    const/4 v2, 0x2

    new-array v4, v2, [I

    const/4 v5, 0x0

    iget-boolean v2, p0, Lcom/meizu/common/widget/FoldableTextView;->mIsfolded:Z

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/meizu/common/widget/FoldableTextView;->mMaxHeight:I

    :goto_1
    aput v2, v4, v5

    iget-boolean v2, p0, Lcom/meizu/common/widget/FoldableTextView;->mIsfolded:Z

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/meizu/common/widget/FoldableTextView;->mMinHeight:I

    :goto_2
    aput v2, v4, v6

    invoke-static {v0, v3, v4}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 549
    .local v1, "objectAnimator":Landroid/animation/ObjectAnimator;
    iget v2, p0, Lcom/meizu/common/widget/FoldableTextView;->mDuration:I

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 550
    new-instance v2, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 551
    new-instance v2, Lcom/meizu/common/widget/FoldableTextView$1;

    invoke-direct {v2, p0}, Lcom/meizu/common/widget/FoldableTextView$1;-><init>(Lcom/meizu/common/widget/FoldableTextView;)V

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 579
    new-instance v2, Lcom/meizu/common/widget/FoldableTextView$2;

    invoke-direct {v2, p0}, Lcom/meizu/common/widget/FoldableTextView$2;-><init>(Lcom/meizu/common/widget/FoldableTextView;)V

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 587
    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0

    .line 548
    .end local v1    # "objectAnimator":Landroid/animation/ObjectAnimator;
    :cond_1
    iget v2, p0, Lcom/meizu/common/widget/FoldableTextView;->mMinHeight:I

    goto :goto_1

    :cond_2
    iget v2, p0, Lcom/meizu/common/widget/FoldableTextView;->mMaxHeight:I

    goto :goto_2
.end method


# virtual methods
.method public changeFoldState()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 516
    iget-boolean v0, p0, Lcom/meizu/common/widget/FoldableTextView;->mIsAnimating:Z

    if-eqz v0, :cond_1

    .line 541
    :cond_0
    :goto_0
    return-void

    .line 517
    :cond_1
    iget-boolean v0, p0, Lcom/meizu/common/widget/FoldableTextView;->mClickToFold:Z

    if-eqz v0, :cond_0

    .line 521
    iget-boolean v0, p0, Lcom/meizu/common/widget/FoldableTextView;->mIsfolded:Z

    if-eqz v0, :cond_3

    .line 523
    iget-object v0, p0, Lcom/meizu/common/widget/FoldableTextView;->mListener:Lcom/meizu/common/widget/FoldableTextView$FoldingListener;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/meizu/common/widget/FoldableTextView;->mListener:Lcom/meizu/common/widget/FoldableTextView$FoldingListener;

    invoke-interface {v0, p0, v1}, Lcom/meizu/common/widget/FoldableTextView$FoldingListener;->onFolding(Lcom/meizu/common/widget/FoldableTextView;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 526
    :cond_2
    iput-boolean v1, p0, Lcom/meizu/common/widget/FoldableTextView;->mIsfolded:Z

    .line 528
    iget-object v0, p0, Lcom/meizu/common/widget/FoldableTextView;->mainText:Ljava/lang/CharSequence;

    sget-object v1, Landroid/widget/TextView$BufferType;->NORMAL:Landroid/widget/TextView$BufferType;

    invoke-virtual {p0, v0, v1}, Lcom/meizu/common/widget/FoldableTextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 529
    iget v0, p0, Lcom/meizu/common/widget/FoldableTextView;->mMinHeight:I

    if-eqz v0, :cond_0

    .line 530
    invoke-direct {p0}, Lcom/meizu/common/widget/FoldableTextView;->startAnimator()V

    goto :goto_0

    .line 534
    :cond_3
    iget-object v0, p0, Lcom/meizu/common/widget/FoldableTextView;->mListener:Lcom/meizu/common/widget/FoldableTextView$FoldingListener;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/meizu/common/widget/FoldableTextView;->mListener:Lcom/meizu/common/widget/FoldableTextView$FoldingListener;

    invoke-interface {v0, p0, v2}, Lcom/meizu/common/widget/FoldableTextView$FoldingListener;->onFolding(Lcom/meizu/common/widget/FoldableTextView;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 537
    :cond_4
    iput-boolean v2, p0, Lcom/meizu/common/widget/FoldableTextView;->mIsfolded:Z

    .line 538
    iget v0, p0, Lcom/meizu/common/widget/FoldableTextView;->mMaxHeight:I

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/meizu/common/widget/FoldableTextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/meizu/common/widget/FoldableTextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/text/Layout;->getLineCount()I

    move-result v0

    iget v1, p0, Lcom/meizu/common/widget/FoldableTextView;->mFoldLineMax:I

    if-le v0, v1, :cond_0

    .line 539
    invoke-direct {p0}, Lcom/meizu/common/widget/FoldableTextView;->startAnimator()V

    goto :goto_0
.end method

.method public getFoldLineMax()I
    .locals 1

    .prologue
    .line 294
    iget v0, p0, Lcom/meizu/common/widget/FoldableTextView;->mFoldLineMax:I

    return v0
.end method

.method public getFoldStatus()Z
    .locals 1

    .prologue
    .line 340
    iget-boolean v0, p0, Lcom/meizu/common/widget/FoldableTextView;->mIsfolded:Z

    return v0
.end method

.method public getLinkColor()I
    .locals 1

    .prologue
    .line 333
    iget v0, p0, Lcom/meizu/common/widget/FoldableTextView;->mLinkColor:I

    return v0
.end method

.method public getMoreText()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 264
    iget-object v0, p0, Lcom/meizu/common/widget/FoldableTextView;->mMoreText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getStrEllipse()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 256
    iget-object v0, p0, Lcom/meizu/common/widget/FoldableTextView;->mEllipseText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public hasFocusable()Z
    .locals 1

    .prologue
    .line 701
    const/4 v0, 0x0

    return v0
.end method

.method public isAlignViewEdge()Z
    .locals 1

    .prologue
    .line 272
    iget-boolean v0, p0, Lcom/meizu/common/widget/FoldableTextView;->mAlignViewEdge:Z

    return v0
.end method

.method public isClickToFold()Z
    .locals 1

    .prologue
    .line 315
    iget-boolean v0, p0, Lcom/meizu/common/widget/FoldableTextView;->mClickToFold:Z

    return v0
.end method

.method public isNonSpanClickable()Z
    .locals 1

    .prologue
    .line 696
    iget-boolean v0, p0, Lcom/meizu/common/widget/FoldableTextView;->mNonSpanClickable:Z

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 509
    invoke-virtual {p0}, Lcom/meizu/common/widget/FoldableTextView;->changeFoldState()V

    .line 510
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 359
    invoke-super {p0, p1}, Landroid/widget/TextView;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 360
    const-class v0, Lcom/meizu/common/widget/FoldableTextView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 361
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 380
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onMeasure(II)V

    .line 382
    iget-object v0, p0, Lcom/meizu/common/widget/FoldableTextView;->mainText:Ljava/lang/CharSequence;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/meizu/common/widget/FoldableTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/common/widget/FoldableTextView;->mainText:Ljava/lang/CharSequence;

    .line 383
    :cond_0
    iget-object v0, p0, Lcom/meizu/common/widget/FoldableTextView;->mainText:Ljava/lang/CharSequence;

    invoke-direct {p0, v0}, Lcom/meizu/common/widget/FoldableTextView;->initHeight(Ljava/lang/CharSequence;)V

    .line 384
    iget-boolean v0, p0, Lcom/meizu/common/widget/FoldableTextView;->mIsAnimating:Z

    if-eqz v0, :cond_2

    .line 385
    iget-boolean v0, p0, Lcom/meizu/common/widget/FoldableTextView;->mIsfolded:Z

    if-nez v0, :cond_1

    .line 386
    iget v0, p0, Lcom/meizu/common/widget/FoldableTextView;->mMinHeight:I

    int-to-float v0, v0

    iget v1, p0, Lcom/meizu/common/widget/FoldableTextView;->mMaxHeight:I

    iget v2, p0, Lcom/meizu/common/widget/FoldableTextView;->mMinHeight:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iget-object v2, p0, Lcom/meizu/common/widget/FoldableTextView;->mAnimatorFraction:Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    float-to-int v0, v0

    invoke-virtual {p0, p1, v0}, Lcom/meizu/common/widget/FoldableTextView;->setMeasuredDimension(II)V

    .line 402
    :goto_0
    return-void

    .line 388
    :cond_1
    iget v0, p0, Lcom/meizu/common/widget/FoldableTextView;->mMaxHeight:I

    int-to-float v0, v0

    iget v1, p0, Lcom/meizu/common/widget/FoldableTextView;->mMaxHeight:I

    iget v2, p0, Lcom/meizu/common/widget/FoldableTextView;->mMinHeight:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iget-object v2, p0, Lcom/meizu/common/widget/FoldableTextView;->mAnimatorFraction:Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    float-to-int v0, v0

    invoke-virtual {p0, p1, v0}, Lcom/meizu/common/widget/FoldableTextView;->setMeasuredDimension(II)V

    goto :goto_0

    .line 391
    :cond_2
    iget-object v0, p0, Lcom/meizu/common/widget/FoldableTextView;->mainText:Ljava/lang/CharSequence;

    invoke-direct {p0, v0}, Lcom/meizu/common/widget/FoldableTextView;->foldText(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/common/widget/FoldableTextView;->mFoldedText:Ljava/lang/CharSequence;

    .line 393
    iget-boolean v0, p0, Lcom/meizu/common/widget/FoldableTextView;->mIsfolded:Z

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/meizu/common/widget/FoldableTextView;->mFoldLineMax:I

    if-gtz v0, :cond_4

    .line 394
    :cond_3
    iget-object v0, p0, Lcom/meizu/common/widget/FoldableTextView;->mainText:Ljava/lang/CharSequence;

    sget-object v1, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {p0, v0, v1}, Lcom/meizu/common/widget/FoldableTextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 395
    iget v0, p0, Lcom/meizu/common/widget/FoldableTextView;->mMaxHeight:I

    invoke-virtual {p0, p1, v0}, Lcom/meizu/common/widget/FoldableTextView;->setMeasuredDimension(II)V

    goto :goto_0

    .line 398
    :cond_4
    iget-object v0, p0, Lcom/meizu/common/widget/FoldableTextView;->mFoldedText:Ljava/lang/CharSequence;

    sget-object v1, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {p0, v0, v1}, Lcom/meizu/common/widget/FoldableTextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 399
    iget v0, p0, Lcom/meizu/common/widget/FoldableTextView;->mMinHeight:I

    invoke-virtual {p0, p1, v0}, Lcom/meizu/common/widget/FoldableTextView;->setMeasuredDimension(II)V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 670
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/meizu/common/widget/FoldableTextView;->mLinkHit:Z

    .line 671
    invoke-super {p0, p1}, Landroid/widget/TextView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 672
    .local v0, "res":Z
    iget-boolean v1, p0, Lcom/meizu/common/widget/FoldableTextView;->mNonClicks:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/meizu/common/widget/FoldableTextView;->mNonSpanClickable:Z

    if-nez v1, :cond_0

    .line 673
    iget-boolean v0, p0, Lcom/meizu/common/widget/FoldableTextView;->mLinkHit:Z

    .line 678
    .end local v0    # "res":Z
    :cond_0
    return v0
.end method

.method public setClickToFold(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 303
    if-eqz p1, :cond_0

    .line 304
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/meizu/common/widget/FoldableTextView;->mClickToFold:Z

    .line 308
    :goto_0
    return-void

    .line 306
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/meizu/common/widget/FoldableTextView;->mClickToFold:Z

    goto :goto_0
.end method

.method public setFoldDuration(I)V
    .locals 0
    .param p1, "duration"    # I

    .prologue
    .line 615
    iput p1, p0, Lcom/meizu/common/widget/FoldableTextView;->mDuration:I

    .line 616
    return-void
.end method

.method public setFoldStatus(Z)V
    .locals 1
    .param p1, "fold"    # Z

    .prologue
    .line 350
    iget-boolean v0, p0, Lcom/meizu/common/widget/FoldableTextView;->mIsfolded:Z

    if-eq v0, p1, :cond_0

    .line 351
    iput-boolean p1, p0, Lcom/meizu/common/widget/FoldableTextView;->mIsfolded:Z

    .line 352
    invoke-virtual {p0}, Lcom/meizu/common/widget/FoldableTextView;->requestLayout()V

    .line 353
    invoke-virtual {p0}, Lcom/meizu/common/widget/FoldableTextView;->invalidate()V

    .line 355
    :cond_0
    return-void
.end method

.method public setFoldText(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2
    .param p1, "strEllipse"    # Ljava/lang/String;
    .param p2, "strUnfold"    # Ljava/lang/String;
    .param p3, "alignViewEdge"    # Z

    .prologue
    .line 236
    iput-boolean p3, p0, Lcom/meizu/common/widget/FoldableTextView;->mAlignViewEdge:Z

    .line 237
    if-eqz p1, :cond_0

    .line 238
    iput-object p1, p0, Lcom/meizu/common/widget/FoldableTextView;->mEllipseText:Ljava/lang/CharSequence;

    .line 242
    :goto_0
    if-eqz p2, :cond_1

    .line 243
    iput-object p2, p0, Lcom/meizu/common/widget/FoldableTextView;->mMoreText:Ljava/lang/CharSequence;

    .line 249
    :goto_1
    return-void

    .line 240
    :cond_0
    const-string v0, "\u2025"

    iput-object v0, p0, Lcom/meizu/common/widget/FoldableTextView;->mEllipseText:Ljava/lang/CharSequence;

    goto :goto_0

    .line 245
    :cond_1
    invoke-virtual {p0}, Lcom/meizu/common/widget/FoldableTextView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f08009e

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/common/widget/FoldableTextView;->mMoreText:Ljava/lang/CharSequence;

    goto :goto_1
.end method

.method public setFolding(ILcom/meizu/common/widget/FoldableTextView$FoldingListener;)V
    .locals 2
    .param p1, "lineMax"    # I
    .param p2, "l"    # Lcom/meizu/common/widget/FoldableTextView$FoldingListener;

    .prologue
    .line 284
    iput p1, p0, Lcom/meizu/common/widget/FoldableTextView;->mFoldLineMax:I

    .line 285
    iput-object p2, p0, Lcom/meizu/common/widget/FoldableTextView;->mListener:Lcom/meizu/common/widget/FoldableTextView$FoldingListener;

    .line 286
    iget-object v0, p0, Lcom/meizu/common/widget/FoldableTextView;->mainText:Ljava/lang/CharSequence;

    sget-object v1, Landroid/widget/TextView$BufferType;->NORMAL:Landroid/widget/TextView$BufferType;

    invoke-virtual {p0, v0, v1}, Lcom/meizu/common/widget/FoldableTextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 287
    return-void
.end method

.method public setLinkColor(I)V
    .locals 0
    .param p1, "color"    # I

    .prologue
    .line 324
    iput p1, p0, Lcom/meizu/common/widget/FoldableTextView;->mLinkColor:I

    .line 325
    invoke-virtual {p0}, Lcom/meizu/common/widget/FoldableTextView;->invalidate()V

    .line 326
    return-void
.end method

.method public setNonSpanClickable(Z)V
    .locals 0
    .param p1, "clickable"    # Z

    .prologue
    .line 688
    iput-boolean p1, p0, Lcom/meizu/common/widget/FoldableTextView;->mNonSpanClickable:Z

    .line 689
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "type"    # Landroid/widget/TextView$BufferType;

    .prologue
    .line 365
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 366
    iget-object v0, p0, Lcom/meizu/common/widget/FoldableTextView;->mainText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meizu/common/widget/FoldableTextView;->mFoldedText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/common/widget/FoldableTextView;->mainText:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/common/widget/FoldableTextView;->mFoldedText:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 367
    iput-object p1, p0, Lcom/meizu/common/widget/FoldableTextView;->mainText:Ljava/lang/CharSequence;

    .line 368
    invoke-direct {p0, p1}, Lcom/meizu/common/widget/FoldableTextView;->initHeight(Ljava/lang/CharSequence;)V

    .line 369
    iget-boolean v0, p0, Lcom/meizu/common/widget/FoldableTextView;->mIsfolded:Z

    if-eqz v0, :cond_1

    .line 370
    iget v0, p0, Lcom/meizu/common/widget/FoldableTextView;->mMinHeight:I

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/FoldableTextView;->setHeight(I)V

    .line 375
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/meizu/common/widget/FoldableTextView;->requestLayout()V

    .line 376
    return-void

    .line 372
    :cond_1
    iget v0, p0, Lcom/meizu/common/widget/FoldableTextView;->mMaxHeight:I

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/FoldableTextView;->setHeight(I)V

    goto :goto_0
.end method
