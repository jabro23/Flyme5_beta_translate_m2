.class public Landroid/support/v7/internal/widget/ActionBarContextView;
.super Landroid/support/v7/internal/widget/AbsActionBarView;
.source "ActionBarContextView.java"

# interfaces
.implements Landroid/support/v4/view/ViewPropertyAnimatorListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/internal/widget/ActionBarContextView$ContextViewVisibilityAnimListener;
    }
.end annotation


# static fields
.field private static final MULTI_CHOICE_ANIMATION_INTERPOLATOR_IN:Landroid/view/animation/Interpolator;

.field private static final MULTI_CHOICE_ANIMATION_INTERPOLATOR_OUT:Landroid/view/animation/Interpolator;


# instance fields
.field private mAnimateInOnLayout:Z

.field private mAnimationMode:I

.field private mClose:Landroid/view/View;

.field private mCloseItemLayout:I

.field private mCurrentAnimation:Landroid/support/v7/internal/view/ViewPropertyAnimatorCompatSet;

.field private mCustomView:Landroid/view/View;

.field private mInMultiChoiceActionMode:Z

.field private mSplitBackground:Landroid/graphics/drawable/Drawable;

.field private mSubtitle:Ljava/lang/CharSequence;

.field private mSubtitleStyleRes:I

.field private mSubtitleView:Landroid/widget/TextView;

.field private mTitle:Ljava/lang/CharSequence;

.field private mTitleLayout:Landroid/widget/LinearLayout;

.field private mTitleOptional:Z

.field private mTitleStyleRes:I

.field private mTitleView:Landroid/widget/TextView;

.field protected final mVisAnimListener:Landroid/support/v7/internal/widget/ActionBarContextView$ContextViewVisibilityAnimListener;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    const v3, 0x3f28f5c3    # 0.66f

    const/4 v2, 0x0

    .line 629
    const v0, 0x3ea8f5c3    # 0.33f

    const v1, 0x3dcccccd    # 0.1f

    invoke-static {v2, v0, v1, v4}, Landroid/support/v4/view/animation/PathInterpolatorCompat;->create(FFFF)Landroid/view/animation/Interpolator;

    move-result-object v0

    sput-object v0, Landroid/support/v7/internal/widget/ActionBarContextView;->MULTI_CHOICE_ANIMATION_INTERPOLATOR_IN:Landroid/view/animation/Interpolator;

    .line 630
    invoke-static {v2, v3, v3, v4}, Landroid/support/v4/view/animation/PathInterpolatorCompat;->create(FFFF)Landroid/view/animation/Interpolator;

    move-result-object v0

    sput-object v0, Landroid/support/v7/internal/widget/ActionBarContextView;->MULTI_CHOICE_ANIMATION_INTERPOLATOR_OUT:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 85
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v7/internal/widget/ActionBarContextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 86
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 89
    const v0, 0x7f010037

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/internal/widget/ActionBarContextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 90
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v2, 0x0

    .line 93
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/internal/widget/AbsActionBarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 681
    new-instance v1, Landroid/support/v7/internal/widget/ActionBarContextView$ContextViewVisibilityAnimListener;

    invoke-direct {v1, p0}, Landroid/support/v7/internal/widget/ActionBarContextView$ContextViewVisibilityAnimListener;-><init>(Landroid/support/v7/internal/widget/ActionBarContextView;)V

    iput-object v1, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mVisAnimListener:Landroid/support/v7/internal/widget/ActionBarContextView$ContextViewVisibilityAnimListener;

    .line 95
    sget-object v1, Landroid/support/v7/appcompat/R$styleable;->ActionMode:[I

    invoke-static {p1, p2, v1, p3, v2}, Landroid/support/v7/internal/widget/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroid/support/v7/internal/widget/TintTypedArray;

    move-result-object v0

    .line 97
    .local v0, "a":Landroid/support/v7/internal/widget/TintTypedArray;
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/widget/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/support/v7/internal/widget/ActionBarContextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 99
    const/4 v1, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/internal/widget/TintTypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mTitleStyleRes:I

    .line 101
    const/4 v1, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/internal/widget/TintTypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mSubtitleStyleRes:I

    .line 104
    invoke-virtual {v0, v2, v2}, Landroid/support/v7/internal/widget/TintTypedArray;->getLayoutDimension(II)I

    move-result v1

    iput v1, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mContentHeight:I

    .line 107
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/widget/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    .line 110
    const/4 v1, 0x5

    const v2, 0x7f040006

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/internal/widget/TintTypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mCloseItemLayout:I

    .line 114
    invoke-virtual {v0}, Landroid/support/v7/internal/widget/TintTypedArray;->recycle()V

    .line 115
    return-void
.end method

.method static synthetic access$000()Landroid/view/animation/Interpolator;
    .locals 1

    .prologue
    .line 52
    sget-object v0, Landroid/support/v7/internal/widget/ActionBarContextView;->MULTI_CHOICE_ANIMATION_INTERPOLATOR_IN:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method private finishAnimation()V
    .locals 2

    .prologue
    .line 295
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mCurrentAnimation:Landroid/support/v7/internal/view/ViewPropertyAnimatorCompatSet;

    .line 296
    .local v0, "a":Landroid/support/v7/internal/view/ViewPropertyAnimatorCompatSet;
    if-eqz v0, :cond_0

    .line 297
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mCurrentAnimation:Landroid/support/v7/internal/view/ViewPropertyAnimatorCompatSet;

    .line 298
    invoke-virtual {v0}, Landroid/support/v7/internal/view/ViewPropertyAnimatorCompatSet;->cancel()V

    .line 300
    :cond_0
    return-void
.end method

.method private initTitle()V
    .locals 9

    .prologue
    const/16 v6, 0x8

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 197
    iget-object v3, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    if-nez v3, :cond_1

    .line 198
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarContextView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 202
    .local v2, "inflater":Landroid/view/LayoutInflater;
    const v3, 0x7f040054

    invoke-virtual {v2, v3, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 204
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarContextView;->getChildCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {p0, v3}, Landroid/support/v7/internal/widget/ActionBarContextView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    .line 205
    iget-object v3, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    const v7, 0x7f0d004b

    invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mTitleView:Landroid/widget/TextView;

    .line 206
    iget-object v3, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    const v7, 0x7f0d004c

    invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mSubtitleView:Landroid/widget/TextView;

    .line 207
    iget v3, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mTitleStyleRes:I

    if-eqz v3, :cond_0

    .line 208
    iget-object v3, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarContextView;->getContext()Landroid/content/Context;

    move-result-object v7

    iget v8, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mTitleStyleRes:I

    invoke-virtual {v3, v7, v8}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 210
    :cond_0
    iget v3, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mSubtitleStyleRes:I

    if-eqz v3, :cond_1

    .line 211
    iget-object v3, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mSubtitleView:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarContextView;->getContext()Landroid/content/Context;

    move-result-object v7

    iget v8, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mSubtitleStyleRes:I

    invoke-virtual {v3, v7, v8}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 215
    .end local v2    # "inflater":Landroid/view/LayoutInflater;
    :cond_1
    iget-object v3, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mTitleView:Landroid/widget/TextView;

    iget-object v7, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 216
    iget-object v3, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mSubtitleView:Landroid/widget/TextView;

    iget-object v7, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mSubtitle:Ljava/lang/CharSequence;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 218
    iget-object v3, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mTitle:Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    move v1, v4

    .line 219
    .local v1, "hasTitle":Z
    :goto_0
    iget-object v3, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mSubtitle:Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    move v0, v4

    .line 220
    .local v0, "hasSubtitle":Z
    :goto_1
    iget-object v4, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mSubtitleView:Landroid/widget/TextView;

    if-eqz v0, :cond_7

    move v3, v5

    :goto_2
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 221
    iget-object v3, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    if-nez v1, :cond_2

    if-eqz v0, :cond_3

    :cond_2
    move v6, v5

    :cond_3
    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 222
    iget-object v3, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-nez v3, :cond_4

    .line 223
    iget-object v3, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v3}, Landroid/support/v7/internal/widget/ActionBarContextView;->addView(Landroid/view/View;)V

    .line 225
    :cond_4
    return-void

    .end local v0    # "hasSubtitle":Z
    .end local v1    # "hasTitle":Z
    :cond_5
    move v1, v5

    .line 218
    goto :goto_0

    .restart local v1    # "hasTitle":Z
    :cond_6
    move v0, v5

    .line 219
    goto :goto_1

    .restart local v0    # "hasSubtitle":Z
    :cond_7
    move v3, v6

    .line 220
    goto :goto_2
.end method


# virtual methods
.method public animateToVisibility(I)V
    .locals 8
    .param p1, "visibility"    # I

    .prologue
    const/high16 v5, 0x3f800000    # 1.0f

    const-wide/16 v6, 0xa0

    const/4 v4, 0x0

    .line 685
    iget-object v3, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mVisibilityAnim:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    if-eqz v3, :cond_0

    .line 686
    iget-object v3, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mVisibilityAnim:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    invoke-virtual {v3}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->cancel()V

    .line 688
    :cond_0
    if-nez p1, :cond_3

    .line 689
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarContextView;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_1

    .line 690
    invoke-static {p0, v4}, Landroid/support/v4/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    .line 691
    iget-object v3, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mSplitView:Landroid/view/ViewGroup;

    if-eqz v3, :cond_1

    iget-object v3, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    if-eqz v3, :cond_1

    .line 692
    iget-object v3, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    invoke-static {v3, v4}, Landroid/support/v4/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    .line 695
    :cond_1
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->alpha(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    .line 696
    .local v0, "anim":Landroid/support/v4/view/ViewPropertyAnimatorCompat;
    invoke-virtual {v0, v6, v7}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 697
    sget-object v3, Landroid/support/v7/internal/widget/ActionBarContextView;->sAlphaInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v3}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setInterpolator(Landroid/view/animation/Interpolator;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 698
    iget-object v3, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mSplitView:Landroid/view/ViewGroup;

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    if-eqz v3, :cond_2

    .line 699
    new-instance v1, Landroid/support/v7/internal/view/ViewPropertyAnimatorCompatSet;

    invoke-direct {v1}, Landroid/support/v7/internal/view/ViewPropertyAnimatorCompatSet;-><init>()V

    .line 700
    .local v1, "set":Landroid/support/v7/internal/view/ViewPropertyAnimatorCompatSet;
    iget-object v3, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    invoke-static {v3}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->alpha(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v2

    .line 701
    .local v2, "splitAnim":Landroid/support/v4/view/ViewPropertyAnimatorCompat;
    invoke-virtual {v2, v6, v7}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 702
    iget-object v3, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mVisAnimListener:Landroid/support/v7/internal/widget/ActionBarContextView$ContextViewVisibilityAnimListener;

    invoke-virtual {v3, v0, p1}, Landroid/support/v7/internal/widget/ActionBarContextView$ContextViewVisibilityAnimListener;->withFinalVisibility(Landroid/support/v4/view/ViewPropertyAnimatorCompat;I)Landroid/support/v7/internal/widget/AbsActionBarView$VisibilityAnimListener;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/support/v7/internal/view/ViewPropertyAnimatorCompatSet;->setListener(Landroid/support/v4/view/ViewPropertyAnimatorListener;)Landroid/support/v7/internal/view/ViewPropertyAnimatorCompatSet;

    .line 703
    invoke-virtual {v1, v0}, Landroid/support/v7/internal/view/ViewPropertyAnimatorCompatSet;->play(Landroid/support/v4/view/ViewPropertyAnimatorCompat;)Landroid/support/v7/internal/view/ViewPropertyAnimatorCompatSet;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/support/v7/internal/view/ViewPropertyAnimatorCompatSet;->play(Landroid/support/v4/view/ViewPropertyAnimatorCompat;)Landroid/support/v7/internal/view/ViewPropertyAnimatorCompatSet;

    .line 704
    invoke-virtual {v1}, Landroid/support/v7/internal/view/ViewPropertyAnimatorCompatSet;->start()V

    .line 725
    .end local v1    # "set":Landroid/support/v7/internal/view/ViewPropertyAnimatorCompatSet;
    .end local v2    # "splitAnim":Landroid/support/v4/view/ViewPropertyAnimatorCompat;
    :goto_0
    return-void

    .line 706
    :cond_2
    iget-object v3, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mVisAnimListener:Landroid/support/v7/internal/widget/ActionBarContextView$ContextViewVisibilityAnimListener;

    invoke-virtual {v3, v0, p1}, Landroid/support/v7/internal/widget/ActionBarContextView$ContextViewVisibilityAnimListener;->withFinalVisibility(Landroid/support/v4/view/ViewPropertyAnimatorCompat;I)Landroid/support/v7/internal/widget/AbsActionBarView$VisibilityAnimListener;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setListener(Landroid/support/v4/view/ViewPropertyAnimatorListener;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 707
    invoke-virtual {v0}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->start()V

    goto :goto_0

    .line 710
    .end local v0    # "anim":Landroid/support/v4/view/ViewPropertyAnimatorCompat;
    :cond_3
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->alpha(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    .line 711
    .restart local v0    # "anim":Landroid/support/v4/view/ViewPropertyAnimatorCompat;
    invoke-virtual {v0, v6, v7}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 712
    sget-object v3, Landroid/support/v7/internal/widget/ActionBarContextView;->sAlphaInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v3}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setInterpolator(Landroid/view/animation/Interpolator;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 713
    iget-object v3, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mSplitView:Landroid/view/ViewGroup;

    if-eqz v3, :cond_4

    iget-object v3, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    if-eqz v3, :cond_4

    .line 714
    new-instance v1, Landroid/support/v7/internal/view/ViewPropertyAnimatorCompatSet;

    invoke-direct {v1}, Landroid/support/v7/internal/view/ViewPropertyAnimatorCompatSet;-><init>()V

    .line 715
    .restart local v1    # "set":Landroid/support/v7/internal/view/ViewPropertyAnimatorCompatSet;
    iget-object v3, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    invoke-static {v3}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->alpha(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v2

    .line 716
    .restart local v2    # "splitAnim":Landroid/support/v4/view/ViewPropertyAnimatorCompat;
    invoke-virtual {v2, v6, v7}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 717
    iget-object v3, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mVisAnimListener:Landroid/support/v7/internal/widget/ActionBarContextView$ContextViewVisibilityAnimListener;

    invoke-virtual {v3, v0, p1}, Landroid/support/v7/internal/widget/ActionBarContextView$ContextViewVisibilityAnimListener;->withFinalVisibility(Landroid/support/v4/view/ViewPropertyAnimatorCompat;I)Landroid/support/v7/internal/widget/AbsActionBarView$VisibilityAnimListener;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/support/v7/internal/view/ViewPropertyAnimatorCompatSet;->setListener(Landroid/support/v4/view/ViewPropertyAnimatorListener;)Landroid/support/v7/internal/view/ViewPropertyAnimatorCompatSet;

    .line 718
    invoke-virtual {v1, v0}, Landroid/support/v7/internal/view/ViewPropertyAnimatorCompatSet;->play(Landroid/support/v4/view/ViewPropertyAnimatorCompat;)Landroid/support/v7/internal/view/ViewPropertyAnimatorCompatSet;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/support/v7/internal/view/ViewPropertyAnimatorCompatSet;->play(Landroid/support/v4/view/ViewPropertyAnimatorCompat;)Landroid/support/v7/internal/view/ViewPropertyAnimatorCompatSet;

    .line 719
    invoke-virtual {v1}, Landroid/support/v7/internal/view/ViewPropertyAnimatorCompatSet;->start()V

    goto :goto_0

    .line 721
    .end local v1    # "set":Landroid/support/v7/internal/view/ViewPropertyAnimatorCompatSet;
    .end local v2    # "splitAnim":Landroid/support/v4/view/ViewPropertyAnimatorCompat;
    :cond_4
    iget-object v3, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mVisAnimListener:Landroid/support/v7/internal/widget/ActionBarContextView$ContextViewVisibilityAnimListener;

    invoke-virtual {v3, v0, p1}, Landroid/support/v7/internal/widget/ActionBarContextView$ContextViewVisibilityAnimListener;->withFinalVisibility(Landroid/support/v4/view/ViewPropertyAnimatorCompat;I)Landroid/support/v7/internal/widget/AbsActionBarView$VisibilityAnimListener;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setListener(Landroid/support/v4/view/ViewPropertyAnimatorListener;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 722
    invoke-virtual {v0}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->start()V

    goto :goto_0
.end method

.method public closeMode()V
    .locals 0

    .prologue
    .line 292
    return-void
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 3

    .prologue
    .line 345
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 350
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarContextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public getSubtitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mSubtitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public initForMode(Landroid/support/v7/view/ActionMode;)V
    .locals 8
    .param p1, "mode"    # Landroid/support/v7/view/ActionMode;

    .prologue
    const/4 v7, -0x1

    const/4 v6, 0x1

    .line 228
    iget-object v4, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mClose:Landroid/view/View;

    if-nez v4, :cond_2

    .line 229
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarContextView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 230
    .local v1, "inflater":Landroid/view/LayoutInflater;
    iget v4, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mCloseItemLayout:I

    const/4 v5, 0x0

    invoke-virtual {v1, v4, p0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mClose:Landroid/view/View;

    .line 231
    iget-object v4, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mClose:Landroid/view/View;

    invoke-virtual {p0, v4}, Landroid/support/v7/internal/widget/ActionBarContextView;->addView(Landroid/view/View;)V

    .line 236
    .end local v1    # "inflater":Landroid/view/LayoutInflater;
    :cond_0
    :goto_0
    iget-object v4, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mClose:Landroid/view/View;

    const v5, 0x7f0d004d

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 237
    .local v0, "closeButton":Landroid/view/View;
    new-instance v4, Landroid/support/v7/internal/widget/ActionBarContextView$1;

    invoke-direct {v4, p0, p1}, Landroid/support/v7/internal/widget/ActionBarContextView$1;-><init>(Landroid/support/v7/internal/widget/ActionBarContextView;Landroid/support/v7/view/ActionMode;)V

    invoke-virtual {v0, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 243
    invoke-virtual {p1}, Landroid/support/v7/view/ActionMode;->getMenu()Landroid/view/Menu;

    move-result-object v3

    check-cast v3, Landroid/support/v7/internal/view/menu/MenuBuilder;

    .line 244
    .local v3, "menu":Landroid/support/v7/internal/view/menu/MenuBuilder;
    iget-object v4, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mActionMenuPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    if-eqz v4, :cond_1

    .line 245
    iget-object v4, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mActionMenuPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    invoke-virtual {v4}, Landroid/support/v7/widget/ActionMenuPresenter;->dismissPopupMenus()Z

    .line 247
    :cond_1
    new-instance v4, Landroid/support/v7/widget/ActionMenuPresenter;

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarContextView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/support/v7/widget/ActionMenuPresenter;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mActionMenuPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    .line 248
    iget-object v4, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mActionMenuPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    invoke-virtual {v4, v6}, Landroid/support/v7/widget/ActionMenuPresenter;->setReserveOverflow(Z)V

    .line 250
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v4, -0x2

    invoke-direct {v2, v4, v7}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 252
    .local v2, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    iget-boolean v4, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mSplitActionBar:Z

    if-nez v4, :cond_3

    .line 253
    iget-object v4, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mActionMenuPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    iget-object v5, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mPopupContext:Landroid/content/Context;

    invoke-virtual {v3, v4, v5}, Landroid/support/v7/internal/view/menu/MenuBuilder;->addMenuPresenter(Landroid/support/v7/internal/view/menu/MenuPresenter;Landroid/content/Context;)V

    .line 254
    iget-object v4, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mActionMenuPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    invoke-virtual {v4, p0}, Landroid/support/v7/widget/ActionMenuPresenter;->getMenuView(Landroid/view/ViewGroup;)Landroid/support/v7/internal/view/menu/MenuView;

    move-result-object v4

    check-cast v4, Landroid/support/v7/widget/ActionMenuView;

    iput-object v4, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    .line 255
    iget-object v4, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/support/v7/widget/ActionMenuView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 256
    iget-object v4, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    invoke-virtual {p0, v4, v2}, Landroid/support/v7/internal/widget/ActionBarContextView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 272
    :goto_1
    iput-boolean v6, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mAnimateInOnLayout:Z

    .line 273
    return-void

    .line 232
    .end local v0    # "closeButton":Landroid/view/View;
    .end local v2    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    .end local v3    # "menu":Landroid/support/v7/internal/view/menu/MenuBuilder;
    :cond_2
    iget-object v4, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mClose:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    if-nez v4, :cond_0

    .line 233
    iget-object v4, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mClose:Landroid/view/View;

    invoke-virtual {p0, v4}, Landroid/support/v7/internal/widget/ActionBarContextView;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 259
    .restart local v0    # "closeButton":Landroid/view/View;
    .restart local v2    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    .restart local v3    # "menu":Landroid/support/v7/internal/view/menu/MenuBuilder;
    :cond_3
    iget-object v4, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mActionMenuPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarContextView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v4, v5, v6}, Landroid/support/v7/widget/ActionMenuPresenter;->setWidthLimit(IZ)V

    .line 262
    iget-object v4, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mActionMenuPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    const v5, 0x7fffffff

    invoke-virtual {v4, v5}, Landroid/support/v7/widget/ActionMenuPresenter;->setItemLimit(I)V

    .line 264
    iput v7, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 265
    iget v4, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mContentHeight:I

    iput v4, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 266
    iget-object v4, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mActionMenuPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    iget-object v5, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mPopupContext:Landroid/content/Context;

    invoke-virtual {v3, v4, v5}, Landroid/support/v7/internal/view/menu/MenuBuilder;->addMenuPresenter(Landroid/support/v7/internal/view/menu/MenuPresenter;Landroid/content/Context;)V

    .line 267
    iget-object v4, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mActionMenuPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    invoke-virtual {v4, p0}, Landroid/support/v7/widget/ActionMenuPresenter;->getMenuView(Landroid/view/ViewGroup;)Landroid/support/v7/internal/view/menu/MenuView;

    move-result-object v4

    check-cast v4, Landroid/support/v7/widget/ActionMenuView;

    iput-object v4, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    .line 268
    iget-object v4, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    iget-object v5, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v5}, Landroid/support/v7/widget/ActionMenuView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 269
    iget-object v4, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mSplitView:Landroid/view/ViewGroup;

    iget-object v5, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    invoke-virtual {v4, v5, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1
.end method

.method public initForMultiChoiceMode(Landroid/support/v7/view/ActionMode;)V
    .locals 9
    .param p1, "mode"    # Landroid/support/v7/view/ActionMode;

    .prologue
    const/4 v8, -0x1

    const/4 v7, -0x2

    const/4 v6, 0x1

    .line 590
    iput-boolean v6, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mInMultiChoiceActionMode:Z

    .line 591
    invoke-virtual {p1}, Landroid/support/v7/view/ActionMode;->getMenu()Landroid/view/Menu;

    move-result-object v1

    check-cast v1, Landroid/support/v7/internal/view/menu/MenuBuilder;

    .line 592
    .local v1, "menu":Landroid/support/v7/internal/view/menu/MenuBuilder;
    iget-object v3, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mActionMenuPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    if-eqz v3, :cond_0

    .line 593
    iget-object v3, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mActionMenuPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    invoke-virtual {v3}, Landroid/support/v7/widget/ActionMenuPresenter;->dismissPopupMenus()Z

    .line 595
    :cond_0
    new-instance v3, Landroid/support/v7/widget/ActionMenuPresenter;

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarContextView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/support/v7/widget/ActionMenuPresenter;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mActionMenuPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    .line 596
    iget-object v3, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mActionMenuPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    invoke-virtual {v3, v6}, Landroid/support/v7/widget/ActionMenuPresenter;->setReserveOverflow(Z)V

    .line 598
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v7, v8}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 600
    .local v0, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    iget-object v3, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mSplitView:Landroid/view/ViewGroup;

    if-nez v3, :cond_1

    .line 601
    iget-object v3, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mActionMenuPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    iget-object v4, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mPopupContext:Landroid/content/Context;

    invoke-virtual {v1, v3, v4}, Landroid/support/v7/internal/view/menu/MenuBuilder;->addMenuPresenter(Landroid/support/v7/internal/view/menu/MenuPresenter;Landroid/content/Context;)V

    .line 602
    iget-object v3, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mActionMenuPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    invoke-virtual {v3, p0}, Landroid/support/v7/widget/ActionMenuPresenter;->getMenuView(Landroid/view/ViewGroup;)Landroid/support/v7/internal/view/menu/MenuView;

    move-result-object v3

    check-cast v3, Landroid/support/v7/widget/ActionMenuView;

    iput-object v3, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    .line 603
    iget-object v3, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/ActionMenuView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 604
    iget-object v3, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    invoke-virtual {p0, v3, v0}, Landroid/support/v7/internal/widget/ActionBarContextView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 623
    :goto_0
    iput-boolean v6, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mAnimateInOnLayout:Z

    .line 624
    return-void

    .line 607
    :cond_1
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarContextView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/support/v7/internal/view/ActionBarPolicy;->get(Landroid/content/Context;)Landroid/support/v7/internal/view/ActionBarPolicy;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v7/internal/view/ActionBarPolicy;->getSplitActionBarPadding()I

    move-result v2

    .line 608
    .local v2, "padding":I
    iget-object v3, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mActionMenuPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarContextView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    mul-int/lit8 v5, v2, 0x2

    sub-int/2addr v4, v5

    invoke-virtual {v3, v4, v6}, Landroid/support/v7/widget/ActionMenuPresenter;->setWidthLimit(IZ)V

    .line 611
    iget-object v3, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mActionMenuPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    const v4, 0x7fffffff

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/ActionMenuPresenter;->setItemLimit(I)V

    .line 612
    iget-object v3, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mActionMenuPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    invoke-virtual {v3, v6}, Landroid/support/v7/widget/ActionMenuPresenter;->setIsSplit(Z)V

    .line 614
    iput v8, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 615
    iput v7, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 616
    iget-object v3, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mActionMenuPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    iget-object v4, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mPopupContext:Landroid/content/Context;

    invoke-virtual {v1, v3, v4}, Landroid/support/v7/internal/view/menu/MenuBuilder;->addMenuPresenter(Landroid/support/v7/internal/view/menu/MenuPresenter;Landroid/content/Context;)V

    .line 617
    iget-object v3, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mActionMenuPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    invoke-virtual {v3, p0}, Landroid/support/v7/widget/ActionMenuPresenter;->getMenuView(Landroid/view/ViewGroup;)Landroid/support/v7/internal/view/menu/MenuView;

    move-result-object v3

    check-cast v3, Landroid/support/v7/widget/ActionMenuView;

    iput-object v3, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    .line 618
    iget-object v3, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    const v4, 0x7f0d000d

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/ActionMenuView;->setId(I)V

    .line 619
    iget-object v3, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    iget-object v4, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/ActionMenuView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 620
    iget-object v3, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mSplitView:Landroid/view/ViewGroup;

    iget-object v4, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    invoke-virtual {v3, v4, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public isInMultiChoiceActionMode()Z
    .locals 1

    .prologue
    .line 676
    iget-boolean v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mInMultiChoiceActionMode:Z

    return v0
.end method

.method public isTitleOptional()Z
    .locals 1

    .prologue
    .line 577
    iget-boolean v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mTitleOptional:Z

    return v0
.end method

.method public killMode()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 303
    invoke-direct {p0}, Landroid/support/v7/internal/widget/ActionBarContextView;->finishAnimation()V

    .line 304
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarContextView;->removeAllViews()V

    .line 305
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mSplitView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 306
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mSplitView:Landroid/view/ViewGroup;

    iget-object v1, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 308
    :cond_0
    iput-object v3, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mCustomView:Landroid/view/View;

    .line 309
    iput-object v3, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    .line 310
    iput-boolean v2, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mAnimateInOnLayout:Z

    .line 313
    iput-boolean v2, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mInMultiChoiceActionMode:Z

    .line 315
    return-void
.end method

.method public multiChoiceMenuViewAnimateToVisibility(I)V
    .locals 8
    .param p1, "visibility"    # I

    .prologue
    const/4 v6, 0x0

    .line 633
    if-nez p1, :cond_1

    const/4 v5, 0x1

    :goto_0
    iput v5, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mAnimationMode:I

    .line 639
    iget-object v5, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mSplitView:Landroid/view/ViewGroup;

    if-eqz v5, :cond_2

    iget-object v5, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mSplitView:Landroid/view/ViewGroup;

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    move-object v2, v5

    .line 640
    .local v2, "firstChild":Landroid/view/ViewGroup;
    :goto_1
    iget-object v5, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mSplitView:Landroid/view/ViewGroup;

    if-nez v5, :cond_3

    iget-object v3, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    .line 643
    .local v3, "viewToAnimate":Landroid/view/View;
    :goto_2
    if-nez v3, :cond_5

    .line 644
    iput v6, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mAnimationMode:I

    .line 673
    :cond_0
    :goto_3
    return-void

    .line 633
    .end local v2    # "firstChild":Landroid/view/ViewGroup;
    .end local v3    # "viewToAnimate":Landroid/view/View;
    :cond_1
    const/4 v5, 0x2

    goto :goto_0

    .line 639
    :cond_2
    const/4 v2, 0x0

    goto :goto_1

    .line 641
    .restart local v2    # "firstChild":Landroid/view/ViewGroup;
    :cond_3
    if-eqz v2, :cond_4

    iget-object v5, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    if-eq v2, v5, :cond_4

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    if-lez v5, :cond_4

    iget-object v3, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    .restart local v3    # "viewToAnimate":Landroid/view/View;
    goto :goto_2

    .line 642
    .end local v3    # "viewToAnimate":Landroid/view/View;
    :cond_4
    iget-object v3, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mSplitView:Landroid/view/ViewGroup;

    .restart local v3    # "viewToAnimate":Landroid/view/View;
    goto :goto_2

    .line 647
    :cond_5
    if-nez p1, :cond_6

    .line 648
    invoke-virtual {v3}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v4

    .line 649
    .local v4, "vto":Landroid/view/ViewTreeObserver;
    if-eqz v4, :cond_0

    .line 650
    new-instance v5, Landroid/support/v7/internal/widget/ActionBarContextView$2;

    invoke-direct {v5, p0, v3}, Landroid/support/v7/internal/widget/ActionBarContextView$2;-><init>(Landroid/support/v7/internal/widget/ActionBarContextView;Landroid/view/View;)V

    invoke-virtual {v4, v5}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    goto :goto_3

    .line 666
    .end local v4    # "vto":Landroid/view/ViewTreeObserver;
    :cond_6
    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v5

    int-to-float v1, v5

    .line 667
    .local v1, "endingY":F
    invoke-static {v3}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->translationY(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    .line 668
    .local v0, "anim":Landroid/support/v4/view/ViewPropertyAnimatorCompat;
    const-wide/16 v6, 0x104

    invoke-virtual {v0, v6, v7}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 669
    invoke-virtual {v0, p0}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setListener(Landroid/support/v4/view/ViewPropertyAnimatorListener;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 670
    sget-object v5, Landroid/support/v7/internal/widget/ActionBarContextView;->MULTI_CHOICE_ANIMATION_INTERPOLATOR_OUT:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v5}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setInterpolator(Landroid/view/animation/Interpolator;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 671
    invoke-virtual {v0}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->start()V

    goto :goto_3
.end method

.method public onAnimationCancel(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 547
    return-void
.end method

.method public onAnimationEnd(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 539
    iget v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mAnimationMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 540
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarContextView;->killMode()V

    .line 542
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mAnimationMode:I

    .line 543
    return-void
.end method

.method public onAnimationStart(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 535
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 582
    iget-boolean v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mSplitWhenNarrow:Z

    if-eqz v0, :cond_0

    .line 583
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarContextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e0004

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/ActionBarContextView;->setSplitToolbar(Z)V

    .line 586
    :cond_0
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 119
    invoke-super {p0}, Landroid/support/v7/internal/widget/AbsActionBarView;->onDetachedFromWindow()V

    .line 120
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mActionMenuPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mActionMenuPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionMenuPresenter;->hideOverflowMenu()Z

    .line 122
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mActionMenuPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionMenuPresenter;->hideSubMenus()Z

    .line 124
    :cond_0
    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 556
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 557
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const/16 v1, 0x20

    if-ne v0, v1, :cond_1

    .line 559
    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityEvent;->setSource(Landroid/view/View;)V

    .line 560
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 561
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarContextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    .line 562
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 567
    :cond_0
    :goto_0
    return-void

    .line 564
    :cond_1
    invoke-super {p0, p1}, Landroid/support/v7/internal/widget/AbsActionBarView;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 15
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 489
    invoke-static {p0}, Landroid/support/v7/internal/widget/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v5

    .line 490
    .local v5, "isLayoutRtl":Z
    if-eqz v5, :cond_4

    sub-int v0, p4, p2

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarContextView;->getPaddingRight()I

    move-result v1

    sub-int v2, v0, v1

    .line 491
    .local v2, "x":I
    :goto_0
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarContextView;->getPaddingTop()I

    move-result v3

    .line 492
    .local v3, "y":I
    sub-int v0, p5, p3

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarContextView;->getPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarContextView;->getPaddingBottom()I

    move-result v1

    sub-int v4, v0, v1

    .line 494
    .local v4, "contentHeight":I
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mClose:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mClose:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    .line 495
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mClose:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 496
    .local v13, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    if-eqz v5, :cond_5

    iget v14, v13, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 497
    .local v14, "startMargin":I
    :goto_1
    if-eqz v5, :cond_6

    iget v12, v13, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 498
    .local v12, "endMargin":I
    :goto_2
    invoke-static {v2, v14, v5}, Landroid/support/v7/internal/widget/ActionBarContextView;->next(IIZ)I

    move-result v2

    .line 499
    iget-object v1, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mClose:Landroid/view/View;

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/support/v7/internal/widget/ActionBarContextView;->positionChild(Landroid/view/View;IIIZ)I

    move-result v0

    add-int/2addr v2, v0

    .line 500
    invoke-static {v2, v12, v5}, Landroid/support/v7/internal/widget/ActionBarContextView;->next(IIZ)I

    move-result v2

    .line 514
    .end local v12    # "endMargin":I
    .end local v13    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v14    # "startMargin":I
    :cond_0
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mCustomView:Landroid/view/View;

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1

    .line 515
    iget-object v1, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/support/v7/internal/widget/ActionBarContextView;->positionChild(Landroid/view/View;IIIZ)I

    move-result v0

    add-int/2addr v2, v0

    .line 518
    :cond_1
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mCustomView:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 519
    iget-object v1, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mCustomView:Landroid/view/View;

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/support/v7/internal/widget/ActionBarContextView;->positionChild(Landroid/view/View;IIIZ)I

    move-result v0

    add-int/2addr v2, v0

    .line 522
    :cond_2
    if-eqz v5, :cond_7

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarContextView;->getPaddingLeft()I

    move-result v2

    .line 527
    :goto_3
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionMenuView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-ne v0, p0, :cond_3

    .line 529
    iget-object v7, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    if-nez v5, :cond_8

    const/4 v11, 0x1

    :goto_4
    move-object v6, p0

    move v8, v2

    move v9, v3

    move v10, v4

    invoke-virtual/range {v6 .. v11}, Landroid/support/v7/internal/widget/ActionBarContextView;->positionChild(Landroid/view/View;IIIZ)I

    move-result v0

    add-int/2addr v2, v0

    .line 531
    :cond_3
    return-void

    .line 490
    .end local v2    # "x":I
    .end local v3    # "y":I
    .end local v4    # "contentHeight":I
    :cond_4
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarContextView;->getPaddingLeft()I

    move-result v2

    goto/16 :goto_0

    .line 496
    .restart local v2    # "x":I
    .restart local v3    # "y":I
    .restart local v4    # "contentHeight":I
    .restart local v13    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_5
    iget v14, v13, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    goto :goto_1

    .line 497
    .restart local v14    # "startMargin":I
    :cond_6
    iget v12, v13, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    goto :goto_2

    .line 522
    .end local v13    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v14    # "startMargin":I
    :cond_7
    sub-int v0, p4, p2

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarContextView;->getPaddingRight()I

    move-result v1

    sub-int v2, v0, v1

    goto :goto_3

    .line 529
    :cond_8
    const/4 v11, 0x0

    goto :goto_4
.end method

.method protected onMeasure(II)V
    .locals 27
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 355
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v23

    .line 356
    .local v23, "widthMode":I
    const/high16 v24, 0x40000000    # 2.0f

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_0

    .line 357
    new-instance v24, Ljava/lang/IllegalStateException;

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " can only be used "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "with android:layout_width=\"match_parent\" (or fill_parent)"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-direct/range {v24 .. v25}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v24

    .line 361
    :cond_0
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v12

    .line 362
    .local v12, "heightMode":I
    if-nez v12, :cond_1

    .line 363
    new-instance v24, Ljava/lang/IllegalStateException;

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " can only be used "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "with android:layout_height=\"wrap_content\""

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-direct/range {v24 .. v25}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v24

    .line 367
    :cond_1
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    .line 369
    .local v5, "contentWidth":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v7/internal/widget/ActionBarContextView;->mContentHeight:I

    move/from16 v24, v0

    if-lez v24, :cond_8

    move-object/from16 v0, p0

    iget v15, v0, Landroid/support/v7/internal/widget/ActionBarContextView;->mContentHeight:I

    .line 372
    .local v15, "maxHeight":I
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/internal/widget/ActionBarContextView;->getPaddingTop()I

    move-result v24

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/internal/widget/ActionBarContextView;->getPaddingBottom()I

    move-result v25

    add-int v22, v24, v25

    .line 373
    .local v22, "verticalPadding":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/internal/widget/ActionBarContextView;->getPaddingLeft()I

    move-result v24

    sub-int v24, v5, v24

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/internal/widget/ActionBarContextView;->getPaddingRight()I

    move-result v25

    sub-int v3, v24, v25

    .line 374
    .local v3, "availableWidth":I
    sub-int v11, v15, v22

    .line 375
    .local v11, "height":I
    const/high16 v24, -0x80000000

    move/from16 v0, v24

    invoke-static {v11, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 377
    .local v4, "childSpecHeight":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/internal/widget/ActionBarContextView;->mClose:Landroid/view/View;

    move-object/from16 v24, v0

    if-eqz v24, :cond_2

    .line 378
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/internal/widget/ActionBarContextView;->mClose:Landroid/view/View;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v3, v4, v2}, Landroid/support/v7/internal/widget/ActionBarContextView;->measureChildView(Landroid/view/View;III)I

    move-result v3

    .line 379
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/internal/widget/ActionBarContextView;->mClose:Landroid/view/View;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 380
    .local v14, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    iget v0, v14, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    move/from16 v24, v0

    iget v0, v14, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    move/from16 v25, v0

    add-int v24, v24, v25

    sub-int v3, v3, v24

    .line 383
    .end local v14    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/internal/widget/ActionBarContextView;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    move-object/from16 v24, v0

    if-eqz v24, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/internal/widget/ActionBarContextView;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/support/v7/widget/ActionMenuView;->getParent()Landroid/view/ViewParent;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    if-ne v0, v1, :cond_3

    .line 384
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/internal/widget/ActionBarContextView;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v3, v4, v2}, Landroid/support/v7/internal/widget/ActionBarContextView;->measureChildView(Landroid/view/View;III)I

    move-result v3

    .line 388
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/internal/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    move-object/from16 v24, v0

    if-eqz v24, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/internal/widget/ActionBarContextView;->mCustomView:Landroid/view/View;

    move-object/from16 v24, v0

    if-nez v24, :cond_5

    .line 389
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/support/v7/internal/widget/ActionBarContextView;->mTitleOptional:Z

    move/from16 v24, v0

    if-eqz v24, :cond_b

    .line 390
    const/16 v24, 0x0

    const/16 v25, 0x0

    invoke-static/range {v24 .. v25}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v20

    .line 391
    .local v20, "titleWidthSpec":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/internal/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move/from16 v1, v20

    invoke-virtual {v0, v1, v4}, Landroid/widget/LinearLayout;->measure(II)V

    .line 392
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/internal/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v19

    .line 393
    .local v19, "titleWidth":I
    move/from16 v0, v19

    if-gt v0, v3, :cond_9

    const/16 v18, 0x1

    .line 394
    .local v18, "titleFits":Z
    :goto_1
    if-eqz v18, :cond_4

    .line 395
    sub-int v3, v3, v19

    .line 397
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/internal/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    move-object/from16 v25, v0

    if-eqz v18, :cond_a

    const/16 v24, 0x0

    :goto_2
    move-object/from16 v0, v25

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 403
    .end local v18    # "titleFits":Z
    .end local v19    # "titleWidth":I
    .end local v20    # "titleWidthSpec":I
    :cond_5
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/internal/widget/ActionBarContextView;->mCustomView:Landroid/view/View;

    move-object/from16 v24, v0

    if-eqz v24, :cond_6

    .line 404
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/internal/widget/ActionBarContextView;->mCustomView:Landroid/view/View;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    .line 405
    .local v14, "lp":Landroid/view/ViewGroup$LayoutParams;
    iget v0, v14, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v24, v0

    const/16 v25, -0x2

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_c

    const/high16 v10, 0x40000000    # 2.0f

    .line 407
    .local v10, "customWidthMode":I
    :goto_4
    iget v0, v14, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v24, v0

    if-ltz v24, :cond_d

    iget v0, v14, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v24, v0

    move/from16 v0, v24

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 409
    .local v9, "customWidth":I
    :goto_5
    iget v0, v14, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v24, v0

    const/16 v25, -0x2

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_e

    const/high16 v8, 0x40000000    # 2.0f

    .line 411
    .local v8, "customHeightMode":I
    :goto_6
    iget v0, v14, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v24, v0

    if-ltz v24, :cond_f

    iget v0, v14, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v24, v0

    move/from16 v0, v24

    invoke-static {v0, v11}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 413
    .local v7, "customHeight":I
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/internal/widget/ActionBarContextView;->mCustomView:Landroid/view/View;

    move-object/from16 v24, v0

    invoke-static {v9, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v25

    invoke-static {v7, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v26

    invoke-virtual/range {v24 .. v26}, Landroid/view/View;->measure(II)V

    .line 417
    .end local v7    # "customHeight":I
    .end local v8    # "customHeightMode":I
    .end local v9    # "customWidth":I
    .end local v10    # "customWidthMode":I
    .end local v14    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_6
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v7/internal/widget/ActionBarContextView;->mContentHeight:I

    move/from16 v24, v0

    if-gtz v24, :cond_11

    .line 418
    const/16 v16, 0x0

    .line 419
    .local v16, "measuredHeight":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/internal/widget/ActionBarContextView;->getChildCount()I

    move-result v6

    .line 420
    .local v6, "count":I
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_8
    if-ge v13, v6, :cond_10

    .line 421
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/support/v7/internal/widget/ActionBarContextView;->getChildAt(I)Landroid/view/View;

    move-result-object v21

    .line 422
    .local v21, "v":Landroid/view/View;
    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getMeasuredHeight()I

    move-result v24

    add-int v17, v24, v22

    .line 423
    .local v17, "paddedViewHeight":I
    move/from16 v0, v17

    move/from16 v1, v16

    if-le v0, v1, :cond_7

    .line 424
    move/from16 v16, v17

    .line 420
    :cond_7
    add-int/lit8 v13, v13, 0x1

    goto :goto_8

    .line 369
    .end local v3    # "availableWidth":I
    .end local v4    # "childSpecHeight":I
    .end local v6    # "count":I
    .end local v11    # "height":I
    .end local v13    # "i":I
    .end local v15    # "maxHeight":I
    .end local v16    # "measuredHeight":I
    .end local v17    # "paddedViewHeight":I
    .end local v21    # "v":Landroid/view/View;
    .end local v22    # "verticalPadding":I
    :cond_8
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v15

    goto/16 :goto_0

    .line 393
    .restart local v3    # "availableWidth":I
    .restart local v4    # "childSpecHeight":I
    .restart local v11    # "height":I
    .restart local v15    # "maxHeight":I
    .restart local v19    # "titleWidth":I
    .restart local v20    # "titleWidthSpec":I
    .restart local v22    # "verticalPadding":I
    :cond_9
    const/16 v18, 0x0

    goto/16 :goto_1

    .line 397
    .restart local v18    # "titleFits":Z
    :cond_a
    const/16 v24, 0x8

    goto/16 :goto_2

    .line 399
    .end local v18    # "titleFits":Z
    .end local v19    # "titleWidth":I
    .end local v20    # "titleWidthSpec":I
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/internal/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v3, v4, v2}, Landroid/support/v7/internal/widget/ActionBarContextView;->measureChildView(Landroid/view/View;III)I

    move-result v3

    goto/16 :goto_3

    .line 405
    .restart local v14    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_c
    const/high16 v10, -0x80000000

    goto/16 :goto_4

    .restart local v10    # "customWidthMode":I
    :cond_d
    move v9, v3

    .line 407
    goto :goto_5

    .line 409
    .restart local v9    # "customWidth":I
    :cond_e
    const/high16 v8, -0x80000000

    goto :goto_6

    .restart local v8    # "customHeightMode":I
    :cond_f
    move v7, v11

    .line 411
    goto :goto_7

    .line 427
    .end local v8    # "customHeightMode":I
    .end local v9    # "customWidth":I
    .end local v10    # "customWidthMode":I
    .end local v14    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .restart local v6    # "count":I
    .restart local v13    # "i":I
    .restart local v16    # "measuredHeight":I
    :cond_10
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v5, v1}, Landroid/support/v7/internal/widget/ActionBarContextView;->setMeasuredDimension(II)V

    .line 431
    .end local v6    # "count":I
    .end local v13    # "i":I
    .end local v16    # "measuredHeight":I
    :goto_9
    return-void

    .line 429
    :cond_11
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v15}, Landroid/support/v7/internal/widget/ActionBarContextView;->setMeasuredDimension(II)V

    goto :goto_9
.end method

.method public setContentHeight(I)V
    .locals 0
    .param p1, "height"    # I

    .prologue
    .line 160
    iput p1, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mContentHeight:I

    .line 161
    return-void
.end method

.method public setCustomView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 164
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mCustomView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mCustomView:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/ActionBarContextView;->removeView(Landroid/view/View;)V

    .line 167
    :cond_0
    iput-object p1, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mCustomView:Landroid/view/View;

    .line 168
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    .line 169
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/ActionBarContextView;->removeView(Landroid/view/View;)V

    .line 170
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    .line 172
    :cond_1
    if-eqz p1, :cond_2

    .line 173
    invoke-virtual {p0, p1}, Landroid/support/v7/internal/widget/ActionBarContextView;->addView(Landroid/view/View;)V

    .line 175
    :cond_2
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarContextView;->requestLayout()V

    .line 176
    return-void
.end method

.method public setSplitToolbar(Z)V
    .locals 6
    .param p1, "split"    # Z

    .prologue
    const/4 v5, -0x1

    .line 128
    iget-boolean v2, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mSplitActionBar:Z

    if-eq v2, p1, :cond_2

    .line 129
    iget-object v2, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mActionMenuPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    if-eqz v2, :cond_1

    .line 131
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v0, v2, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 133
    .local v0, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    if-nez p1, :cond_3

    .line 134
    iget-object v2, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mActionMenuPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    invoke-virtual {v2, p0}, Landroid/support/v7/widget/ActionMenuPresenter;->getMenuView(Landroid/view/ViewGroup;)Landroid/support/v7/internal/view/menu/MenuView;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/ActionMenuView;

    iput-object v2, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    .line 135
    iget-object v2, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/ActionMenuView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 136
    iget-object v2, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    invoke-virtual {v2}, Landroid/support/v7/widget/ActionMenuView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 137
    .local v1, "oldParent":Landroid/view/ViewGroup;
    if-eqz v1, :cond_0

    iget-object v2, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 138
    :cond_0
    iget-object v2, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    invoke-virtual {p0, v2, v0}, Landroid/support/v7/internal/widget/ActionBarContextView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 155
    .end local v0    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    .end local v1    # "oldParent":Landroid/view/ViewGroup;
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroid/support/v7/internal/widget/AbsActionBarView;->setSplitToolbar(Z)V

    .line 157
    :cond_2
    return-void

    .line 139
    .restart local v0    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    :cond_3
    iget-object v2, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mSplitView:Landroid/view/ViewGroup;

    if-eqz v2, :cond_1

    .line 141
    iget-object v2, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mActionMenuPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarContextView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/support/v7/widget/ActionMenuPresenter;->setWidthLimit(IZ)V

    .line 144
    iget-object v2, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mActionMenuPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    const v3, 0x7fffffff

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/ActionMenuPresenter;->setItemLimit(I)V

    .line 146
    iput v5, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 147
    iget v2, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mContentHeight:I

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 148
    iget-object v2, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mActionMenuPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    invoke-virtual {v2, p0}, Landroid/support/v7/widget/ActionMenuPresenter;->getMenuView(Landroid/view/ViewGroup;)Landroid/support/v7/internal/view/menu/MenuView;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/ActionMenuView;

    iput-object v2, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    .line 149
    iget-object v2, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    iget-object v3, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/ActionMenuView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 150
    iget-object v2, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    invoke-virtual {v2}, Landroid/support/v7/widget/ActionMenuView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 151
    .restart local v1    # "oldParent":Landroid/view/ViewGroup;
    if-eqz v1, :cond_4

    iget-object v2, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 152
    :cond_4
    iget-object v2, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mSplitView:Landroid/view/ViewGroup;

    iget-object v3, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    invoke-virtual {v2, v3, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public bridge synthetic setSplitView(Landroid/view/ViewGroup;)V
    .locals 0
    .param p1, "x0"    # Landroid/view/ViewGroup;

    .prologue
    .line 52
    invoke-super {p0, p1}, Landroid/support/v7/internal/widget/AbsActionBarView;->setSplitView(Landroid/view/ViewGroup;)V

    return-void
.end method

.method public bridge synthetic setSplitWhenNarrow(Z)V
    .locals 0
    .param p1, "x0"    # Z

    .prologue
    .line 52
    invoke-super {p0, p1}, Landroid/support/v7/internal/widget/AbsActionBarView;->setSplitWhenNarrow(Z)V

    return-void
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "subtitle"    # Ljava/lang/CharSequence;

    .prologue
    .line 184
    iput-object p1, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mSubtitle:Ljava/lang/CharSequence;

    .line 185
    invoke-direct {p0}, Landroid/support/v7/internal/widget/ActionBarContextView;->initTitle()V

    .line 186
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 179
    iput-object p1, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mTitle:Ljava/lang/CharSequence;

    .line 180
    invoke-direct {p0}, Landroid/support/v7/internal/widget/ActionBarContextView;->initTitle()V

    .line 181
    return-void
.end method

.method public setTitleOptional(Z)V
    .locals 1
    .param p1, "titleOptional"    # Z

    .prologue
    .line 570
    iget-boolean v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mTitleOptional:Z

    if-eq p1, v0, :cond_0

    .line 571
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarContextView;->requestLayout()V

    .line 573
    :cond_0
    iput-boolean p1, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mTitleOptional:Z

    .line 574
    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .locals 1

    .prologue
    .line 551
    const/4 v0, 0x0

    return v0
.end method

.method public showOverflowMenu()Z
    .locals 1

    .prologue
    .line 319
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mActionMenuPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    if-eqz v0, :cond_0

    .line 320
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->mActionMenuPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionMenuPresenter;->showOverflowMenu()Z

    move-result v0

    .line 322
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
