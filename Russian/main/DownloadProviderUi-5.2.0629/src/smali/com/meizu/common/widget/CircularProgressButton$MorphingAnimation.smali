.class Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation;
.super Ljava/lang/Object;
.source "CircularProgressButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/common/widget/CircularProgressButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MorphingAnimation"
.end annotation


# static fields
.field public static final DURATION_INSTANT:I = 0x1

.field public static final DURATION_NORMAL:I = 0x12c


# instance fields
.field private mAnimSet:Landroid/animation/AnimatorSet;

.field private mDrawable:Lcom/meizu/common/drawble/StrokeGradientDrawable;

.field private mDuration:I

.field private mFromColor:I

.field private mFromCornerRadius:F

.field private mFromStrokeColor:I

.field private mFromWidth:I

.field private mListener:Lcom/meizu/common/widget/CircularProgressButton$OnAnimationEndListener;

.field private mPadding:F

.field private mToColor:I

.field private mToCornerRadius:F

.field private mToStrokeColor:I

.field private mToWidth:I

.field private mView:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/meizu/common/widget/CircularProgressButton;


# direct methods
.method public constructor <init>(Lcom/meizu/common/widget/CircularProgressButton;Landroid/widget/TextView;Lcom/meizu/common/drawble/StrokeGradientDrawable;)V
    .locals 0
    .param p2, "viewGroup"    # Landroid/widget/TextView;
    .param p3, "drawable"    # Lcom/meizu/common/drawble/StrokeGradientDrawable;

    .prologue
    .line 1293
    iput-object p1, p0, Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation;->this$0:Lcom/meizu/common/widget/CircularProgressButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1294
    iput-object p2, p0, Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation;->mView:Landroid/widget/TextView;

    .line 1295
    iput-object p3, p0, Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation;->mDrawable:Lcom/meizu/common/drawble/StrokeGradientDrawable;

    .line 1296
    return-void
.end method

.method static synthetic access$1600(Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation;)I
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation;

    .prologue
    .line 1261
    iget v0, p0, Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation;->mFromWidth:I

    return v0
.end method

.method static synthetic access$1700(Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation;)I
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation;

    .prologue
    .line 1261
    iget v0, p0, Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation;->mToWidth:I

    return v0
.end method

.method static synthetic access$1800(Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation;)F
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation;

    .prologue
    .line 1261
    iget v0, p0, Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation;->mPadding:F

    return v0
.end method

.method static synthetic access$1900(Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation;

    .prologue
    .line 1261
    iget-object v0, p0, Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation;->mView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation;)Lcom/meizu/common/widget/CircularProgressButton$OnAnimationEndListener;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation;

    .prologue
    .line 1261
    iget-object v0, p0, Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation;->mListener:Lcom/meizu/common/widget/CircularProgressButton$OnAnimationEndListener;

    return-object v0
.end method


# virtual methods
.method public cancelAllAnim()V
    .locals 1

    .prologue
    .line 1508
    iget-object v0, p0, Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation;->mAnimSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    .line 1509
    iget-object v0, p0, Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation;->mAnimSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->removeAllListeners()V

    .line 1510
    return-void
.end method

.method public colorMorphingStart()V
    .locals 10

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1463
    iget-object v3, p0, Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation;->mDrawable:Lcom/meizu/common/drawble/StrokeGradientDrawable;

    invoke-virtual {v3}, Lcom/meizu/common/drawble/StrokeGradientDrawable;->getGradientDrawable()Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    .line 1464
    .local v1, "gradientDrawable":Landroid/graphics/drawable/GradientDrawable;
    const-string v3, "color"

    new-array v4, v9, [I

    iget v5, p0, Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation;->mFromColor:I

    aput v5, v4, v7

    iget v5, p0, Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation;->mToColor:I

    aput v5, v4, v8

    invoke-static {v1, v3, v4}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 1466
    .local v0, "bgColorAnimation":Landroid/animation/ObjectAnimator;
    new-instance v3, Landroid/animation/ArgbEvaluator;

    invoke-direct {v3}, Landroid/animation/ArgbEvaluator;-><init>()V

    invoke-virtual {v0, v3}, Landroid/animation/ObjectAnimator;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    .line 1468
    iget-object v3, p0, Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation;->mDrawable:Lcom/meizu/common/drawble/StrokeGradientDrawable;

    const-string v4, "strokeColor"

    new-array v5, v9, [I

    iget v6, p0, Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation;->mFromStrokeColor:I

    aput v6, v5, v7

    iget v6, p0, Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation;->mToStrokeColor:I

    aput v6, v5, v8

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 1471
    .local v2, "strokeColorAnimation":Landroid/animation/ObjectAnimator;
    new-instance v3, Landroid/animation/ArgbEvaluator;

    invoke-direct {v3}, Landroid/animation/ArgbEvaluator;-><init>()V

    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    .line 1473
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v3, p0, Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation;->mAnimSet:Landroid/animation/AnimatorSet;

    .line 1474
    iget-object v3, p0, Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation;->mAnimSet:Landroid/animation/AnimatorSet;

    iget-object v4, p0, Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation;->this$0:Lcom/meizu/common/widget/CircularProgressButton;

    # invokes: Lcom/meizu/common/widget/CircularProgressButton;->getInterpolator()Landroid/view/animation/Interpolator;
    invoke-static {v4}, Lcom/meizu/common/widget/CircularProgressButton;->access$2000(Lcom/meizu/common/widget/CircularProgressButton;)Landroid/view/animation/Interpolator;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1475
    iget-object v3, p0, Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation;->mAnimSet:Landroid/animation/AnimatorSet;

    iget v4, p0, Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation;->mDuration:I

    int-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1476
    iget-object v3, p0, Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation;->mAnimSet:Landroid/animation/AnimatorSet;

    new-array v4, v9, [Landroid/animation/Animator;

    aput-object v0, v4, v7

    aput-object v2, v4, v8

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1477
    iget-object v3, p0, Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation;->mAnimSet:Landroid/animation/AnimatorSet;

    new-instance v4, Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation$3;

    invoke-direct {v4, p0}, Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation$3;-><init>(Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation;)V

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1500
    iget-object v3, p0, Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation;->mAnimSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->start()V

    .line 1502
    return-void
.end method

.method public setDuration(I)V
    .locals 0
    .param p1, "duration"    # I

    .prologue
    .line 1303
    iput p1, p0, Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation;->mDuration:I

    .line 1304
    return-void
.end method

.method public setFromColor(I)V
    .locals 0
    .param p1, "fromColor"    # I

    .prologue
    .line 1335
    iput p1, p0, Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation;->mFromColor:I

    .line 1336
    return-void
.end method

.method public setFromCornerRadius(F)V
    .locals 0
    .param p1, "fromCornerRadius"    # F

    .prologue
    .line 1367
    iput p1, p0, Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation;->mFromCornerRadius:F

    .line 1368
    return-void
.end method

.method public setFromStrokeColor(I)V
    .locals 0
    .param p1, "fromStrokeColor"    # I

    .prologue
    .line 1351
    iput p1, p0, Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation;->mFromStrokeColor:I

    .line 1352
    return-void
.end method

.method public setFromWidth(I)V
    .locals 0
    .param p1, "fromWidth"    # I

    .prologue
    .line 1319
    iput p1, p0, Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation;->mFromWidth:I

    .line 1320
    return-void
.end method

.method public setListener(Lcom/meizu/common/widget/CircularProgressButton$OnAnimationEndListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/meizu/common/widget/CircularProgressButton$OnAnimationEndListener;

    .prologue
    .line 1311
    iput-object p1, p0, Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation;->mListener:Lcom/meizu/common/widget/CircularProgressButton$OnAnimationEndListener;

    .line 1312
    return-void
.end method

.method public setPadding(F)V
    .locals 0
    .param p1, "padding"    # F

    .prologue
    .line 1383
    iput p1, p0, Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation;->mPadding:F

    .line 1384
    return-void
.end method

.method public setToColor(I)V
    .locals 0
    .param p1, "toColor"    # I

    .prologue
    .line 1343
    iput p1, p0, Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation;->mToColor:I

    .line 1344
    return-void
.end method

.method public setToCornerRadius(F)V
    .locals 0
    .param p1, "toCornerRadius"    # F

    .prologue
    .line 1375
    iput p1, p0, Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation;->mToCornerRadius:F

    .line 1376
    return-void
.end method

.method public setToStrokeColor(I)V
    .locals 0
    .param p1, "toStrokeColor"    # I

    .prologue
    .line 1359
    iput p1, p0, Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation;->mToStrokeColor:I

    .line 1360
    return-void
.end method

.method public setToWidth(I)V
    .locals 0
    .param p1, "toWidth"    # I

    .prologue
    .line 1327
    iput p1, p0, Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation;->mToWidth:I

    .line 1328
    return-void
.end method

.method public start()V
    .locals 12

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 1390
    new-array v5, v11, [I

    iget v6, p0, Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation;->mFromWidth:I

    aput v6, v5, v9

    iget v6, p0, Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation;->mToWidth:I

    aput v6, v5, v10

    invoke-static {v5}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v4

    .line 1391
    .local v4, "widthAnimation":Landroid/animation/ValueAnimator;
    iget-object v5, p0, Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation;->mDrawable:Lcom/meizu/common/drawble/StrokeGradientDrawable;

    invoke-virtual {v5}, Lcom/meizu/common/drawble/StrokeGradientDrawable;->getGradientDrawable()Landroid/graphics/drawable/GradientDrawable;

    move-result-object v2

    .line 1392
    .local v2, "gradientDrawable":Landroid/graphics/drawable/GradientDrawable;
    new-instance v5, Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation$1;

    invoke-direct {v5, p0, v2}, Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation$1;-><init>(Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation;Landroid/graphics/drawable/GradientDrawable;)V

    invoke-virtual {v4, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1417
    const-string v5, "color"

    new-array v6, v11, [I

    iget v7, p0, Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation;->mFromColor:I

    aput v7, v6, v9

    iget v7, p0, Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation;->mToColor:I

    aput v7, v6, v10

    invoke-static {v2, v5, v6}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 1419
    .local v0, "bgColorAnimation":Landroid/animation/ObjectAnimator;
    new-instance v5, Landroid/animation/ArgbEvaluator;

    invoke-direct {v5}, Landroid/animation/ArgbEvaluator;-><init>()V

    invoke-virtual {v0, v5}, Landroid/animation/ObjectAnimator;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    .line 1421
    iget-object v5, p0, Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation;->mDrawable:Lcom/meizu/common/drawble/StrokeGradientDrawable;

    const-string v6, "strokeColor"

    new-array v7, v11, [I

    iget v8, p0, Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation;->mFromStrokeColor:I

    aput v8, v7, v9

    iget v8, p0, Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation;->mToStrokeColor:I

    aput v8, v7, v10

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 1424
    .local v3, "strokeColorAnimation":Landroid/animation/ObjectAnimator;
    new-instance v5, Landroid/animation/ArgbEvaluator;

    invoke-direct {v5}, Landroid/animation/ArgbEvaluator;-><init>()V

    invoke-virtual {v3, v5}, Landroid/animation/ObjectAnimator;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    .line 1426
    const-string v5, "cornerRadius"

    new-array v6, v11, [F

    iget v7, p0, Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation;->mFromCornerRadius:F

    aput v7, v6, v9

    iget v7, p0, Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation;->mToCornerRadius:F

    aput v7, v6, v10

    invoke-static {v2, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 1430
    .local v1, "cornerAnimation":Landroid/animation/ObjectAnimator;
    new-instance v5, Landroid/animation/AnimatorSet;

    invoke-direct {v5}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v5, p0, Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation;->mAnimSet:Landroid/animation/AnimatorSet;

    .line 1431
    iget-object v5, p0, Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation;->mAnimSet:Landroid/animation/AnimatorSet;

    iget-object v6, p0, Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation;->this$0:Lcom/meizu/common/widget/CircularProgressButton;

    # invokes: Lcom/meizu/common/widget/CircularProgressButton;->getInterpolator()Landroid/view/animation/Interpolator;
    invoke-static {v6}, Lcom/meizu/common/widget/CircularProgressButton;->access$2000(Lcom/meizu/common/widget/CircularProgressButton;)Landroid/view/animation/Interpolator;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1432
    iget-object v5, p0, Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation;->mAnimSet:Landroid/animation/AnimatorSet;

    iget v6, p0, Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation;->mDuration:I

    int-to-long v6, v6

    invoke-virtual {v5, v6, v7}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1433
    iget-object v5, p0, Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation;->mAnimSet:Landroid/animation/AnimatorSet;

    const/4 v6, 0x4

    new-array v6, v6, [Landroid/animation/Animator;

    aput-object v4, v6, v9

    aput-object v0, v6, v10

    aput-object v3, v6, v11

    const/4 v7, 0x3

    aput-object v1, v6, v7

    invoke-virtual {v5, v6}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1435
    iget-object v5, p0, Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation;->mAnimSet:Landroid/animation/AnimatorSet;

    new-instance v6, Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation$2;

    invoke-direct {v6, p0}, Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation$2;-><init>(Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation;)V

    invoke-virtual {v5, v6}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1458
    iget-object v5, p0, Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation;->mAnimSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v5}, Landroid/animation/AnimatorSet;->start()V

    .line 1459
    return-void
.end method
