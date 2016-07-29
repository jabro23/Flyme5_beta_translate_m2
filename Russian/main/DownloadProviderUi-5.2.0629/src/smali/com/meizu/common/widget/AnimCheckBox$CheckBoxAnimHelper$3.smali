.class Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "AnimCheckBox.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;


# direct methods
.method constructor <init>(Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;)V
    .locals 0

    .prologue
    .line 203
    iput-object p1, p0, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper$3;->this$0:Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 207
    iget-object v0, p0, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper$3;->this$0:Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;

    # getter for: Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;->mAnimator2:Landroid/animation/ObjectAnimator;
    invoke-static {v0}, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;->access$300(Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 208
    iget-object v0, p0, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper$3;->this$0:Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;

    # getter for: Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;->mAnimator2:Landroid/animation/ObjectAnimator;
    invoke-static {v0}, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;->access$300(Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->end()V

    .line 210
    :cond_0
    return-void
.end method
