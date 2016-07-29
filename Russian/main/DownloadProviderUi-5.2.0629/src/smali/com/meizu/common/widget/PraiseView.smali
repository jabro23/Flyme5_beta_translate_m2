.class public Lcom/meizu/common/widget/PraiseView;
.super Landroid/view/View;
.source "PraiseView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/common/widget/PraiseView$4;,
        Lcom/meizu/common/widget/PraiseView$onPraiseCallBack;,
        Lcom/meizu/common/widget/PraiseView$AnimInterpolator;,
        Lcom/meizu/common/widget/PraiseView$Stage;
    }
.end annotation


# instance fields
.field private mAnimator:Landroid/animation/ObjectAnimator;

.field private mCanDrawable:Landroid/graphics/drawable/Drawable;

.field public mCurrentStage:Lcom/meizu/common/widget/PraiseView$Stage;

.field public mPraCallBack:Lcom/meizu/common/widget/PraiseView$onPraiseCallBack;

.field private mPraDrawable:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 84
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 85
    invoke-direct {p0}, Lcom/meizu/common/widget/PraiseView;->init()V

    .line 86
    return-void
.end method

.method static synthetic access$000(Lcom/meizu/common/widget/PraiseView;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/widget/PraiseView;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/meizu/common/widget/PraiseView;->mPraDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method private cancelAnim()V
    .locals 4

    .prologue
    .line 160
    iget-object v0, p0, Lcom/meizu/common/widget/PraiseView;->mAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    .line 161
    iget-object v0, p0, Lcom/meizu/common/widget/PraiseView;->mAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->end()V

    .line 162
    iget-object v0, p0, Lcom/meizu/common/widget/PraiseView;->mAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->removeAllListeners()V

    .line 164
    :cond_0
    iget-object v0, p0, Lcom/meizu/common/widget/PraiseView;->mCanDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/PraiseView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 165
    const-string v0, "alpha"

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/common/widget/PraiseView;->mAnimator:Landroid/animation/ObjectAnimator;

    .line 166
    iget-object v0, p0, Lcom/meizu/common/widget/PraiseView;->mAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v2, 0xa6

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 167
    iget-object v0, p0, Lcom/meizu/common/widget/PraiseView;->mAnimator:Landroid/animation/ObjectAnimator;

    const v1, 0x3ea8f5c3    # 0.33f

    const v2, 0x3f2b851f    # 0.67f

    invoke-direct {p0, v1, v2}, Lcom/meizu/common/widget/PraiseView;->getInterpolator(FF)Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 168
    iget-object v0, p0, Lcom/meizu/common/widget/PraiseView;->mAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 169
    iget-object v0, p0, Lcom/meizu/common/widget/PraiseView;->mAnimator:Landroid/animation/ObjectAnimator;

    new-instance v1, Lcom/meizu/common/widget/PraiseView$3;

    invoke-direct {v1, p0}, Lcom/meizu/common/widget/PraiseView$3;-><init>(Lcom/meizu/common/widget/PraiseView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 177
    return-void

    .line 165
    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private getInterpolator(FF)Landroid/view/animation/Interpolator;
    .locals 5
    .param p1, "controlX1"    # F
    .param p2, "controlX2"    # F
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    .line 181
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 182
    .local v0, "version":I
    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 183
    new-instance v1, Landroid/view/animation/PathInterpolator;

    const/4 v2, 0x0

    sub-float v3, v4, p2

    invoke-direct {v1, p1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 185
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Lcom/meizu/common/widget/PraiseView$AnimInterpolator;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/meizu/common/widget/PraiseView$AnimInterpolator;-><init>(Lcom/meizu/common/widget/PraiseView;Lcom/meizu/common/widget/PraiseView$1;)V

    goto :goto_0
.end method

.method private init()V
    .locals 2

    .prologue
    .line 89
    sget-object v0, Lcom/meizu/common/widget/PraiseView$Stage;->CANCEL:Lcom/meizu/common/widget/PraiseView$Stage;

    iput-object v0, p0, Lcom/meizu/common/widget/PraiseView;->mCurrentStage:Lcom/meizu/common/widget/PraiseView$Stage;

    .line 90
    invoke-virtual {p0}, Lcom/meizu/common/widget/PraiseView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0201d7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/common/widget/PraiseView;->mCanDrawable:Landroid/graphics/drawable/Drawable;

    .line 91
    invoke-virtual {p0}, Lcom/meizu/common/widget/PraiseView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0201d6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/common/widget/PraiseView;->mPraDrawable:Landroid/graphics/drawable/Drawable;

    .line 92
    iget-object v0, p0, Lcom/meizu/common/widget/PraiseView;->mCurrentStage:Lcom/meizu/common/widget/PraiseView$Stage;

    sget-object v1, Lcom/meizu/common/widget/PraiseView$Stage;->PRAISED:Lcom/meizu/common/widget/PraiseView$Stage;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/meizu/common/widget/PraiseView;->mPraDrawable:Landroid/graphics/drawable/Drawable;

    :goto_0
    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/PraiseView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 93
    return-void

    .line 92
    :cond_0
    iget-object v0, p0, Lcom/meizu/common/widget/PraiseView;->mCanDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method private startAnim()V
    .locals 14

    .prologue
    .line 103
    iget-object v11, p0, Lcom/meizu/common/widget/PraiseView;->mAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v11, :cond_0

    .line 104
    iget-object v11, p0, Lcom/meizu/common/widget/PraiseView;->mAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v11}, Landroid/animation/ObjectAnimator;->end()V

    .line 105
    iget-object v11, p0, Lcom/meizu/common/widget/PraiseView;->mAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v11}, Landroid/animation/ObjectAnimator;->removeAllListeners()V

    .line 107
    :cond_0
    const-string v11, "alpha"

    const/4 v12, 0x2

    new-array v12, v12, [F

    fill-array-data v12, :array_0

    invoke-static {p0, v11, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v11

    iput-object v11, p0, Lcom/meizu/common/widget/PraiseView;->mAnimator:Landroid/animation/ObjectAnimator;

    .line 108
    iget-object v11, p0, Lcom/meizu/common/widget/PraiseView;->mAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v12, 0xa6

    invoke-virtual {v11, v12, v13}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 109
    iget-object v11, p0, Lcom/meizu/common/widget/PraiseView;->mAnimator:Landroid/animation/ObjectAnimator;

    const v12, 0x3ea8f5c3    # 0.33f

    const v13, 0x3f2b851f    # 0.67f

    invoke-direct {p0, v12, v13}, Lcom/meizu/common/widget/PraiseView;->getInterpolator(FF)Landroid/view/animation/Interpolator;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 110
    iget-object v11, p0, Lcom/meizu/common/widget/PraiseView;->mAnimator:Landroid/animation/ObjectAnimator;

    new-instance v12, Lcom/meizu/common/widget/PraiseView$1;

    invoke-direct {v12, p0}, Lcom/meizu/common/widget/PraiseView$1;-><init>(Lcom/meizu/common/widget/PraiseView;)V

    invoke-virtual {v11, v12}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 121
    const-string v11, "alpha"

    const/4 v12, 0x2

    new-array v12, v12, [F

    fill-array-data v12, :array_1

    invoke-static {v11, v12}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v4

    .line 122
    .local v4, "pvhX":Landroid/animation/PropertyValuesHolder;
    const-string v11, "scaleX"

    const/4 v12, 0x2

    new-array v12, v12, [F

    fill-array-data v12, :array_2

    invoke-static {v11, v12}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v5

    .line 123
    .local v5, "pvhY":Landroid/animation/PropertyValuesHolder;
    const-string v11, "scaleY"

    const/4 v12, 0x2

    new-array v12, v12, [F

    fill-array-data v12, :array_3

    invoke-static {v11, v12}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v6

    .line 124
    .local v6, "pvhZ":Landroid/animation/PropertyValuesHolder;
    const v11, 0x3f05e354    # 0.523f

    iget-object v12, p0, Lcom/meizu/common/widget/PraiseView;->mPraDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v12}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v12

    int-to-float v12, v12

    mul-float/2addr v11, v12

    invoke-virtual {p0, v11}, Lcom/meizu/common/widget/PraiseView;->setPivotX(F)V

    .line 125
    const v11, 0x3f2624dd    # 0.649f

    iget-object v12, p0, Lcom/meizu/common/widget/PraiseView;->mPraDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v12}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v12

    int-to-float v12, v12

    mul-float/2addr v11, v12

    invoke-virtual {p0, v11}, Lcom/meizu/common/widget/PraiseView;->setPivotY(F)V

    .line 126
    const/4 v11, 0x3

    new-array v11, v11, [Landroid/animation/PropertyValuesHolder;

    const/4 v12, 0x0

    aput-object v4, v11, v12

    const/4 v12, 0x1

    aput-object v5, v11, v12

    const/4 v12, 0x2

    aput-object v6, v11, v12

    invoke-static {p0, v11}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 127
    .local v1, "animatorScaleBig":Landroid/animation/ObjectAnimator;
    const-wide/16 v12, 0xa6

    invoke-virtual {v1, v12, v13}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 128
    const v11, 0x3ea8f5c3    # 0.33f

    const v12, 0x3ee66666    # 0.45f

    invoke-direct {p0, v11, v12}, Lcom/meizu/common/widget/PraiseView;->getInterpolator(FF)Landroid/view/animation/Interpolator;

    move-result-object v11

    invoke-virtual {v1, v11}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 130
    const-string v11, "scaleX"

    const/4 v12, 0x2

    new-array v12, v12, [F

    fill-array-data v12, :array_4

    invoke-static {v11, v12}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v9

    .line 131
    .local v9, "scaleXAnim":Landroid/animation/PropertyValuesHolder;
    const-string v11, "scaleY"

    const/4 v12, 0x2

    new-array v12, v12, [F

    fill-array-data v12, :array_5

    invoke-static {v11, v12}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v10

    .line 132
    .local v10, "scaleYAnim":Landroid/animation/PropertyValuesHolder;
    const/4 v11, 0x2

    new-array v11, v11, [Landroid/animation/PropertyValuesHolder;

    const/4 v12, 0x0

    aput-object v9, v11, v12

    const/4 v12, 0x1

    aput-object v10, v11, v12

    invoke-static {p0, v11}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 133
    .local v2, "animatorScaleSmall":Landroid/animation/ObjectAnimator;
    const-wide/16 v12, 0xfa

    invoke-virtual {v2, v12, v13}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 134
    const v11, 0x3ec28f5c    # 0.38f

    const v12, 0x3f2147ae    # 0.63f

    invoke-direct {p0, v11, v12}, Lcom/meizu/common/widget/PraiseView;->getInterpolator(FF)Landroid/view/animation/Interpolator;

    move-result-object v11

    invoke-virtual {v2, v11}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 136
    const-string v11, "scaleX"

    const/4 v12, 0x2

    new-array v12, v12, [F

    fill-array-data v12, :array_6

    invoke-static {v11, v12}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v7

    .line 137
    .local v7, "recoverX":Landroid/animation/PropertyValuesHolder;
    const-string v11, "scaleY"

    const/4 v12, 0x2

    new-array v12, v12, [F

    fill-array-data v12, :array_7

    invoke-static {v11, v12}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v8

    .line 138
    .local v8, "recoverY":Landroid/animation/PropertyValuesHolder;
    const/4 v11, 0x2

    new-array v11, v11, [Landroid/animation/PropertyValuesHolder;

    const/4 v12, 0x0

    aput-object v7, v11, v12

    const/4 v12, 0x1

    aput-object v8, v11, v12

    invoke-static {p0, v11}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 139
    .local v0, "animatorRecoverA":Landroid/animation/ObjectAnimator;
    const-wide/16 v12, 0xa6

    invoke-virtual {v0, v12, v13}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 140
    const v11, 0x3ea8f5c3    # 0.33f

    const v12, 0x3f2b851f    # 0.67f

    invoke-direct {p0, v11, v12}, Lcom/meizu/common/widget/PraiseView;->getInterpolator(FF)Landroid/view/animation/Interpolator;

    move-result-object v11

    invoke-virtual {v0, v11}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 142
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    .line 143
    .local v3, "animatorSet":Landroid/animation/AnimatorSet;
    iget-object v11, p0, Lcom/meizu/common/widget/PraiseView;->mAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v3, v11}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v11

    invoke-virtual {v11, v1}, Landroid/animation/AnimatorSet$Builder;->before(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 144
    invoke-virtual {v3, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v11

    invoke-virtual {v11, v2}, Landroid/animation/AnimatorSet$Builder;->before(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 145
    invoke-virtual {v3, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v11

    invoke-virtual {v11, v0}, Landroid/animation/AnimatorSet$Builder;->before(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 146
    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->start()V

    .line 147
    new-instance v11, Lcom/meizu/common/widget/PraiseView$2;

    invoke-direct {v11, p0}, Lcom/meizu/common/widget/PraiseView$2;-><init>(Lcom/meizu/common/widget/PraiseView;)V

    invoke-virtual {v3, v11}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 156
    return-void

    .line 107
    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    .line 121
    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 122
    :array_2
    .array-data 4
        0x3f800000    # 1.0f
        0x3fa66666    # 1.3f
    .end array-data

    .line 123
    :array_3
    .array-data 4
        0x3f800000    # 1.0f
        0x3fa66666    # 1.3f
    .end array-data

    .line 130
    :array_4
    .array-data 4
        0x3fa66666    # 1.3f
        0x3f733333    # 0.95f
    .end array-data

    .line 131
    :array_5
    .array-data 4
        0x3fa66666    # 1.3f
        0x3f733333    # 0.95f
    .end array-data

    .line 136
    :array_6
    .array-data 4
        0x3f733333    # 0.95f
        0x3f800000    # 1.0f
    .end array-data

    .line 137
    :array_7
    .array-data 4
        0x3f733333    # 0.95f
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method public getState()Lcom/meizu/common/widget/PraiseView$Stage;
    .locals 1

    .prologue
    .line 258
    iget-object v0, p0, Lcom/meizu/common/widget/PraiseView;->mCurrentStage:Lcom/meizu/common/widget/PraiseView$Stage;

    return-object v0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 226
    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 227
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const/16 v1, 0x80

    if-ne v0, v1, :cond_0

    .line 228
    iget-object v0, p0, Lcom/meizu/common/widget/PraiseView;->mCurrentStage:Lcom/meizu/common/widget/PraiseView$Stage;

    sget-object v1, Lcom/meizu/common/widget/PraiseView$Stage;->PRAISED:Lcom/meizu/common/widget/PraiseView$Stage;

    if-ne v0, v1, :cond_1

    .line 229
    invoke-virtual {p0}, Lcom/meizu/common/widget/PraiseView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0800e8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/PraiseView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 234
    :cond_0
    :goto_0
    return-void

    .line 231
    :cond_1
    invoke-virtual {p0}, Lcom/meizu/common/widget/PraiseView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0800e9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/PraiseView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 238
    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 239
    const-class v0, Lcom/meizu/common/widget/PraiseView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 240
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 97
    iget-object v2, p0, Lcom/meizu/common/widget/PraiseView;->mCanDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    .line 98
    .local v1, "width":I
    iget-object v2, p0, Lcom/meizu/common/widget/PraiseView;->mCanDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    .line 99
    .local v0, "height":I
    invoke-virtual {p0, v1, v0}, Lcom/meizu/common/widget/PraiseView;->setMeasuredDimension(II)V

    .line 100
    return-void
.end method

.method public setBackgroundResId(II)V
    .locals 2
    .param p1, "PraDrawableId"    # I
    .param p2, "CanDrawableId"    # I

    .prologue
    .line 248
    invoke-virtual {p0}, Lcom/meizu/common/widget/PraiseView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/common/widget/PraiseView;->mPraDrawable:Landroid/graphics/drawable/Drawable;

    .line 249
    invoke-virtual {p0}, Lcom/meizu/common/widget/PraiseView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/common/widget/PraiseView;->mCanDrawable:Landroid/graphics/drawable/Drawable;

    .line 250
    iget-object v0, p0, Lcom/meizu/common/widget/PraiseView;->mCurrentStage:Lcom/meizu/common/widget/PraiseView$Stage;

    sget-object v1, Lcom/meizu/common/widget/PraiseView$Stage;->PRAISED:Lcom/meizu/common/widget/PraiseView$Stage;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/meizu/common/widget/PraiseView;->mPraDrawable:Landroid/graphics/drawable/Drawable;

    :goto_0
    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/PraiseView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 251
    return-void

    .line 250
    :cond_0
    iget-object v0, p0, Lcom/meizu/common/widget/PraiseView;->mCanDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method public setPraiseCallBack(Lcom/meizu/common/widget/PraiseView$onPraiseCallBack;)V
    .locals 0
    .param p1, "callBack"    # Lcom/meizu/common/widget/PraiseView$onPraiseCallBack;

    .prologue
    .line 287
    iput-object p1, p0, Lcom/meizu/common/widget/PraiseView;->mPraCallBack:Lcom/meizu/common/widget/PraiseView$onPraiseCallBack;

    .line 288
    return-void
.end method

.method public setState(Lcom/meizu/common/widget/PraiseView$Stage;)V
    .locals 2
    .param p1, "stage"    # Lcom/meizu/common/widget/PraiseView$Stage;

    .prologue
    .line 203
    iput-object p1, p0, Lcom/meizu/common/widget/PraiseView;->mCurrentStage:Lcom/meizu/common/widget/PraiseView$Stage;

    .line 204
    sget-object v0, Lcom/meizu/common/widget/PraiseView$4;->$SwitchMap$com$meizu$common$widget$PraiseView$Stage:[I

    iget-object v1, p0, Lcom/meizu/common/widget/PraiseView;->mCurrentStage:Lcom/meizu/common/widget/PraiseView$Stage;

    invoke-virtual {v1}, Lcom/meizu/common/widget/PraiseView$Stage;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 217
    :goto_0
    return-void

    .line 206
    :pswitch_0
    iget-object v0, p0, Lcom/meizu/common/widget/PraiseView;->mPraDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/PraiseView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 207
    invoke-direct {p0}, Lcom/meizu/common/widget/PraiseView;->cancelAnim()V

    .line 208
    sget-object v0, Lcom/meizu/common/widget/PraiseView$Stage;->CANCEL:Lcom/meizu/common/widget/PraiseView$Stage;

    iput-object v0, p0, Lcom/meizu/common/widget/PraiseView;->mCurrentStage:Lcom/meizu/common/widget/PraiseView$Stage;

    goto :goto_0

    .line 211
    :pswitch_1
    iget-object v0, p0, Lcom/meizu/common/widget/PraiseView;->mCanDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/PraiseView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 212
    invoke-direct {p0}, Lcom/meizu/common/widget/PraiseView;->startAnim()V

    .line 213
    sget-object v0, Lcom/meizu/common/widget/PraiseView$Stage;->PRAISED:Lcom/meizu/common/widget/PraiseView$Stage;

    iput-object v0, p0, Lcom/meizu/common/widget/PraiseView;->mCurrentStage:Lcom/meizu/common/widget/PraiseView$Stage;

    goto :goto_0

    .line 204
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
