.class public Lcom/meizu/common/widget/CollectingView;
.super Landroid/view/View;
.source "CollectingView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/common/widget/CollectingView$2;,
        Lcom/meizu/common/widget/CollectingView$OnCollectCallBack;,
        Lcom/meizu/common/widget/CollectingView$AnimInterpolator;,
        Lcom/meizu/common/widget/CollectingView$Stage;
    }
.end annotation


# instance fields
.field private mAnimator:Landroid/animation/ObjectAnimator;

.field private mCancelDrawable:Landroid/graphics/drawable/Drawable;

.field public mCollectCallBack:Lcom/meizu/common/widget/CollectingView$OnCollectCallBack;

.field private mCollectDrawable:Landroid/graphics/drawable/Drawable;

.field public mCurrentStage:Lcom/meizu/common/widget/CollectingView$Stage;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 83
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 84
    invoke-direct {p0}, Lcom/meizu/common/widget/CollectingView;->init()V

    .line 85
    return-void
.end method

.method private cancelAnim()V
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/meizu/common/widget/CollectingView;->mAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/meizu/common/widget/CollectingView;->mAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->end()V

    .line 130
    iget-object v0, p0, Lcom/meizu/common/widget/CollectingView;->mAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->removeAllListeners()V

    .line 132
    :cond_0
    iget-object v0, p0, Lcom/meizu/common/widget/CollectingView;->mCancelDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/CollectingView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 133
    iget-object v0, p0, Lcom/meizu/common/widget/CollectingView;->mCollectCallBack:Lcom/meizu/common/widget/CollectingView$OnCollectCallBack;

    if-eqz v0, :cond_1

    .line 134
    iget-object v0, p0, Lcom/meizu/common/widget/CollectingView;->mCollectCallBack:Lcom/meizu/common/widget/CollectingView$OnCollectCallBack;

    invoke-interface {v0}, Lcom/meizu/common/widget/CollectingView$OnCollectCallBack;->cancleStartAnim()V

    .line 135
    iget-object v0, p0, Lcom/meizu/common/widget/CollectingView;->mCollectCallBack:Lcom/meizu/common/widget/CollectingView$OnCollectCallBack;

    invoke-interface {v0}, Lcom/meizu/common/widget/CollectingView$OnCollectCallBack;->cancleEndAnim()V

    .line 137
    :cond_1
    return-void
.end method

.method private getInterpolator()Landroid/view/animation/Interpolator;
    .locals 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 141
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 142
    .local v0, "version":I
    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 143
    new-instance v1, Landroid/view/animation/PathInterpolator;

    const v2, 0x3dcccccd    # 0.1f

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v1, v4, v4, v2, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 145
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Lcom/meizu/common/widget/CollectingView$AnimInterpolator;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/meizu/common/widget/CollectingView$AnimInterpolator;-><init>(Lcom/meizu/common/widget/CollectingView;Lcom/meizu/common/widget/CollectingView$1;)V

    goto :goto_0
.end method

.method private init()V
    .locals 2

    .prologue
    .line 88
    sget-object v0, Lcom/meizu/common/widget/CollectingView$Stage;->CANCEL:Lcom/meizu/common/widget/CollectingView$Stage;

    iput-object v0, p0, Lcom/meizu/common/widget/CollectingView;->mCurrentStage:Lcom/meizu/common/widget/CollectingView$Stage;

    .line 89
    invoke-virtual {p0}, Lcom/meizu/common/widget/CollectingView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020117

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/common/widget/CollectingView;->mCancelDrawable:Landroid/graphics/drawable/Drawable;

    .line 90
    invoke-virtual {p0}, Lcom/meizu/common/widget/CollectingView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020116

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/common/widget/CollectingView;->mCollectDrawable:Landroid/graphics/drawable/Drawable;

    .line 91
    iget-object v0, p0, Lcom/meizu/common/widget/CollectingView;->mCurrentStage:Lcom/meizu/common/widget/CollectingView$Stage;

    sget-object v1, Lcom/meizu/common/widget/CollectingView$Stage;->COLLECTED:Lcom/meizu/common/widget/CollectingView$Stage;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/meizu/common/widget/CollectingView;->mCollectDrawable:Landroid/graphics/drawable/Drawable;

    :goto_0
    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/CollectingView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 92
    return-void

    .line 91
    :cond_0
    iget-object v0, p0, Lcom/meizu/common/widget/CollectingView;->mCancelDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method private startAnim()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    .line 95
    iget-object v3, p0, Lcom/meizu/common/widget/CollectingView;->mAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v3, :cond_0

    .line 96
    iget-object v3, p0, Lcom/meizu/common/widget/CollectingView;->mAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v3}, Landroid/animation/ObjectAnimator;->end()V

    .line 97
    iget-object v3, p0, Lcom/meizu/common/widget/CollectingView;->mAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v3}, Landroid/animation/ObjectAnimator;->removeAllListeners()V

    .line 99
    :cond_0
    iget-object v3, p0, Lcom/meizu/common/widget/CollectingView;->mCollectDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v3}, Lcom/meizu/common/widget/CollectingView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 100
    const-string v3, "rotationY"

    new-array v4, v5, [F

    fill-array-data v4, :array_0

    invoke-static {v3, v4}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 101
    .local v0, "pvhX":Landroid/animation/PropertyValuesHolder;
    const-string v3, "scaleX"

    new-array v4, v5, [F

    fill-array-data v4, :array_1

    invoke-static {v3, v4}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    .line 102
    .local v1, "pvhY":Landroid/animation/PropertyValuesHolder;
    const-string v3, "scaleY"

    new-array v4, v5, [F

    fill-array-data v4, :array_2

    invoke-static {v3, v4}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    .line 103
    .local v2, "pvhZ":Landroid/animation/PropertyValuesHolder;
    const/high16 v3, 0x3f000000    # 0.5f

    iget-object v4, p0, Lcom/meizu/common/widget/CollectingView;->mCollectDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v3, v4

    invoke-virtual {p0, v3}, Lcom/meizu/common/widget/CollectingView;->setPivotX(F)V

    .line 104
    iget-object v3, p0, Lcom/meizu/common/widget/CollectingView;->mCollectDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p0, v3}, Lcom/meizu/common/widget/CollectingView;->setPivotY(F)V

    .line 105
    const/4 v3, 0x3

    new-array v3, v3, [Landroid/animation/PropertyValuesHolder;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v4, 0x1

    aput-object v1, v3, v4

    aput-object v2, v3, v5

    invoke-static {p0, v3}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v3

    iput-object v3, p0, Lcom/meizu/common/widget/CollectingView;->mAnimator:Landroid/animation/ObjectAnimator;

    .line 106
    iget-object v3, p0, Lcom/meizu/common/widget/CollectingView;->mAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v4, 0x280

    invoke-virtual {v3, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 107
    iget-object v3, p0, Lcom/meizu/common/widget/CollectingView;->mAnimator:Landroid/animation/ObjectAnimator;

    invoke-direct {p0}, Lcom/meizu/common/widget/CollectingView;->getInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 108
    iget-object v3, p0, Lcom/meizu/common/widget/CollectingView;->mAnimator:Landroid/animation/ObjectAnimator;

    new-instance v4, Lcom/meizu/common/widget/CollectingView$1;

    invoke-direct {v4, p0}, Lcom/meizu/common/widget/CollectingView$1;-><init>(Lcom/meizu/common/widget/CollectingView;)V

    invoke-virtual {v3, v4}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 124
    iget-object v3, p0, Lcom/meizu/common/widget/CollectingView;->mAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v3}, Landroid/animation/ObjectAnimator;->start()V

    .line 125
    return-void

    .line 100
    nop

    :array_0
    .array-data 4
        -0x3c790000    # -270.0f
        0x0
    .end array-data

    .line 101
    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 102
    :array_2
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method public getCollectCallBack()Lcom/meizu/common/widget/CollectingView$OnCollectCallBack;
    .locals 1

    .prologue
    .line 265
    iget-object v0, p0, Lcom/meizu/common/widget/CollectingView;->mCollectCallBack:Lcom/meizu/common/widget/CollectingView$OnCollectCallBack;

    return-object v0
.end method

.method public getState()Lcom/meizu/common/widget/CollectingView$Stage;
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Lcom/meizu/common/widget/CollectingView;->mCurrentStage:Lcom/meizu/common/widget/CollectingView$Stage;

    return-object v0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 201
    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 202
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const/16 v1, 0x80

    if-ne v0, v1, :cond_0

    .line 203
    iget-object v0, p0, Lcom/meizu/common/widget/CollectingView;->mCurrentStage:Lcom/meizu/common/widget/CollectingView$Stage;

    sget-object v1, Lcom/meizu/common/widget/CollectingView$Stage;->COLLECTED:Lcom/meizu/common/widget/CollectingView$Stage;

    if-ne v0, v1, :cond_1

    .line 204
    invoke-virtual {p0}, Lcom/meizu/common/widget/CollectingView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0800e6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/CollectingView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 209
    :cond_0
    :goto_0
    return-void

    .line 206
    :cond_1
    invoke-virtual {p0}, Lcom/meizu/common/widget/CollectingView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0800e7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/CollectingView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 213
    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 214
    const-class v0, Lcom/meizu/common/widget/CollectingView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 215
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 159
    iget-object v2, p0, Lcom/meizu/common/widget/CollectingView;->mCancelDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    .line 160
    .local v1, "width":I
    iget-object v2, p0, Lcom/meizu/common/widget/CollectingView;->mCancelDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    .line 161
    .local v0, "height":I
    invoke-virtual {p0, v1, v0}, Lcom/meizu/common/widget/CollectingView;->setMeasuredDimension(II)V

    .line 162
    return-void
.end method

.method public setBackgroundResId(II)V
    .locals 2
    .param p1, "collectDrawableId"    # I
    .param p2, "cancleDrawableId"    # I

    .prologue
    .line 170
    invoke-virtual {p0}, Lcom/meizu/common/widget/CollectingView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/common/widget/CollectingView;->mCancelDrawable:Landroid/graphics/drawable/Drawable;

    .line 171
    invoke-virtual {p0}, Lcom/meizu/common/widget/CollectingView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/common/widget/CollectingView;->mCollectDrawable:Landroid/graphics/drawable/Drawable;

    .line 172
    iget-object v0, p0, Lcom/meizu/common/widget/CollectingView;->mCurrentStage:Lcom/meizu/common/widget/CollectingView$Stage;

    sget-object v1, Lcom/meizu/common/widget/CollectingView$Stage;->COLLECTED:Lcom/meizu/common/widget/CollectingView$Stage;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/meizu/common/widget/CollectingView;->mCollectDrawable:Landroid/graphics/drawable/Drawable;

    :goto_0
    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/CollectingView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 173
    return-void

    .line 172
    :cond_0
    iget-object v0, p0, Lcom/meizu/common/widget/CollectingView;->mCancelDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method public setCollectCallBack(Lcom/meizu/common/widget/CollectingView$OnCollectCallBack;)V
    .locals 0
    .param p1, "callBack"    # Lcom/meizu/common/widget/CollectingView$OnCollectCallBack;

    .prologue
    .line 257
    iput-object p1, p0, Lcom/meizu/common/widget/CollectingView;->mCollectCallBack:Lcom/meizu/common/widget/CollectingView$OnCollectCallBack;

    .line 258
    return-void
.end method

.method public setState(Lcom/meizu/common/widget/CollectingView$Stage;)V
    .locals 2
    .param p1, "stage"    # Lcom/meizu/common/widget/CollectingView$Stage;

    .prologue
    .line 180
    iput-object p1, p0, Lcom/meizu/common/widget/CollectingView;->mCurrentStage:Lcom/meizu/common/widget/CollectingView$Stage;

    .line 181
    sget-object v0, Lcom/meizu/common/widget/CollectingView$2;->$SwitchMap$com$meizu$common$widget$CollectingView$Stage:[I

    iget-object v1, p0, Lcom/meizu/common/widget/CollectingView;->mCurrentStage:Lcom/meizu/common/widget/CollectingView$Stage;

    invoke-virtual {v1}, Lcom/meizu/common/widget/CollectingView$Stage;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 192
    :goto_0
    return-void

    .line 183
    :pswitch_0
    invoke-direct {p0}, Lcom/meizu/common/widget/CollectingView;->cancelAnim()V

    .line 184
    sget-object v0, Lcom/meizu/common/widget/CollectingView$Stage;->CANCEL:Lcom/meizu/common/widget/CollectingView$Stage;

    iput-object v0, p0, Lcom/meizu/common/widget/CollectingView;->mCurrentStage:Lcom/meizu/common/widget/CollectingView$Stage;

    goto :goto_0

    .line 187
    :pswitch_1
    invoke-direct {p0}, Lcom/meizu/common/widget/CollectingView;->startAnim()V

    .line 188
    sget-object v0, Lcom/meizu/common/widget/CollectingView$Stage;->COLLECTED:Lcom/meizu/common/widget/CollectingView$Stage;

    iput-object v0, p0, Lcom/meizu/common/widget/CollectingView;->mCurrentStage:Lcom/meizu/common/widget/CollectingView$Stage;

    goto :goto_0

    .line 181
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
