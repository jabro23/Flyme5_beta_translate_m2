.class Lcom/meizu/common/widget/FoldableTextView$2;
.super Ljava/lang/Object;
.source "FoldableTextView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/common/widget/FoldableTextView;->startAnimator()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/common/widget/FoldableTextView;


# direct methods
.method constructor <init>(Lcom/meizu/common/widget/FoldableTextView;)V
    .locals 0

    .prologue
    .line 579
    iput-object p1, p0, Lcom/meizu/common/widget/FoldableTextView$2;->this$0:Lcom/meizu/common/widget/FoldableTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2
    .param p1, "valueAnimator"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 582
    iget-object v0, p0, Lcom/meizu/common/widget/FoldableTextView$2;->this$0:Lcom/meizu/common/widget/FoldableTextView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    # setter for: Lcom/meizu/common/widget/FoldableTextView;->mAnimatorFraction:Ljava/lang/Float;
    invoke-static {v0, v1}, Lcom/meizu/common/widget/FoldableTextView;->access$1302(Lcom/meizu/common/widget/FoldableTextView;Ljava/lang/Float;)Ljava/lang/Float;

    .line 583
    iget-object v0, p0, Lcom/meizu/common/widget/FoldableTextView$2;->this$0:Lcom/meizu/common/widget/FoldableTextView;

    invoke-virtual {v0}, Lcom/meizu/common/widget/FoldableTextView;->requestLayout()V

    .line 584
    return-void
.end method
