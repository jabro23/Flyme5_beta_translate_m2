.class Lcom/meizu/common/widget/PraiseView$2;
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
    .line 147
    iput-object p1, p0, Lcom/meizu/common/widget/PraiseView$2;->this$0:Lcom/meizu/common/widget/PraiseView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 151
    iget-object v0, p0, Lcom/meizu/common/widget/PraiseView$2;->this$0:Lcom/meizu/common/widget/PraiseView;

    iget-object v0, v0, Lcom/meizu/common/widget/PraiseView;->mPraCallBack:Lcom/meizu/common/widget/PraiseView$onPraiseCallBack;

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/meizu/common/widget/PraiseView$2;->this$0:Lcom/meizu/common/widget/PraiseView;

    iget-object v0, v0, Lcom/meizu/common/widget/PraiseView;->mPraCallBack:Lcom/meizu/common/widget/PraiseView$onPraiseCallBack;

    invoke-interface {v0}, Lcom/meizu/common/widget/PraiseView$onPraiseCallBack;->praAnimEnd()V

    .line 154
    :cond_0
    return-void
.end method
