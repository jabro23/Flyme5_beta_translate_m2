.class Lflyme/support/v7/drawable/RippleDrawableComp$3;
.super Ljava/lang/Object;
.source "RippleDrawableComp.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lflyme/support/v7/drawable/RippleDrawableComp;->ripple()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lflyme/support/v7/drawable/RippleDrawableComp;


# direct methods
.method constructor <init>(Lflyme/support/v7/drawable/RippleDrawableComp;)V
    .locals 0

    .prologue
    .line 315
    iput-object p1, p0, Lflyme/support/v7/drawable/RippleDrawableComp$3;->this$0:Lflyme/support/v7/drawable/RippleDrawableComp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3
    .param p1, "aValueAnimator"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 319
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 320
    .local v0, "radius":I
    iget-object v1, p0, Lflyme/support/v7/drawable/RippleDrawableComp$3;->this$0:Lflyme/support/v7/drawable/RippleDrawableComp;

    # setter for: Lflyme/support/v7/drawable/RippleDrawableComp;->mRadius:I
    invoke-static {v1, v0}, Lflyme/support/v7/drawable/RippleDrawableComp;->access$102(Lflyme/support/v7/drawable/RippleDrawableComp;I)I

    .line 321
    iget-object v1, p0, Lflyme/support/v7/drawable/RippleDrawableComp$3;->this$0:Lflyme/support/v7/drawable/RippleDrawableComp;

    # getter for: Lflyme/support/v7/drawable/RippleDrawableComp;->mMaxRadius:I
    invoke-static {v1}, Lflyme/support/v7/drawable/RippleDrawableComp;->access$200(Lflyme/support/v7/drawable/RippleDrawableComp;)I

    move-result v1

    if-gt v1, v0, :cond_0

    .line 322
    iget-object v1, p0, Lflyme/support/v7/drawable/RippleDrawableComp$3;->this$0:Lflyme/support/v7/drawable/RippleDrawableComp;

    const/4 v2, 0x0

    # setter for: Lflyme/support/v7/drawable/RippleDrawableComp;->mIsRipple:Z
    invoke-static {v1, v2}, Lflyme/support/v7/drawable/RippleDrawableComp;->access$302(Lflyme/support/v7/drawable/RippleDrawableComp;Z)Z

    .line 323
    iget-object v1, p0, Lflyme/support/v7/drawable/RippleDrawableComp$3;->this$0:Lflyme/support/v7/drawable/RippleDrawableComp;

    # getter for: Lflyme/support/v7/drawable/RippleDrawableComp;->mIsDown:Z
    invoke-static {v1}, Lflyme/support/v7/drawable/RippleDrawableComp;->access$400(Lflyme/support/v7/drawable/RippleDrawableComp;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lflyme/support/v7/drawable/RippleDrawableComp$3;->this$0:Lflyme/support/v7/drawable/RippleDrawableComp;

    # getter for: Lflyme/support/v7/drawable/RippleDrawableComp;->mIsRippleFade:Z
    invoke-static {v1}, Lflyme/support/v7/drawable/RippleDrawableComp;->access$500(Lflyme/support/v7/drawable/RippleDrawableComp;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 324
    iget-object v1, p0, Lflyme/support/v7/drawable/RippleDrawableComp$3;->this$0:Lflyme/support/v7/drawable/RippleDrawableComp;

    invoke-virtual {v1}, Lflyme/support/v7/drawable/RippleDrawableComp;->rippleFade()V

    .line 337
    :cond_0
    iget-object v1, p0, Lflyme/support/v7/drawable/RippleDrawableComp$3;->this$0:Lflyme/support/v7/drawable/RippleDrawableComp;

    invoke-virtual {v1}, Lflyme/support/v7/drawable/RippleDrawableComp;->invalidateSelf()V

    .line 338
    return-void
.end method
