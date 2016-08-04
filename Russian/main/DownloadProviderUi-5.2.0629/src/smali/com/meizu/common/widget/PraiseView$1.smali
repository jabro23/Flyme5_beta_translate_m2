.class Lcom/meizu/common/widget/PraiseView$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "PraiseView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/common/widget/PraiseView;->startAnim()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/common/widget/PraiseView;


# direct methods
.method constructor <init>(Lcom/meizu/common/widget/PraiseView;)V
    .locals 0

    .prologue
    .line 110
    iput-object p1, p0, Lcom/meizu/common/widget/PraiseView$1;->this$0:Lcom/meizu/common/widget/PraiseView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 113
    iget-object v0, p0, Lcom/meizu/common/widget/PraiseView$1;->this$0:Lcom/meizu/common/widget/PraiseView;

    iget-object v1, p0, Lcom/meizu/common/widget/PraiseView$1;->this$0:Lcom/meizu/common/widget/PraiseView;

    # getter for: Lcom/meizu/common/widget/PraiseView;->mPraDrawable:Landroid/graphics/drawable/Drawable;
    invoke-static {v1}, Lcom/meizu/common/widget/PraiseView;->access$000(Lcom/meizu/common/widget/PraiseView;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/meizu/common/widget/PraiseView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 114
    iget-object v0, p0, Lcom/meizu/common/widget/PraiseView$1;->this$0:Lcom/meizu/common/widget/PraiseView;

    iget-object v0, v0, Lcom/meizu/common/widget/PraiseView;->mPraCallBack:Lcom/meizu/common/widget/PraiseView$onPraiseCallBack;

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/meizu/common/widget/PraiseView$1;->this$0:Lcom/meizu/common/widget/PraiseView;

    iget-object v0, v0, Lcom/meizu/common/widget/PraiseView;->mPraCallBack:Lcom/meizu/common/widget/PraiseView$onPraiseCallBack;

    invoke-interface {v0}, Lcom/meizu/common/widget/PraiseView$onPraiseCallBack;->praAlphAnimEnd()V

    .line 118
    :cond_0
    return-void
.end method
