.class Lcom/meizu/common/app/SlideNotice$SlideViewController$AnimationExecutor;
.super Ljava/lang/Object;
.source "SlideNotice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/common/app/SlideNotice$SlideViewController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AnimationExecutor"
.end annotation


# instance fields
.field private anim:Landroid/animation/ValueAnimator;

.field private animatorListener:Lcom/meizu/common/app/SlideNotice$SlideViewController$SlidingAnimatorListener;

.field final synthetic this$1:Lcom/meizu/common/app/SlideNotice$SlideViewController;


# direct methods
.method public constructor <init>(Lcom/meizu/common/app/SlideNotice$SlideViewController;)V
    .locals 2

    .prologue
    .line 875
    iput-object p1, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController$AnimationExecutor;->this$1:Lcom/meizu/common/app/SlideNotice$SlideViewController;

    .line 876
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 877
    new-instance v0, Lcom/meizu/common/app/SlideNotice$SlideViewController$SlidingAnimatorListener;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/meizu/common/app/SlideNotice$SlideViewController$SlidingAnimatorListener;-><init>(Lcom/meizu/common/app/SlideNotice$SlideViewController;Lcom/meizu/common/app/SlideNotice$1;)V

    iput-object v0, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController$AnimationExecutor;->animatorListener:Lcom/meizu/common/app/SlideNotice$SlideViewController$SlidingAnimatorListener;

    .line 878
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 881
    iget-object v0, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController$AnimationExecutor;->anim:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController$AnimationExecutor;->anim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 882
    iget-object v0, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController$AnimationExecutor;->anim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 884
    :cond_0
    return-void
.end method

.method public isRunning()Z
    .locals 1

    .prologue
    .line 899
    iget-object v0, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController$AnimationExecutor;->anim:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController$AnimationExecutor;->anim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    goto :goto_0
.end method

.method public start(II)V
    .locals 4
    .param p1, "fromY"    # I
    .param p2, "toY"    # I

    .prologue
    .line 887
    iget-object v0, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController$AnimationExecutor;->anim:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController$AnimationExecutor;->anim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 888
    iget-object v0, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController$AnimationExecutor;->anim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 890
    :cond_0
    iget-object v0, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController$AnimationExecutor;->this$1:Lcom/meizu/common/app/SlideNotice$SlideViewController;

    iget-object v0, v0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->this$0:Lcom/meizu/common/app/SlideNotice;

    # getter for: Lcom/meizu/common/app/SlideNotice;->mSlideViewController:Lcom/meizu/common/app/SlideNotice$SlideViewController;
    invoke-static {v0}, Lcom/meizu/common/app/SlideNotice;->access$1200(Lcom/meizu/common/app/SlideNotice;)Lcom/meizu/common/app/SlideNotice$SlideViewController;

    move-result-object v0

    const-string v1, "height"

    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x0

    aput p1, v2, v3

    const/4 v3, 0x1

    aput p2, v2, v3

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController$AnimationExecutor;->anim:Landroid/animation/ValueAnimator;

    .line 892
    iget-object v0, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController$AnimationExecutor;->anim:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 893
    iget-object v0, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController$AnimationExecutor;->anim:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController$AnimationExecutor;->animatorListener:Lcom/meizu/common/app/SlideNotice$SlideViewController$SlidingAnimatorListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 894
    iget-object v0, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController$AnimationExecutor;->anim:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 895
    iget-object v0, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController$AnimationExecutor;->anim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 896
    return-void
.end method
