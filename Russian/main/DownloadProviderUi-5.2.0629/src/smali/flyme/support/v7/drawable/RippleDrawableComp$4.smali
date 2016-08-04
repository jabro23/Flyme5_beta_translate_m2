.class Lflyme/support/v7/drawable/RippleDrawableComp$4;
.super Ljava/lang/Object;
.source "RippleDrawableComp.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lflyme/support/v7/drawable/RippleDrawableComp;->rippleFade()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lflyme/support/v7/drawable/RippleDrawableComp;

.field final synthetic val$x1:F


# direct methods
.method constructor <init>(Lflyme/support/v7/drawable/RippleDrawableComp;F)V
    .locals 0

    .prologue
    .line 358
    iput-object p1, p0, Lflyme/support/v7/drawable/RippleDrawableComp$4;->this$0:Lflyme/support/v7/drawable/RippleDrawableComp;

    iput p2, p0, Lflyme/support/v7/drawable/RippleDrawableComp$4;->val$x1:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 6
    .param p1, "aValueAnimator"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 362
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 364
    .local v2, "radius":I
    iget-object v3, p0, Lflyme/support/v7/drawable/RippleDrawableComp$4;->this$0:Lflyme/support/v7/drawable/RippleDrawableComp;

    # getter for: Lflyme/support/v7/drawable/RippleDrawableComp;->mIsShrink:Z
    invoke-static {v3}, Lflyme/support/v7/drawable/RippleDrawableComp;->access$600(Lflyme/support/v7/drawable/RippleDrawableComp;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 365
    iget-object v3, p0, Lflyme/support/v7/drawable/RippleDrawableComp$4;->this$0:Lflyme/support/v7/drawable/RippleDrawableComp;

    # setter for: Lflyme/support/v7/drawable/RippleDrawableComp;->mRadius:I
    invoke-static {v3, v2}, Lflyme/support/v7/drawable/RippleDrawableComp;->access$102(Lflyme/support/v7/drawable/RippleDrawableComp;I)I

    .line 367
    :cond_0
    iget-object v3, p0, Lflyme/support/v7/drawable/RippleDrawableComp$4;->this$0:Lflyme/support/v7/drawable/RippleDrawableComp;

    # getter for: Lflyme/support/v7/drawable/RippleDrawableComp;->mStartRadius:I
    invoke-static {v3}, Lflyme/support/v7/drawable/RippleDrawableComp;->access$700(Lflyme/support/v7/drawable/RippleDrawableComp;)I

    move-result v3

    if-lt v3, v2, :cond_1

    .line 368
    iget-object v3, p0, Lflyme/support/v7/drawable/RippleDrawableComp$4;->this$0:Lflyme/support/v7/drawable/RippleDrawableComp;

    const/4 v4, 0x0

    # setter for: Lflyme/support/v7/drawable/RippleDrawableComp;->mIsRipple:Z
    invoke-static {v3, v4}, Lflyme/support/v7/drawable/RippleDrawableComp;->access$302(Lflyme/support/v7/drawable/RippleDrawableComp;Z)Z

    .line 374
    :cond_1
    iget-object v3, p0, Lflyme/support/v7/drawable/RippleDrawableComp$4;->this$0:Lflyme/support/v7/drawable/RippleDrawableComp;

    # getter for: Lflyme/support/v7/drawable/RippleDrawableComp;->mIsUseFadeOut:Z
    invoke-static {v3}, Lflyme/support/v7/drawable/RippleDrawableComp;->access$800(Lflyme/support/v7/drawable/RippleDrawableComp;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 375
    int-to-float v3, v2

    iget-object v4, p0, Lflyme/support/v7/drawable/RippleDrawableComp$4;->this$0:Lflyme/support/v7/drawable/RippleDrawableComp;

    # getter for: Lflyme/support/v7/drawable/RippleDrawableComp;->mMaxRadius:I
    invoke-static {v4}, Lflyme/support/v7/drawable/RippleDrawableComp;->access$200(Lflyme/support/v7/drawable/RippleDrawableComp;)I

    move-result v4

    int-to-float v4, v4

    div-float v1, v3, v4

    .line 376
    .local v1, "percent":F
    iget v3, p0, Lflyme/support/v7/drawable/RippleDrawableComp$4;->val$x1:F

    sub-float v3, v1, v3

    const/high16 v4, 0x3f800000    # 1.0f

    iget v5, p0, Lflyme/support/v7/drawable/RippleDrawableComp$4;->val$x1:F

    sub-float/2addr v4, v5

    div-float v1, v3, v4

    .line 377
    iget-object v3, p0, Lflyme/support/v7/drawable/RippleDrawableComp$4;->this$0:Lflyme/support/v7/drawable/RippleDrawableComp;

    # getter for: Lflyme/support/v7/drawable/RippleDrawableComp;->mAlpha:I
    invoke-static {v3}, Lflyme/support/v7/drawable/RippleDrawableComp;->access$900(Lflyme/support/v7/drawable/RippleDrawableComp;)I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v1

    float-to-int v0, v3

    .line 378
    .local v0, "alpha":I
    iget-object v3, p0, Lflyme/support/v7/drawable/RippleDrawableComp$4;->this$0:Lflyme/support/v7/drawable/RippleDrawableComp;

    # getter for: Lflyme/support/v7/drawable/RippleDrawableComp;->mPaint:Landroid/graphics/Paint;
    invoke-static {v3}, Lflyme/support/v7/drawable/RippleDrawableComp;->access$1000(Lflyme/support/v7/drawable/RippleDrawableComp;)Landroid/graphics/Paint;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 379
    iget-object v3, p0, Lflyme/support/v7/drawable/RippleDrawableComp$4;->this$0:Lflyme/support/v7/drawable/RippleDrawableComp;

    # getter for: Lflyme/support/v7/drawable/RippleDrawableComp;->mPaintBg:Landroid/graphics/Paint;
    invoke-static {v3}, Lflyme/support/v7/drawable/RippleDrawableComp;->access$1100(Lflyme/support/v7/drawable/RippleDrawableComp;)Landroid/graphics/Paint;

    move-result-object v3

    div-int/lit8 v4, v0, 0x2

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 382
    .end local v0    # "alpha":I
    .end local v1    # "percent":F
    :cond_2
    iget-object v3, p0, Lflyme/support/v7/drawable/RippleDrawableComp$4;->this$0:Lflyme/support/v7/drawable/RippleDrawableComp;

    invoke-virtual {v3}, Lflyme/support/v7/drawable/RippleDrawableComp;->invalidateSelf()V

    .line 383
    return-void
.end method
