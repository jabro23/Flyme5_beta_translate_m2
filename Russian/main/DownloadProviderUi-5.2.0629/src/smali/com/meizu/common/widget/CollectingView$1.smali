.class Lcom/meizu/common/widget/CollectingView$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "CollectingView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/common/widget/CollectingView;->startAnim()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/common/widget/CollectingView;


# direct methods
.method constructor <init>(Lcom/meizu/common/widget/CollectingView;)V
    .locals 0

    .prologue
    .line 108
    iput-object p1, p0, Lcom/meizu/common/widget/CollectingView$1;->this$0:Lcom/meizu/common/widget/CollectingView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 118
    iget-object v0, p0, Lcom/meizu/common/widget/CollectingView$1;->this$0:Lcom/meizu/common/widget/CollectingView;

    iget-object v0, v0, Lcom/meizu/common/widget/CollectingView;->mCollectCallBack:Lcom/meizu/common/widget/CollectingView$OnCollectCallBack;

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/meizu/common/widget/CollectingView$1;->this$0:Lcom/meizu/common/widget/CollectingView;

    iget-object v0, v0, Lcom/meizu/common/widget/CollectingView;->mCollectCallBack:Lcom/meizu/common/widget/CollectingView$OnCollectCallBack;

    invoke-interface {v0}, Lcom/meizu/common/widget/CollectingView$OnCollectCallBack;->collectEndAnim()V

    .line 122
    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 111
    iget-object v0, p0, Lcom/meizu/common/widget/CollectingView$1;->this$0:Lcom/meizu/common/widget/CollectingView;

    iget-object v0, v0, Lcom/meizu/common/widget/CollectingView;->mCollectCallBack:Lcom/meizu/common/widget/CollectingView$OnCollectCallBack;

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/meizu/common/widget/CollectingView$1;->this$0:Lcom/meizu/common/widget/CollectingView;

    iget-object v0, v0, Lcom/meizu/common/widget/CollectingView;->mCollectCallBack:Lcom/meizu/common/widget/CollectingView$OnCollectCallBack;

    invoke-interface {v0}, Lcom/meizu/common/widget/CollectingView$OnCollectCallBack;->collectStartAnim()V

    .line 114
    :cond_0
    return-void
.end method
