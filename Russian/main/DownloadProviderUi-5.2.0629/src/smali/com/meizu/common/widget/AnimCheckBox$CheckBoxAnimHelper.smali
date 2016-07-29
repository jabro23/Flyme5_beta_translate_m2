.class Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;
.super Ljava/lang/Object;
.source "AnimCheckBox.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/common/widget/AnimCheckBox;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CheckBoxAnimHelper"
.end annotation


# instance fields
.field private DEBUG:Z

.field private mAnimator1:Landroid/animation/ObjectAnimator;

.field private mAnimator2:Landroid/animation/ObjectAnimator;

.field private mAnimator3:Landroid/animation/ValueAnimator;

.field private mAnimatorSet:Landroid/animation/AnimatorSet;

.field private mHasInit:Z

.field private mInterpolator1:Landroid/animation/TimeInterpolator;

.field private mInterpolator2:Landroid/animation/TimeInterpolator;

.field private mInterpolator3:Landroid/animation/TimeInterpolator;

.field private mInterpolator4:Landroid/animation/TimeInterpolator;

.field private mIsAnimation:Z

.field private mTarget:Lcom/meizu/common/widget/AnimCheckBox;

.field private targetActivatedState:Z

.field private targetChecekedState:Z


# direct methods
.method public constructor <init>(Lcom/meizu/common/widget/AnimCheckBox;)V
    .locals 2
    .param p1, "checkBox"    # Lcom/meizu/common/widget/AnimCheckBox;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 135
    iput-boolean v0, p0, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;->DEBUG:Z

    .line 142
    iput-boolean v1, p0, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;->mIsAnimation:Z

    .line 143
    iput-boolean v0, p0, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;->mHasInit:Z

    .line 149
    iput-object p1, p0, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;->mTarget:Lcom/meizu/common/widget/AnimCheckBox;

    .line 150
    invoke-direct {p0}, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;->init()V

    .line 151
    iput-boolean v1, p0, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;->mHasInit:Z

    .line 152
    return-void
.end method

.method static synthetic access$000(Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;)Z
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;

    .prologue
    .line 134
    iget-boolean v0, p0, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;->targetChecekedState:Z

    return v0
.end method

.method static synthetic access$100(Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;)Lcom/meizu/common/widget/AnimCheckBox;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;

    .prologue
    .line 134
    iget-object v0, p0, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;->mTarget:Lcom/meizu/common/widget/AnimCheckBox;

    return-object v0
.end method

.method static synthetic access$200(Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;)Z
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;

    .prologue
    .line 134
    iget-boolean v0, p0, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;->targetActivatedState:Z

    return v0
.end method

.method static synthetic access$300(Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;)Landroid/animation/ObjectAnimator;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;

    .prologue
    .line 134
    iget-object v0, p0, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;->mAnimator2:Landroid/animation/ObjectAnimator;

    return-object v0
.end method

.method private init()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v8, 0x2

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    .line 155
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 156
    .local v2, "sdk":I
    const/16 v3, 0x15

    if-lt v2, v3, :cond_0

    .line 157
    new-instance v3, Landroid/view/animation/PathInterpolator;

    const v4, 0x3ea8f5c3    # 0.33f

    invoke-direct {v3, v4, v6, v7, v7}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v3, p0, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;->mInterpolator1:Landroid/animation/TimeInterpolator;

    .line 158
    new-instance v3, Landroid/view/animation/PathInterpolator;

    const v4, 0x3c23d70a    # 0.01f

    invoke-direct {v3, v6, v6, v4, v7}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v3, p0, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;->mInterpolator2:Landroid/animation/TimeInterpolator;

    .line 159
    new-instance v3, Landroid/view/animation/PathInterpolator;

    const v4, 0x3ecccccd    # 0.4f

    const v5, 0x3c23d70a    # 0.01f

    invoke-direct {v3, v4, v6, v5, v7}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v3, p0, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;->mInterpolator3:Landroid/animation/TimeInterpolator;

    .line 160
    new-instance v3, Landroid/view/animation/PathInterpolator;

    const v4, 0x3dcccccd    # 0.1f

    invoke-direct {v3, v6, v6, v4, v7}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v3, p0, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;->mInterpolator4:Landroid/animation/TimeInterpolator;

    .line 165
    :goto_0
    const-string v3, "scaleY"

    new-array v4, v8, [F

    fill-array-data v4, :array_0

    invoke-static {v3, v4}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 166
    .local v0, "scaleYPVH":Landroid/animation/PropertyValuesHolder;
    iget-object v3, p0, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;->mTarget:Lcom/meizu/common/widget/AnimCheckBox;

    new-array v4, v10, [Landroid/animation/PropertyValuesHolder;

    aput-object v0, v4, v9

    invoke-static {v3, v4}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v3

    iput-object v3, p0, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;->mAnimator1:Landroid/animation/ObjectAnimator;

    .line 167
    iget-object v3, p0, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;->mAnimator1:Landroid/animation/ObjectAnimator;

    iget-object v4, p0, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;->mInterpolator1:Landroid/animation/TimeInterpolator;

    invoke-virtual {v3, v4}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 168
    iget-object v3, p0, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;->mAnimator1:Landroid/animation/ObjectAnimator;

    new-instance v4, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper$1;

    invoke-direct {v4, p0}, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper$1;-><init>(Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;)V

    invoke-virtual {v3, v4}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 184
    const-string v3, "scaleY"

    new-array v4, v8, [F

    fill-array-data v4, :array_1

    invoke-static {v3, v4}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    .line 185
    .local v1, "scaleYPVH2":Landroid/animation/PropertyValuesHolder;
    iget-object v3, p0, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;->mTarget:Lcom/meizu/common/widget/AnimCheckBox;

    new-array v4, v10, [Landroid/animation/PropertyValuesHolder;

    aput-object v1, v4, v9

    invoke-static {v3, v4}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v3

    iput-object v3, p0, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;->mAnimator2:Landroid/animation/ObjectAnimator;

    .line 186
    iget-object v3, p0, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;->mAnimator2:Landroid/animation/ObjectAnimator;

    iget-object v4, p0, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;->mInterpolator2:Landroid/animation/TimeInterpolator;

    invoke-virtual {v3, v4}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 188
    new-array v3, v8, [F

    fill-array-data v3, :array_2

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v3

    iput-object v3, p0, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;->mAnimator3:Landroid/animation/ValueAnimator;

    .line 189
    iget-object v3, p0, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;->mAnimator3:Landroid/animation/ValueAnimator;

    iget-object v4, p0, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;->mInterpolator3:Landroid/animation/TimeInterpolator;

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 190
    iget-object v3, p0, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;->mAnimator3:Landroid/animation/ValueAnimator;

    new-instance v4, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper$2;

    invoke-direct {v4, p0}, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper$2;-><init>(Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;)V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 203
    iget-object v3, p0, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;->mAnimator3:Landroid/animation/ValueAnimator;

    new-instance v4, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper$3;

    invoke-direct {v4, p0}, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper$3;-><init>(Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;)V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 213
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v3, p0, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;->mAnimatorSet:Landroid/animation/AnimatorSet;

    .line 214
    iget-object v3, p0, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;->mAnimatorSet:Landroid/animation/AnimatorSet;

    new-array v4, v8, [Landroid/animation/Animator;

    iget-object v5, p0, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;->mAnimator1:Landroid/animation/ObjectAnimator;

    aput-object v5, v4, v9

    iget-object v5, p0, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;->mAnimator3:Landroid/animation/ValueAnimator;

    aput-object v5, v4, v10

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 215
    return-void

    .line 162
    .end local v0    # "scaleYPVH":Landroid/animation/PropertyValuesHolder;
    .end local v1    # "scaleYPVH2":Landroid/animation/PropertyValuesHolder;
    :cond_0
    new-instance v3, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v3, p0, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;->mInterpolator4:Landroid/animation/TimeInterpolator;

    iput-object v3, p0, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;->mInterpolator3:Landroid/animation/TimeInterpolator;

    iput-object v3, p0, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;->mInterpolator2:Landroid/animation/TimeInterpolator;

    iput-object v3, p0, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;->mInterpolator1:Landroid/animation/TimeInterpolator;

    goto/16 :goto_0

    .line 165
    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    .line 184
    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 188
    :array_2
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method public setActivated(Z)V
    .locals 7
    .param p1, "activated"    # Z

    .prologue
    const/4 v6, 0x2

    .line 259
    iput-boolean p1, p0, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;->targetActivatedState:Z

    .line 260
    iget-boolean v3, p0, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;->mHasInit:Z

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;->mIsAnimation:Z

    if-nez v3, :cond_2

    .line 261
    :cond_0
    iget-object v3, p0, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;->mTarget:Lcom/meizu/common/widget/AnimCheckBox;

    invoke-virtual {v3, p1}, Lcom/meizu/common/widget/AnimCheckBox;->superSetActivate(Z)V

    .line 295
    :cond_1
    :goto_0
    return-void

    .line 264
    :cond_2
    iget-boolean v3, p0, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;->DEBUG:Z

    if-eqz v3, :cond_3

    .line 265
    const-string v3, "xx"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setActivated activated = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;->mTarget:Lcom/meizu/common/widget/AnimCheckBox;

    invoke-virtual {v5}, Lcom/meizu/common/widget/AnimCheckBox;->isActivated()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;->targetActivatedState:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " targetChecekedState = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;->targetChecekedState:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;->mTarget:Lcom/meizu/common/widget/AnimCheckBox;

    invoke-virtual {v5}, Lcom/meizu/common/widget/AnimCheckBox;->isChecked()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v5}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;->mAnimator2:Landroid/animation/ObjectAnimator;

    invoke-virtual {v5}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    :cond_3
    iget-object v3, p0, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;->mTarget:Lcom/meizu/common/widget/AnimCheckBox;

    invoke-virtual {v3}, Lcom/meizu/common/widget/AnimCheckBox;->isActivated()Z

    move-result v3

    if-eq p1, v3, :cond_1

    .line 271
    if-nez p1, :cond_4

    iget-boolean v3, p0, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;->targetChecekedState:Z

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;->mTarget:Lcom/meizu/common/widget/AnimCheckBox;

    invoke-virtual {v3}, Lcom/meizu/common/widget/AnimCheckBox;->isChecked()Z

    move-result v3

    if-nez v3, :cond_1

    .line 274
    :cond_4
    iget-object v3, p0, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;->mTarget:Lcom/meizu/common/widget/AnimCheckBox;

    invoke-virtual {v3}, Lcom/meizu/common/widget/AnimCheckBox;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_5

    iget-boolean v3, p0, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;->targetChecekedState:Z

    if-eqz v3, :cond_5

    .line 275
    iget-object v3, p0, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;->mTarget:Lcom/meizu/common/widget/AnimCheckBox;

    invoke-virtual {v3, p1}, Lcom/meizu/common/widget/AnimCheckBox;->superSetActivate(Z)V

    .line 276
    iget-object v3, p0, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;->mAnimator2:Landroid/animation/ObjectAnimator;

    invoke-virtual {v3}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v3

    if-nez v3, :cond_1

    .line 277
    sget-object v3, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v4, v6, [F

    fill-array-data v4, :array_0

    invoke-static {v3, v4}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    .line 279
    .local v1, "scaleX":Landroid/animation/PropertyValuesHolder;
    sget-object v3, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v4, v6, [F

    fill-array-data v4, :array_1

    invoke-static {v3, v4}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    .line 281
    .local v2, "scaleY":Landroid/animation/PropertyValuesHolder;
    iget-object v3, p0, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;->mTarget:Lcom/meizu/common/widget/AnimCheckBox;

    new-array v4, v6, [Landroid/animation/PropertyValuesHolder;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    const/4 v5, 0x1

    aput-object v2, v4, v5

    invoke-static {v3, v4}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 283
    .local v0, "animator":Landroid/animation/ObjectAnimator;
    const-wide/16 v4, 0x28

    invoke-virtual {v0, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v3

    iget-object v4, p0, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;->mInterpolator4:Landroid/animation/TimeInterpolator;

    invoke-virtual {v3, v4}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 284
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    goto/16 :goto_0

    .line 287
    .end local v0    # "animator":Landroid/animation/ObjectAnimator;
    .end local v1    # "scaleX":Landroid/animation/PropertyValuesHolder;
    .end local v2    # "scaleY":Landroid/animation/PropertyValuesHolder;
    :cond_5
    if-nez p1, :cond_1

    .line 288
    iget-object v3, p0, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->end()V

    .line 289
    iget-object v3, p0, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;->mAnimator2:Landroid/animation/ObjectAnimator;

    invoke-virtual {v3}, Landroid/animation/ObjectAnimator;->end()V

    .line 290
    iget-object v3, p0, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;->mTarget:Lcom/meizu/common/widget/AnimCheckBox;

    invoke-virtual {v3, p1}, Lcom/meizu/common/widget/AnimCheckBox;->superSetActivate(Z)V

    goto/16 :goto_0

    .line 277
    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 279
    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public setChecked(Z)V
    .locals 6
    .param p1, "checked"    # Z

    .prologue
    const-wide/16 v4, 0x1dc

    .line 218
    iget-boolean v0, p0, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;->mHasInit:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;->mIsAnimation:Z

    if-nez v0, :cond_2

    .line 219
    :cond_0
    iget-object v0, p0, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;->mTarget:Lcom/meizu/common/widget/AnimCheckBox;

    invoke-virtual {v0, p1}, Lcom/meizu/common/widget/AnimCheckBox;->superSetCheck(Z)V

    .line 220
    iput-boolean p1, p0, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;->targetChecekedState:Z

    .line 256
    :cond_1
    :goto_0
    return-void

    .line 223
    :cond_2
    iget-boolean v0, p0, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;->DEBUG:Z

    if-eqz v0, :cond_3

    .line 224
    const-string v0, "xx"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setChecked checked = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " targetChecekedState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;->targetChecekedState:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;->mAnimator2:Landroid/animation/ObjectAnimator;

    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    :cond_3
    iget-boolean v0, p0, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;->targetChecekedState:Z

    if-eq p1, v0, :cond_1

    .line 229
    iput-boolean p1, p0, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;->targetChecekedState:Z

    .line 230
    if-eqz p1, :cond_5

    .line 231
    iget-object v0, p0, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;->mAnimator2:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_4

    .line 232
    iget-object v0, p0, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;->mAnimator1:Landroid/animation/ObjectAnimator;

    const-wide/16 v2, 0x96

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 233
    iget-object v0, p0, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;->mAnimator2:Landroid/animation/ObjectAnimator;

    const-wide/16 v2, 0xe6

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 234
    iget-object v0, p0, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;->mAnimator3:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x17c

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 235
    iget-object v0, p0, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_0

    .line 238
    :cond_4
    iget-object v0, p0, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    .line 239
    iget-object v0, p0, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;->mAnimator2:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->end()V

    .line 240
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;->targetChecekedState:Z

    .line 241
    invoke-virtual {p0, p1}, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;->setChecked(Z)V

    goto/16 :goto_0

    .line 244
    :cond_5
    iget-object v0, p0, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;->mAnimator2:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_6

    .line 245
    iget-object v0, p0, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;->mAnimator1:Landroid/animation/ObjectAnimator;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 246
    iget-object v0, p0, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;->mAnimator2:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 247
    iget-object v0, p0, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;->mAnimator3:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 248
    iget-object v0, p0, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_0

    .line 250
    :cond_6
    iget-object v0, p0, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;->mTarget:Lcom/meizu/common/widget/AnimCheckBox;

    invoke-virtual {v0, p1}, Lcom/meizu/common/widget/AnimCheckBox;->superSetCheck(Z)V

    .line 251
    iget-object v0, p0, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    .line 252
    iget-object v0, p0, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;->mAnimator2:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->end()V

    goto/16 :goto_0
.end method

.method public setIsAnimation(Z)V
    .locals 0
    .param p1, "isAnimation"    # Z

    .prologue
    .line 298
    iput-boolean p1, p0, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;->mIsAnimation:Z

    .line 299
    return-void
.end method
